@interface ASPasswordSignInEventCollector
- (_TtC26AuthenticationServicesCore30ASPasswordSignInEventCollector)init;
- (void)didUseCredentialForUsername:(id)username forHost:(id)host fromProviderWithBundleIdentifier:(id)identifier inAppWithBundleIdentifier:(id)bundleIdentifier listenerEndpoint:(id)endpoint;
- (void)didUseCredentialForUsername:(id)username forURL:(id)l fromProviderWithBundleIdentifier:(id)identifier inBrowserWithBundleIdentifier:(id)bundleIdentifier listenerEndpoint:(id)endpoint;
- (void)signInEventForRecentlyFilledCredentialWithUsername:(NSString *)username forAppWithBundleIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)signInEventForRecentlyFilledCredentialWithUsername:(NSString *)username forRelyingPartyIdentifier:(NSString *)identifier inAppWithBundleIdentifier:(NSString *)bundleIdentifier completionHandler:(id)handler;
@end

@implementation ASPasswordSignInEventCollector

- (void)didUseCredentialForUsername:(id)username forURL:(id)l fromProviderWithBundleIdentifier:(id)identifier inBrowserWithBundleIdentifier:(id)bundleIdentifier listenerEndpoint:(id)endpoint
{
  bundleIdentifierCopy = bundleIdentifier;
  endpointCopy = endpoint;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  v41 = &v36 - v9;
  v11 = sub_1C2170024();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - v16;
  v18 = sub_1C2170914();
  v39 = v19;
  v40 = v18;
  sub_1C216FFD4();
  v37 = sub_1C2170914();
  v21 = v20;
  bundleIdentifierCopy = sub_1C2170914();
  v38 = v22;
  v23 = sub_1C2170BE4();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  (*(v12 + 16))(v15, v17, v11);
  v24 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v28 = v39;
  v27 = v40;
  *(v26 + 4) = self;
  *(v26 + 5) = v27;
  v29 = v37;
  *(v26 + 6) = v28;
  *(v26 + 7) = v29;
  *(v26 + 8) = v21;
  (*(v12 + 32))(&v26[v24], v15, v11);
  v31 = bundleIdentifierCopy;
  v30 = endpointCopy;
  *&v26[v25] = endpointCopy;
  v32 = &v26[(v25 + 15) & 0xFFFFFFFFFFFFFFF8];
  v33 = v38;
  *v32 = v31;
  v32[1] = v33;
  v34 = v30;
  swift_retain_n();
  v35 = v34;
  sub_1C211E0FC(0, 0, v41, &unk_1C21799F8, v26);

  (*(v12 + 8))(v17, v11);
}

- (void)didUseCredentialForUsername:(id)username forHost:(id)host fromProviderWithBundleIdentifier:(id)identifier inAppWithBundleIdentifier:(id)bundleIdentifier listenerEndpoint:(id)endpoint
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  v13 = sub_1C2170914();
  v28 = v14;
  v29 = v13;
  if (host)
  {
    host = sub_1C2170914();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_1C2170914();
  v19 = v18;
  v20 = sub_1C2170914();
  v22 = v21;
  v23 = sub_1C2170BE4();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = host;
  v24[5] = v16;
  v25 = v28;
  v26 = v29;
  v24[6] = self;
  v24[7] = v26;
  v24[8] = v25;
  v24[9] = v17;
  v24[10] = v19;
  v24[11] = endpoint;
  v24[12] = v20;
  v24[13] = v22;
  endpointCopy = endpoint;

  sub_1C211E0FC(0, 0, v12, &unk_1C21799F0, v24);
}

- (void)signInEventForRecentlyFilledCredentialWithUsername:(NSString *)username forRelyingPartyIdentifier:(NSString *)identifier inAppWithBundleIdentifier:(NSString *)bundleIdentifier completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = username;
  v15[3] = identifier;
  v15[4] = bundleIdentifier;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_1C2170BE4();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1C21799D8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1C21799E0;
  v18[5] = v17;
  usernameCopy = username;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;

  sub_1C2166D88(0, 0, v13, &unk_1C21799E8, v18);
}

- (void)signInEventForRecentlyFilledCredentialWithUsername:(NSString *)username forAppWithBundleIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = username;
  v13[3] = identifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1C2170BE4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1C21799B8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1C21799C0;
  v16[5] = v15;
  usernameCopy = username;
  identifierCopy = identifier;

  sub_1C2166D88(0, 0, v11, &unk_1C21768B0, v16);
}

- (_TtC26AuthenticationServicesCore30ASPasswordSignInEventCollector)init
{
  swift_defaultActor_initialize();
  *&self->_anon_60[8] = sub_1C213F510(MEMORY[0x1E69E7CC0]);
  v4.receiver = self;
  v4.super_class = type metadata accessor for ASPasswordSignInEventCollector();
  return [(ASPasswordSignInEventCollector *)&v4 init];
}

@end