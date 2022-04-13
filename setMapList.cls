public with sharing class setMapList {
    public setMapList() {
        Set<String> salesforceAdminsSet = new Set<String>();
        salesforceAdminsSet.add('Richard Benn');
        salesforceAdminsSet.add('Cameron Ofoluwa');
        salesforceAdminsSet.add('Elle-Mae ');
        salesforceAdminsSet.add('Laura Connell');
        salesforceAdminsSet.add('Nige Lowe');


        Map <String, String> salesforceAdminsMap = new Map<String,String>();
        salesforceAdminsMap.add('Male', 'Richard Benn');
        salesforceAdminsMap.add('Male', 'Cameron Ofoluwa');
        salesforceAdminsMap.add('Female', 'Elle-Mae ');
        salesforceAdminsMap.add('Female', 'Laura Connell');
        salesforceAdminsMap.add('Male', 'Nige Lowe');


        List<String> salesforceAdminsList = new List<String>();
        salesforceAdminsList.add('Richard Benn');
        salesforceAdminsList.add('Cameron Ofoluwa');
        salesforceAdminsList.add('Elle-Mae ');
        salesforceAdminsList.add('Laura Connell');
        salesforceAdminsList.add('Nige Lowe');
    }
}
