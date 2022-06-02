# Basic usage

## Display a throw of 1000 darts:
``` py
from estimate_pi.plot_tools import plot_darts
plot_darts(1000)
```

## Distribution of the estimated `pi`
``` py
import matplotlib.pyplot as plt
import estimate_pi

nthrows = [100, 1000, 10000]
nreal = 1000 # number of realisations
for nth in nthrows:
    r = estimate_pi.make_realisation(nreal, nth)
    plt.hist(r, bins = 20, label = '{} darts'.format(nth), density=True, alpha=0.5)

plt.title('distribution of pi estimates for various throws')
plt.yscale('log')
plt.legend()
```

## Accuracy of the estimated `pi`
``` py
import numpy as np
import estimate_pi

nthrows = np.logspace(1,5,5).astype(int)
nreal = 1000
pi_mean,pi_std = estimate_pi.get_pi_accuracy(nreal, nthrows)

# convergence plot
plt.title('Convergence of Error')
plt.plot(nthrows,pi_std,'o')
plt.plot(nthrows,1/np.sqrt(nthrows),label=r'$\propto 1/N^{1/2}$',ls=':')
plt.legend()
plt.xscale('log')
plt.yscale('log')
plt.xlabel('number of darts')
plt.ylabel('pi error')
```
