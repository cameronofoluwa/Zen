public with sharing class loopsAndDML {
    public loopsAndDML() {
        
        //Do-While Loop
        Integer count = 1;

        do {
            System.debug(count);
            count++;
        } while (count < 11);



        //While Loop
        Integer count = 1;

        while (count < 11) {
            System.debug(count);
            count++;
        }


        //Traditional For Loop
        for (Integer i = 0, j = 0; i < 10; i++) {
            System.debug(i+1);
        }

        //List or Set For Loop
        Integer[] myInts = new Integer[]{1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

        for (Integer i : myInts) {
            System.debug(i);
        }
    }
}
