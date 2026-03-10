using .BoreholeNetworksSimulatorFork: QuadGKBuffer

struct QuadGKBufferMock <: QuadGKBuffer end

BoreholeNetworksSimulatorFork.get_buffers(::BoundaryConditionMock) = Vector{QuadGKBufferMock}()
BoreholeNetworksSimulatorFork.add_buffer!(buffers, ::BoundaryConditionMock, s, rb) = push!(buffers, QuadGKBufferMock())
BoreholeNetworksSimulatorFork.weights(::BoundaryConditionMock, setup::SetupMock, params, dp, containers, ::QuadGKBufferMock; atol, rtol) = setup.weights
