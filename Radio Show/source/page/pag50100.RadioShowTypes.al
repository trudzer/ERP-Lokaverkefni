page 50100 RadioShowTypes
{
    Caption = 'Radio Show Types';
    PageType = List;
    UsageCategory = Lists;
    SourceTable = RadioShowType;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(RadioShowType)
            {
                field(Code; Code)
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}