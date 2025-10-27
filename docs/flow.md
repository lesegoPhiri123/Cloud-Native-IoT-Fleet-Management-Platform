# Event Flow

1. A device sends telemetry data to the Device Gateway.
2. Device Gateway publishes a DeviceTelemetryReceived event.
3. Telemetry Processor consumes this event, processes it, and emits DeviceTelemetryProcessed.
4. Query Service updates its read models for fast lookup.
5. Command Service sends commands to devices and logs CommandSent events.
