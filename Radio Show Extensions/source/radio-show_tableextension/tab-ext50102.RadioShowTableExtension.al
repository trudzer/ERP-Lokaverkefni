tableextension 50102 RadioShowTableExtension extends RadioShow
{
    fields
    {
        field(11; Frequency; Option)
        {
            OptionMembers = ,Hourly,Daily,Weekly,Monthly;
            OptionCaptionML = ENG = ' ,Hourly,Daily,Weekly,Monthly', ISL = ' ,Klukkutíma,Daglega,Vikulega,Mánaðalega';
            DataClassification = ToBeClassified;
            Description = 'An Option data type (Hourly, Daily, Weekly, or Monthly) is used for the frequency of a show; Hourly should be used for a show segment such as news, sports, or weather that is scheduled every hour. A space/blank is used for the first option to allow a valid blank field value.';
        }
        field(12; PSAplannedQuantity; Integer)
        {
            DataClassification = ToBeClassified;
            Description = 'This is the number (stored as Integer) of Public Service Announcements (PSAs) to be played per show; this will be used by playlist generation and posting logic.';
        }
        field(13; AdsPlannedQuantity; Integer)
        {
            DataClassification = ToBeClassified;
            Description = 'This is the number (stored as Integer) of advertisements to be played per show; this will be used by playlist generation and posting logic';
        }
        field(14; NewsRequired; Boolean)
        {
            DataClassification = ToBeClassified;
            InitValue = true;
            Description = 'Is headline news required to be broadcast during the show (a Boolean)? Default value should be true.';
        }
        field(15; NewsDuration; Duration)
        {
            DataClassification = ToBeClassified;
            Description = 'This is the duration (stored as Duration) of the news program that is embedded within the show.';
        }
        field(16; SportsRequired; Boolean)
        {
            DataClassification = ToBeClassified;
            InitValue = false;
            Description = 'Is sports news required to be broadcast during the show (a Boolean)? Default value should be false.';
        }
        field(17; SportsDuration; Duration)
        {
            DataClassification = ToBeClassified;
            Description = 'This is the duration (stored as Duration) of the sports program that is embedded within the show.';
        }
        field(18; WeatherRequired; Boolean)
        {
            DataClassification = ToBeClassified;
            InitValue = true;
            Description = 'Is weather news required to be broadcast during the show (Boolean)? Default value should be true.';
        }
        field(19; WeatherDuration; Duration)
        {
            DataClassification = ToBeClassified;
            Description = 'This is the duration (stored as Duration) of the weather program that is embedded within the show.';
        }
        field(20; StartTime; DateTime)
        {
            DataClassification = ToBeClassified;
            Description = 'Data Time';
        }
        field(21; EndTime; DateTime)
        {
            DataClassification = ToBeClassified;
            Description = 'Data Time';
        }
        field(22; RadioShowDuration; Duration)
        {
            DataClassification = ToBeClassified;
            Description = 'Duration';
        }
    }
}