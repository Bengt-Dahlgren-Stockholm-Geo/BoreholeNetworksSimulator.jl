
"""
    BoreholeMock <: Borehole 

Mock for testing purposes.
"""
@with_kw struct BoreholeMock <: Borehole 
    H = 0.
    D = 0.
    rb = 0.
    Ci = 0.
    Co = 0.
    Cb = 0.
end
BoreholeNetworksSimulatorFork.get_H(bh::BoreholeMock) = bh.H
BoreholeNetworksSimulatorFork.get_D(bh::BoreholeMock) = bh.D
BoreholeNetworksSimulatorFork.get_rb(bh::BoreholeMock) = bh.rb
BoreholeNetworksSimulatorFork.uniform_Tb_coeffs(bh::BoreholeMock, λ, mass_flow, Tref, fluid) = bh.Ci, bh.Co, bh.Cb
