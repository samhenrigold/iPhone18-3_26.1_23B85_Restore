@interface CertificationLogging
+ (id)getInstance;
+ (void)bleLogMessageReceived:(id)received peerUUID:(id)d;
+ (void)bleLogMessageSent:(id)sent peerUUID:(id)d;
+ (void)bleLogRSSI:(id)i peerUUID:(id)d;
+ (void)bleLogVehicleConnected:(id)connected;
+ (void)bleLogVehicleDisconnected:(id)disconnected;
+ (void)logEncryptedAPDU:(id)u decrypted:(id)decrypted;
- (void)logEvent:(void *)event message:(void *)message peerUUID:;
@end

@implementation CertificationLogging

+ (id)getInstance
{
  objc_opt_self();
  if (getInstance_onceToken_0 != -1)
  {
    +[CertificationLogging getInstance];
  }

  v0 = getInstance_instance_0;

  return v0;
}

void __35__CertificationLogging_getInstance__block_invoke()
{
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@".GlobalPreferences"];
  if ([v4 BOOLForKey:@"com.apple.CarKeysTests.enableCertificationLogging"])
  {
    v0 = objc_opt_new();
    v1 = getInstance_instance_0;
    getInstance_instance_0 = v0;

    v2 = os_log_create("com.apple.certification", "digitalCarKey");
    v3 = *(getInstance_instance_0 + 8);
    *(getInstance_instance_0 + 8) = v2;
  }
}

void __50__CertificationLogging_logEvent_message_peerUUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 base64];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v6 = [v5 UUIDString];
  }

  v7 = v6;
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v8];

LABEL_6:
}

+ (void)logEncryptedAPDU:(id)u decrypted:(id)decrypted
{
  v8[2] = *MEMORY[0x1E69E9840];
  uCopy = u;
  decryptedCopy = decrypted;
  if ([decryptedCopy length] && objc_msgSend(uCopy, "length"))
  {
    [(CertificationLogging *)v7 logEncryptedAPDU:uCopy decrypted:v8, decryptedCopy];
  }
}

