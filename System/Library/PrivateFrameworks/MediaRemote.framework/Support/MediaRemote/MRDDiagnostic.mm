@interface MRDDiagnostic
- (MRDDiagnostic)init;
- (id)createDiagnosticInfo;
- (id)mediaSuggestions:(id)suggestions;
- (void)_appendDescribableArray:(id)array toString:(id)string withTitle:(id)title indentLevel:(unsigned int)level usingDebugDescription:(BOOL)description;
- (void)_appendNullableObjectDescription:(id)description toString:(id)string withTitle:(id)title usingDebugDescription:(BOOL)debugDescription;
@end

@implementation MRDDiagnostic

- (MRDDiagnostic)init
{
  v6.receiver = self;
  v6.super_class = MRDDiagnostic;
  v2 = [(MRDDiagnostic *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSDate);
    dateCreated = v2->_dateCreated;
    v2->_dateCreated = v3;
  }

  return v2;
}

- (id)createDiagnosticInfo
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendString:@"MediaRemote Diagnostic\n"];
  [v3 appendFormat:@"Collected at: %@\n", self->_dateCreated];
  [v3 appendString:@"================================================================================\n\n"];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_activeClients toString:v3 withTitle:@"Active Clients" indentLevel:0 usingDebugDescription:1];
  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_activeTransactions toString:v3 withTitle:@"Active Transactions"];
  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_currentAppActivity toString:v3 withTitle:@"Current App Activity"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_localNowPlayingClient toString:v3 withTitle:@"Local Now Playing Client"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_systemMediaClient toString:v3 withTitle:@"System Media Client"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_frontmostClient toString:v3 withTitle:@"Frontmost Client"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_daemonClient toString:v3 withTitle:@"Daemon Client"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_volumeController toString:v3 withTitle:@"VolumeController" usingDebugDescription:1];
  [(MRDDiagnostic *)self _appendSubheader:@"UI Server" toString:v3];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_uiActivitiesInfo toString:v3 withTitle:@"UI Activities Info"];
  [(MRDDiagnostic *)self _appendSubheader:@"Now Playing Server" toString:v3];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_originClients toString:v3 withTitle:@"Origin Clients" indentLevel:0 usingDebugDescription:1];
  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_activeOrigin toString:v3 withTitle:@"Active Origin"];
  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_electedPlayer toString:v3 withTitle:@"Elected Player"];
  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_electedPlayerReason toString:v3 withTitle:@"Elected Player Reason"];
  [v3 appendString:@"\n"];
  v4 = [NSNumber numberWithBool:self->_lockScreenWidgetActive];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:v4 toString:v3 withTitle:@"LockScreen Widget Active"];

  v5 = [NSNumber numberWithBool:self->_lockScreenWidgetActive];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:v5 toString:v3 withTitle:@"LockScreen Widget Visible"];

  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_lockScreenPlayerPath toString:v3 withTitle:@"LockScreen Widget PlayerPath"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_lockScreenRoutingController toString:v3 withTitle:@"LockScreen Routing Controller" usingDebugDescription:1];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_originForwarders toString:v3 withTitle:@"Origin Forwarders"];
  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendSubheader:@"Remote Control Server" toString:v3];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_enqueuedCommands toString:v3 withTitle:@"Enqueued Commands"];
  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_remoteControlContexts toString:v3 withTitle:@"Remote Control Contexts"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_commandClientsRestriction toString:v3 withTitle:@"RestrictedCommandClient Mode Restriction"];
  [(MRDDiagnostic *)self _appendSubheader:@"Browsable Content Server" toString:v3];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_queuedInitiatePlaybackMessages toString:v3 withTitle:@"Queued Initiate Playback Messages"];
  [(MRDDiagnostic *)self _appendSubheader:@"External Device Server" toString:v3];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_connectedExternalDevices toString:v3 withTitle:@"Connected Devices" indentLevel:0 usingDebugDescription:1];
  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_televisionEndpoints toString:v3 withTitle:@"Television Endpoints"];
  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_discoverySessions toString:v3 withTitle:@"External Discovery Sessions" usingDebugDescription:0];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_remoteControlService toString:v3 withTitle:@"RemoteControlService" usingDebugDescription:1];
  v6 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:v6 toString:v3 withTitle:@"LocalEndpoint" usingDebugDescription:1];

  [v3 appendString:@"\n"];
  v7 = +[MRDAVOutputContextManager sharedManager];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:v7 toString:v3 withTitle:@"OutputContexts" usingDebugDescription:1];

  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_batchedNowPlayingState toString:v3 withTitle:@"BatchedNowPlayingState" usingDebugDescription:0];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_remoteASEState toString:v3 withTitle:@"RemoteASEState" usingDebugDescription:0];
  [(MRDDiagnostic *)self _appendSubheader:@"Routing Server" toString:v3];
  v8 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
  [(MRDDiagnostic *)self _appendNullableObjectDescription:v8 toString:v3 withTitle:@"System Discovery Mode (Legacy)"];

  v9 = [(_MRAVAirPlaySecuritySettingsProtobuf *)self->_airplaySecuritySettings description];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:v9 toString:v3 withTitle:@"AirPlay Security Settings"];

  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_localReceiverPairingIdentity toString:v3 withTitle:@"Local Receiver Pairing Identity"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_systemActiveEndpoints toString:v3 withTitle:@"System Active Endpoints"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_recentlyDismissedSystemEndpoints toString:v3 withTitle:@"Recently Dissmised Recommendations"];
  if ([(NSArray *)self->_autoConnectedEndpoints count])
  {
    [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_autoConnectingEndpoints toString:v3 withTitle:@"Auto Connecting Endpoints"];
  }

  if ([(NSArray *)self->_autoConnectedEndpoints count])
  {
    [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_autoConnectedEndpoints toString:v3 withTitle:@"Auto Connected Endpoints"];
  }

  if ([(NSArray *)self->_migrationEvents count])
  {
    [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_migrationEvents toString:v3 withTitle:@"Proximity Events"];
  }

  if ([(NSArray *)self->_nearbyDevices count])
  {
    [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_nearbyDevices toString:v3 withTitle:@"Nearby Devices"];
  }

  if ([(NSArray *)self->_mediumDevices count])
  {
    [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_mediumDevices toString:v3 withTitle:@"Medium Devices"];
  }

  if ([(NSArray *)self->_immediateDevices count])
  {
    [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_immediateDevices toString:v3 withTitle:@"Immediate Devices"];
  }

  if ([(NSArray *)self->_migratingDevices count])
  {
    [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_migratingDevices toString:v3 withTitle:@"Proximal Migrating Devices"];
  }

  automaticRemoteControlConnections = self->_automaticRemoteControlConnections;
  if (automaticRemoteControlConnections)
  {
    [(MRDDiagnostic *)self _appendNullableObjectDescription:automaticRemoteControlConnections toString:v3 withTitle:@"Preemptive RemoteControl Connections" usingDebugDescription:1];
  }

  [(MRDDiagnostic *)self _appendSubheader:@"Hosted Routing" toString:v3];
  v11 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
  [(MRDDiagnostic *)self _appendNullableObjectDescription:v11 toString:v3 withTitle:@"Hosted Discovery Mode"];

  [v3 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_hostedDiscoverySessions toString:v3 withTitle:@"Discovery Sessions" indentLevel:0 usingDebugDescription:1];
  [v3 appendString:@"\n"];
  [v3 appendString:@"Endpoints:\n"];
  v12 = [NSMutableArray arrayWithCapacity:[(NSDictionary *)self->_hostedExternalDevices count]];
  endpoints = self->_endpoints;
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_100143D3C;
  v65[3] = &unk_1004BEB30;
  v14 = v12;
  v66 = v14;
  selfCopy = self;
  v15 = v3;
  v68 = v15;
  [(NSArray *)endpoints enumerateObjectsUsingBlock:v65];
  v16 = [(NSDictionary *)self->_hostedExternalDevices mutableCopy];
  v52 = v14;
  [v16 removeObjectsForKeys:v14];
  if ([v16 count])
  {
    [v15 appendString:@"Remaining External Devices\n"];
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_100143E88;
    v62[3] = &unk_1004BEB58;
    v17 = v15;
    v63 = v17;
    selfCopy2 = self;
    [v16 enumerateKeysAndObjectsUsingBlock:v62];
    [v17 appendString:@"\n"];
  }

  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_discoverySession toString:v15 withTitle:@"Concrete Discovery Session" usingDebugDescription:1];
  v18 = +[MRUserSettings currentSettings];
  supportMultiplayerHost = [v18 supportMultiplayerHost];

  if (supportMultiplayerHost)
  {
    v20 = +[MRDStreamCapacityManager sharedManager];
    [(MRDDiagnostic *)self _appendNullableObjectDescription:v20 toString:v15 withTitle:@"Stream Count" usingDebugDescription:1];
  }

  v51 = v16;
  [(MRDDiagnostic *)self _appendSubheader:@"Virtual Audio Server" toString:v15];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_recordingEndpointClients toString:v15 withTitle:@"Recording Endpoint Clients"];
  [v15 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_registeredVirtualAudioDevices toString:v15 withTitle:@"Registered Virtual Audio Devices"];
  [(MRDDiagnostic *)self _appendSubheader:@"Transaction Server" toString:v15];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_transactions toString:v15 withTitle:@"Transactions"];
  [v15 appendString:@"\n"];
  [v15 appendFormat:@"Used Transaction Memory: %llu bytes\n", self->_usedTransactionMemory];
  [v15 appendFormat:@"Allowed Transaction Memory: %llu bytes\n", self->_allowedTransactionMemory];
  [v15 appendFormat:@"Transaction Wait Duration: %f seconds\n", *&self->_transactionWaitDuration];
  [(MRDDiagnostic *)self _appendSubheader:@"Group Sessions" toString:v15];
  groupSessionAssertionManagerState = self->_groupSessionAssertionManagerState;
  if (groupSessionAssertionManagerState)
  {
    [(MRDDiagnostic *)self _appendNullableObjectDescription:groupSessionAssertionManagerState toString:v15 withTitle:@"Assertion manager state"];
  }

  [v15 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_currentGroupSession toString:v15 withTitle:@"Current group session"];
  [v15 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_groupSessionManagerAdvertiseReason toString:v15 withTitle:@"Advertiser reason"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_groupSessionAdvertiserState toString:v15 withTitle:@"Advertiser state"];
  [(MRDDiagnostic *)self _appendDescribableArray:self->_groupSessionAdvertiserEvents toString:v15 withTitle:@"Advertiser log history" indentLevel:1];
  [v15 appendString:@"\n"];
  v22 = [NSNumber numberWithBool:self->_groupSessionDiscoveryEnabled];
  stringValue = [v22 stringValue];
  [v15 appendFormat:@"GroupSession discovery enabled: %@\n", stringValue];

  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_discoveredGroupSessions toString:v15 withTitle:@"Discovered group sessions"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_notifiedGroupSessions toString:v15 withTitle:@"Notified group sessions"];
  [v15 appendString:@"\n"];
  [(MRDDiagnostic *)self _appendNullableObjectDescription:self->_groupSessionCoordinatorState toString:v15 withTitle:@"Coordinator state"];
  [(MRDDiagnostic *)self _appendSubheader:@"Media Suggestions Data Source" toString:v15];
  v24 = objc_opt_new();
  v25 = [(MRDDiagnostic *)self mediaSuggestions:v24];
  v50 = v24;
  [(MRDDiagnostic *)self _appendNullableObjectDescription:v24 toString:v15 withTitle:@"Suggestion Preferences"];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v58 objects:v71 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v59;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v59 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v58 + 1) + 8 * i);
        v32 = [v26 objectForKeyedSubscript:v31];
        [(MRDDiagnostic *)self _appendDescribableArray:v32 toString:v15 withTitle:v31];
      }

      v28 = [v26 countByEnumeratingWithState:&v58 objects:v71 count:16];
    }

    while (v28);
  }

  v49 = v26;

  selfCopy3 = self;
  [(MRDDiagnostic *)self _appendSubheader:@"Companion Link" toString:v15];
  v34 = +[MRCompanionLinkClient sharedCompanionLinkClient];
  companionLinkDevices = [v34 companionLinkDevices];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = companionLinkDevices;
  v36 = [obj countByEnumeratingWithState:&v54 objects:v70 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v55;
    do
    {
      for (j = 0; j != v37; j = j + 1)
      {
        if (*v55 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v69 = *(*(&v54 + 1) + 8 * j);
        v40 = v69;
        v41 = [NSArray arrayWithObjects:&v69 count:1];
        mediaRouteIdentifier = [v40 mediaRouteIdentifier];
        v43 = [NSString stringWithFormat:@"RPDevice<routeID: %@>", mediaRouteIdentifier, v49];
        [(MRDDiagnostic *)selfCopy3 _appendDescribableArray:v41 toString:v15 withTitle:v43];

        homeKitUserIdentifiers = [v40 homeKitUserIdentifiers];
        [(MRDDiagnostic *)selfCopy3 _appendDescribableArray:homeKitUserIdentifiers toString:v15 withTitle:@"Home Users"];

        [v15 appendString:@"\n"];
      }

      v37 = [obj countByEnumeratingWithState:&v54 objects:v70 count:16];
    }

    while (v37);
  }

  [(MRDDiagnostic *)selfCopy3 _appendSubheader:@"MediaRemote User defaults" toString:v15];
  v45 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mediaremote"];
  dictionaryRepresentation = [v45 dictionaryRepresentation];
  [(MRDDiagnostic *)selfCopy3 _appendNullableObjectDescription:dictionaryRepresentation toString:v15 withTitle:@"UserDefaults"];
  [v15 appendString:@"\n"];
  [(MRDDiagnostic *)selfCopy3 _appendSubheader:@"Media Control" toString:v15];
  [v15 appendString:selfCopy3->_mediaControlDiagnostic];
  v47 = MRDiagnosticCreate();

  return v47;
}

