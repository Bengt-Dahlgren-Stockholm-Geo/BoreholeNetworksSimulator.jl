
"""
    MediumMock <: Medium

Mock for testing purposes.
"""
@with_kw struct MediumMock <: Medium 
    λ = 0.
    α = 0.
    T0 = 0.
    q_coef = 0.
    constant_integral = 0.
    step_response = 1.
end
BoreholeNetworksSimulatorFork.get_λ(m::MediumMock) = m.λ
BoreholeNetworksSimulatorFork.get_α(m::MediumMock) = m.α
BoreholeNetworksSimulatorFork.get_T0(m::MediumMock) = m.T0
BoreholeNetworksSimulatorFork.constant_integral(m::MediumMock, method, setup, λ, i) = m.constant_integral
BoreholeNetworksSimulatorFork.compute_response!(g, m::MediumMock, options) = g .= m.step_response
BoreholeNetworksSimulatorFork.q_coef(boundary_condition, m::MediumMock, method, s, i) = m.q_coef