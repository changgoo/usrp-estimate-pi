import numpy as np
from estimate_pi.estimate_pi import estimate_pi,make_realisation
def test_pi():
    """Test that estimate_pi produces the correct result"""
    pies = make_realisation(100,100)
    assert np.abs(pies.mean() - np.pi) < 0.02
