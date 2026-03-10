
"""
    ConstraintMock <: Constraint 

Mock for testing purposes.
"""
@with_kw struct ConstraintMock <: Constraint 
    M = []
    b = []
end
BoreholeNetworksSimulatorFork.constraints_coeffs!(M, c::ConstraintMock, ::Borefield, network, mass_flows) = c.M .= M
BoreholeNetworksSimulatorFork.constraints_b!(b, c::ConstraintMock, operation, step) = c.b .= b
