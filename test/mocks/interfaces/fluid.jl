
"""
    FluidMock <: Fluid 

Mock for testing purposes.
"""
@with_kw struct FluidMock <: Fluid 
    cpf = 0.
    properties = (0., 0., 0., 0.)
end
BoreholeNetworksSimulatorFork.cpf(fluid::FluidMock) = fluid.cpf
BoreholeNetworksSimulatorFork.thermophysical_properties(fluid::FluidMock, T) = fluid.properties
