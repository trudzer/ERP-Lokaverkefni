table 50102 RadioShow
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'Number';
        }
        field(2; RadioShowType; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = RadioShowType.Code;
            Description = 'Radio Show Type';
        }
        field(3; Name; Text[50])
        {
            DataClassification = ToBeClassified;
            Description = 'Radio Show Name';
        }
        field(4; RunTime; Duration)
        {
            DataClassification = ToBeClassified;
            Description = 'Radio Show run time';
        }
        field(5; HostNo; Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'Radio Show host number';
        }
        field(6; HostName; Text[50])
        {
            DataClassification = ToBeClassified;
            Description = 'Radio Show host name';
        }
        field(7; AverageListeners; Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'Average listeners';
        }
        field(8; AudienceShare; Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'Audience share';
        }
        field(9; AdvertisingRevenue; Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'Advertising revenue';
        }
        field(10; RoyaltyCost; Decimal)
        {
            DataClassification = ToBeClassified;
            Description = 'Royalty cost';
        }
    }

    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
}