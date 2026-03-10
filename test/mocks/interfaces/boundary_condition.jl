
"""
    BoundaryConditionMock <: BoundaryCondition 

Mock for testing purposes.
"""
struct BoundaryConditionMock <: BoundaryCondition end

#BoreholeNetworksSimulatorFork.coefficients(::BoundaryConditionMock, setup, params, dp, containers) = ones(length(containers.aux))
BoreholeNetworksSimulatorFork.q_coef(::BoundaryConditionMock, m, method, sts, λ, i) = m.q_coef
