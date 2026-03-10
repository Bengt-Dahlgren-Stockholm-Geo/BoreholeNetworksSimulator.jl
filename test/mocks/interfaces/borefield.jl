
"""
    BorefieldMock <: Borefield 

Mock for testing purposes.
"""
@with_kw struct BorefieldMock <: Borefield 
    Nb = 1
    D = []
    H = []
    rb = []
    coordinates = []
    M = []
    b = []
end
BoreholeNetworksSimulatorFork.n_boreholes(bf::BorefieldMock) = bf.Nb
BoreholeNetworksSimulatorFork.get_D(bf::BorefieldMock, i) = bf.D[i]
BoreholeNetworksSimulatorFork.get_H(bf::BorefieldMock, i) = bf.H[i]
BoreholeNetworksSimulatorFork.get_rb(bf::BorefieldMock, i) = bf.rb[i]
BoreholeNetworksSimulatorFork.segment_coordinates(bf::BorefieldMock, segment) = bf.coordinates[segment][1], bf.coordinates[segment][2], bf.D[segment], bf.H[segment]
BoreholeNetworksSimulatorFork.internal_model_coeffs!(M, bf::BorefieldMock, medium, operation, T_fluid, fluid) = bf.M .= M
BoreholeNetworksSimulatorFork.internal_model_b!(b, bf::BorefieldMock) = bf.b .= b
BoreholeNetworksSimulatorFork.T_past_influence(bf::BorefieldMock) = zeros(bf.Nb)