- (void)logEvent:(void *)event message:(void *)message peerUUID:
{
  v58[3] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  messageCopy = message;
  v10 = messageCopy;
  if (self)
  {
    switch(a2)
    {
      case 0uLL:
        if (messageCopy)
        {
          v58[0] = @"event";
          v57[0] = @"log_type";
          v57[1] = @"vehicle_uuid";
          uUIDString = [messageCopy UUIDString];
          v57[2] = @"payload";
          v58[1] = uUIDString;
          v58[2] = @"connect";
          v12 = MEMORY[0x1E695DF20];
          v13 = v58;
          v14 = v57;
          goto LABEL_20;
        }

        break;
      case 1uLL:
        if (messageCopy)
        {
          v56[0] = @"event";
          v55[0] = @"log_type";
          v55[1] = @"vehicle_uuid";
          uUIDString = [messageCopy UUIDString];
          v55[2] = @"payload";
          v56[1] = uUIDString;
          v56[2] = @"disconnect";
          v12 = MEMORY[0x1E695DF20];
          v13 = v56;
          v14 = v55;
LABEL_20:
          v4 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:3];
          goto LABEL_21;
        }

        break;
      case 2uLL:
        if (messageCopy)
        {
          if (eventCopy)
          {
            v18 = objc_opt_class();
            if (OUTLINED_FUNCTION_2(v18))
            {
              v50[0] = @"dck_message";
              v49[0] = @"log_type";
              v49[1] = @"vehicle_uuid";
              uUIDString = [v10 UUIDString];
              v50[1] = uUIDString;
              v50[2] = @"out";
              v49[2] = @"direction";
              v49[3] = @"payload";
              base64 = [eventCopy base64];
              v50[3] = base64;
              v20 = MEMORY[0x1E695DF20];
              v21 = v50;
              v22 = v49;
              goto LABEL_17;
            }
          }

          v38 = SESDefaultLogObject();
          if (OUTLINED_FUNCTION_1(v38))
          {
            *buf = 134218242;
            OUTLINED_FUNCTION_0(2);
            v30 = "Wrong payload for event type %lu %@";
            goto LABEL_45;
          }

          goto LABEL_47;
        }

        break;
      case 3uLL:
        if (messageCopy)
        {
          if (eventCopy)
          {
            v23 = objc_opt_class();
            if (OUTLINED_FUNCTION_2(v23))
            {
              v48[0] = @"dck_message";
              v47[0] = @"log_type";
              v47[1] = @"vehicle_uuid";
              uUIDString = [v10 UUIDString];
              v48[1] = uUIDString;
              v48[2] = @"in";
              v47[2] = @"direction";
              v47[3] = @"payload";
              base64 = [eventCopy base64];
              v48[3] = base64;
              v20 = MEMORY[0x1E695DF20];
              v21 = v48;
              v22 = v47;
LABEL_17:
              v4 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:4];

              goto LABEL_21;
            }
          }

          v39 = SESDefaultLogObject();
          if (!OUTLINED_FUNCTION_1(v39))
          {
            goto LABEL_47;
          }

          *buf = 134218242;
          OUTLINED_FUNCTION_0(3);
          v30 = "Wrong payload for event type %lu %@";
          goto LABEL_45;
        }

        break;
      case 4uLL:
        if (messageCopy)
        {
          if (eventCopy)
          {
            v4 = 0x1E695D000;
            v15 = objc_opt_class();
            if (OUTLINED_FUNCTION_2(v15))
            {
              v16 = [eventCopy mutableCopy];
              v41[0] = MEMORY[0x1E69E9820];
              v41[1] = 3221225472;
              v41[2] = __50__CertificationLogging_logEvent_message_peerUUID___block_invoke;
              v41[3] = &unk_1E86FFB80;
              v42 = v16;
              uUIDString = v16;
              [eventCopy enumerateKeysAndObjectsUsingBlock:v41];
              v46[0] = @"rssi";
              v45[0] = @"log_type";
              v45[1] = @"vehicle_uuid";
              uUIDString2 = [v10 UUIDString];
              v45[2] = @"payload";
              v46[1] = uUIDString2;
              v46[2] = uUIDString;
              v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:3];

LABEL_21:
              goto LABEL_24;
            }
          }

          v37 = SESDefaultLogObject();
          if (!OUTLINED_FUNCTION_1(v37))
          {
            goto LABEL_47;
          }

          *buf = 134218242;
          OUTLINED_FUNCTION_0(4);
          v30 = "Wrong payload for event type %lu %@";
          goto LABEL_45;
        }

        break;
      case 5uLL:
        v4 = 0x1E695D000;
        v24 = objc_opt_class();
        if (OUTLINED_FUNCTION_2(v24))
        {
          v43[0] = @"log_type";
          v43[1] = @"payload";
          v44[0] = @"dck_decrypted";
          v44[1] = eventCopy;
          v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
LABEL_24:
          if ([MEMORY[0x1E696ACB0] isValidJSONObject:v4])
          {
            v40 = 0;
            v25 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:&v40];
            v26 = v40;
            if (v26)
            {
              v27 = SESDefaultLogObject();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v52 = v4;
                v53 = 2112;
                v54 = v26;
                _os_log_impl(&dword_1E0FCB000, v27, OS_LOG_TYPE_ERROR, "Failed to serialize object %@ %@", buf, 0x16u);
              }
            }

            else
            {
              v34 = *(self + 8);
              if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
LABEL_38:

                goto LABEL_47;
              }

              v35 = MEMORY[0x1E696AEC0];
              v27 = v34;
              v36 = [[v35 alloc] initWithData:v25 encoding:4];
              *buf = 138412290;
              v52 = v36;
              _os_log_impl(&dword_1E0FCB000, v27, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
            }

            goto LABEL_38;
          }

          v28 = SESDefaultLogObject();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v52 = v4;
            _os_log_impl(&dword_1E0FCB000, v28, OS_LOG_TYPE_ERROR, "Invalid JSON object %@", buf, 0xCu);
          }
        }

        else
        {
          v33 = SESDefaultLogObject();
          if (!OUTLINED_FUNCTION_1(v33))
          {
            goto LABEL_47;
          }

          *buf = 134218242;
          OUTLINED_FUNCTION_0(5);
          v30 = "Wrong payload for event type %lu %@";
LABEL_45:
          v31 = v4;
          v32 = 22;
LABEL_46:
          _os_log_impl(&dword_1E0FCB000, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
        }

LABEL_47:

        break;
      default:
        v29 = SESDefaultLogObject();
        if (!OUTLINED_FUNCTION_1(v29))
        {
          goto LABEL_47;
        }

        *buf = 134217984;
        v52 = a2;
        v30 = "Unknown event type %lu";
        v31 = v4;
        v32 = 12;
        goto LABEL_46;
    }
  }
}

+ (void)bleLogVehicleConnected:(id)connected
{
  connectedCopy = connected;
  v4 = +[CertificationLogging getInstance];
  [(CertificationLogging *)v4 logEvent:0 message:connectedCopy peerUUID:?];
}

+ (void)bleLogVehicleDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  v4 = +[CertificationLogging getInstance];
  [(CertificationLogging *)v4 logEvent:0 message:disconnectedCopy peerUUID:?];
}

+ (void)bleLogMessageSent:(id)sent peerUUID:(id)d
{
  dCopy = d;
  sentCopy = sent;
  v7 = +[CertificationLogging getInstance];
  [(CertificationLogging *)v7 logEvent:sentCopy message:dCopy peerUUID:?];
}

+ (void)bleLogMessageReceived:(id)received peerUUID:(id)d
{
  dCopy = d;
  receivedCopy = received;
  v7 = +[CertificationLogging getInstance];
  [(CertificationLogging *)v7 logEvent:receivedCopy message:dCopy peerUUID:?];
}

+ (void)bleLogRSSI:(id)i peerUUID:(id)d
{
  dCopy = d;
  iCopy = i;
  v7 = +[CertificationLogging getInstance];
  [(CertificationLogging *)v7 logEvent:iCopy message:dCopy peerUUID:?];
}

+ (void)logEncryptedAPDU:(void *)a3 decrypted:(void *)a4 .cold.1(void *a1, void *a2, void *a3, void *a4)
{
  v8 = +[CertificationLogging getInstance];
  *a1 = @"raw_payload";
  v9 = [a2 base64];
  *a3 = v9;
  a1[1] = @"decrypted_payload";
  v10 = [a4 base64];
  a3[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a3 forKeys:a1 count:2];
  [(CertificationLogging *)v8 logEvent:v11 message:0 peerUUID:?];
}

@end