@interface FBSceneWorkspace
@end

@implementation FBSceneWorkspace

uint64_t __59__FBSceneWorkspace_PosterUIFoundation__pui_posterWorkspace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E699F7F8]) initWithIdentifier:@"PosterKit"];
  v1 = pui_posterWorkspace___PosterWorkspace;
  pui_posterWorkspace___PosterWorkspace = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __75__FBSceneWorkspace_PosterUIFoundation__pui_posterKitComplicationsWorkspace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E699F7F8]) initWithIdentifier:@"PRComplicationsSceneWorkspace"];
  v1 = pui_posterKitComplicationsWorkspace___PosterWorkspace;
  pui_posterKitComplicationsWorkspace___PosterWorkspace = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __85__FBSceneWorkspace_PosterUIFoundation__pui_posterKitExternallyHostedContentWorkspace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E699F7F8]) initWithIdentifier:@"PRExternallyHostedContentSceneWorkspace"];
  v1 = pui_posterKitExternallyHostedContentWorkspace___PosterWorkspace;
  pui_posterKitExternallyHostedContentWorkspace___PosterWorkspace = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __79__FBSceneWorkspace_PosterUIFoundation__pui_posterBoardUIServicesModalWorkspace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E699F7F8]) initWithIdentifier:@"PRUISModalWorkspaceIdentifier"];
  v1 = pui_posterBoardUIServicesModalWorkspace___PosterWorkspace;
  pui_posterBoardUIServicesModalWorkspace___PosterWorkspace = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __56__FBSceneWorkspace_PosterUIFoundation__pui_createScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setIdentifier:v5];

  v6 = [*(a1 + 32) specification];
  [v4 setSpecification:v6];

  v7 = [*(a1 + 32) clientIdentity];
  [v4 setClientIdentity:v7];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__FBSceneWorkspace_PosterUIFoundation__pui_createScene___block_invoke_2;
  v9[3] = &unk_1E78544A8;
  v10 = *(a1 + 32);
  v8 = MEMORY[0x1AC5769F0](v9);
  [v4 configureParameters:v8];
}

void __56__FBSceneWorkspace_PosterUIFoundation__pui_createScene___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) parameterBlock];

  if (v3)
  {
    v4 = [*(a1 + 32) parameterBlock];
    (v4)[2](v4, v5);
  }
}

@end