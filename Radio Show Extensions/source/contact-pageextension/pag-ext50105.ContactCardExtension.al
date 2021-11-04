pageextension 50115 ContactCardExtension extends "Contact Card"
{
    layout
    {
        addafter("Company Name")
        {
            field("Job Title"; "Job Title")
            {
                ApplicationArea = All;
            }
            field("Education Level"; "Education Level")
            {
                ApplicationArea = All;
            }
        }
        addafter("Phone No.")
        {
            field("Work Phone No."; "Work Phone No.")
            {
                ApplicationArea = All;
            }
        }
    }
}