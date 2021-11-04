codeunit 50000 RadioShowInstall
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    var
        archivedVersion: Text;
        RadioShow: Record RadioShow;
        RadioShowType: Record RadioShowType;
    begin
        archivedVersion := NavApp.GetArchiveVersion;
        if archivedVersion = '1.0.0.0' then begin
            NavApp.RestoreArchiveData(Database::RadioShow);
            NavApp.RestoreArchiveData(Database::RadioShowType);

            NavApp.DeleteArchiveData(Database::RadioShow);
            NavApp.DeleteArchiveData(Database::RadioShowType);
        end;

        if RadioShowType.IsEmpty() then
            InsertRadioShowTypes();
        if RadioShow.IsEmpty() then
            InsertRadioShows();

    end;

    local procedure InsertRadioShowTypes();
    begin

        /* Add code here */
        InsertRadioShowType('CALL-IN', 'Talk and Listener In');
        InsertRadioShowType('MUSIC', 'Music and Misc');
        InsertRadioShowType('NEWS', 'In-Dept Stories');
        InsertRadioShowType('TALK', 'Mostly Talk');

    end;

    local procedure InsertRadioShowType(ID: Code[10]; Description: Text[50]);
    var
        RadioShowType: Record RadioShowType;
    begin
        /* Add Code here */
        RadioShowType.Init();
        RadioShowType.Code := ID;
        RadioShowType.Description := Description;
        RadioShowType.Insert();
    end;

    local procedure InsertRadioShows()

    var
        oneHour: Duration;
        twoHour: Duration;
        threeHour: Duration;

    begin

        Evaluate(oneHour, '1');
        Evaluate(twoHour, '2');
        Evaluate(threeHour, '3');
        /* Add Code here */
        InsertRadioShow('RS001', 'TALK', 'CeCe and Friends', 'CECE', 'CeCe Grace', twoHour);
        InsertRadioShow('RS002', 'MUSIC', 'Alec Rocks and Bops', 'ALEC', 'Alec Benito', twoHour);
        InsertRadioShow('RS003', 'CALL-IN', 'Ask Cole!', 'COLE', 'Cole Henry', twoHour);
        InsertRadioShow('RS004', 'CALL-IN', 'What do you think?', 'WESLEY', 'Wesley Ernest', oneHour);
        InsertRadioShow('RS005', 'MUSIC', 'Quiet Times', 'SASKIA', 'Saskia Mae', threeHour);
        InsertRadioShow('RS006', 'NEWS', 'World News', 'DAAN', 'Daan White', oneHour);
        InsertRadioShow('RS007', 'ROCK', 'Rock Classics', 'JOSEPH', 'Josephine Black', twoHour);
        InsertRadioShow('RS008', 'TALK', 'Kristels Babytalks', 'KRIS', 'Kristel van Vugt', oneHour);

    end;

    local procedure InsertRadioShow(ID: Code[10]; RsType: Code[10]; Name: Text[50]; HostNo: Code[10]; HostName: text[50]; Runtime: Duration)
    var
        RadioShow: Record RadioShow;
    begin
        /* Add Code here */
        RadioShow.Init();
        RadioShow.No := ID;
        RadioShow.RadioShowType := RsType;
        RadioShow.Name := Name;
        RadioShow.HostNo := HostNo;
        RadioShow.HostName := HostName;
        RadioShow.RunTime := Runtime;
        RadioShow.Insert();
    end;
}