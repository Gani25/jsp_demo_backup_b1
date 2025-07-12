package util;

public class FunctionUtil {

	public static boolean checkPrime(int num) {
		if (num <= 1) {
			return false;
		}

		int i;
		for (i = 2; i <= num / 2; i++) {
			if (num % i == 0) {
				return false;
			}
		}
		return true;

	}
}
