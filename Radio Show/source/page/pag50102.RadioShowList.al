page 50102 RadioShowList
{
    Caption = 'Radio Show List';
    PageType = List;
    UsageCategory = Lists;
    SourceTable = RadioShow;
    ApplicationArea = All;
    CardPageId = RadioShowCard;

    layout
    {
        area(content)
        {
            repeater(RadioShow)
            {
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
        }
    }
}