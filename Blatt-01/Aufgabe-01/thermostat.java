class thermostat {
    private static double[] outsideTemp = new double[]{10.0, 25.0, 30.0};
    public static double tMin = 15.0;
    public static double tMax = 20.0;
    public static double currentTemp = 18.0;

    public static void kuehlen () {
        currentTemp -= 5.0;
    }

    public static void heizen () {
        currentTemp += 5.0;
    }

    private static void passiv () {
        return;
    }


    public static void main(String[] args){
        for(double currentoutsideTemp : outsideTemp){
            currentTemp = (currentTemp + currentoutsideTemp) / 2;
            if(currentTemp > tMax){
                kuehlen();
            }else if(currentTemp < tMin){
                heizen();
            }else{
                passiv();
            }
            System.out.println(currentTemp);
        }
    }
}
