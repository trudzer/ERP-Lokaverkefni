table 50100 RadioShowType
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Code; Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'Code';
        }
        field(2; Description; Text[50])
        {
            DataClassification = ToBeClassified;
            Description = 'Description';
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
}