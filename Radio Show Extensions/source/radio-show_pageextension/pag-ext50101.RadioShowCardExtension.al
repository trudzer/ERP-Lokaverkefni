pageextension 50101 RadioShowCardExtension extends RadioShowCard
{
    layout
    {
        addafter(General)
        {
            group(Requirements)
            {
                Caption = 'Requirements';
                field(Frequency; Frequency)
                {
                    ApplicationArea = All;
                }
                field(PSAplannedQuantity; PSAplannedQuantity)
                {
                    ApplicationArea = All;
                }
                field(AdsPlannedQuantity; AdsPlannedQuantity)
                {
                    ApplicationArea = All;
                }
                field(NewsRequired; NewsRequired)
                {
                    ApplicationArea = All;
                }
                field(NewsDuration; NewsDuration)
                {
                    ApplicationArea = All;
                }
                field(SportsRequired; SportsRequired)
                {
                    ApplicationArea = All;
                }
                field(SportsDuration; SportsDuration)
                {
                    ApplicationArea = All;
                }
                field(WeatherRequired; WeatherRequired)
                {
                    ApplicationArea = All;
                }
                field(WeatherDuration; WeatherDuration)
                {
                    ApplicationArea = All;
                }
                field(StartTime; StartTime)
                {
                    ApplicationArea = All;
                }
                field(EndTime; EndTime)
                {
                    ApplicationArea = All;
                }
                field(RadioShowDuration; RadioShowDuration)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        addlast(Processing)
        {

            action(StartShow)
            {
                ApplicationArea = All;
                Image = Start;
                trigger OnAction();
                var
                    StartAction: Boolean;
                begin
                    StartAction := Dialog.Confirm('Start Time has been set. Do you want to add new Start Time?');
                    if (StartAction = false)
                    then begin
                        StartTime := CurrentDateTime() - (2 * 60 * 60 * 1000);
                    end;
                end;
            }
            action(EndShow)
            {
                ApplicationArea = All;
                Image = Stop;
                trigger OnAction();
                var
                    EndAction: Boolean;
                begin
                    EndAction := Dialog.Confirm('End Time has been set. Do you want to add new End Time?');
                    if (EndAction = false)
                    then begin
                        EndTime := CurrentDateTime() - (2 * 60 * 60 * 1000);
                    end;
                end;
            }
            action(Calculate)
            {
                ApplicationArea = All;
                Image = Calculate;
                trigger OnAction();
                begin
                    RadioShowDuration := EndTime - StartTime;
                end;
            }
        }
    }
}