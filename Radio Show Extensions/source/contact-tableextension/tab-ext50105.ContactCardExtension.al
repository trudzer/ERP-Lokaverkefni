tableextension 50115 ContactCardExtension extends contact
{
    fields
    {
        field(501001; "Education Level"; Option)
        {
            OptionMembers = ,"Some High School","High School Diploma","Associate Degree","Bachelor's Degree","Master's Degree";
            OptionCaptionML = ENG = ' ,Some High School,High School Diploma,Associate Degree,Bachelors Degree,Masters Degree', ISL = ' ,grunnskólapróf,framhaldsnám,Stúdentspróf,BS gráða,masters gráða';
            DataClassification = ToBeClassified;
        }
        field(501002; "Work Phone No."; Text[10])
        {
            DataClassification = ToBeClassified;
        }
    }
}