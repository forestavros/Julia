# ΠΛΗ 32 ΓΕ_1 ερώτημα 5.Β

# Κλήσεις της συνάρτησης monte_carlo για τον υπολογισμό του όγκου του ελλειψοειδούς
# συναρτήσει του αντίστοιχα ορισμένου αριθμού δειγμάτων.

using Printf

include("D:/OneDrive/02_ΕΑΠ/06_Julia/Julia/monte_carlo.jl")

elipsoid_vol_10p = monte_carlo(10,2,3,4);

@printf("Ο όγκος του ελλειψοειδούς με χρήση 10 δειγμάτων είναι: %.3f\n\n", elipsoid_vol_10p);

elipsoid_vol_100p = monte_carlo(100,2,3,4);

@printf("Ο όγκος του ελλειψοειδούς με χρήση 100 δειγμάτων είναι: %.3f\n\n", elipsoid_vol_100p);

elipsoid_vol_1Kp = monte_carlo(1000,2,3,4);

@printf("Ο όγκος του ελλειψοειδούς με χρήση 1000 δειγμάτων είναι: %.3f\n\n",elipsoid_vol_1Kp);

elipsoid_vol_10Kp = monte_carlo(10000,2,3,4);

# Θεωρώντας ως απόλυτα ακριβή τον υπολογισμό του δείγματος των 10000 σημείων, υπολογίζουμε
# τα ποσοστιαία σφάλματα των τριών πρώτων προσομοιώσεων.

@printf("Ο όγκος του ελλειψοειδούς με χρήση 10000 δειγμάτων είναι: %.3f\n\n", elipsoid_vol_10Kp);

@printf("Το ποσοστό σφάλματος των 10 δειγμάτων: %.3f%%\n\n", 100 * abs(elipsoid_vol_10p - elipsoid_vol_10Kp) / elipsoid_vol_10Kp);

@printf("Το ποσοστό σφάλματος των 100 δειγμάτων: %.3f%%\n\n", 100 * abs(elipsoid_vol_100p - elipsoid_vol_10Kp) / elipsoid_vol_10Kp);

@printf("Το ποσοστό σφάλματος των 1000 δειγμάτων: %.3f%%\n\n", 100 * abs(elipsoid_vol_1Kp - elipsoid_vol_10Kp) / elipsoid_vol_10Kp);