- (void)_appendNullableObjectDescription:(id)description toString:(id)string withTitle:(id)title usingDebugDescription:(BOOL)debugDescription
{
  descriptionCopy = description;
  stringCopy = string;
  titleCopy = title;
  if (descriptionCopy)
  {
    if (debugDescription)
    {
      [descriptionCopy debugDescription];
    }

    else
    {
      [descriptionCopy description];
    }
    v11 = ;
  }

  else
  {
    v11 = @"(None)";
  }

  [stringCopy appendFormat:@"%@: %@\n", titleCopy, v11];
}

- (void)_appendDescribableArray:(id)array toString:(id)string withTitle:(id)title indentLevel:(unsigned int)level usingDebugDescription:(BOOL)description
{
  descriptionCopy = description;
  arrayCopy = array;
  stringCopy = string;
  titleCopy = title;
  for (i = +[NSMutableString string];
  {
    [i appendString:@"    "];
  }

  [stringCopy appendFormat:@"%@%@:", i, titleCopy];
  if ([arrayCopy count])
  {
    v22 = titleCopy;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = arrayCopy;
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        v19 = 0;
        do
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v23 + 1) + 8 * v19);
          if (descriptionCopy)
          {
            [v20 debugDescription];
          }

          else
          {
            [v20 description];
          }
          v21 = ;
          [stringCopy appendFormat:@"\n%@%@", i, v21];

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v17);
    }

    titleCopy = v22;
  }

  else
  {
    [stringCopy appendFormat:@"\n%@(None)", i];
  }

  [stringCopy appendString:@"\n"];
}

- (id)mediaSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v4 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10003518C;
  v16 = sub_100035A7C;
  v17 = 0;
  v5 = +[MRMediaSuggestionRequest defaultRequest];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001443B0;
  v9[3] = &unk_1004BEB80;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [v5 performWithPreferences:suggestionsCopy completion:v9];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

@end