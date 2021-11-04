page 50101 RadioShowCard
{
    Caption = 'Radio Show Card';
    PageType = Card;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = RadioShow;
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field(No; No)
                {
                    //ApplicationArea sets the application area that
                    //applies to the page field and action controls.
                    //Setting the property to All means that the control
                    //will always appear in the user interface.
                    ApplicationArea = All;
                }
                field(RadioShowType; RadioShowType)
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field(RunTime; RunTime)
                {
                    ApplicationArea = All;
                }
                field(HostNo; HostNo)
                {
                    ApplicationArea = All;
                }
                field(HostName; HostName)
                {
                    ApplicationArea = All;
                }

            }
            group(Statistics)
            {
                Caption = 'Statistics';
                field(AverageListeners; AverageListeners)
                {
                    ApplicationArea = All;
                }
                field(AudienceShare; AudienceShare)
                {
                    ApplicationArea = All;
                }
                field(AdvertisingRevenue; AdvertisingRevenue)
                {
                    ApplicationArea = All;
                }
                field(RoyaltyCost; RoyaltyCost)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
