class Solution {
    public double solution(int[] numbers) {
        double answer = 0;
        double total = 0;
        int i;
        for(i=0; i<numbers.length; i++){
            total += numbers[i];
        }
        answer = total / numbers.length;
        return answer;
    }
}