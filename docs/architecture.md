# System Architecture (Text Version)

1. **IoT Devices** send telemetry data to **Kong API Gateway**.
2. **Kong** routes requests to the **Device Gateway Service**.
3. **Device Gateway Service** publishes telemetry events to the event store (MongoDB Atlas).
4. **Telemetry Processor** consumes these events, processes them, and emits processed events.
5. **Query Service** listens to processed events and updates read models in MongoDB.
6. **Command Service** sends commands to devices and logs CommandSent events.
7. **Prometheus + Grafana** monitor metrics from all services.
8. **Elastic + Mezmo** handle logging.
9. **Falco** monitors runtime security.
10. **Jenkins** automates builds, tests, and deployments.
