#  How to use this library

1. Create an enum for EndPoint that will conform to EndPointProtocol
2. Create a NetworkManager, when initializing inside, pass an instance of the NetworkClient class to a property of the NetworkClientProtocol type.
3. Call the fetchModel method of the NetworkClient, in which to pass the enumeration case from the previously created EndPoint from point 1
