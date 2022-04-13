public with sharing class variablesAndDataTypes {
    public variablesAndDataTypes() {

        //Text
        String thisIsAString = 'This is some text';

        //Object (Record)
        Account thisIsATestAccount = new Account();

        //NUmber
        Integer thisIsAInteger = 1;
        Double thisIsADouble = 1.1;

        //A Decimal is similar to a Double, however Salesforce explicitly defaults Currencies to use this
        Decimal thisIsADecimal = 10.1;

        //Bolean
        boolean thisIsABoolean = false;

        //Date & Date/Time
        Date thisIsADate = Today();
        Datetime thisIsDatetime = Now();

        //A Text variable that cannot be changed
        final Decimal thisIsAConstant = '0.2';
    }
}
