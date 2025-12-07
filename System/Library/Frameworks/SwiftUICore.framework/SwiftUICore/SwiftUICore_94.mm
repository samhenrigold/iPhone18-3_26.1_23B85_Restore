void OpenURLAction.callAsFunction(_:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  v4 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v4;
  v6 = v2;
  v7 = v3;
  specialized OpenURLAction._open(_:prefersInApp:completion:)(a1, 2, v5, _ViewInputs.base.modify, _ViewInputs.base.modify);
}

void OpenURLAction.callAsFunction(_:prefersInApp:)(uint64_t a1, char a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 33);
  v5 = *(v2 + 16);
  v6[0] = *v2;
  v6[1] = v5;
  v7 = v3;
  v8 = v4;
  specialized OpenURLAction._open(_:prefersInApp:completion:)(a1, a2 & 1, v6, _ViewInputs.base.modify, _ViewInputs.base.modify);
}

double static OpenURLAction.defaultSystemAction(handler:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = partial apply for closure #1 in static OpenURLAction.defaultSystemAction(handler:);
  *(a3 + 8) = v6;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 256;

  return result;
}

uint64_t partial apply for closure #1 in OpenURLAction.init(_handler:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for OpenURLAction.SystemHandlerInput(0);
  return v3(a1, *(a1 + *(v4 + 24)), *(a1 + *(v4 + 24) + 8));
}

void static OpenURLAction.invalidAction.getter(uint64_t a1@<X8>)
{
  *a1 = closure #1 in static OpenURLAction.invalidAction.getter;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

uint64_t closure #1 in static OpenURLAction.invalidAction.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for discarded != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OpenURLAction.Result(0);
  v3 = __swift_project_value_buffer(v2, static OpenURLAction.Result.discarded);
  return outlined init with copy of OpenURLAction.Result(v3, a1, type metadata accessor for OpenURLAction.Result);
}

unint64_t EnvironmentValues.hasSystemOpenURLAction.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v1) & 1;
  }

  HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(v1);

  return HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 & 1;
}

void key path getter for EnvironmentValues.hasSystemOpenURLAction : EnvironmentValues(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(v3);
  }

  else
  {
    HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(*a1);
  }

  *a2 = HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 & 1;
}

double key path setter for EnvironmentValues.hasSystemOpenURLAction : EnvironmentValues(char *a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022HasSystemOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v4, *a2);
  }

  return result;
}

void (*EnvironmentValues.hasSystemOpenURLAction.modify(void *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(v5);
  }

  else
  {
    HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5 & 1;
  return EnvironmentValues.hasSystemOpenURLAction.modify;
}

void EnvironmentValues.hasSystemOpenURLAction.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022HasSystemOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

double static OpenURLActionKey.defaultValue.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 255;
  return result;
}

void (*EnvironmentValues.openURL.modify(void *a1))(char **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  *a1 = v3;
  v3[17] = v1;
  v3[18] = *v1;
  v3[19] = v1[1];
  EnvironmentValues._openURL.getter((v3 + 10));
  return EnvironmentValues.openURL.modify;
}

uint64_t (*EnvironmentValues._openURL.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  *a1 = v3;
  v3[17] = v1;
  v3[18] = *v1;
  v3[19] = v1[1];
  EnvironmentValues._openURL.getter((v3 + 10));
  return EnvironmentValues._openURL.modify;
}

double EnvironmentValues._defaultOpenURL.setter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v10 = *(a1 + 32);
  v4 = *v1;
  outlined init with copy of OpenURLAction?(v9, v8);
  swift_retain_n();
  outlined init with copy of OpenURLAction?(v9, v8);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2B5(v1, v9);

  outlined destroy of OpenURLAction?(v9);
  v5 = v1[1];
  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV020DefaultOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v4, *v2);
  }

  outlined destroy of OpenURLAction?(v9);
  if (v10 != 0xFF)
  {
    outlined destroy of OpenURLAction?(v9);
    v7 = *v2;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v2, 1);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022HasSystemOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v7, *v2);
    }
  }

  return result;
}

void EnvironmentValues._defaultOpenURL.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (v1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV020DefaultOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(v2, a1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v2, a1);
  }
}

double key path getter for EnvironmentValues._defaultOpenURL : EnvironmentValues@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV020DefaultOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(v3, v7);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(*a1, v7);
  }

  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

double key path setter for EnvironmentValues._defaultOpenURL : EnvironmentValues(uint64_t a1, Swift::UInt *a2)
{
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v10 = *(a1 + 32);
  v4 = *a2;
  swift_retain_n();
  outlined init with copy of OpenURLAction?(v9, v8);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2B5(a2, v9);

  outlined destroy of OpenURLAction?(v9);
  v5 = a2[1];
  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV020DefaultOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v4, *a2);
  }

  if (v10 != 0xFF)
  {
    v7 = *a2;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(a2, 1);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022HasSystemOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v7, *a2);
    }
  }

  return result;
}

void (*EnvironmentValues._defaultOpenURL.modify(void *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xD8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[24] = v1;
  v5 = *v1;
  v3[25] = *v1;
  v6 = *(v1 + 8);
  v3[26] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV020DefaultOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(v5, (v4 + 10));
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<HoverEffectContextKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>, &type metadata for EnvironmentValues.DefaultOpenURLActionKey, &protocol witness table for EnvironmentValues.DefaultOpenURLActionKey);
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV020DefaultOpenURLActionV006_B30D3E24A753616B2150C4E3EFDA1ED9LLVG_Tt0B5(v5, v15);
    if (v8)
    {
      v10 = v8[9];
      v9 = v8[10];
      v11 = v8[11];
      v12 = v8[12];
      v13 = *(v8 + 52);
      v4[10] = v10;
      v4[11] = v9;
      v4[12] = v11;
      v4[13] = v12;
      *(v4 + 56) = v13;
      outlined copy of OpenURLAction?(v10, v9, v11, v12, v13);
    }

    else
    {
      *(v4 + 5) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 56) = 255;
    }
  }

  return EnvironmentValues._defaultOpenURL.modify;
}

void EnvironmentValues._defaultOpenURL.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 26);
  v4 = *(*a1 + 24);
  if (a2)
  {
    v5 = *(v2 + 6);
    *v2 = *(v2 + 5);
    *(v2 + 1) = v5;
    *(v2 + 16) = *(v2 + 56);

    outlined init with copy of OpenURLAction?(v2, (v2 + 15));

    outlined init with copy of OpenURLAction?(v2, (v2 + 15));
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2B5(v4, v2);

    outlined destroy of OpenURLAction?(v2);
    if (v3)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV020DefaultOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v2[25], *v2[24]);
    }

    if (*(v2 + 32) != 0xFF)
    {
      v6 = v2[26];
      v7 = v2[24];
      outlined destroy of OpenURLAction?(v2);
      v8 = *v7;
      swift_retain_n();
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v7, 1);

      if (v6)
      {
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022HasSystemOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v8, *v2[24]);
      }
    }

    outlined consume of OpenURLAction?(v2[10], v2[11], v2[12], v2[13], *(v2 + 56));
  }

  else
  {
    v9 = *(v2 + 6);
    *(v2 + 5) = *(v2 + 5);
    *(v2 + 7) = v9;
    *(v2 + 36) = *(v2 + 56);
    outlined init with copy of OpenURLAction?((v2 + 5), (v2 + 15));
    swift_retain_n();
    outlined init with copy of OpenURLAction?((v2 + 5), (v2 + 15));
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2B5(v4, (v2 + 5));

    outlined destroy of OpenURLAction?((v2 + 5));
    if (v3)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesV020DefaultOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v2[25], *v2[24]);
    }

    outlined destroy of OpenURLAction?((v2 + 5));
    if (*(v2 + 72) != 0xFF)
    {
      v10 = v2[26];
      v11 = v2[24];
      outlined destroy of OpenURLAction?((v2 + 5));
      v12 = *v11;
      swift_retain_n();
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(v11, 1);

      if (v10)
      {
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022HasSystemOpenURLActionK033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Ttg5(v12, *v2[24]);
      }
    }
  }

  free(v2);
}

double EnvironmentValues.openURL.setter(uint64_t a1, void (*a2)(void *, void *, _BYTE *), void (*a3)(uint64_t, void))
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  if (*(a1 + 33))
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v17[0] = *a1;
  v17[1] = v6;
  v17[2] = v7;
  v17[3] = v8;
  v18 = v10 | v9;
  v11 = *v3;
  swift_retain_n();
  v12 = outlined copy of OpenURLAction.Handler(v5, v6, v7, v8, v9);
  (a2)(v3, v17, v16, v12);

  v13 = outlined consume of OpenURLAction.Handler(v5, v6, v7, v8, v9);
  if (v3[1])
  {
    (a3)(v11, *v3, v13);
  }

  return outlined consume of OpenURLAction.Handler(v5, v6, v7, v8, v9);
}

void (*EnvironmentValues._openSensitiveURL.modify(void *a1))(char **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  *a1 = v3;
  v3[17] = v1;
  v3[18] = *v1;
  v3[19] = v1[1];
  EnvironmentValues._openSensitiveURL.getter((v3 + 10));
  return EnvironmentValues._openSensitiveURL.modify;
}

void EnvironmentValues.openURL.modify(char **a1, char a2, void (*a3)(uint64_t, uint64_t *, uint64_t *, double), void (*a4)(uint64_t, void, double))
{
  v5 = *a1;
  v6 = *(*a1 + 10);
  v8 = *(*a1 + 11);
  v7 = *(*a1 + 12);
  v9 = *(*a1 + 13);
  v10 = (*a1)[112];
  if ((*a1)[113])
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 | v10;
  v13 = v5[19];
  v14 = v5[17];
  if (a2)
  {
    *v5 = v6;
    v5[1] = v8;
    v5[2] = v7;
    v5[3] = v9;
    *(v5 + 16) = v12;

    outlined copy of OpenURLAction.Handler(v6, v8, v7, v9, v10);

    v15 = outlined copy of OpenURLAction.Handler(v6, v8, v7, v9, v10);
    a3(v14, v5, v5 + 15, v15);

    v16 = outlined consume of OpenURLAction.Handler(v6, v8, v7, v9, v10);
    if (v13)
    {
      a4(v5[18], *v5[17], v16);
    }

    outlined consume of OpenURLAction.Handler(v6, v8, v7, v9, v10);
    v17 = v5[10];
    v18 = v5[11];
    v19 = v5[12];
    v20 = v5[13];
    v21 = *(v5 + 112);
  }

  else
  {
    v5[5] = v6;
    v5[6] = v8;
    v5[7] = v7;
    v5[8] = v9;
    *(v5 + 36) = v12;
    swift_retain_n();
    v22 = outlined copy of OpenURLAction.Handler(v6, v8, v7, v9, v10);
    a3(v14, v5 + 5, v5 + 16, v22);

    v23 = outlined consume of OpenURLAction.Handler(v6, v8, v7, v9, v10);
    if (v13)
    {
      a4(v5[18], *v5[17], v23);
    }

    v17 = v6;
    v18 = v8;
    v19 = v7;
    v20 = v9;
    v21 = v10;
  }

  outlined consume of OpenURLAction.Handler(v17, v18, v19, v20, v21);

  free(v5);
}

double View.onOpenURL(prefersInApp:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v9 = partial apply for closure #1 in View.onOpenURL(prefersInApp:);
  v10 = v7;
  v11 = 0;
  v12 = 0;
  v13 = 1;
  View.environment<A>(_:_:)(KeyPath, &v9, a2, a3);

  return outlined consume of OpenURLAction.Handler(v9, v10, v11, v12, v13);
}

uint64_t closure #1 in View.onOpenURL(prefersInApp:)@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  type metadata accessor for URL?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  v9 = v8;
  v10 = *(v8 + 48);
  outlined init with take of URL?(v6, a2);
  *(a2 + v10) = a1;
  return (*(*(v9 - 8) + 56))(a2, 0, 2, v9);
}

uint64_t outlined init with copy of OpenURLAction?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OpenURLAction?(0, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of OpenURLAction?(uint64_t a1)
{
  type metadata accessor for OpenURLAction?(0, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *initializeBufferWithCopyOfBuffer for OpenURLAction.SystemHandlerInput(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
  }

  return a1;
}

double destroy for OpenURLAction.SystemHandlerInput(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(a1, v3);

  return result;
}

uint64_t initializeWithCopy for OpenURLAction.SystemHandlerInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  return a1;
}

uint64_t assignWithCopy for OpenURLAction.SystemHandlerInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  v7 = *(a3 + 24);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  return a1;
}

uint64_t initializeWithTake for OpenURLAction.SystemHandlerInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t assignWithTake for OpenURLAction.SystemHandlerInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t type metadata completion function for OpenURLAction.SystemHandlerInput(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for OpenURLAction.Handler(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of OpenURLAction.Handler(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for OpenURLAction.Handler(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of OpenURLAction.Handler(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  outlined consume of OpenURLAction.Handler(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for OpenURLAction.Handler(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  *(a1 + 32) = v3;
  outlined consume of OpenURLAction.Handler(v4, v6, v5, v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for OpenURLAction.Handler(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for OpenURLAction.Handler(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for OpenURLAction.Result(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for OpenURLAction.Result.ActionResult(0) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = v4;
  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  v8 = v7;
  v9 = *(v7 - 8);
  if (!(*(v9 + 48))(a2, 2, v7))
  {
    v13 = type metadata accessor for URL();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2, 1, v13))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(a1, a2, v13);
      (*(v14 + 56))(a1, 0, 1, v13);
    }

    *(a1 + *(v8 + 48)) = *(a2 + *(v8 + 48));
    (*(v9 + 56))(a1, 0, 2, v8);
    return a1;
  }

  v10 = *(v6 + 64);

  return memcpy(a1, a2, v10);
}

void *initializeWithCopy for OpenURLAction.Result(void *a1, const void *a2)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  v5 = v4;
  v6 = *(v4 - 8);
  if ((*(v6 + 48))(a2, 2, v4))
  {
    v7 = *(*(type metadata accessor for OpenURLAction.Result.ActionResult(0) - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a2, 1, v9))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(a1, a2, v9);
      (*(v10 + 56))(a1, 0, 1, v9);
    }

    *(a1 + *(v5 + 48)) = *(a2 + *(v5 + 48));
    (*(v6 + 56))(a1, 0, 2, v5);
    return a1;
  }
}

_BYTE *assignWithCopy for OpenURLAction.Result(_BYTE *a1, _BYTE *a2)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 2, v4);
  v9 = v7(a2, 2, v5);
  if (!v8)
  {
    if (v9)
    {
      outlined destroy of OpenURLAction.SystemHandlerInput(a1, type metadata accessor for (url: URL?, prefersInApp: Bool));
      goto LABEL_7;
    }

    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v17 = *(v16 + 48);
    v18 = v17(a1, 1, v15);
    v19 = v17(a2, 1, v15);
    if (v18)
    {
      if (!v19)
      {
        (*(v16 + 16))(a1, a2, v15);
        (*(v16 + 56))(a1, 0, 1, v15);
LABEL_18:
        a1[*(v5 + 48)] = a2[*(v5 + 48)];
        return a1;
      }
    }

    else
    {
      if (!v19)
      {
        (*(v16 + 24))(a1, a2, v15);
        goto LABEL_18;
      }

      (*(v16 + 8))(a1, v15);
    }

    type metadata accessor for URL?(0);
    memcpy(a1, a2, *(*(v20 - 8) + 64));
    goto LABEL_18;
  }

  if (!v9)
  {
    v10 = type metadata accessor for URL();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a2, 1, v10))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(a1, a2, v10);
      (*(v11 + 56))(a1, 0, 1, v10);
    }

    a1[*(v5 + 48)] = a2[*(v5 + 48)];
    (*(v6 + 56))(a1, 0, 2, v5);
    return a1;
  }

LABEL_7:
  v13 = *(*(type metadata accessor for OpenURLAction.Result.ActionResult(0) - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t outlined destroy of OpenURLAction.SystemHandlerInput(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *initializeWithTake for OpenURLAction.Result(void *a1, const void *a2)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  v5 = v4;
  v6 = *(v4 - 8);
  if ((*(v6 + 48))(a2, 2, v4))
  {
    v7 = *(*(type metadata accessor for OpenURLAction.Result.ActionResult(0) - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    v9 = type metadata accessor for URL();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(a2, 1, v9))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
    }

    else
    {
      (*(v10 + 32))(a1, a2, v9);
      (*(v10 + 56))(a1, 0, 1, v9);
    }

    *(a1 + *(v5 + 48)) = *(a2 + *(v5 + 48));
    (*(v6 + 56))(a1, 0, 2, v5);
    return a1;
  }
}

_BYTE *assignWithTake for OpenURLAction.Result(_BYTE *a1, _BYTE *a2)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 2, v4);
  v9 = v7(a2, 2, v5);
  if (!v8)
  {
    if (v9)
    {
      outlined destroy of OpenURLAction.SystemHandlerInput(a1, type metadata accessor for (url: URL?, prefersInApp: Bool));
      goto LABEL_7;
    }

    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v17 = *(v16 + 48);
    v18 = v17(a1, 1, v15);
    v19 = v17(a2, 1, v15);
    if (v18)
    {
      if (!v19)
      {
        (*(v16 + 32))(a1, a2, v15);
        (*(v16 + 56))(a1, 0, 1, v15);
LABEL_18:
        a1[*(v5 + 48)] = a2[*(v5 + 48)];
        return a1;
      }
    }

    else
    {
      if (!v19)
      {
        (*(v16 + 40))(a1, a2, v15);
        goto LABEL_18;
      }

      (*(v16 + 8))(a1, v15);
    }

    type metadata accessor for URL?(0);
    memcpy(a1, a2, *(*(v20 - 8) + 64));
    goto LABEL_18;
  }

  if (!v9)
  {
    v10 = type metadata accessor for URL();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a2, 1, v10))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v11 + 32))(a1, a2, v10);
      (*(v11 + 56))(a1, 0, 1, v10);
    }

    a1[*(v5 + 48)] = a2[*(v5 + 48)];
    (*(v6 + 56))(a1, 0, 2, v5);
    return a1;
  }

LABEL_7:
  v13 = *(*(type metadata accessor for OpenURLAction.Result.ActionResult(0) - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t *initializeBufferWithCopyOfBuffer for OpenURLAction.Result.ActionResult(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  v8 = v7;
  v9 = *(v7 - 8);
  if (!(*(v9 + 48))(a2, 2, v7))
  {
    v13 = type metadata accessor for URL();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2, 1, v13))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(a1, a2, v13);
      (*(v14 + 56))(a1, 0, 1, v13);
    }

    *(a1 + *(v8 + 48)) = *(a2 + *(v8 + 48));
    (*(v9 + 56))(a1, 0, 2, v8);
    return a1;
  }

  v10 = *(v6 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t destroy for OpenURLAction.Result(uint64_t a1)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  result = (*(*(v2 - 8) + 48))(a1, 2, v2);
  if (!result)
  {
    v4 = type metadata accessor for URL();
    v6 = *(v4 - 8);
    result = (*(v6 + 48))(a1, 1, v4);
    if (!result)
    {
      v5 = *(v6 + 8);

      return v5(a1, v4);
    }
  }

  return result;
}

void *initializeWithCopy for OpenURLAction.Result.ActionResult(void *a1, const void *a2, uint64_t a3)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 2, v6))
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(a2, 1, v11))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v12 + 16))(a1, a2, v11);
      (*(v12 + 56))(a1, 0, 1, v11);
    }

    *(a1 + *(v7 + 48)) = *(a2 + *(v7 + 48));
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }
}

_BYTE *assignWithCopy for OpenURLAction.Result.ActionResult(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 2, v6);
  v11 = v9(a2, 2, v7);
  if (!v10)
  {
    if (v11)
    {
      outlined destroy of OpenURLAction.SystemHandlerInput(a1, type metadata accessor for (url: URL?, prefersInApp: Bool));
      goto LABEL_7;
    }

    v17 = type metadata accessor for URL();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    v20 = v19(a1, 1, v17);
    v21 = v19(a2, 1, v17);
    if (v20)
    {
      if (!v21)
      {
        (*(v18 + 16))(a1, a2, v17);
        (*(v18 + 56))(a1, 0, 1, v17);
LABEL_18:
        a1[*(v7 + 48)] = a2[*(v7 + 48)];
        return a1;
      }
    }

    else
    {
      if (!v21)
      {
        (*(v18 + 24))(a1, a2, v17);
        goto LABEL_18;
      }

      (*(v18 + 8))(a1, v17);
    }

    type metadata accessor for URL?(0);
    memcpy(a1, a2, *(*(v22 - 8) + 64));
    goto LABEL_18;
  }

  if (!v11)
  {
    v12 = type metadata accessor for URL();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(a2, 1, v12))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v13 + 16))(a1, a2, v12);
      (*(v13 + 56))(a1, 0, 1, v12);
    }

    a1[*(v7 + 48)] = a2[*(v7 + 48)];
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }

LABEL_7:
  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

void *initializeWithTake for OpenURLAction.Result.ActionResult(void *a1, const void *a2, uint64_t a3)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 2, v6))
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(a2, 1, v11))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v12 + 32))(a1, a2, v11);
      (*(v12 + 56))(a1, 0, 1, v11);
    }

    *(a1 + *(v7 + 48)) = *(a2 + *(v7 + 48));
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }
}

_BYTE *assignWithTake for OpenURLAction.Result.ActionResult(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 2, v6);
  v11 = v9(a2, 2, v7);
  if (!v10)
  {
    if (v11)
    {
      outlined destroy of OpenURLAction.SystemHandlerInput(a1, type metadata accessor for (url: URL?, prefersInApp: Bool));
      goto LABEL_7;
    }

    v17 = type metadata accessor for URL();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    v20 = v19(a1, 1, v17);
    v21 = v19(a2, 1, v17);
    if (v20)
    {
      if (!v21)
      {
        (*(v18 + 32))(a1, a2, v17);
        (*(v18 + 56))(a1, 0, 1, v17);
LABEL_18:
        a1[*(v7 + 48)] = a2[*(v7 + 48)];
        return a1;
      }
    }

    else
    {
      if (!v21)
      {
        (*(v18 + 40))(a1, a2, v17);
        goto LABEL_18;
      }

      (*(v18 + 8))(a1, v17);
    }

    type metadata accessor for URL?(0);
    memcpy(a1, a2, *(*(v22 - 8) + 64));
    goto LABEL_18;
  }

  if (!v11)
  {
    v12 = type metadata accessor for URL();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(a2, 1, v12))
    {
      type metadata accessor for URL?(0);
      memcpy(a1, a2, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v13 + 32))(a1, a2, v12);
      (*(v13 + 56))(a1, 0, 1, v12);
    }

    a1[*(v7 + 48)] = a2[*(v7 + 48)];
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }

LABEL_7:
  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

uint64_t getEnumTag for OpenURLAction.Result.ActionResult(uint64_t a1)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 2, v2);
}

uint64_t destructiveInjectEnumTag for OpenURLAction.Result.ActionResult(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 2, v4);
}

void type metadata accessor for OpenURLAction?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

Swift::Int LeafContentType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

double key path setter for _GraphInputs.requestedLeafContentType : _GraphInputs(char *a1, Swift::UInt *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA24RequestedLeafContentTypeV_Tt2g5(a2, v3);

  return result;
}

double _GraphInputs.requestedLeafContentType.setter(char a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA24RequestedLeafContentTypeV_Tt2g5(v1, a1);

  return result;
}

void (*_GraphInputs.requestedLeafContentType.modify(uint64_t *a1))(Swift::UInt ***a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24RequestedLeafContentTypeV_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return _GraphInputs.requestedLeafContentType.modify;
}

void _GraphInputs.requestedLeafContentType.modify(Swift::UInt ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA24RequestedLeafContentTypeV_Tt2g5(v1[2], v2);

  free(v1);
}

void lazy protocol witness table accessor for type LeafContentType and conformance LeafContentType()
{
  if (!lazy protocol witness table cache variable for type LeafContentType and conformance LeafContentType)
  {
    swift_getWitnessTable(protocol conformance descriptor for LeafContentType, &type metadata for LeafContentType, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LeafContentType and conformance LeafContentType);
  }
}

ValueMetadata *Font.DynamicModifierTag.type.getter()
{
  switch(*v0)
  {
    case 1:
      v1 = &type metadata for Font.WidthModifier;
      lazy protocol witness table accessor for type Font.WidthModifier and conformance Font.WidthModifier();
      break;
    case 2:
      v1 = &type metadata for Font.GradeModifier;
      lazy protocol witness table accessor for type Font.GradeModifier and conformance Font.GradeModifier();
      break;
    case 3:
      v1 = &type metadata for Font.DesignModifier;
      lazy protocol witness table accessor for type Font.DesignModifier and conformance Font.DesignModifier();
      break;
    case 4:
      v1 = &type metadata for Font.StylisticAlternativeModifier;
      lazy protocol witness table accessor for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier();
      break;
    case 5:
      v1 = &type metadata for Font.LeadingModifier;
      lazy protocol witness table accessor for type Font.LeadingModifier and conformance Font.LeadingModifier();
      break;
    case 6:
      v1 = &type metadata for Font.VariationModifier;
      lazy protocol witness table accessor for type Font.VariationModifier and conformance Font.VariationModifier();
      break;
    case 7:
      v1 = &type metadata for Font.FeatureSettingModifier;
      lazy protocol witness table accessor for type Font.FeatureSettingModifier and conformance Font.FeatureSettingModifier();
      break;
    case 8:
      v1 = &type metadata for Font.OpenTypeFeatureSettingModifier;
      lazy protocol witness table accessor for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier();
      break;
    case 9:
      v1 = &type metadata for Font.FeatureDictionariesSettingModifier;
      lazy protocol witness table accessor for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier();
      break;
    case 0xA:
      v1 = &type metadata for LanguageFontModifier;
      lazy protocol witness table accessor for type LanguageFontModifier and conformance LanguageFontModifier();
      break;
    case 0xB:
      v1 = &type metadata for LanguageAwareLineHeightRatioFontModifier;
      lazy protocol witness table accessor for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier();
      break;
    case 0xC:
      v1 = &type metadata for Font.ScalePointSizeModifier;
      lazy protocol witness table accessor for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier();
      break;
    case 0xD:
      v1 = &type metadata for Font.PointSizeModifier;
      lazy protocol witness table accessor for type Font.PointSizeModifier and conformance Font.PointSizeModifier();
      break;
    default:
      v1 = &type metadata for Font.WeightModifier;
      lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier();
      break;
  }

  return v1;
}

void lazy protocol witness table accessor for type Font.PointSizeModifier and conformance Font.PointSizeModifier()
{
  if (!lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.PointSizeModifier, &type metadata for Font.PointSizeModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.PointSizeModifier, &type metadata for Font.PointSizeModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier)
  {
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.PointSizeModifier, &type metadata for Font.PointSizeModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.PointSizeModifier and conformance Font.PointSizeModifier);
  }
}

void lazy protocol witness table accessor for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier()
{
  if (!lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.ScalePointSizeModifier, &type metadata for Font.ScalePointSizeModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.ScalePointSizeModifier, &type metadata for Font.ScalePointSizeModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.ScalePointSizeModifier, &type metadata for Font.ScalePointSizeModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.ScalePointSizeModifier, &type metadata for Font.ScalePointSizeModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.ScalePointSizeModifier and conformance Font.ScalePointSizeModifier);
  }
}

void lazy protocol witness table accessor for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier()
{
  if (!lazy protocol witness table cache variable for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for LanguageAwareLineHeightRatioFontModifier, &type metadata for LanguageAwareLineHeightRatioFontModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for LanguageAwareLineHeightRatioFontModifier, &type metadata for LanguageAwareLineHeightRatioFontModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for LanguageAwareLineHeightRatioFontModifier, &type metadata for LanguageAwareLineHeightRatioFontModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LanguageAwareLineHeightRatioFontModifier and conformance LanguageAwareLineHeightRatioFontModifier);
  }
}

void lazy protocol witness table accessor for type LanguageFontModifier and conformance LanguageFontModifier()
{
  if (!lazy protocol witness table cache variable for type LanguageFontModifier and conformance LanguageFontModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for LanguageFontModifier, &type metadata for LanguageFontModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LanguageFontModifier and conformance LanguageFontModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type LanguageFontModifier and conformance LanguageFontModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for LanguageFontModifier, &type metadata for LanguageFontModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LanguageFontModifier and conformance LanguageFontModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type LanguageFontModifier and conformance LanguageFontModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for LanguageFontModifier, &type metadata for LanguageFontModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LanguageFontModifier and conformance LanguageFontModifier);
  }
}

void lazy protocol witness table accessor for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier()
{
  if (!lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.FeatureDictionariesSettingModifier, &type metadata for Font.FeatureDictionariesSettingModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.FeatureDictionariesSettingModifier, &type metadata for Font.FeatureDictionariesSettingModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.FeatureDictionariesSettingModifier, &type metadata for Font.FeatureDictionariesSettingModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.FeatureDictionariesSettingModifier, &type metadata for Font.FeatureDictionariesSettingModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.FeatureDictionariesSettingModifier and conformance Font.FeatureDictionariesSettingModifier);
  }
}

void lazy protocol witness table accessor for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier()
{
  if (!lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.OpenTypeFeatureSettingModifier, &type metadata for Font.OpenTypeFeatureSettingModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.OpenTypeFeatureSettingModifier, &type metadata for Font.OpenTypeFeatureSettingModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.OpenTypeFeatureSettingModifier, &type metadata for Font.OpenTypeFeatureSettingModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.OpenTypeFeatureSettingModifier, &type metadata for Font.OpenTypeFeatureSettingModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier);
  }
}

void lazy protocol witness table accessor for type Font.VariationModifier and conformance Font.VariationModifier()
{
  if (!lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.VariationModifier, &type metadata for Font.VariationModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.VariationModifier, &type metadata for Font.VariationModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.VariationModifier, &type metadata for Font.VariationModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.VariationModifier, &type metadata for Font.VariationModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.VariationModifier and conformance Font.VariationModifier);
  }
}

void lazy protocol witness table accessor for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier()
{
  if (!lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StylisticAlternativeModifier, &type metadata for Font.StylisticAlternativeModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StylisticAlternativeModifier, &type metadata for Font.StylisticAlternativeModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StylisticAlternativeModifier, &type metadata for Font.StylisticAlternativeModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StylisticAlternativeModifier, &type metadata for Font.StylisticAlternativeModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StylisticAlternativeModifier and conformance Font.StylisticAlternativeModifier);
  }
}

void lazy protocol witness table accessor for type Font.DesignModifier and conformance Font.DesignModifier()
{
  if (!lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.DesignModifier, &type metadata for Font.DesignModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.DesignModifier, &type metadata for Font.DesignModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.DesignModifier, &type metadata for Font.DesignModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.DesignModifier and conformance Font.DesignModifier);
  }
}

void lazy protocol witness table accessor for type Font.GradeModifier and conformance Font.GradeModifier()
{
  if (!lazy protocol witness table cache variable for type Font.GradeModifier and conformance Font.GradeModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.GradeModifier, &type metadata for Font.GradeModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.GradeModifier and conformance Font.GradeModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.GradeModifier and conformance Font.GradeModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.GradeModifier, &type metadata for Font.GradeModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.GradeModifier and conformance Font.GradeModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.GradeModifier and conformance Font.GradeModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.GradeModifier, &type metadata for Font.GradeModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.GradeModifier and conformance Font.GradeModifier);
  }
}

void lazy protocol witness table accessor for type Font.WidthModifier and conformance Font.WidthModifier()
{
  if (!lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.WidthModifier, &type metadata for Font.WidthModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.WidthModifier, &type metadata for Font.WidthModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.WidthModifier, &type metadata for Font.WidthModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.WidthModifier, &type metadata for Font.WidthModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.WidthModifier and conformance Font.WidthModifier);
  }
}

void Font.DynamicModifierTag.init(rawValue:)(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Font.DynamicModifierTag.init(rawValue:), v3);

  v6 = 14;
  if (v5 < 0xE)
  {
    v6 = v5;
  }

  *a2 = v6;
}

unint64_t Font.DynamicModifierTag.rawValue.getter()
{
  result = 0x746867696577;
  switch(*v0)
  {
    case 1:
      result = 0x6874646977;
      break;
    case 2:
      result = 0x6564617267;
      break;
    case 3:
      result = 0x6E6769736564;
      break;
    case 4:
      v2 = 5;
      goto LABEL_7;
    case 5:
      result = 0x676E696461656CLL;
      break;
    case 6:
      result = 0x6F69746169726176;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      v2 = 10;
LABEL_7:
      result = v2 | 0xD000000000000010;
      break;
    case 0xA:
      result = 0x65676175676E616CLL;
      break;
    case 0xB:
      result = 0x67696548656E696CLL;
      break;
    case 0xC:
      result = 0x696F50656C616373;
      break;
    case 0xD:
      result = 0x746E696F50746573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Font.DynamicModifierTag()
{
  v0 = Font.DynamicModifierTag.rawValue.getter();
  v2 = v1;
  if (v0 == Font.DynamicModifierTag.rawValue.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Font.DynamicModifierTag()
{
  Hasher.init(_seed:)();
  Font.DynamicModifierTag.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance Font.DynamicModifierTag(uint64_t a1)
{
  Font.DynamicModifierTag.rawValue.getter();
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Font.DynamicModifierTag(uint64_t a1)
{
  Hasher.init(_seed:)();
  Font.DynamicModifierTag.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Font.DynamicModifierTag@<X0>(unint64_t *a1@<X8>)
{
  result = Font.DynamicModifierTag.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double Font.WeightModifier.codingProxy.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double static Font.WeightModifier.unwrap(codingProxy:)@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void Font.DesignModifier.codingProxy.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (*v0)
    {
      goto LABEL_8;
    }

    v1 = MEMORY[0x1E69658B8];
    v2 = *MEMORY[0x1E69658B8];
    if (*MEMORY[0x1E69658B8])
    {
LABEL_11:
      v3 = v2;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }

    __break(1u);
  }

  if (v1 != 2)
  {
    goto LABEL_10;
  }

  v2 = *MEMORY[0x1E69658C8];
  if (*MEMORY[0x1E69658C8])
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_8:
  v2 = *MEMORY[0x1E69658D0];
  if (*MEMORY[0x1E69658D0])
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_10:
  v2 = *MEMORY[0x1E69658C0];
  if (*MEMORY[0x1E69658C0])
  {
    goto LABEL_11;
  }

  __break(1u);
}

void static Font.DesignModifier.unwrap(codingProxy:)(char *a1@<X8>)
{
  v2 = MEMORY[0x193ABEC20]();
  Font.Design.init(ctDesignIdentifier:)(v2, &v4);
  v3 = v4;
  if (v4 == 4)
  {
    v3 = 0;
  }

  *a1 = v3;
}

void static Font.Design.unwrap(codingProxy:)(char *a1@<X8>)
{
  v2 = MEMORY[0x193ABEC20]();
  Font.Design.init(ctDesignIdentifier:)(v2, &v4);
  v3 = v4;
  if (v4 == 4)
  {
    v3 = 0;
  }

  *a1 = v3;
}

void protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Font.DesignModifier(void *a1@<X0>, char *a2@<X8>)
{
  v3 = MEMORY[0x193ABEC20](*a1, a1[1]);
  Font.Design.init(ctDesignIdentifier:)(v3, &v5);
  v4 = v5;
  if (v5 == 4)
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t static Font.LeadingModifier.unwrap(codingProxy:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 0x10000)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  if (result == 0x8000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (!result)
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

_DWORD *protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Font.LeadingModifier@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  v2 = *result == 0x8000;
  if (*result == 0x10000)
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

double Font.VariationModifier.codingProxy.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = result;
  return result;
}

double static Font.VariationModifier.unwrap(codingProxy:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = result;
  return result;
}

double protocol witness for CodableByProxy.codingProxy.getter in conformance Font.VariationModifier@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = result;
  return result;
}

double protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Font.VariationModifier@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = result;
  return result;
}

__n128 Font.FeatureSettingModifier.codingProxy.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 static Font.FeatureSettingModifier.unwrap(codingProxy:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double static Font.OpenTypeFeatureSettingModifier.unwrap(codingProxy:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  return result;
}

double protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Font.OpenTypeFeatureSettingModifier@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

void *Font.FeatureDictionariesSettingModifier.codingProxy.getter()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x193AC03C0](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v8 = *(v10 + 16);
      v7 = *(v10 + 24);
      if (v8 >= v7 >> 1)
      {
        v9 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v6 = v9;
      }

      ++v5;
      *(v10 + 16) = v8 + 1;
      *(v10 + 8 * v8 + 32) = v6;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t static Font.FeatureDictionariesSettingModifier.unwrap(codingProxy:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = result;
    v9 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = (v5 + 32);
    do
    {
      v7 = *v6++;
      v8 = v7;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
    v4 = v9;
  }

  *a2 = v4;
  return result;
}

void *protocol witness for CodableByProxy.codingProxy.getter in conformance Font.FeatureDictionariesSettingModifier@<X0>(uint64_t *a1@<X8>)
{
  result = Font.FeatureDictionariesSettingModifier.codingProxy.getter();
  *a1 = result;
  return result;
}

double protocol witness for CodableByProxy.codingProxy.getter in conformance LanguageFontModifier@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

double protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance LanguageFontModifier@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Font.VariationDefinition.CodingKeys()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance Font.VariationDefinition.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.VariationDefinition.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.VariationDefinition.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Font.VariationDefinition.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Font.VariationDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.VariationDefinition.CodingKeys>, lazy protocol witness table accessor for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys, &unk_1F005D4F8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = v8;
  v18 = 0;
  type metadata accessor for ProxyCodable<Font.VariationAxisIdentifier>(0, v10, v11, v12);
  lazy protocol witness table accessor for type ProxyCodable<Font.VariationAxisIdentifier> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Font.VariationAxisIdentifier> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Font.VariationAxisIdentifier>, protocol conformance descriptor for ProxyCodable<A>);
  v13 = v15;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v13)
  {
    v17 = v9;
    v16 = 1;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Font.VariationDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a2;
  type metadata accessor for KeyedEncodingContainer<Font.VariationDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.VariationDefinition.CodingKeys>, lazy protocol witness table accessor for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys, &unk_1F005D4F8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v6;
    v13 = v17[0];
    type metadata accessor for ProxyCodable<Font.VariationAxisIdentifier>(0, v9, v10, v11);
    v19 = 0;
    lazy protocol witness table accessor for type ProxyCodable<Font.VariationAxisIdentifier> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Font.VariationAxisIdentifier> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Font.VariationAxisIdentifier>, protocol conformance descriptor for ProxyCodable<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v20;
    v18 = 1;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v12 + 8))(v8, v5);
    v16 = v17[1];
    *v13 = v14;
    *(v13 + 8) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Font.FeatureSettingDefinition.CodingKeys()
{
  if (*v0)
  {
    return 0x726F7463656C6573;
  }

  else
  {
    return 1701869940;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance Font.FeatureSettingDefinition.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.FeatureSettingDefinition.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.FeatureSettingDefinition.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Font.FeatureSettingDefinition.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Font.VariationDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.FeatureSettingDefinition.CodingKeys>, lazy protocol witness table accessor for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys, &unk_1F005D468, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v10[0] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  v8 = v10[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v8)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Font.FeatureSettingDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = a2;
  type metadata accessor for KeyedEncodingContainer<Font.VariationDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.FeatureSettingDefinition.CodingKeys>, lazy protocol witness table accessor for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys, &unk_1F005D468, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v14;
    v16 = 0;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *v9 = v10;
    v9[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CodableFontWeight.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v4[6] = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t CodableFontWeight.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = v7[6];
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void lazy protocol witness table accessor for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.VariationDefinition.CodingKeys, &unk_1F005D4F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.VariationDefinition.CodingKeys, &unk_1F005D4F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.VariationDefinition.CodingKeys, &unk_1F005D4F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.VariationDefinition.CodingKeys, &unk_1F005D4F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.VariationDefinition.CodingKeys and conformance Font.VariationDefinition.CodingKeys);
  }
}

void type metadata accessor for ProxyCodable<Font.VariationAxisIdentifier>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ProxyCodable<Font.VariationAxisIdentifier>)
  {
    v4 = type metadata accessor for ProxyCodable(0, &type metadata for Font.VariationAxisIdentifier, &protocol witness table for Font.VariationAxisIdentifier, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ProxyCodable<Font.VariationAxisIdentifier>);
    }
  }
}

void lazy protocol witness table accessor for type ProxyCodable<Font.VariationAxisIdentifier> and conformance ProxyCodable<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void lazy protocol witness table accessor for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.FeatureSettingDefinition.CodingKeys, &unk_1F005D468, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.FeatureSettingDefinition.CodingKeys, &unk_1F005D468, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.FeatureSettingDefinition.CodingKeys, &unk_1F005D468, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.FeatureSettingDefinition.CodingKeys, &unk_1F005D468, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.FeatureSettingDefinition.CodingKeys and conformance Font.FeatureSettingDefinition.CodingKeys);
  }
}

void type metadata accessor for KeyedEncodingContainer<Font.VariationDefinition.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void lazy protocol witness table accessor for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag()
{
  if (!lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.DynamicModifierTag, &type metadata for Font.DynamicModifierTag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.DynamicModifierTag, &type metadata for Font.DynamicModifierTag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.DynamicModifierTag, &type metadata for Font.DynamicModifierTag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.DynamicModifierTag, &type metadata for Font.DynamicModifierTag, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.DynamicModifierTag and conformance Font.DynamicModifierTag);
  }
}

void type metadata accessor for RawRepresentableProxy<Font._StylisticAlternative>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RawRepresentableProxy<Font._StylisticAlternative>)
  {
    lazy protocol witness table accessor for type Font._StylisticAlternative and conformance Font._StylisticAlternative();
    v5[0] = &type metadata for Font._StylisticAlternative;
    v5[1] = v2;
    v5[2] = MEMORY[0x1E69E6560];
    v5[3] = MEMORY[0x1E69E6538];
    v3 = type metadata accessor for RawRepresentableProxy(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for RawRepresentableProxy<Font._StylisticAlternative>);
    }
  }
}

void type metadata accessor for [JSONCodable<CFDictionaryRef>](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void lazy protocol witness table accessor for type JSONCodable<CFDictionaryRef> and conformance JSONCodable<A>()
{
  lazy protocol witness table accessor for type ProxyCodable<Font.VariationAxisIdentifier> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type JSONCodable<CFDictionaryRef> and conformance JSONCodable<A>, type metadata accessor for JSONCodable<CFDictionaryRef>, protocol conformance descriptor for JSONCodable<A>);
}

{
  lazy protocol witness table accessor for type ProxyCodable<Font.VariationAxisIdentifier> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type JSONCodable<CFDictionaryRef> and conformance JSONCodable<A>, type metadata accessor for JSONCodable<CFDictionaryRef>, protocol conformance descriptor for JSONCodable<A>);
}

void lazy protocol witness table accessor for type [JSONCodable<CFDictionaryRef>] and conformance <A> [A](unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  if (!*a1)
  {
    type metadata accessor for [JSONCodable<CFDictionaryRef>](255, &lazy cache variable for type metadata for [JSONCodable<CFDictionaryRef>], type metadata accessor for JSONCodable<CFDictionaryRef>, MEMORY[0x1E69E62F8]);
    v7 = v6;
    v9 = a2();
    swift_getWitnessTable(a3, v7, &v9);
    atomic_store(v8, a1);
  }
}

void instantiation function for generic protocol witness table for CodableFontWeight(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableFontWeight and conformance CodableFontWeight();
  *(a1 + 8) = v2;
  lazy protocol witness table accessor for type CodableFontWeight and conformance CodableFontWeight();
  *(a1 + 16) = v3;
}

uint64_t getEnumTagSinglePayload for Font.VariationDefinition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[16])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Font.VariationDefinition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t RemovedElementsCollection.removedIndices.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for RangeSet();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RemovedElementsCollection.init(base:removedIndices:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a1;
  v56 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = &v41 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for Range();
  v12 = type metadata accessor for Optional();
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v41 - v16;
  v17 = type metadata accessor for RangeSet.Ranges();
  v51 = *(v17 - 8);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - v19;
  v48 = *(a3 - 8);
  (*(v48 + 16))(a5, v55, a3, v18);
  v50 = a4;
  v22 = type metadata accessor for RemovedElementsCollection(0, a3, a4, v21);
  v23 = v22[9];
  v43 = AssociatedConformanceWitness;
  v24 = type metadata accessor for RangeSet();
  v45 = *(v24 - 8);
  v25 = *(v45 + 16);
  v53 = a5;
  v25(a5 + v23, v56, v24);
  v47 = v24;
  RangeSet.ranges.getter();
  swift_getWitnessTable(MEMORY[0x1E69E7BC8], v17);
  Collection.first.getter();
  v26 = *(v54 + 48);
  v49 = v11;
  if (v26(v14, 1, v11) == 1)
  {
    v27 = v52;
    (*(v41 + 8))(v14, v42);
    v28 = v50;
    v29 = v55;
LABEL_6:
    dispatch thunk of Collection.startIndex.getter();
    v37 = RangeSet.Ranges.startIndex.getter();
    goto LABEL_7;
  }

  v42 = v22;
  (*(v54 + 32))(v46, v14, v49);
  v30 = v52;
  v31 = v55;
  v32 = v50;
  dispatch thunk of Collection.startIndex.getter();
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v44 + 8))(v30, AssociatedTypeWitness);
  v28 = v32;
  v29 = v31;
  if ((v33 & 1) == 0)
  {
    v27 = v30;
    (*(v54 + 8))(v46, v49);
    v22 = v42;
    goto LABEL_6;
  }

  v57 = RangeSet.Ranges.startIndex.getter();
  swift_getWitnessTable(MEMORY[0x1E69E7BC0], v17);
  RandomAccessCollection<>.index(after:)();
  v34 = v58;
  v35 = v49;
  v36 = v46;
  (*(v44 + 16))(v30, &v46[*(v49 + 36)], AssociatedTypeWitness);
  (*(v54 + 8))(v36, v35);
  v37 = v34;
  v27 = v30;
  v22 = v42;
LABEL_7:
  v38 = v53;
  RemovedElementsCollection.Index.init(base:nextRangeIndex:)(v27, v37, a3, v28, v53 + v22[10]);
  dispatch thunk of Collection.endIndex.getter();
  v39 = RangeSet.Ranges.count.getter();
  (*(v45 + 8))(v56, v47);
  (*(v48 + 8))(v29, a3);
  (*(v51 + 8))(v20, v17);
  return RemovedElementsCollection.Index.init(base:nextRangeIndex:)(v27, v39, a3, v28, v38 + v22[11]);
}

uint64_t RemovedElementsCollection.Index.init(base:nextRangeIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  result = type metadata accessor for RemovedElementsCollection.Index(0, a3, a4, v11);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t static RemovedElementsCollection.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static Comparable.< infix(_:_:)() & 1;
}

uint64_t static RemovedElementsCollection.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t RemovedElementsCollection.startIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = *(a1 + 40);
  v6 = type metadata accessor for RemovedElementsCollection.Index(0, *(a1 + 16), *(a1 + 24), a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v3 + v5, v6);
}

uint64_t RemovedElementsCollection.endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 44);
  v6 = type metadata accessor for RemovedElementsCollection.Index(0, *(a1 + 16), *(a1 + 24), a2);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t RemovedElementsCollection.subscript.getter@<X0>(uint64_t a3@<X8>)
{
  v4 = dispatch thunk of Collection.subscript.read();
  v6 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, v6, AssociatedTypeWitness);
  return v4(&v9, 0);
}

uint64_t RemovedElementsCollection.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for Range();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v35 - v10;
  v41 = type metadata accessor for RangeSet.Ranges();
  v45 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v35 - v11;
  v47 = type metadata accessor for RemovedElementsCollection.Index(0, v6, v5, v12);
  v13 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v15 = &v35 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v46 = v3;
  dispatch thunk of Collection.endIndex.getter();
  v40 = AssociatedConformanceWitness;
  v20 = dispatch thunk of static Comparable.< infix(_:_:)();
  v36 = v16;
  (*(v16 + 8))(v19, AssociatedTypeWitness);
  if ((v20 & 1) == 0)
  {
    return (*(v13 + 16))(v44, v46 + *(v43 + 44), v47);
  }

  v35 = v13;
  v21 = v47;
  (*(v13 + 16))(v15, a1, v47);
  dispatch thunk of Collection.formIndex(after:)();
  v22 = *(a1 + *(v21 + 36));
  v23 = *(v43 + 36);
  type metadata accessor for RangeSet();
  v24 = v42;
  RangeSet.ranges.getter();
  v25 = v41;
  v26 = RangeSet.Ranges.count.getter();
  v27 = *(v45 + 8);
  v45 += 8;
  v27(v24, v25);
  if (v22 < v26)
  {
    v43 = v23;
    v28 = v27;
    v29 = v42;
    RangeSet.ranges.getter();
    v30 = v37;
    RangeSet.Ranges.subscript.getter();
    v28(v29, v25);
    v31 = v30;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v32 = v39;
      (*(v36 + 24))(v15, &v30[*(v39 + 36)], AssociatedTypeWitness);
      v33 = v42;
      RangeSet.ranges.getter();
      v48 = *&v15[*(v47 + 36)];
      swift_getWitnessTable(MEMORY[0x1E69E7BC8], v25);
      dispatch thunk of Collection.index(after:)();
      v28(v33, v25);
      (*(v38 + 8))(v31, v32);
    }

    else
    {
      (*(v38 + 8))(v30, v39);
    }
  }

  return (*(v35 + 32))(v44, v15, v47);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance RemovedElementsCollection<A>(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = RemovedElementsCollection.subscript.read(v6, a2, a3);
  return protocol witness for Collection.subscript.read in conformance UnsafeMutableBufferProjectionPointer<A, B>;
}

uint64_t (*RemovedElementsCollection.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  a1[1] = v5;
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  a1[2] = v6;
  RemovedElementsCollection.subscript.getter(v6);
  return CountingIndexCollection.subscript.read;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance RemovedElementsCollection<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  type metadata accessor for RemovedElementsCollection.Index(255, *(a1 + 16), *(a1 + 24), a2);
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance RemovedElementsCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for RemovedElementsCollection.Index(0, *(a2 + 16), *(a2 + 24), a4);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(v7 + 32))(&v12 - v9, a1, v6, v8);
  RemovedElementsCollection.index(after:)(v10, a2, a1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance RemovedElementsCollection<A>(uint64_t a1)
{
  v3.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for RemovedElementsCollection<A>, a1);

  return MEMORY[0x1EEE698E0](a1, v2, v3);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance RemovedElementsCollection<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for RemovedElementsCollection<A>, a1);

  return Collection._copyToContiguousArray()();
}

uint64_t RemovedElementsCollection<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a1;
  v65 = a4;
  v62 = a3;
  v5 = *(a3 + 8);
  v57 = a2;
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for Range();
  v55 = *(v9 - 8);
  v56 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v43 - v10;
  v11 = type metadata accessor for RangeSet.Ranges();
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v43 - v12;
  v14 = type metadata accessor for RemovedElementsCollection.Index(0, v6, v5, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v66 = v4;
  v63 = v6;
  v52 = v5;
  dispatch thunk of Collection.startIndex.getter();
  v64 = AssociatedConformanceWitness;
  v22 = dispatch thunk of static Comparable.> infix(_:_:)();
  v51 = v18;
  v23 = *(v18 + 8);
  v53 = v21;
  v23(v21, AssociatedTypeWitness);
  v61 = v15;
  v24 = v15 + 16;
  v25 = *(v15 + 16);
  if ((v22 & 1) == 0)
  {
    return v25(v65, v67, v14);
  }

  v48 = v23;
  v26 = v67;
  v47 = v24;
  v25(v17, v67, v14);
  v27 = *(v26 + *(v14 + 36));
  v28 = *(v57 + 36);
  v29 = type metadata accessor for RangeSet();
  v57 = v28;
  v30 = v58;
  v50 = v29;
  RangeSet.ranges.getter();
  v31 = v60;
  v32 = RangeSet.Ranges.startIndex.getter();
  v59 = *(v59 + 8);
  (v59)(v30, v31);
  v49 = v27;
  if (v32 < v27)
  {
    v44 = v25;
    v46 = v17;
    v45 = v14;
    RangeSet.ranges.getter();
    v68 = v49;
    swift_getWitnessTable(MEMORY[0x1E69E7BC0], v31);
    RandomAccessCollection<>.index(before:)();
    v33 = v59;
    (v59)(v30, v31);
    v34 = v69;
    RangeSet.ranges.getter();
    v57 = v34;
    v35 = v54;
    RangeSet.Ranges.subscript.getter();
    v33(v30, v31);
    v36 = v56;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v37 = v53;
      dispatch thunk of Collection.startIndex.getter();
      v38 = dispatch thunk of static Comparable.> infix(_:_:)();
      v48(v37, AssociatedTypeWitness);
      if (v38)
      {
        v39 = v53;
        dispatch thunk of BidirectionalCollection.index(before:)();
        (*(v55 + 8))(v35, v36);
        v40 = v46;
        (*(v51 + 40))(v46, v39, AssociatedTypeWitness);
        v41 = v45;
        *&v40[*(v45 + 36)] = v57;
        v44(v65, v40, v41);
        return (*(v61 + 8))(v40, v41);
      }
    }

    (*(v55 + 8))(v35, v36);
    v14 = v45;
    v17 = v46;
  }

  dispatch thunk of BidirectionalCollection.formIndex(before:)();
  return (*(v61 + 32))(v65, v17, v14);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance <> RemovedElementsCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = type metadata accessor for RemovedElementsCollection.Index(0, *(a2 + 16), *(v6 + 8), a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  (*(v8 + 32))(&v13 - v10, a1, v7, v9);
  RemovedElementsCollection<>.index(before:)(v11, a2, v6, a1);
  return (*(v8 + 8))(v11, v7);
}

uint64_t RemovedElementsCollection<>.RandomAccessAdaptor.transform.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for RemovedElementsCollection(0, *(a1 + 16), *(*(*(a1 + 24) + 8) + 8), a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, v3, v5);
}

uint64_t RemovedElementsCollection<>.RandomAccessAdaptor.transform.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for RemovedElementsCollection(0, *(a2 + 16), *(*(*(a2 + 24) + 8) + 8), a4);
  v7 = *(*(v6 - 8) + 40);

  return v7(v4, a1, v6);
}

uint64_t RemovedElementsCollection<>.RandomAccessAdaptor.init(base:removedIndices:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(*(a4 + 8) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for RangeSet();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, a1, a3, v16);
  (*(v11 + 16))(v13, a2, v10);
  RemovedElementsCollection.init(base:removedIndices:)(v18, v13, a3, v9, a5);
  (*(v11 + 8))(a2, v10);
  return (*(v14 + 8))(a1, a3);
}

uint64_t RemovedElementsCollection<>.RandomAccessAdaptor.startIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(*(*(a1 + 24) + 8) + 8);
  v7 = *(type metadata accessor for RemovedElementsCollection(0, v5, v6, a2) + 40);
  v9 = type metadata accessor for RemovedElementsCollection.Index(0, v5, v6, v8);
  v10 = *(*(v9 - 8) + 16);

  return v10(a3, v3 + v7, v9);
}

uint64_t RemovedElementsCollection<>.RandomAccessAdaptor.endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(*(*(a1 + 24) + 8) + 8);
  v7 = *(type metadata accessor for RemovedElementsCollection(0, v5, v6, a2) + 44);
  v9 = type metadata accessor for RemovedElementsCollection.Index(0, v5, v6, v8);
  v10 = *(*(v9 - 8) + 16);

  return v10(a3, v3 + v7, v9);
}

uint64_t RemovedElementsCollection<>.RandomAccessAdaptor.subscript.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v5 = type metadata accessor for RemovedElementsCollection(0, *(a2 + 16), *(*(*(a2 + 24) + 8) + 8), a4);

  return a3(a1, v5);
}

uint64_t RemovedElementsCollection<>.RandomAccessAdaptor.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *(*(a2 + 24) + 8);
  v7 = type metadata accessor for RemovedElementsCollection(0, *(a2 + 16), *(v6 + 8), a3);

  return RemovedElementsCollection<>.index(before:)(a1, v7, v6, a4);
}

uint64_t RemovedElementsCollection<>.RandomAccessAdaptor.index(_:offsetBy:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v94 = a1;
  v85 = a4;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  v83 = a3;
  v106 = v7;
  v9 = *(*(v7 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Range();
  v117 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v82 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v105 = &v82 - v18;
  v121 = AssociatedConformanceWitness;
  v19 = type metadata accessor for RangeSet.Ranges();
  swift_getWitnessTable(MEMORY[0x1E69E7BC8], v19);
  v108 = v20;
  v21 = type metadata accessor for Slice();
  v114 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v90 = &v82 - v22;
  v116 = v19;
  v120 = *(v19 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v115 = &v82 - v25;
  swift_getWitnessTable(MEMORY[0x1E69E74F8], v21, v24);
  v107 = v21;
  v92 = type metadata accessor for IndexingIterator();
  v26 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v109 = &v82 - v27;
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v29);
  v103 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v82 - v32;
  v119 = v8;
  v111 = v9;
  v35 = type metadata accessor for RemovedElementsCollection.Index(0, v8, v9, v34);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v84 = v37;
  v38 = *(v37 + 16);
  v97 = &v82 - v39;
  v93 = v40;
  v38(v36);
  if (!a2)
  {
    return (*(v84 + 32))(v85, v97, v93);
  }

  v102 = (v28 + 8);
  ++v120;
  v112 = (v117 + 8);
  v88 = (v114 + 16);
  v87 = (v114 + 8);
  v104 = (v117 + 32);
  v86 = (v26 + 8);
  v91 = (v28 + 40);
  v89 = v16;
  v118 = v33;
  v100 = v12;
  while (1)
  {
    v96 = a2;
    v41 = v119;
    dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
    v42 = v103;
    dispatch thunk of Collection.startIndex.getter();
    v43 = dispatch thunk of static Comparable.> infix(_:_:)();
    v44 = *v102;
    (*v102)(v42, AssociatedTypeWitness);
    if ((v43 & 1) == 0)
    {
      v44(v33, AssociatedTypeWitness);
      RemovedElementsCollection<>.RandomAccessAdaptor.startIndex.getter(v83, v80, v85);
      return (*(v84 + 8))(v97, v93);
    }

    dispatch thunk of Collection.endIndex.getter();
    v45 = dispatch thunk of static Comparable.< infix(_:_:)();
    v44(v42, AssociatedTypeWitness);
    if ((v45 & 1) == 0)
    {
      v44(v33, AssociatedTypeWitness);
      RemovedElementsCollection<>.RandomAccessAdaptor.endIndex.getter(v83, v81, v85);
      return (*(v84 + 8))(v97, v93);
    }

    v101 = v44;
    v46 = v41;
    v95 = *(v93 + 36);
    v47 = *&v97[v95];
    v124 = v47;
    v48 = dispatch thunk of static Comparable.> infix(_:_:)();
    v50 = *(type metadata accessor for RemovedElementsCollection(0, v46, v111, v49) + 36);
    v51 = type metadata accessor for RangeSet();
    v52 = v115;
    v117 = v51;
    RangeSet.ranges.getter();
    if (v48)
    {
      break;
    }

    v66 = v5;
    v67 = v116;
    v68 = RangeSet.Ranges.startIndex.getter();
    v69 = *v120;
    result = (*v120)(v52, v67);
    if (v68 >= v47)
    {
      v113 = 0;
    }

    else
    {
      v113 = 0;
      v114 = v50;
      v70 = AssociatedTypeWitness;
      v98 = v69;
      while (1)
      {
        RangeSet.ranges.getter();
        v122 = v47;
        swift_getWitnessTable(MEMORY[0x1E69E7BC0], v67);
        RandomAccessCollection<>.index(before:)();
        (v69)(v52, v67);
        v71 = v123;
        RangeSet.ranges.getter();
        v72 = v99;
        v110 = v71;
        RangeSet.Ranges.subscript.getter();
        (v69)(v52, v67);
        v73 = v100;
        AssociatedTypeWitness = v70;
        if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
        {
          break;
        }

        v74 = v103;
        dispatch thunk of Collection.startIndex.getter();
        v75 = dispatch thunk of static Comparable.> infix(_:_:)();
        v101(v74, v70);
        if ((v75 & 1) == 0)
        {
          break;
        }

        v76 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
        result = (*v112)(v72, v73);
        if (__OFADD__(v113, v76))
        {
          goto LABEL_32;
        }

        v113 += v76;
        v47 = v110;
        v124 = v110;
        v52 = v115;
        RangeSet.ranges.getter();
        v67 = v116;
        v77 = RangeSet.Ranges.startIndex.getter();
        v69 = v98;
        result = (v98)(v52, v67);
        if (v77 >= v47)
        {
          goto LABEL_24;
        }
      }

      result = (*v112)(v72, v73);
    }

LABEL_23:
    v70 = AssociatedTypeWitness;
LABEL_24:
    v78 = v113;
    a2 = &v113[v96];
    if (__OFADD__(v96, v113))
    {
      goto LABEL_33;
    }

    v79 = v97;
    v33 = v118;
    AssociatedTypeWitness = v70;
    (*v91)(v97, v118, v70);
    *&v79[v95] = v124;
    v5 = v66;
    if (!v78)
    {
      return (*(v84 + 32))(v85, v97, v93);
    }
  }

  v114 = v50;
  v123 = v47;
  type metadata accessor for PartialRangeFrom<Int>();
  lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>();
  v53 = v90;
  v54 = v116;
  Collection.subscript.getter();
  v113 = *v120;
  (v113)(v52, v54);
  v55 = v109;
  v56 = v107;
  (*v88)(v109, v53, v107);
  v57 = *(v92 + 36);
  MEMORY[0x193AC10F0](v56);
  (*v87)(v53, v56);
  DefaultIndices.startIndex.getter();
  v58 = 0;
  v59 = v100;
  v60 = v89;
  if (*&v55[v57] == v123)
  {
LABEL_11:
    v113 = v58;
    result = (*v86)(v55, v92);
LABEL_22:
    v66 = v5;
    goto LABEL_23;
  }

  v58 = 0;
  while (1)
  {
    v61 = v105;
    Slice.subscript.getter();
    Slice.formIndex(after:)();
    (*v104)(v60, v61, v59);
    if ((dispatch thunk of static Comparable.>= infix(_:_:)() & 1) == 0)
    {
      v113 = v58;
      (*v112)(v60, v59);
      result = (*v86)(v109, v92);
      goto LABEL_22;
    }

    result = dispatch thunk of RandomAccessCollection.distance(from:to:)();
    v63 = __OFADD__(v58, result);
    v58 += result;
    v64 = v116;
    if (v63)
    {
      break;
    }

    v65 = v115;
    RangeSet.ranges.getter();
    v123 = v124;
    dispatch thunk of Collection.index(after:)();
    (v113)(v65, v64);
    (*v112)(v60, v59);
    v55 = v109;
    DefaultIndices.startIndex.getter();
    if (*&v55[v57] == v123)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void type metadata accessor for PartialRangeFrom<Int>()
{
  if (!lazy cache variable for type metadata for PartialRangeFrom<Int>)
  {
    v0 = type metadata accessor for PartialRangeFrom();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PartialRangeFrom<Int>);
    }
  }
}

void lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>()
{
  if (!lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>)
  {
    type metadata accessor for PartialRangeFrom<Int>();
    swift_getWitnessTable(MEMORY[0x1E69E6D18], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>);
  }
}

uint64_t RemovedElementsCollection<>.RandomAccessAdaptor.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = *(*(v7 + 8) + 8);
  v31[2] = swift_getAssociatedTypeWitness();
  v31[0] = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for RangeSet.Ranges();
  swift_getWitnessTable(MEMORY[0x1E69E7BC8], v9, v31[0]);
  v31[1] = v10;
  v11 = type metadata accessor for Slice();
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  v14 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v31 - v16;
  v35 = v7;
  v36 = v3;
  v32 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  v19 = type metadata accessor for RemovedElementsCollection.Index(0, v6, v8, v18);
  swift_getWitnessTable(protocol conformance descriptor for RemovedElementsCollection<A>.Index, v19);
  result = static Comparable.> infix(_:_:)();
  v22 = *(v19 + 36);
  if (result)
  {
    v23 = *(a1 + v22);
    a2 = *(a2 + v22);
    if (a2 >= v23)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v23 = *(a2 + v22);
  a2 = *(a1 + v22);
  if (a2 < v23)
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_5:
  type metadata accessor for RemovedElementsCollection(0, v6, v8, v21);
  type metadata accessor for RangeSet();
  v24 = v36;
  RangeSet.ranges.getter();
  v38 = v23;
  v39 = a2;
  Collection<>.subscript.getter();
  v25 = (*(v14 + 8))(v17, v9);
  v37 = 0;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = v35;
  v31[-4] = v6;
  v31[-3] = v27;
  v31[-2] = v24;
  v28 = v34;
  swift_getWitnessTable(MEMORY[0x1E69E74E8], v34, v26);
  Sequence.reduce<A>(_:_:)();
  (*(v33 + 8))(v13, v28);
  v29 = v38;
  v30 = v32;
  if (v32 >= 1)
  {
    result = v32 - v38;
    if (!__OFSUB__(v32, v38))
    {
      return result;
    }

    __break(1u);
  }

  result = v30 + v29;
  if (__OFADD__(v30, v29))
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in RemovedElementsCollection<>.RandomAccessAdaptor.distance(from:to:)@<X0>(uint64_t *a1@<X0>, void *a5@<X8>)
{
  v6 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Range();
  result = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  if (__OFADD__(v6, result))
  {
    __break(1u);
  }

  else
  {
    *a5 = v6 + result;
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance RemovedElementsCollection<A><>.RandomAccessAdaptor(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = RemovedElementsCollection<>.RandomAccessAdaptor.subscript.read(v6, a2, a3);
  return protocol witness for Collection.subscript.read in conformance CollectionOfTwo<A>;
}

uint64_t (*RemovedElementsCollection<>.RandomAccessAdaptor.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v4 = *(a3 + 16);
  v5 = *(*(*(a3 + 24) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v10 = v8;
  a1[2] = v8;
  type metadata accessor for RemovedElementsCollection(0, v4, v5, v9);
  RemovedElementsCollection.subscript.getter(v10);
  return CollectionOfTwo.subscript.read;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance RemovedElementsCollection<A><>.RandomAccessAdaptor@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  type metadata accessor for RemovedElementsCollection.Index(255, *(a1 + 16), *(*(*(a1 + 24) + 8) + 8), a2);
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance RemovedElementsCollection<A><>.RandomAccessAdaptor(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  v7 = type metadata accessor for RemovedElementsCollection.Index(0, *(a2 + 16), *(*(*(a2 + 24) + 8) + 8), a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  (*(v8 + 32))(&v13 - v10, a1, v7, v9);
  a4(v11, a2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance RemovedElementsCollection<A><>.RandomAccessAdaptor(uint64_t a1)
{
  v3.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for RemovedElementsCollection<A><>.RandomAccessAdaptor, a1);

  return MEMORY[0x1EEE698E0](a1, v2, v3);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance RemovedElementsCollection<A><>.RandomAccessAdaptor(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for RemovedElementsCollection<A><>.RandomAccessAdaptor, a1);

  return Collection._copyToContiguousArray()();
}

uint64_t RemovedElementsCollection.baseIndex(at:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a3, a1, AssociatedTypeWitness);
}

uint64_t InsertedPlaceholderCollection.insertionIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t InsertedPlaceholderCollection.insertionIndex.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t InsertedPlaceholderCollection.init(base:placeholder:insertionIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a7;
  v14 = type metadata accessor for InsertedPlaceholderCollection(0, v19);
  v15 = *(v14 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a8 + v15, 1, 1, AssociatedTypeWitness);
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  (*(*(a5 - 8) + 32))(a8 + *(v14 + 52), a2, a5);
  v17 = type metadata accessor for Optional();
  return (*(*(v17 - 8) + 40))(a8 + v15, a3, v17);
}

uint64_t InsertedPlaceholderCollection.placeholderIndices.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v73 = a2;
  v5 = *(a1 + 24);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v75[0] = *(a1 + 16);
  v6 = v75[0];
  v75[1] = v5;
  v75[2] = v8;
  v75[3] = v7;
  v9 = type metadata accessor for InsertedPlaceholderCollection.Index(255, v75);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v62 = *(TupleTypeMetadata2 - 8);
  v63 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v64 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v61 = v57 - v13;
  v70 = v7;
  v68 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v67 = v57 - v15;
  v72 = v9;
  v60 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v69 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v74 = v57 - v19;
  v71 = v8;
  v66 = v6;
  v20 = swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for Optional();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v57 - v23;
  v25 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = v57 - v31;
  (*(v22 + 16))(v24, v3 + *(a1 + 56), v21, v30);
  if ((*(v25 + 48))(v24, 1, v20) == 1)
  {
    (*(v22 + 8))(v24, v21);
    swift_getWitnessTable(protocol conformance descriptor for InsertedPlaceholderCollection<A, B>.Index, v72);
    v33 = type metadata accessor for Range();
    return (*(*(v33 - 8) + 56))(v73, 1, 1, v33);
  }

  else
  {
    v59 = v25;
    v35 = *(v25 + 32);
    v65 = v32;
    v35(v32, v24, v20);
    v58 = *(v25 + 16);
    v58(v28, v32, v20);
    v57[1] = *(a1 + 52);
    v37 = v67;
    v36 = v68;
    v38 = v70;
    dispatch thunk of Collection.startIndex.getter();
    v39 = v66;
    v40 = v71;
    InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v28, v37, v66, v36, v71, v38, v74);
    v58(v28, v65, v20);
    dispatch thunk of Collection.endIndex.getter();
    v41 = v69;
    InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v28, v37, v39, v36, v40, v38, v69);
    v42 = v72;
    swift_getWitnessTable(protocol conformance descriptor for InsertedPlaceholderCollection<A, B>.Index, v72);
    v44 = v43;
    v45 = static Comparable.<= infix(_:_:)();
    result = (*(v59 + 8))(v65, v20);
    if (v45)
    {
      v46 = v60;
      v47 = *(v60 + 32);
      v71 = v44;
      v48 = v61;
      v47(v61, v74, v42);
      v49 = v63;
      v47(&v48[*(v63 + 48)], v41, v42);
      v50 = v62;
      v51 = v64;
      (*(v62 + 16))(v64, v48, v49);
      v52 = *(v49 + 48);
      v47(v73, v51, v42);
      v53 = *(v46 + 8);
      v53(&v51[v52], v42);
      (*(v50 + 32))(v51, v48, v49);
      v54 = *(v49 + 48);
      v55 = type metadata accessor for Range();
      v56 = v73;
      v47(&v73[*(v55 + 36)], &v51[v54], v42);
      v53(v51, v42);
      return (*(*(v55 - 8) + 56))(v56, 0, 1, v55);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a7, a1, AssociatedTypeWitness);
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  v15 = *(type metadata accessor for InsertedPlaceholderCollection.Index(0, v18) + 52);
  v16 = swift_getAssociatedTypeWitness();
  return (*(*(v16 - 8) + 32))(a7 + v15, a2, v16);
}

uint64_t static InsertedPlaceholderCollection.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    swift_getAssociatedTypeWitness();
    v11[0] = a3;
    v11[1] = a4;
    v11[2] = a5;
    v11[3] = a6;
    type metadata accessor for InsertedPlaceholderCollection.Index(0, v11);
    swift_getAssociatedConformanceWitness();
  }

  return dispatch thunk of static Comparable.< infix(_:_:)() & 1;
}

uint64_t static InsertedPlaceholderCollection.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    swift_getAssociatedTypeWitness();
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for InsertedPlaceholderCollection.Index(0, v12);
    swift_getAssociatedConformanceWitness();
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t InsertedPlaceholderCollection.startIndex.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v5 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v8 = &v15 - v7;
  v9 = a1[4];
  v10 = a1[2];
  v11 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.startIndex.getter();
  return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v13, v8, v10, v5, v9, v4, a2);
}

uint64_t InsertedPlaceholderCollection.endIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v53 = &v46 - v6;
  v7 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v46 - v9;
  v11 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = *(a1 + 40);
  v51 = *(a1 + 24);
  v52 = v17;
  v18 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v50 = &v46 - v19;
  v54 = a1;
  v20 = *(a1 + 56);
  v57 = v5;
  v58 = v4;
  dispatch thunk of Collection.endIndex.getter();
  v21 = v60;
  v22 = AssociatedTypeWitness;
  (*(v60 + 56))(v16, 0, 1, AssociatedTypeWitness);
  v47 = TupleTypeMetadata2;
  v23 = *(TupleTypeMetadata2 + 48);
  v49 = v11;
  v24 = *(v11 + 16);
  v55 = v2;
  v24(v10, v2 + v20, v7);
  v25 = v7;
  v24(&v10[v23], v16, v7);
  v26 = *(v21 + 48);
  v61 = v10;
  v27 = v22;
  if (v26(v10, 1, v22) == 1)
  {
    v28 = *(v49 + 8);
    v28(v16, v25);
    v29 = v61;
    v30 = v26(&v61[v23], 1, v22) == 1;
    v32 = v57;
    v31 = v58;
    v33 = v52;
    v34 = v29;
    if (!v30)
    {
      goto LABEL_7;
    }

    v28(v29, v25);
    v35 = v53;
LABEL_10:
    v40 = v50;
    v39 = v51;
    dispatch thunk of Collection.endIndex.getter();
    goto LABEL_11;
  }

  v36 = v16;
  v37 = v61;
  v38 = v25;
  v24(v59, v61, v25);
  if (v26(&v37[v23], 1, v27) != 1)
  {
    v41 = v60;
    v42 = &v61[v23];
    v35 = v53;
    (*(v60 + 32))(v53, v42, v27);
    v32 = v57;
    v31 = v58;
    swift_getAssociatedConformanceWitness();
    LODWORD(v47) = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = *(v41 + 8);
    v43(v35, v27);
    v44 = *(v49 + 8);
    v44(v36, v38);
    v43(v59, v27);
    v44(v61, v38);
    v33 = v52;
    if ((v47 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  (*(v49 + 8))(v36, v25);
  (*(v60 + 8))(v59, v27);
  v32 = v57;
  v31 = v58;
  v33 = v52;
  v34 = v61;
LABEL_7:
  (*(v46 + 8))(v34, v47);
  v35 = v53;
LABEL_8:
  v40 = v50;
  v39 = v51;
  dispatch thunk of Collection.startIndex.getter();
LABEL_11:
  dispatch thunk of Collection.endIndex.getter();
  return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v35, v40, v32, v39, v31, v33, v56);
}

uint64_t InsertedPlaceholderCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v5 = *(a2 + 40);
  v57 = *(a2 + 24);
  v58 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v48 - v7;
  v8 = *(a2 + 16);
  v59 = *(a2 + 32);
  v60 = v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v48 - v11;
  v12 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v48 - v14;
  v16 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v48 - v21;
  v23 = *(v10 + 16);
  v61 = a1;
  v23(&v48 - v21, a1, v9, v20);
  (*(v10 + 56))(v22, 0, 1, v9);
  v51 = a2;
  v24 = *(a2 + 56);
  v55 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v26 = *(v16 + 16);
  v26(v15, v22, v12);
  v26(&v15[v25], (v64 + v24), v12);
  v56 = v10;
  v27 = *(v10 + 48);
  if (v27(v15, 1, v9) == 1)
  {
    v28 = *(v16 + 8);
    v28(v22, v12);
    v29 = v27(&v15[v25], 1, v9);
    v30 = v59;
    if (v29 == 1)
    {
      v28(v15, v12);
      v31 = v60;
      v33 = v57;
      v32 = v58;
LABEL_8:
      *&v39 = v31;
      *(&v39 + 1) = v33;
      *&v40 = v30;
      *(&v40 + 1) = v32;
      v65[1] = v40;
      v65[0] = v39;
      type metadata accessor for InsertedPlaceholderCollection.Index(0, v65);
      v41 = v50;
      dispatch thunk of Collection.endIndex.getter();
      v42 = v53;
      swift_getAssociatedConformanceWitness();
      dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v52 + 8))(v41, v42);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v26(v63, v15, v12);
  if (v27(&v15[v25], 1, v9) == 1)
  {
    (*(v16 + 8))(v22, v12);
    (*(v56 + 8))(v63, v9);
LABEL_6:
    (*(v54 + 8))(v15, v55);
    goto LABEL_9;
  }

  v34 = v56;
  v35 = &v15[v25];
  v36 = v49;
  (*(v56 + 32))(v49, v35, v9);
  v30 = v59;
  v31 = v60;
  swift_getAssociatedConformanceWitness();
  LODWORD(v55) = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v34 + 8);
  v37(v36, v9);
  v38 = *(v16 + 8);
  v38(v22, v12);
  v37(v63, v9);
  v38(v15, v12);
  v33 = v57;
  v32 = v58;
  if (v55)
  {
    goto LABEL_8;
  }

LABEL_9:
  v43 = dispatch thunk of Collection.subscript.read();
  v45 = v44;
  v46 = swift_getAssociatedTypeWitness();
  (*(*(v46 - 8) + 16))(v62, v45, v46);
  return v43(v65, 0);
}

uint64_t InsertedPlaceholderCollection.index(after:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v6 = *(a2 + 40);
  v81 = *(a2 + 24);
  v82 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = *(a2 + 16);
  v77 = *(a2 + 32);
  v78 = &v65 - v8;
  v85 = v7;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v65 - v13;
  v14 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v67 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v65 - v16;
  v18 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v65 - v23;
  v25 = *(v10 + 16);
  v87 = a1;
  v74 = v25;
  v75 = v10 + 16;
  (v25)(&v65 - v23, a1, v9, v22);
  v26 = v10;
  (*(v10 + 56))(v24, 0, 1, v9);
  v83 = a2;
  v27 = *(a2 + 56);
  v68 = TupleTypeMetadata2;
  v28 = *(TupleTypeMetadata2 + 48);
  v70 = v18;
  v29 = *(v18 + 16);
  v29(v17, v24, v14);
  v71 = v28;
  v72 = v14;
  v79 = v3;
  v30 = (v3 + v27);
  v31 = v9;
  v32 = v14;
  v33 = v17;
  v29(&v17[v28], v30, v32);
  v86 = v26;
  v34 = *(v26 + 48);
  v35 = v34(v17, 1, v31);
  v76 = v31;
  if (v35 == 1)
  {
    v36 = v31;
    v37 = *(v70 + 8);
    v38 = v24;
    v39 = v72;
    v37(v38, v72);
    v40 = v34(&v17[v71], 1, v36);
    v41 = v82;
    v43 = v77;
    v42 = v78;
    v44 = v85;
    if (v40 == 1)
    {
      v37(v17, v39);
      v45 = v81;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v46 = v70;
  v47 = v72;
  v29(v73, v17, v72);
  v48 = v71;
  if (v34(&v17[v71], 1, v31) == 1)
  {
    (*(v46 + 8))(v24, v47);
    (*(v86 + 8))(v73, v31);
    v41 = v82;
    v43 = v77;
    v42 = v78;
    v44 = v85;
LABEL_6:
    (*(v67 + 8))(v17, v68);
    v45 = v81;
LABEL_10:
    v61 = v84;
    dispatch thunk of Collection.index(after:)();
    v62 = v69;
    v63 = v76;
    v74(v69, v61, v76);
    dispatch thunk of Collection.startIndex.getter();
    (*(v86 + 8))(v61, v63);
    v60 = v62;
    return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v60, v42, v44, v45, v43, v41, v80);
  }

  v49 = v86;
  v50 = v84;
  (*(v86 + 32))(v84, &v17[v48], v31);
  v43 = v77;
  swift_getAssociatedConformanceWitness();
  v51 = v73;
  LODWORD(v71) = dispatch thunk of static Equatable.== infix(_:_:)();
  v52 = *(v49 + 8);
  v52(v50, v31);
  v53 = *(v46 + 8);
  v53(v24, v47);
  v52(v51, v31);
  v53(v33, v47);
  v44 = v85;
  v45 = v81;
  v41 = v82;
  v42 = v78;
  if ((v71 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  *&v54 = v44;
  *(&v54 + 1) = v45;
  *&v55 = v43;
  *(&v55 + 1) = v41;
  v88[1] = v55;
  v88[0] = v54;
  type metadata accessor for InsertedPlaceholderCollection.Index(0, v88);
  dispatch thunk of Collection.endIndex.getter();
  v56 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v57 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v65 + 8))(v42, v56);
  if ((v57 & 1) == 0)
  {
    goto LABEL_10;
  }

  v58 = v87;
  dispatch thunk of Collection.index(after:)();
  v59 = v84;
  v74(v84, v58, v76);
  v60 = v59;
  return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v60, v42, v44, v45, v43, v41, v80);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance InsertedPlaceholderCollection<A, B>(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = InsertedPlaceholderCollection.subscript.read(v6, a2, a3);
  return protocol witness for Collection.subscript.read in conformance UnsafeMutableBufferProjectionPointer<A, B>;
}

uint64_t (*InsertedPlaceholderCollection.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  InsertedPlaceholderCollection.subscript.getter(a2, a3, v8);
  return CountingIndexCollection.subscript.read;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance InsertedPlaceholderCollection<A, B>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v3;
  type metadata accessor for InsertedPlaceholderCollection.Index(255, v6);
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance InsertedPlaceholderCollection<A, B>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v11[0] = *(a2 + 16);
  v11[1] = v4;
  v5 = type metadata accessor for InsertedPlaceholderCollection.Index(0, v11);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  (*(v6 + 32))(v11 - v8, a1, v5, v7);
  InsertedPlaceholderCollection.index(after:)(v9, a2, a1);
  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance RemovedElementsCollection<A>@<X0>(uint64_t a1@<X0>, const char *a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v10 = *(a1 - 8);
  (*(v10 + 16))(a4, v4, a1);
  swift_getWitnessTable(a2, a1);
  type metadata accessor for IndexingIterator();
  a3(a1);
  v8 = *(v10 + 8);

  return v8(v4, a1);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance InsertedPlaceholderCollection<A, B>(uint64_t a1)
{
  v3.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for InsertedPlaceholderCollection<A, B>, a1);

  return MEMORY[0x1EEE698E0](a1, v2, v3);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance InsertedPlaceholderCollection<A, B>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for InsertedPlaceholderCollection<A, B>, a1);

  return Collection._copyToContiguousArray()();
}

uint64_t InsertedPlaceholderCollection<>.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v107 = a5;
  v87 = a4;
  v8 = *(a2 + 24);
  v112 = *(a4 + 8);
  v114 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v103 = &v85[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v91 = &v85[-v11];
  v101 = a3;
  v12 = *(a3 + 8);
  v117 = *(a2 + 16);
  v118 = v12;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v115 = &v85[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v85[-v17];
  v18 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v104 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v102 = &v85[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v85[-v22];
  v24 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v90 = &v85[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v110 = &v85[-v28];
  MEMORY[0x1EEE9AC00](v29);
  v111 = &v85[-v30];
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v85[-v33];
  v35 = v14[2];
  v113 = a1;
  v105 = v35;
  v106 = v14 + 2;
  (v35)(&v85[-v33], a1, v13, v32);
  v36 = v14[7];
  v95 = v14 + 7;
  v94 = v36;
  v36(v34, 0, 1, v13);
  v109 = a2;
  v37 = *(a2 + 56);
  v116 = TupleTypeMetadata2;
  v38 = *(TupleTypeMetadata2 + 48);
  v100 = v24;
  v39 = *(v24 + 16);
  v39(v23, v34, v18);
  v96 = v37;
  v39(&v23[v38], v119 + v37, v18);
  v108 = v14;
  v40 = v14[6];
  v41 = v40(v23, 1, v13);
  v99 = v40;
  v97 = v39;
  v93 = v24 + 16;
  if (v41 == 1)
  {
    v42 = *(v24 + 8);
    v42(v34, v18);
    v43 = v40(&v23[v38], 1, v13);
    v98 = v42;
    if (v43 == 1)
    {
      v44 = v18;
      v42(v23, v18);
      v45 = v112;
      v46 = v117;
      v47 = v91;
      goto LABEL_9;
    }

    v44 = v18;
LABEL_7:
    (*(v104 + 8))(v23, v116);
    goto LABEL_11;
  }

  v39(v111, v23, v18);
  if (v40(&v23[v38], 1, v13) == 1)
  {
    v44 = v18;
    v98 = *(v24 + 8);
    v98(v34, v18);
    (v108[1])(v111, v13);
    goto LABEL_7;
  }

  v48 = v92;
  (v108[4])(v92, &v23[v38], v13);
  v46 = v117;
  swift_getAssociatedConformanceWitness();
  v86 = dispatch thunk of static Equatable.== infix(_:_:)();
  v49 = v108[1];
  v49(v48, v13);
  v50 = *(v24 + 8);
  v50(v34, v18);
  v49(v111, v13);
  v44 = v18;
  v98 = v50;
  v50(v23, v18);
  v45 = v112;
  v47 = v91;
  if ((v86 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v120[0] = v46;
  v120[1] = v114;
  v120[2] = v118;
  v120[3] = v45;
  type metadata accessor for InsertedPlaceholderCollection.Index(0, v120);
  dispatch thunk of Collection.startIndex.getter();
  v51 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v52 = dispatch thunk of static Comparable.> infix(_:_:)();
  (*(v88 + 8))(v47, v51);
  if ((v52 & 1) == 0)
  {
LABEL_11:
    v63 = v115;
    v64 = v119;
    dispatch thunk of BidirectionalCollection.index(before:)();
    v65 = v110;
    v105(v110, v63, v13);
    v94(v65, 0, 1, v13);
    v66 = *(v116 + 48);
    v67 = v102;
    v68 = v97;
    v97(v102, v65, v44);
    v113 = v44;
    v68(&v67[v66], v64 + v96, v44);
    v69 = v99;
    if (v99(v67, 1, v13) == 1)
    {
      v70 = v98;
      v98(v65, v113);
      if (v69(&v67[v66], 1, v13) == 1)
      {
        v70(v67, v113);
        v71 = v114;
        v72 = v112;
LABEL_19:
        v74 = v103;
        dispatch thunk of Collection.endIndex.getter();
        goto LABEL_20;
      }
    }

    else
    {
      v73 = v90;
      v68(v90, v67, v113);
      if (v69(&v67[v66], 1, v13) != 1)
      {
        v75 = v108;
        v76 = &v67[v66];
        v77 = v67;
        v78 = v92;
        (v108[4])(v92, v76, v13);
        swift_getAssociatedConformanceWitness();
        v79 = dispatch thunk of static Equatable.== infix(_:_:)();
        v80 = v73;
        v81 = v75[1];
        v81(v78, v13);
        v82 = v113;
        v83 = v98;
        v98(v110, v113);
        v81(v80, v13);
        v83(v77, v82);
        v71 = v114;
        v72 = v112;
        if (v79)
        {
          goto LABEL_19;
        }

LABEL_17:
        v74 = v103;
        dispatch thunk of Collection.startIndex.getter();
LABEL_20:
        v56 = v107;
        v57 = v115;
        v58 = v74;
        v59 = v117;
        v61 = v118;
        v60 = v71;
        v62 = v72;
        return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v57, v58, v59, v60, v61, v62, v56);
      }

      v98(v110, v113);
      (v108[1])(v73, v13);
    }

    (*(v104 + 8))(v67, v116);
    v71 = v114;
    v72 = v112;
    goto LABEL_17;
  }

  v53 = v113;
  v54 = v114;
  dispatch thunk of BidirectionalCollection.index(before:)();
  v55 = v92;
  v105(v92, v53, v13);
  v56 = v107;
  v57 = v55;
  v58 = v47;
  v59 = v46;
  v60 = v54;
  v61 = v118;
  v62 = v45;
  return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v57, v58, v59, v60, v61, v62, v56);
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance <> InsertedPlaceholderCollection<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 16);
  v5 = *(a3 - 8);
  v7 = *(v5 + 8);
  v8 = *(v6 + 8);
  v15 = *(a2 + 16);
  v16 = v7;
  v17 = v8;
  v9 = type metadata accessor for InsertedPlaceholderCollection.Index(0, &v15);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v10 + 32))(&v15 - v12, a1, v9, v11);
  InsertedPlaceholderCollection<>.index(before:)(v13, a2, v5, v6, a1);
  return (*(v10 + 8))(v13, v9);
}

uint64_t InsertedPlaceholderCollection<>.index(_:offsetBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v149 = a1;
  v150 = a2;
  v148 = a6;
  v143 = a5;
  v8 = *(*(a5 + 8) + 8);
  v146 = *(a3 + 24);
  v147 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v141 = *(AssociatedTypeWitness - 8);
  v142 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v139 = (&v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v144 = a4;
  v145 = &v133 - v12;
  v13 = *(*(a4 + 8) + 8);
  v151 = *(a3 + 16);
  v152 = v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v133 - v17;
  v19 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v133 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v133 - v28;
  (*(v16 + 16))(v18, v153 + *(a3 + 56), v15, v27);
  if ((*(v19 + 6))(v18, 1, v14) != 1)
  {
    v137 = a3;
    v138 = v25;
    v140 = v22;
    v41 = v151;
    v42 = v152;
    v43 = *(v19 + 4);
    v43(v29, v18, v14);
    v44 = v150;
    if (v150 >= 1)
    {
      v135 = v43;
      v45 = v42;
      swift_getAssociatedConformanceWitness();
      v46 = v149;
      if (dispatch thunk of static Comparable.> infix(_:_:)())
      {
        v47 = v29;
        v48 = v138;
        dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
        v49 = v140;
        (*(v19 + 2))(v140, v48, v14);
        v50 = v41;
        v51 = v145;
        v52 = v19;
        v53 = v14;
        v55 = v146;
        v54 = v147;
        dispatch thunk of Collection.startIndex.getter();
        v56 = *(v52 + 1);
        v56(v48, v53);
        v56(v47, v53);
        v34 = v148;
        v35 = v49;
        v36 = v51;
LABEL_6:
        v37 = v50;
LABEL_7:
        v38 = v55;
        v39 = v152;
        v40 = v54;
        return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v35, v36, v37, v38, v39, v40, v34);
      }

      v61 = dispatch thunk of static Equatable.== infix(_:_:)();
      v62 = v145;
      if (v61)
      {
        v136 = v29;
        v134 = v14;
        v139 = v19;
        v64 = v146;
        v63 = v147;
        v154 = v41;
        v155 = v146;
        v156 = v45;
        v157 = v147;
        type metadata accessor for InsertedPlaceholderCollection.Index(0, &v154);
        dispatch thunk of Collection.endIndex.getter();
        v65 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
        result = (*(v141 + 8))(v62, v142);
        if (v65 >= v44)
        {
          dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
          v91 = v139;
          v92 = v134;
          v139[1](v136, v134);
          v93 = v138;
          (v91[2])(v138, v46, v92);
          v34 = v148;
          v35 = v93;
          v36 = v62;
          v37 = v151;
          goto LABEL_34;
        }

        v66 = v151;
        if (!__OFSUB__(v44, v65))
        {
          v67 = v62;
          v68 = v138;
          dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
          v69 = v139;
          v70 = v134;
          (v139[2])(v140, v68, v134);
          dispatch thunk of Collection.startIndex.getter();
          v71 = v69[1];
          v71(v68, v70);
          v71(v136, v70);
          v34 = v148;
          v35 = v140;
          v36 = v67;
          v37 = v66;
LABEL_34:
          v38 = v64;
          v39 = v152;
          v40 = v63;
          return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v35, v36, v37, v38, v39, v40, v34);
        }

        __break(1u);
        goto LABEL_44;
      }

      result = dispatch thunk of RandomAccessCollection.distance(from:to:)();
      v72 = v44;
      v73 = result <= v44;
      v74 = v138;
      v50 = v41;
      v75 = v29;
      v76 = v140;
      if (!v73)
      {
        dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
        (*(v19 + 2))(v76, v74, v14);
        v77 = v145;
        v78 = v19;
        v79 = v76;
        v80 = v14;
        v55 = v146;
        v54 = v147;
        dispatch thunk of Collection.startIndex.getter();
        v81 = *(v78 + 1);
        v81(v74, v80);
        v81(v75, v80);
        v34 = v148;
        v35 = v79;
        v36 = v77;
        goto LABEL_6;
      }

      v136 = v75;
      v134 = v14;
      v94 = v72 - result;
      if (__OFSUB__(v72, result))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v64 = v146;
      v63 = v147;
      if (dispatch thunk of Collection.count.getter() < v94)
      {
        result = dispatch thunk of Collection.count.getter();
        if (!__OFSUB__(v94, result))
        {
          v95 = v138;
          v96 = v136;
          dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
          v97 = v134;
          (*(v19 + 2))(v140, v95, v134);
          v98 = v145;
          dispatch thunk of Collection.startIndex.getter();
          v99 = *(v19 + 1);
          v99(v95, v97);
          v99(v96, v97);
          v34 = v148;
          v35 = v140;
          v36 = v98;
          v37 = v50;
          goto LABEL_34;
        }

        goto LABEL_45;
      }

      v41 = v50;
      v107 = v145;
      Collection.index(atOffset:)(v94, v64, v63);
      v109 = v138;
      v135(v138, v136, v134);
      v34 = v148;
      v35 = v109;
      goto LABEL_29;
    }

    v136 = v29;
    v57 = v41;
    v58 = v140;
    if ((v150 & 0x8000000000000000) == 0)
    {
      (*(v19 + 1))(v136, v14);
      v154 = v41;
      v155 = v146;
      v156 = v42;
      v157 = v147;
      v59 = type metadata accessor for InsertedPlaceholderCollection.Index(0, &v154);
      return (*(*(v59 - 8) + 16))(v148, v149, v59);
    }

    v135 = v43;
    swift_getAssociatedConformanceWitness();
    v82 = v149;
    v83 = dispatch thunk of static Comparable.< infix(_:_:)();
    v84 = v148;
    if (v83)
    {
      v85 = v138;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      (*(v19 + 2))(v58, v85, v14);
      v86 = v145;
      v87 = v58;
      v88 = v19;
      v89 = v14;
      v55 = v146;
      v54 = v147;
      dispatch thunk of Collection.startIndex.getter();
      v90 = *(v88 + 1);
      v90(v85, v89);
      v90(v136, v89);
      v34 = v84;
    }

    else
    {
      v100 = v136;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v134 = v14;
        v139 = v19;
        v64 = v146;
        v63 = v147;
        v154 = v41;
        v155 = v146;
        v156 = v152;
        v157 = v147;
        type metadata accessor for InsertedPlaceholderCollection.Index(0, &v154);
        v101 = v145;
        dispatch thunk of Collection.startIndex.getter();
        v102 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
        result = (*(v141 + 8))(v101, v142);
        if (v102 <= v150)
        {
          dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
          v114 = v139;
          v115 = v134;
          v139[1](v136, v134);
          v116 = v138;
          (v114[2])(v138, v82, v115);
          v34 = v148;
          v35 = v116;
          v36 = v101;
          goto LABEL_33;
        }

        if (__OFSUB__(v150, v102))
        {
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v103 = v138;
        dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
        v104 = v139;
        v105 = v140;
        v106 = v134;
        (v139[2])(v140, v103, v134);
        v107 = v145;
        dispatch thunk of Collection.startIndex.getter();
        v108 = v104[1];
        v108(v103, v106);
        v108(v136, v106);
        v34 = v148;
        v35 = v105;
LABEL_29:
        v36 = v107;
LABEL_33:
        v37 = v41;
        goto LABEL_34;
      }

      v57 = v41;
      result = dispatch thunk of RandomAccessCollection.distance(from:to:)();
      if (result >= v150)
      {
        v117 = v150 - result;
        if (!__OFSUB__(v150, result))
        {
          result = dispatch thunk of Collection.count.getter();
          if (!__OFSUB__(0, result))
          {
            v134 = v14;
            if (v117 >= -result)
            {
              v128 = v139;
              v130 = v146;
              v129 = v147;
              dispatch thunk of Collection.endIndex.getter();
              v131 = v145;
              dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
              (*(v141 + 8))(v128, v142);
              v132 = v138;
              v135(v138, v136, v134);
              v34 = v148;
              v35 = v132;
              v36 = v131;
              v37 = v57;
              v38 = v130;
              v39 = v152;
              v40 = v129;
              return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v35, v36, v37, v38, v39, v40, v34);
            }

            v118 = v146;
            result = dispatch thunk of Collection.count.getter();
            if (!__OFADD__(v117, result))
            {
              v119 = v138;
              v120 = v136;
              dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
              v121 = v19;
              v122 = *(v19 + 2);
              v123 = v140;
              v124 = v134;
              v122(v140, v119, v134);
              v125 = v145;
              v126 = v147;
              dispatch thunk of Collection.startIndex.getter();
              v127 = *(v121 + 1);
              v127(v119, v124);
              v127(v120, v124);
              v34 = v148;
              v35 = v123;
              v36 = v125;
              v37 = v57;
              v38 = v118;
              v39 = v152;
              v40 = v126;
              return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v35, v36, v37, v38, v39, v40, v34);
            }

LABEL_49:
            __break(1u);
            return result;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v110 = v138;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      (*(v19 + 2))(v58, v110, v14);
      v86 = v145;
      v87 = v58;
      v111 = v19;
      v112 = v14;
      v55 = v146;
      v54 = v147;
      dispatch thunk of Collection.startIndex.getter();
      v113 = *(v111 + 1);
      v113(v110, v112);
      v113(v100, v112);
      v34 = v148;
    }

    v35 = v87;
    v36 = v86;
    v37 = v57;
    goto LABEL_7;
  }

  (*(v16 + 8))(v18, v15);
  v30 = v151;
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  (*(v19 + 2))(v22, v25, v14);
  v31 = v145;
  v32 = v146;
  v33 = v147;
  dispatch thunk of Collection.startIndex.getter();
  (*(v19 + 1))(v25, v14);
  v34 = v148;
  v35 = v22;
  v36 = v31;
  v37 = v30;
  v38 = v32;
  v39 = v152;
  v40 = v33;
  return InsertedPlaceholderCollection.Index.init(baseIndex:placeholderIndex:)(v35, v36, v37, v38, v39, v40, v34);
}

uint64_t InsertedPlaceholderCollection<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a5;
  v9 = *(a3 + 24);
  v57 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  v51 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v49 = &v47 - v11;
  v55 = a4;
  v12 = *(*(a4 + 8) + 8);
  v13 = *(a3 + 16);
  v14 = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  v56 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v18 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v54 = &v47 - v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = *(AssociatedConformanceWitness + 8);
  v60 = a1;
  v61 = v14;
  v22 = a2;
  v52 = v21;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v62 = v13;
    v63 = v9;
    v64 = v12;
    v65 = v57;
    type metadata accessor for InsertedPlaceholderCollection.Index(0, &v62);
    return dispatch thunk of RandomAccessCollection.distance(from:to:)();
  }

  v48 = v12;
  v24 = v57;
  v25 = v59;
  v55 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  (*(v56 + 16))(v17, v25 + *(a3 + 56), v15);
  if ((*(v18 + 48))(v17, 1, v61) == 1)
  {
    (*(v56 + 8))(v17, v15);
    return v55;
  }

  v26 = v54;
  (*(v18 + 32))(v54, v17, v61);
  v47 = v13;
  v56 = v9;
  v27 = v9;
  v28 = v24;
  if (static InsertedPlaceholderCollection.Index.< infix(_:_:)(v60, v22, v13, v27, v48, v24))
  {
    if (dispatch thunk of static Comparable.> infix(_:_:)() & 1) != 0 || (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      goto LABEL_14;
    }

    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_21;
    }

    v62 = v47;
    v63 = v56;
    v64 = v48;
    v65 = v24;
    type metadata accessor for InsertedPlaceholderCollection.Index(0, &v62);
    v28 = v49;
    dispatch thunk of Collection.endIndex.getter();
    v29 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
    (*(v50 + 8))(v28, v51);
    v30 = *(v18 + 8);
    v18 += 8;
    v30(v26, v61);
    result = v55 + v29;
    if (!__OFADD__(v55, v29))
    {
      return result;
    }

    __break(1u);
  }

  if (dispatch thunk of static Comparable.> infix(_:_:)() & 1) != 0 || (dispatch thunk of static Comparable.< infix(_:_:)())
  {
LABEL_14:
    (*(v18 + 8))(v26, v61);
    return v55;
  }

  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v31 = v49;
  v32 = v56;
  dispatch thunk of Collection.endIndex.getter();
  v62 = v47;
  v63 = v32;
  v64 = v48;
  v65 = v28;
  type metadata accessor for InsertedPlaceholderCollection.Index(0, &v62);
  v33 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  (*(v50 + 8))(v31, v51);
  v34 = *(v18 + 8);
  v18 += 8;
  v34(v26, v61);
  result = v55 + v33;
  if (!__OFADD__(v55, v33))
  {
    return result;
  }

  __break(1u);
LABEL_21:
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  v36 = v48;
  if ((v35 & 1) == 0)
  {
    goto LABEL_29;
  }

  v37 = v49;
  v38 = v56;
  dispatch thunk of Collection.startIndex.getter();
  v62 = v47;
  v63 = v38;
  v64 = v36;
  v65 = v28;
  type metadata accessor for InsertedPlaceholderCollection.Index(0, &v62);
  v39 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  (*(v50 + 8))(v37, v51);
  v40 = *(v18 + 8);
  v18 += 8;
  v40(v26, v61);
  result = v55 + v39;
  if (!__OFADD__(v55, v39))
  {
    return result;
  }

  __break(1u);
LABEL_25:
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_32;
  }

  v62 = v47;
  v63 = v56;
  v64 = v48;
  v65 = v28;
  type metadata accessor for InsertedPlaceholderCollection.Index(0, &v62);
  v41 = v49;
  dispatch thunk of Collection.startIndex.getter();
  v42 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
  (*(v50 + 8))(v41, v51);
  v43 = *(v18 + 8);
  v18 += 8;
  v43(v26, v61);
  result = v55 + v42;
  if (!__OFADD__(v55, v42))
  {
    return result;
  }

  __break(1u);
LABEL_29:
  v44 = dispatch thunk of Collection.count.getter();
  v45 = *(v18 + 8);
  v18 += 8;
  v45(v26, v61);
  result = v55 + v44;
  if (!__OFADD__(v55, v44))
  {
    return result;
  }

  __break(1u);
LABEL_32:
  v46 = dispatch thunk of Collection.count.getter();
  (*(v18 + 8))(v26, v61);
  result = v55 - v46;
  if (__OFSUB__(v55, v46))
  {
    __break(1u);
  }

  return result;
}

uint64_t InsertedPlaceholderCollection.source(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v5 = *(a2 + 24);
  v63 = *(a2 + 40);
  v61 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  v57 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = &v49 - v7;
  v8 = *(a2 + 16);
  v60 = *(a2 + 32);
  *&v66 = v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v49 - v11;
  v12 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v49 - v14;
  v16 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  *&v65 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v49 - v21;
  v23 = *(v10 + 16);
  v62 = a1;
  v58 = v23;
  v59 = v10 + 16;
  (v23)(&v49 - v21, a1, v9, v20);
  (*(v10 + 56))(v22, 0, 1, v9);
  v51 = a2;
  v24 = *(a2 + 56);
  v54 = TupleTypeMetadata2;
  v25 = *(TupleTypeMetadata2 + 48);
  v26 = *(v16 + 16);
  v26(v15, v22, v12);
  v26(&v15[v25], (v67 + v24), v12);
  v55 = v10;
  v27 = *(v10 + 48);
  if (v27(v15, 1, v9) != 1)
  {
    v26(v65, v15, v12);
    if (v27(&v15[v25], 1, v9) != 1)
    {
      v35 = v55;
      v36 = v50;
      (*(v55 + 32))(v50, &v15[v25], v9);
      v34 = v60;
      swift_getAssociatedConformanceWitness();
      LODWORD(v54) = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v35 + 8);
      v38 = v36;
      v30 = v66;
      v37(v38, v9);
      v39 = *(v16 + 8);
      v39(v22, v12);
      v37(v65, v9);
      v39(v15, v12);
      v32 = v62;
      v31 = v63;
      v33 = v61;
      if ((v54 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    (*(v16 + 8))(v22, v12);
    (*(v55 + 8))(v65, v9);
    v30 = v66;
LABEL_6:
    (*(v53 + 8))(v15, v54);
    v32 = v62;
    v31 = v63;
    v34 = v60;
    v33 = v61;
    goto LABEL_9;
  }

  v28 = *(v16 + 8);
  v28(v22, v12);
  v29 = v27(&v15[v25], 1, v9);
  v30 = v66;
  if (v29 != 1)
  {
    goto LABEL_6;
  }

  v28(v15, v12);
  v32 = v62;
  v31 = v63;
  v34 = v60;
  v33 = v61;
LABEL_8:
  *&v40 = v30;
  *(&v40 + 1) = v33;
  *&v41 = v34;
  *(&v41 + 1) = v31;
  v65 = v41;
  v66 = v40;
  v69 = v41;
  v68 = v40;
  v42 = *(type metadata accessor for InsertedPlaceholderCollection.Index(0, &v68) + 52);
  v43 = v52;
  dispatch thunk of Collection.endIndex.getter();
  v44 = v57;
  swift_getAssociatedConformanceWitness();
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v56 + 8))(v43, v44);
  if ((v45 & 1) == 0)
  {
    (*(v56 + 16))(v64, v32 + v42, v57);
    v69 = v65;
    v68 = v66;
    type metadata accessor for InsertedPlaceholderCollection.Source(0, &v68);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_9:
  v58(v64, v32, v9);
  *&v46 = v30;
  *(&v46 + 1) = v33;
  *&v47 = v34;
  *(&v47 + 1) = v31;
  v69 = v47;
  v68 = v46;
  type metadata accessor for InsertedPlaceholderCollection.Source(0, &v68);
  return swift_storeEnumTagMultiPayload();
}

double associated type witness table accessor for Collection.Indices : BidirectionalCollection in <> RemovedElementsCollection<A>(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v10 = *(a3 - 8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> RemovedElementsCollection<A>, a2, &v10);
  v9 = v7;
  return swift_getWitnessTable(a4, a1, &v9, WitnessTable);
}

double associated type witness table accessor for Collection.Indices : RandomAccessCollection in RemovedElementsCollection<A><>.RandomAccessAdaptor(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RemovedElementsCollection<A><>.RandomAccessAdaptor);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E5EC0], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.SubSequence : RandomAccessCollection in RemovedElementsCollection<A><>.RandomAccessAdaptor(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RemovedElementsCollection<A><>.RandomAccessAdaptor);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74F0], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.Indices : BidirectionalCollection in RemovedElementsCollection<A><>.RandomAccessAdaptor(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RemovedElementsCollection<A><>.RandomAccessAdaptor);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E5EB0], a1, &v5, WitnessTable);
}

double associated type witness table accessor for Collection.SubSequence : BidirectionalCollection in RemovedElementsCollection<A><>.RandomAccessAdaptor(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RemovedElementsCollection<A><>.RandomAccessAdaptor);
  v5 = v3;
  return swift_getWitnessTable(MEMORY[0x1E69E74D8], a1, &v5, WitnessTable);
}

double base witness table accessor for BidirectionalCollection in <> InsertedPlaceholderCollection<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 16) + 8);
  v5[0] = *(*(a3 - 8) + 8);
  v5[1] = v3;
  return swift_getWitnessTable(protocol conformance descriptor for <> InsertedPlaceholderCollection<A, B>, a1, v5);
}

double associated type witness table accessor for Collection.Indices : BidirectionalCollection in <> InsertedPlaceholderCollection<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v11 = vextq_s8(*(a3 - 16), *(a3 - 16), 8uLL);
  WitnessTable = swift_getWitnessTable(a4, a2, &v11);
  v10 = v8;
  return swift_getWitnessTable(a5, a1, &v10, WitnessTable);
}

uint64_t type metadata completion function for RemovedElementsCollection(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    v5 = result;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = type metadata accessor for RangeSet();
    if (v7 <= 0x3F)
    {
      result = type metadata accessor for RemovedElementsCollection.Index(319, v5, v4, v6);
      if (v8 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for RemovedElementsCollection(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v21 = *a2;
    *v3 = *a2;
    v3 = (v21 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a3 + 16);
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    v8 = *(a3 + 36);
    v9 = *(a3 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v11 = type metadata accessor for RangeSet();
    (*(*(v11 - 8) + 16))(&v3[v8], &a2[v8], v11);
    v12 = *(a3 + 40);
    v13 = &v3[v12];
    v14 = &a2[v12];
    v15 = *(*(AssociatedTypeWitness - 8) + 16);
    v15(&v3[v12], &a2[v12], AssociatedTypeWitness);
    v17 = type metadata accessor for RemovedElementsCollection.Index(0, v5, v9, v16);
    *&v13[*(v17 + 36)] = *&v14[*(v17 + 36)];
    v18 = *(a3 + 44);
    v19 = &v3[v18];
    v20 = &a2[v18];
    v15(&v3[v18], v20, AssociatedTypeWitness);
    *&v19[*(v17 + 36)] = *&v20[*(v17 + 36)];
  }

  return v3;
}

uint64_t destroy for RemovedElementsCollection(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))(a1, *(a2 + 16));
  v4 = *(a2 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for RangeSet();
  (*(*(v6 - 8) + 8))(a1 + v4, v6);
  v9 = *(*(AssociatedTypeWitness - 8) + 8);
  v9(a1 + *(a2 + 40), AssociatedTypeWitness);
  v7 = a1 + *(a2 + 44);

  return (v9)(v7, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for RemovedElementsCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 36);
  v8 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for RangeSet();
  (*(*(v10 - 8) + 16))(a1 + v7, a2 + v7, v10);
  v11 = *(a3 + 40);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v14 = *(*(AssociatedTypeWitness - 8) + 16);
  v14(a1 + v11, a2 + v11, AssociatedTypeWitness);
  v16 = type metadata accessor for RemovedElementsCollection.Index(0, v6, v8, v15);
  *(v12 + *(v16 + 36)) = *(v13 + *(v16 + 36));
  v17 = *(a3 + 44);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v14(a1 + v17, v19, AssociatedTypeWitness);
  *(v18 + *(v16 + 36)) = *(v19 + *(v16 + 36));
  return a1;
}

uint64_t assignWithCopy for RemovedElementsCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 36);
  v8 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for RangeSet();
  (*(*(v10 - 8) + 24))(a1 + v7, a2 + v7, v10);
  v11 = *(a3 + 40);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v14 = *(*(AssociatedTypeWitness - 8) + 24);
  v14(a1 + v11, a2 + v11, AssociatedTypeWitness);
  v16 = type metadata accessor for RemovedElementsCollection.Index(0, v6, v8, v15);
  *(v12 + *(v16 + 36)) = *(v13 + *(v16 + 36));
  v17 = *(a3 + 44);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v14(a1 + v17, v19, AssociatedTypeWitness);
  *(v18 + *(v16 + 36)) = *(v19 + *(v16 + 36));
  return a1;
}

uint64_t initializeWithTake for RemovedElementsCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 36);
  v8 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for RangeSet();
  (*(*(v10 - 8) + 32))(a1 + v7, a2 + v7, v10);
  v11 = *(a3 + 40);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v14 = *(*(AssociatedTypeWitness - 8) + 32);
  v14(a1 + v11, a2 + v11, AssociatedTypeWitness);
  v16 = type metadata accessor for RemovedElementsCollection.Index(0, v6, v8, v15);
  *(v12 + *(v16 + 36)) = *(v13 + *(v16 + 36));
  v17 = *(a3 + 44);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v14(a1 + v17, v19, AssociatedTypeWitness);
  *(v18 + *(v16 + 36)) = *(v19 + *(v16 + 36));
  return a1;
}

uint64_t assignWithTake for RemovedElementsCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 36);
  v8 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for RangeSet();
  (*(*(v10 - 8) + 40))(a1 + v7, a2 + v7, v10);
  v11 = *(a3 + 40);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v14 = *(*(AssociatedTypeWitness - 8) + 40);
  v14(a1 + v11, a2 + v11, AssociatedTypeWitness);
  v16 = type metadata accessor for RemovedElementsCollection.Index(0, v6, v8, v15);
  *(v12 + *(v16 + 36)) = *(v13 + *(v16 + 36));
  v17 = *(a3 + 44);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v14(a1 + v17, v19, AssociatedTypeWitness);
  *(v18 + *(v16 + 36)) = *(v19 + *(v16 + 36));
  return a1;
}

uint64_t type metadata completion function for RemovedElementsCollection.Index(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for RemovedElementsCollection.Index(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t destroy for RemovedElementsCollection.Index(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for RemovedElementsCollection.Index(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(a1, a2, AssociatedTypeWitness);
  *((*(v6 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v6 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for RemovedElementsCollection.Index(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 24;
  (*v6)(a1, a2, AssociatedTypeWitness);
  *((*(v6 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v6 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for RemovedElementsCollection.Index(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 32;
  (*v6)(a1, a2, AssociatedTypeWitness);
  *((*(v6 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v6 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for RemovedElementsCollection.Index(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 40;
  (*v6)(a1, a2, AssociatedTypeWitness);
  *((*(v6 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v6 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for RemovedElementsCollection.Index(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_25:
    v16 = *(v6 + 48);

    return v16(a1);
  }

  v8 = ((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = a2 - v7 + 1;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v8);
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + v8);
      if (!v13)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v8)) == 0)
  {
LABEL_24:
    if (v7)
    {
      goto LABEL_25;
    }

    return 0;
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for RemovedElementsCollection.Index(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = ((*(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v12 = 0;
    v13 = a2 - v8;
    if (a2 <= v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (((*(v7 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = a3 - v8 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = a2 - v8;
    if (a2 <= v8)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(a1 + v9) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_30;
        }

        *(a1 + v9) = 0;
      }

      else if (v12)
      {
        *(a1 + v9) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return;
      }

LABEL_30:
      v16 = *(v7 + 56);

      v16(a1, a2);
      return;
    }
  }

  if (((*(v7 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (((*(v7 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v15 = ~v8 + a2;
    bzero(a1, v9);
    *a1 = v15;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(a1 + v9) = v14;
    }

    else
    {
      *(a1 + v9) = v14;
    }
  }

  else if (v12)
  {
    *(a1 + v9) = v14;
  }
}

uint64_t type metadata completion function for RemovedElementsCollection<>.RandomAccessAdaptor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for RemovedElementsCollection(319, *(a1 + 16), *(*(*(a1 + 24) + 8) + 8), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for RemovedElementsCollection<>.RandomAccessAdaptor(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 16);
  v7 = *(*(*(a3 + 24) + 8) + 8);
  v8 = type metadata accessor for RemovedElementsCollection(0, v6, v7, a4);
  v9 = *(*(v8 - 8) + 80);
  if ((v9 & 0x20000) != 0)
  {
    v23 = *a2;
    *a1 = *a2;
    a1 = (v23 + ((v9 + 16) & ~v9));
  }

  else
  {
    v10 = v8;
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    v11 = v10[9];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v13 = type metadata accessor for RangeSet();
    (*(*(v13 - 8) + 16))(&a1[v11], &a2[v11], v13);
    v14 = v10[10];
    v15 = &a1[v14];
    v16 = &a2[v14];
    v17 = *(*(AssociatedTypeWitness - 8) + 16);
    v17(&a1[v14], &a2[v14], AssociatedTypeWitness);
    v19 = type metadata accessor for RemovedElementsCollection.Index(0, v6, v7, v18);
    *&v15[*(v19 + 36)] = *&v16[*(v19 + 36)];
    v20 = v10[11];
    v21 = &a1[v20];
    v22 = &a2[v20];
    v17(&a1[v20], v22, AssociatedTypeWitness);
    *&v21[*(v19 + 36)] = *&v22[*(v19 + 36)];
  }

  return a1;
}

uint64_t destroy for RemovedElementsCollection<>.RandomAccessAdaptor(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  (*(*(v4 - 8) + 8))(a1, v4);
  v6 = type metadata accessor for RemovedElementsCollection(0, v4, *(*(*(a2 + 24) + 8) + 8), v5);
  v7 = v6[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for RangeSet();
  (*(*(v9 - 8) + 8))(a1 + v7, v9);
  v12 = *(*(AssociatedTypeWitness - 8) + 8);
  v12(a1 + v6[10], AssociatedTypeWitness);
  v10 = a1 + v6[11];

  return (v12)(v10, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for RemovedElementsCollection<>.RandomAccessAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(*(*(a3 + 24) + 8) + 8);
  v9 = type metadata accessor for RemovedElementsCollection(0, v6, v7, v8);
  v10 = v9[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for RangeSet();
  (*(*(v12 - 8) + 16))(a1 + v10, a2 + v10, v12);
  v13 = v9[10];
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(*(AssociatedTypeWitness - 8) + 16);
  v16(a1 + v13, a2 + v13, AssociatedTypeWitness);
  v18 = type metadata accessor for RemovedElementsCollection.Index(0, v6, v7, v17);
  *(v14 + *(v18 + 36)) = *(v15 + *(v18 + 36));
  v19 = v9[11];
  v20 = a1 + v19;
  v21 = a2 + v19;
  v16(a1 + v19, v21, AssociatedTypeWitness);
  *(v20 + *(v18 + 36)) = *(v21 + *(v18 + 36));
  return a1;
}

uint64_t assignWithCopy for RemovedElementsCollection<>.RandomAccessAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(*(*(a3 + 24) + 8) + 8);
  v9 = type metadata accessor for RemovedElementsCollection(0, v6, v7, v8);
  v10 = v9[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for RangeSet();
  (*(*(v12 - 8) + 24))(a1 + v10, a2 + v10, v12);
  v13 = v9[10];
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(*(AssociatedTypeWitness - 8) + 24);
  v16(a1 + v13, a2 + v13, AssociatedTypeWitness);
  v18 = type metadata accessor for RemovedElementsCollection.Index(0, v6, v7, v17);
  *(v14 + *(v18 + 36)) = *(v15 + *(v18 + 36));
  v19 = v9[11];
  v20 = a1 + v19;
  v21 = a2 + v19;
  v16(a1 + v19, v21, AssociatedTypeWitness);
  *(v20 + *(v18 + 36)) = *(v21 + *(v18 + 36));
  return a1;
}

uint64_t initializeWithTake for RemovedElementsCollection<>.RandomAccessAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(*(*(a3 + 24) + 8) + 8);
  v9 = type metadata accessor for RemovedElementsCollection(0, v6, v7, v8);
  v10 = v9[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for RangeSet();
  (*(*(v12 - 8) + 32))(a1 + v10, a2 + v10, v12);
  v13 = v9[10];
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(*(AssociatedTypeWitness - 8) + 32);
  v16(a1 + v13, a2 + v13, AssociatedTypeWitness);
  v18 = type metadata accessor for RemovedElementsCollection.Index(0, v6, v7, v17);
  *(v14 + *(v18 + 36)) = *(v15 + *(v18 + 36));
  v19 = v9[11];
  v20 = a1 + v19;
  v21 = a2 + v19;
  v16(a1 + v19, v21, AssociatedTypeWitness);
  *(v20 + *(v18 + 36)) = *(v21 + *(v18 + 36));
  return a1;
}

uint64_t assignWithTake for RemovedElementsCollection<>.RandomAccessAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(*(*(a3 + 24) + 8) + 8);
  v9 = type metadata accessor for RemovedElementsCollection(0, v6, v7, v8);
  v10 = v9[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for RangeSet();
  (*(*(v12 - 8) + 40))(a1 + v10, a2 + v10, v12);
  v13 = v9[10];
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(*(AssociatedTypeWitness - 8) + 40);
  v16(a1 + v13, a2 + v13, AssociatedTypeWitness);
  v18 = type metadata accessor for RemovedElementsCollection.Index(0, v6, v7, v17);
  *(v14 + *(v18 + 36)) = *(v15 + *(v18 + 36));
  v19 = v9[11];
  v20 = a1 + v19;
  v21 = a2 + v19;
  v16(a1 + v19, v21, AssociatedTypeWitness);
  *(v20 + *(v18 + 36)) = *(v21 + *(v18 + 36));
  return a1;
}

uint64_t type metadata completion function for InsertedPlaceholderCollection(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = type metadata accessor for Optional();
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for InsertedPlaceholderCollection(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a3[2];
  v5 = *(v4 - 8);
  v27 = a3[3];
  v6 = *(v27 - 8);
  v7 = *(v6 + 80);
  v8 = *(v5 + 64) + v7;
  v9 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 80);
  v12 = v9 + v11;
  if (*(v10 + 84))
  {
    v13 = *(v10 + 64);
  }

  else
  {
    v13 = *(v10 + 64) + 1;
  }

  v14 = (v7 | *(v5 + 80) | *(v10 + 80));
  if (v14 <= 7 && v13 + ((v12 + (v8 & ~v7)) & ~v11) <= 0x18 && ((v7 | *(v5 + 80) | *(v10 + 80)) & 0x100000) == 0)
  {
    __n = v13;
    v19 = ~v7;
    v20 = ~v11;
    v18 = a1;
    (*(v5 + 16))(a1, a2, v4);
    v21 = (a1 + v8) & v19;
    v22 = (a2 + v8) & v19;
    (*(v6 + 16))(v21, v22, v27);
    v23 = v21 + v12;
    v24 = v22 + v12;
    if ((*(v10 + 48))(v24 & v20, 1, AssociatedTypeWitness))
    {
      memcpy((v23 & v20), (v24 & v20), __n);
    }

    else
    {
      (*(v10 + 16))(v23 & v20, v24 & v20, AssociatedTypeWitness);
      (*(v10 + 56))(v23 & v20, 0, 1, AssociatedTypeWitness);
    }
  }

  else
  {
    v17 = *a2;
    *a1 = *a2;
    v18 = (v17 + ((v14 + 16) & ~v14));
  }

  return v18;
}

uint64_t destroy for InsertedPlaceholderCollection(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)(a1, a2[2]);
  v5 = *(v4 + 56) + a1;
  v6 = *(a2[3] - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = *(v7 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 80);
  v13 = v8 + v9 + v12;
  v16 = v11;
  result = (*(v11 + 48))(v13 & ~v12, 1, AssociatedTypeWitness);
  if (!result)
  {
    v15 = *(v16 + 8);

    return v15(v13 & ~v12, AssociatedTypeWitness);
  }

  return result;
}

uint64_t initializeWithCopy for InsertedPlaceholderCollection(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 16;
  (*v6)(a1, a2, a3[2]);
  v7 = *(a3[3] - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v10 = *(v6 + 48) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 16))(v11, v12);
  v13 = *(v8 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 80);
  v17 = v13 + v16 + v11;
  v18 = v13 + v16 + v12;
  if ((*(v15 + 48))(v18 & ~v16, 1, AssociatedTypeWitness))
  {
    if (*(v15 + 84))
    {
      v19 = *(v15 + 64);
    }

    else
    {
      v19 = *(v15 + 64) + 1;
    }

    memcpy((v17 & ~v16), (v18 & ~v16), v19);
  }

  else
  {
    (*(v15 + 16))(v17 & ~v16, v18 & ~v16, AssociatedTypeWitness);
    (*(v15 + 56))(v17 & ~v16, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

uint64_t assignWithCopy for InsertedPlaceholderCollection(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 24;
  (*v6)(a1, a2, a3[2]);
  v7 = *(a3[3] - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 24))(v11, v12);
  v13 = *(v8 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 80);
  v17 = v13 + v16 + v11;
  v18 = v13 + v16 + v12;
  v19 = *(v15 + 48);
  LODWORD(v12) = v19(v17 & ~v16, 1, AssociatedTypeWitness);
  v20 = v19(v18 & ~v16, 1, AssociatedTypeWitness);
  if (v12)
  {
    if (!v20)
    {
      (*(v15 + 16))(v17 & ~v16, v18 & ~v16, AssociatedTypeWitness);
      (*(v15 + 56))(v17 & ~v16, 0, 1, AssociatedTypeWitness);
      return a1;
    }

    v21 = *(v15 + 84);
    v22 = *(v15 + 64);
  }

  else
  {
    if (!v20)
    {
      (*(v15 + 24))(v17 & ~v16, v18 & ~v16, AssociatedTypeWitness);
      return a1;
    }

    v24 = *(v15 + 8);
    v23 = v15 + 8;
    v24(v17 & ~v16, AssociatedTypeWitness);
    v21 = *(v23 + 76);
    v22 = *(v23 + 56);
  }

  if (v21)
  {
    v25 = v22;
  }

  else
  {
    v25 = v22 + 1;
  }

  memcpy((v17 & ~v16), (v18 & ~v16), v25);
  return a1;
}

uint64_t initializeWithTake for InsertedPlaceholderCollection(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 32;
  (*v6)(a1, a2, a3[2]);
  v7 = *(a3[3] - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = *(v6 + 32) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 32))(v11, v12);
  v13 = *(v8 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 80);
  v17 = v13 + v16 + v11;
  v18 = v13 + v16 + v12;
  if ((*(v15 + 48))(v18 & ~v16, 1, AssociatedTypeWitness))
  {
    if (*(v15 + 84))
    {
      v19 = *(v15 + 64);
    }

    else
    {
      v19 = *(v15 + 64) + 1;
    }

    memcpy((v17 & ~v16), (v18 & ~v16), v19);
  }

  else
  {
    (*(v15 + 32))(v17 & ~v16, v18 & ~v16, AssociatedTypeWitness);
    (*(v15 + 56))(v17 & ~v16, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

uint64_t assignWithTake for InsertedPlaceholderCollection(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 40;
  (*v6)(a1, a2, a3[2]);
  v7 = *(a3[3] - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = *(v6 + 24) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 40))(v11, v12);
  v13 = *(v8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 80);
  v17 = v13 + v16 + v11;
  v18 = v13 + v16 + v12;
  v19 = *(v15 + 48);
  LODWORD(v12) = v19(v17 & ~v16, 1, AssociatedTypeWitness);
  v20 = v19(v18 & ~v16, 1, AssociatedTypeWitness);
  if (v12)
  {
    if (!v20)
    {
      (*(v15 + 32))(v17 & ~v16, v18 & ~v16, AssociatedTypeWitness);
      (*(v15 + 56))(v17 & ~v16, 0, 1, AssociatedTypeWitness);
      return a1;
    }

    v21 = *(v15 + 84);
    v22 = *(v15 + 64);
  }

  else
  {
    if (!v20)
    {
      (*(v15 + 40))(v17 & ~v16, v18 & ~v16, AssociatedTypeWitness);
      return a1;
    }

    v24 = *(v15 + 8);
    v23 = v15 + 8;
    v24(v17 & ~v16, AssociatedTypeWitness);
    v21 = *(v23 + 76);
    v22 = *(v23 + 56);
  }

  if (v21)
  {
    v25 = v22;
  }

  else
  {
    v25 = v22 + 1;
  }

  memcpy((v17 & ~v16), (v18 & ~v16), v25);
  return a1;
}

uint64_t getEnumTagSinglePayload for InsertedPlaceholderCollection(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = a3[2];
  v6 = *(v5 - 8);
  v34 = a3[3];
  v7 = *(v6 + 84);
  v8 = *(v34 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v14 = v10;
  }

  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v13)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v6 + 64) + v15;
  if (a2 > v14)
  {
    v21 = v19 + ((v16 + v17 + (v20 & ~v15)) & ~v17);
    v22 = 8 * v21;
    if (v21 <= 3)
    {
      v24 = ((a2 - v14 + ~(-1 << v22)) >> v22) + 1;
      if (HIWORD(v24))
      {
        v23 = *(a1 + v21);
        if (!v23)
        {
          goto LABEL_34;
        }

        goto LABEL_21;
      }

      if (v24 > 0xFF)
      {
        v23 = *(a1 + v21);
        if (!*(a1 + v21))
        {
          goto LABEL_34;
        }

        goto LABEL_21;
      }

      if (v24 < 2)
      {
LABEL_34:
        if (v14)
        {
          goto LABEL_35;
        }

        return 0;
      }
    }

    v23 = *(a1 + v21);
    if (!*(a1 + v21))
    {
      goto LABEL_34;
    }

LABEL_21:
    v25 = (v23 - 1) << v22;
    if (v21 > 3)
    {
      v25 = 0;
    }

    if (v21)
    {
      if (v21 <= 3)
      {
        v26 = v21;
      }

      else
      {
        v26 = 4;
      }

      if (v26 > 2)
      {
        if (v26 == 3)
        {
          v27 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v27 = *a1;
        }
      }

      else if (v26 == 1)
      {
        v27 = *a1;
      }

      else
      {
        v27 = *a1;
      }
    }

    else
    {
      v27 = 0;
    }

    return v14 + (v27 | v25) + 1;
  }

LABEL_35:
  if (v7 == v14)
  {
    v28 = *(v6 + 48);
    v29 = a1;
    v30 = v7;
    v31 = v5;
  }

  else
  {
    v29 = ((a1 + v20) & ~v15);
    if (v9 != v14)
    {
      v33 = (*(v12 + 48))((v29 + v16 + v17) & ~v17);
      if (v33 >= 2)
      {
        return v33 - 1;
      }

      else
      {
        return 0;
      }
    }

    v28 = *(v8 + 48);
    v30 = v9;
    v31 = v34;
  }

  return v28(v29, v30, v31);
}

void storeEnumTagSinglePayload for InsertedPlaceholderCollection(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = a4[2];
  v6 = *(v5 - 8);
  v43 = a4[3];
  v44 = v6;
  v7 = *(v6 + 84);
  v8 = *(v43 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = *(v6 + 64);
  v16 = v14 - 1;
  if (!v14)
  {
    v16 = 0;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v8 + 80);
  v19 = v15 + v18;
  v20 = (v15 + v18) & ~v18;
  v21 = *(v8 + 64);
  v22 = *(v12 + 80);
  v23 = (v21 + v22 + v20) & ~v22;
  v24 = *(v12 + 64);
  if (v14)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 + 1;
  }

  v26 = v23 + v25;
  if (a3 > v17)
  {
    if (v26 <= 3)
    {
      v27 = ((a3 - v17 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
      if (HIWORD(v27))
      {
        v11 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v11 = v28;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v17 < a2)
  {
    v29 = ~v17 + a2;
    if (v26 < 4)
    {
      v30 = (v29 >> (8 * v26)) + 1;
      if (v26)
      {
        v32 = v29 & ~(-1 << (8 * v26));
        bzero(a1, v26);
        if (v26 != 3)
        {
          if (v26 == 2)
          {
            *a1 = v32;
            if (v11 > 1)
            {
LABEL_64:
              if (v11 == 2)
              {
                *&a1[v26] = v30;
              }

              else
              {
                *&a1[v26] = v30;
              }

              return;
            }
          }

          else
          {
            *a1 = v29;
            if (v11 > 1)
            {
              goto LABEL_64;
            }
          }

          goto LABEL_61;
        }

        *a1 = v32;
        a1[2] = BYTE2(v32);
      }

      if (v11 > 1)
      {
        goto LABEL_64;
      }
    }

    else
    {
      bzero(a1, v26);
      *a1 = v29;
      v30 = 1;
      if (v11 > 1)
      {
        goto LABEL_64;
      }
    }

LABEL_61:
    if (v11)
    {
      a1[v26] = v30;
    }

    return;
  }

  v31 = a1;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v26] = 0;
  }

  else if (v11)
  {
    a1[v26] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v7 == v17)
  {
    v33 = *(v44 + 56);
    v34 = a2;
    v35 = v7;
    v36 = v5;
LABEL_43:

    v33(v31, v34, v35, v36);
    return;
  }

  v31 = (&a1[v19] & ~v18);
  if (v9 == v17)
  {
    v33 = *(v8 + 56);
    v34 = a2;
    v35 = v9;
    v36 = v43;
    goto LABEL_43;
  }

  v37 = &v31[v21 + v22] & ~v22;
  if (v16 >= a2)
  {
    v41 = *(v13 + 56);
    v42 = &v31[v21 + v22] & ~v22;

    v41(v42, a2 + 1);
  }

  else
  {
    if (v25 <= 3)
    {
      v38 = ~(-1 << (8 * v25));
    }

    else
    {
      v38 = -1;
    }

    if (v25)
    {
      v39 = v38 & (~v16 + a2);
      if (v25 <= 3)
      {
        v40 = v25;
      }

      else
      {
        v40 = 4;
      }

      bzero((&v31[v21 + v22] & ~v22), v25);
      if (v40 > 2)
      {
        if (v40 == 3)
        {
          *v37 = v39;
          *(v37 + 2) = BYTE2(v39);
        }

        else
        {
          *v37 = v39;
        }
      }

      else if (v40 == 1)
      {
        *v37 = v39;
      }

      else
      {
        *v37 = v39;
      }
    }
  }
}

uint64_t type metadata completion function for InsertedPlaceholderCollection.Index(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for InsertedPlaceholderCollection.Index(uint64_t *a1, uint64_t *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10;
  v12 = (*(v6 + 80) | *(v9 + 80));
  if (v12 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || ((v7 + v10) & ~v10) + *(*(v8 - 8) + 64) > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v12 + 16) & ~v12));
  }

  else
  {
    v16 = v8;
    v17 = ~v10;
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    (*(v9 + 16))((a1 + v11) & v17, (a2 + v11) & v17, v16);
  }

  return a1;
}

uint64_t destroy for InsertedPlaceholderCollection.Index(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8) + 8;
  (*v4)(a1, AssociatedTypeWitness);
  v5 = *(v4 + 56) + a1;
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v9 = (v5 + *(v7 + 80)) & ~*(v7 + 80);

  return v8(v9, v6);
}

uint64_t initializeWithCopy for InsertedPlaceholderCollection.Index(uint64_t a1, uint64_t a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 48);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  (*(v9 + 16))((v7 + *(v9 + 80) + a1) & ~*(v9 + 80), (v7 + *(v9 + 80) + a2) & ~*(v9 + 80), v8);
  return a1;
}

uint64_t assignWithCopy for InsertedPlaceholderCollection.Index(uint64_t a1, uint64_t a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 24;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 40);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  (*(v9 + 24))((v7 + *(v9 + 80) + a1) & ~*(v9 + 80), (v7 + *(v9 + 80) + a2) & ~*(v9 + 80), v8);
  return a1;
}

uint64_t initializeWithTake for InsertedPlaceholderCollection.Index(uint64_t a1, uint64_t a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 32;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 32);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  (*(v9 + 32))((v7 + *(v9 + 80) + a1) & ~*(v9 + 80), (v7 + *(v9 + 80) + a2) & ~*(v9 + 80), v8);
  return a1;
}

uint64_t assignWithTake for InsertedPlaceholderCollection.Index(uint64_t a1, uint64_t a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 40;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 24);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  (*(v9 + 40))((v7 + *(v9 + 80) + a1) & ~*(v9 + 80), (v7 + *(v9 + 80) + a2) & ~*(v9 + 80), v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for InsertedPlaceholderCollection.Index(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, AssociatedTypeWitness);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void storeEnumTagSinglePayload for InsertedPlaceholderCollection.Index(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v8 + 56);

    v23(a1, a2, v9, AssociatedTypeWitness);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t type metadata completion function for InsertedPlaceholderCollection.Source(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for InsertedPlaceholderCollection.Source(void *a1, unsigned __int16 *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  if (*(v9 + 64) <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(*(v8 - 8) + 64);
  }

  v11 = (*(v9 + 80) | *(v6 + 80));
  if (v11 > 7 || v10 + 1 > 0x18 || ((*(v9 + 80) | *(v6 + 80)) & 0x100000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v11 + 16) & ~v11));

    return a1;
  }

  v15 = *(a2 + v10);
  v16 = v15 - 2;
  if (v15 >= 2)
  {
    if (v10 <= 3)
    {
      v17 = v10;
    }

    else
    {
      v17 = 4;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *a2;
      }

      else if (v17 == 3)
      {
        v18 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v18 = *a2;
      }

LABEL_24:
      v19 = (v18 | (v16 << (8 * v10))) + 2;
      v15 = v18 + 2;
      if (v10 < 4)
      {
        v15 = v19;
      }

      goto LABEL_26;
    }

    if (v17)
    {
      v18 = *a2;
      goto LABEL_24;
    }
  }

LABEL_26:
  if (v15 == 1)
  {
    (*(v9 + 16))(a1, a2, v8);
    *(a1 + v10) = 1;
  }

  else
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    *(a1 + v10) = 0;
  }

  return a1;
}

uint64_t destroy for InsertedPlaceholderCollection.Source(unsigned __int8 *a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(*(v6 - 8) + 64);
  if (v7 <= v5)
  {
    v7 = v5;
  }

  v8 = a1[v7];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_17;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 2;
    v8 = v11 + 2;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_17:
  if (v8 == 1)
  {
    v13 = *(v6 - 8);
  }

  else
  {
    v13 = v4;
  }

  if (v8 == 1)
  {
    v14 = v6;
  }

  else
  {
    v14 = AssociatedTypeWitness;
  }

  v15 = *(v13 + 8);

  return v15(a1, v14);
}

uint64_t initializeWithCopy for InsertedPlaceholderCollection.Source(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = a2;
  v10 = *(v8 - 8);
  if (*(v10 + 64) <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(*(v8 - 8) + 64);
  }

  v12 = a2[v11];
  v13 = v12 - 2;
  if (v12 < 2)
  {
    goto LABEL_18;
  }

  if (v11 <= 3)
  {
    v14 = v11;
  }

  else
  {
    v14 = 4;
  }

  if (v14 <= 1)
  {
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = *a2;
  }

  else if (v14 == 2)
  {
    v15 = *a2;
  }

  else if (v14 == 3)
  {
    v15 = *a2 | (a2[2] << 16);
  }

  else
  {
    v15 = *a2;
  }

  v16 = (v15 | (v13 << (8 * v11))) + 2;
  v12 = v15 + 2;
  if (v11 < 4)
  {
    v12 = v16;
  }

LABEL_18:
  v17 = v12 == 1;
  if (v12 == 1)
  {
    v18 = v8;
  }

  else
  {
    v10 = v6;
    v18 = AssociatedTypeWitness;
  }

  (*(v10 + 16))(a1, v9, v18);
  *(a1 + v11) = v17;
  return a1;
}

unsigned __int8 *assignWithCopy for InsertedPlaceholderCollection.Source(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = v8;
  v10 = *(v8 - 8);
  if (*(v10 + 64) <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(*(v8 - 8) + 64);
  }

  v12 = a1[v11];
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_19;
      }

      v15 = *a1;
    }

    else if (v14 == 2)
    {
      v15 = *a1;
    }

    else if (v14 == 3)
    {
      v15 = *a1 | (a1[2] << 16);
    }

    else
    {
      v15 = *a1;
    }

    v16 = (v15 | (v13 << (8 * v11))) + 2;
    v12 = v15 + 2;
    if (v11 < 4)
    {
      v12 = v16;
    }
  }

LABEL_19:
  if (v12 == 1)
  {
    v17 = *(v8 - 8);
  }

  else
  {
    v17 = v6;
  }

  if (v12 == 1)
  {
    v18 = v8;
  }

  else
  {
    v18 = AssociatedTypeWitness;
  }

  (*(v17 + 8))(a1, v18);
  v19 = a2[v11];
  v20 = v19 - 2;
  if (v19 >= 2)
  {
    if (v11 <= 3)
    {
      v21 = v11;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *a2;
      }

      else if (v21 == 3)
      {
        v22 = *a2 | (a2[2] << 16);
      }

      else
      {
        v22 = *a2;
      }

LABEL_37:
      v23 = (v22 | (v20 << (8 * v11))) + 2;
      v19 = v22 + 2;
      if (v11 < 4)
      {
        v19 = v23;
      }

      goto LABEL_39;
    }

    if (v21)
    {
      v22 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v24 = v19 == 1;
  if (v19 == 1)
  {
    v25 = v10;
  }

  else
  {
    v25 = v6;
  }

  if (v19 == 1)
  {
    v26 = v9;
  }

  else
  {
    v26 = AssociatedTypeWitness;
  }

  (*(v25 + 16))(a1, a2, v26);
  a1[v11] = v24;
  return a1;
}

uint64_t initializeWithTake for InsertedPlaceholderCollection.Source(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = a2;
  v10 = *(v8 - 8);
  if (*(v10 + 64) <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(*(v8 - 8) + 64);
  }

  v12 = a2[v11];
  v13 = v12 - 2;
  if (v12 < 2)
  {
    goto LABEL_18;
  }

  if (v11 <= 3)
  {
    v14 = v11;
  }

  else
  {
    v14 = 4;
  }

  if (v14 <= 1)
  {
    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = *a2;
  }

  else if (v14 == 2)
  {
    v15 = *a2;
  }

  else if (v14 == 3)
  {
    v15 = *a2 | (a2[2] << 16);
  }

  else
  {
    v15 = *a2;
  }

  v16 = (v15 | (v13 << (8 * v11))) + 2;
  v12 = v15 + 2;
  if (v11 < 4)
  {
    v12 = v16;
  }

LABEL_18:
  v17 = v12 == 1;
  if (v12 == 1)
  {
    v18 = v8;
  }

  else
  {
    v10 = v6;
    v18 = AssociatedTypeWitness;
  }

  (*(v10 + 32))(a1, v9, v18);
  *(a1 + v11) = v17;
  return a1;
}

unsigned __int8 *assignWithTake for InsertedPlaceholderCollection.Source(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = v8;
  v10 = *(v8 - 8);
  if (*(v10 + 64) <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(*(v8 - 8) + 64);
  }

  v12 = a1[v11];
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_19;
      }

      v15 = *a1;
    }

    else if (v14 == 2)
    {
      v15 = *a1;
    }

    else if (v14 == 3)
    {
      v15 = *a1 | (a1[2] << 16);
    }

    else
    {
      v15 = *a1;
    }

    v16 = (v15 | (v13 << (8 * v11))) + 2;
    v12 = v15 + 2;
    if (v11 < 4)
    {
      v12 = v16;
    }
  }

LABEL_19:
  if (v12 == 1)
  {
    v17 = *(v8 - 8);
  }

  else
  {
    v17 = v6;
  }

  if (v12 == 1)
  {
    v18 = v8;
  }

  else
  {
    v18 = AssociatedTypeWitness;
  }

  (*(v17 + 8))(a1, v18);
  v19 = a2[v11];
  v20 = v19 - 2;
  if (v19 >= 2)
  {
    if (v11 <= 3)
    {
      v21 = v11;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *a2;
      }

      else if (v21 == 3)
      {
        v22 = *a2 | (a2[2] << 16);
      }

      else
      {
        v22 = *a2;
      }

LABEL_37:
      v23 = (v22 | (v20 << (8 * v11))) + 2;
      v19 = v22 + 2;
      if (v11 < 4)
      {
        v19 = v23;
      }

      goto LABEL_39;
    }

    if (v21)
    {
      v22 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v24 = v19 == 1;
  if (v19 == 1)
  {
    v25 = v10;
  }

  else
  {
    v25 = v6;
  }

  if (v19 == 1)
  {
    v26 = v9;
  }

  else
  {
    v26 = AssociatedTypeWitness;
  }

  (*(v25 + 32))(a1, a2, v26);
  a1[v11] = v24;
  return a1;
}

uint64_t getEnumTagSinglePayload for InsertedPlaceholderCollection.Source(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_26:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void storeEnumTagSinglePayload for InsertedPlaceholderCollection.Source(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTag for InsertedPlaceholderCollection.Source(unsigned __int8 *a1, void *a2)
{
  v3 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v4 <= v3)
  {
    v4 = v3;
  }

  result = a1[v4];
  if (result >= 2)
  {
    if (v4 <= 3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return result;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | ((result - 2) << (8 * v4))) + 2;
    v9 = v7 + 2;
    if (v4 >= 4)
    {
      return v9;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

void destructiveInjectEnumTag for InsertedPlaceholderCollection.Source(_BYTE *a1, unsigned int a2, void *a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  if (a2 > 1)
  {
    v8 = *(v5 + 64);
    v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    v11 = a2 - 2;
    if (v10 < 4)
    {
      a1[v10] = (v11 >> (8 * v10)) + 2;
      if (v10)
      {
        v12 = v11 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v12;
          a1[2] = BYTE2(v12);
        }

        else if (v10 == 2)
        {
          *a1 = v12;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      a1[v10] = 2;
      bzero(a1, v10);
      *a1 = v11;
    }
  }

  else
  {
    v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
    if (v7 <= *(v6 + 64))
    {
      v7 = *(v6 + 64);
    }

    a1[v7] = a2;
  }
}

uint64_t (*default argument 1 of Gesture.delayed(by:filter:)(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return protocol witness for static Equatable.== infix(_:_:) in conformance _DisplayList_Identity.CodingKeys;
}

void Gesture.delayed(by:filter:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double a5@<D0>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v17 = a5;
  v17[1] = a1;
  v17[2] = a2;
  v15 = type metadata accessor for DelayedGesture(0, AssociatedTypeWitness, v13, v14);
  swift_getWitnessTable(protocol conformance descriptor for DelayedGesture<A>, v15);
  Gesture.modifier<A>(_:)(v17, a3, v15, a4, v16, a6);
}

void key path setter for DelayedGesture.filter : <A>DelayedGesture<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;

  *(a2 + 8) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out Bool);
  *(a2 + 16) = v8;
}

uint64_t DelayedGesture.filter.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void DelayedGesture.filter.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

void *static DelayedGesture._makeGesture(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, __int128 *)@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = a2[2];
  v9 = a2[4];
  v33 = a2[3];
  v34 = v9;
  v10 = a2[1];
  v30 = *a2;
  v31 = v10;
  v32 = v8;
  v11 = *(a2 + 20);
  v12 = *(a2 + 21);
  v37 = *(a2 + 88);
  v38 = *(a2 + 13);
  v13 = *(a2 + 30);
  v35 = v11;
  v36 = v12;
  v39 = *(a2 + 14);
  v24 = v39;
  v40 = v13;
  a3(&v25, &v30);
  v14 = v25;

  *&v30 = __PAIR64__(v14, v7);
  *(&v30 + 1) = __PAIR64__(v24, v12);
  LOBYTE(v31) = (v13 & 0x10) != 0;
  *(&v31 + 1) = 0;
  LOBYTE(v32) = 1;
  DWORD1(v32) = 0;
  v27 = type metadata accessor for GesturePhase(0, a4, v15, v16);
  v19 = type metadata accessor for DelayedPhase(0, a4, v17, v18);
  v28 = v19;
  swift_getWitnessTable(protocol conformance descriptor for DelayedPhase<A>, v19);
  v29 = v20;
  v21 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v30, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v26, v19, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
  return _GestureOutputs.init(phase:)(v25, a5);
}

double DelayedPhase.modifier.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  type metadata accessor for DelayedGesture(0, *(a1 + 16), a2, a3);
  Value = AGGraphGetValue();
  v6 = *Value;
  v8 = Value[1];
  v7 = Value[2];
  *a4 = v6;
  a4[1] = v8;
  a4[2] = v7;

  return result;
}

uint64_t DelayedPhase.childPhase.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for GesturePhase(0, *(a1 + 16), a3, a4);
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a2, Value, v5);
}

uint64_t DelayedPhase.updateValue()(uint64_t a1)
{
  v80 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v72 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GesturePhase(0, v3, v6, v7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v70 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v73 = &v70 - v20;
  swift_getWitnessTable(protocol conformance descriptor for DelayedPhase<A>, a1, v19);
  result = ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    v24 = v1[1];
    v77 = *v1;
    v78 = v24;
    v79 = *(v1 + 4);
    DelayedPhase.modifier.getter(a1, v22, v23, &v75);
    v25 = *&v75;

    if (v25 <= 0.0 || (swift_beginAccess(), (static CoreTesting.isRunning & 1) != 0))
    {
      v28 = v1[1];
      v77 = *v1;
      v78 = v28;
      v79 = *(v1 + 4);
      v29 = DelayedPhase.childPhase.getter(a1, v11, v26, v27);
      v30 = MEMORY[0x1EEE9AC00](v29);
      *(&v70 - 2) = a1;
      swift_getWitnessTable(protocol conformance descriptor for DelayedPhase<A>, a1, v30);
      *(&v70 - 1) = v31;
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, partial apply for closure #1 in StatefulRule.value.setter, (&v70 - 4), v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v32);
      return (*(v9 + 8))(v11, v8);
    }

    v33 = v1[1];
    v77 = *v1;
    v78 = v33;
    v79 = *(v1 + 4);
    DelayedPhase.childPhase.getter(a1, v17, v26, v27);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      (*(v9 + 16))(v11, v17, v8);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
LABEL_9:
        v38 = v1[1];
        v75 = *v1;
        *v76 = v38;
        *&v76[16] = *(v1 + 4);
        v39 = v73;
        DelayedPhase.childPhase.getter(a1, v73, v35, v36);
        v40 = *(v9 + 8);
        v41 = v40(v17, v8);
LABEL_28:
        v67 = MEMORY[0x1EEE9AC00](v41);
        *(&v70 - 2) = a1;
        swift_getWitnessTable(protocol conformance descriptor for DelayedPhase<A>, a1, v67);
        *(&v70 - 1) = v68;
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v39, closure #1 in StatefulRule.value.setterpartial apply, (&v70 - 4), v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v69);
        return v40(v39, v8);
      }

      (*(v9 + 16))(v14, v17, v8);
      if ((*(v72 + 48))(v14, 1, v3) == 1)
      {
        v37 = type metadata accessor for Optional();
        (*(*(v37 - 8) + 8))(v14, v37);
        goto LABEL_9;
      }

      v11 = v14;
    }

    v42 = v72;
    (*(v72 + 32))(v5, v11, v3);
    v71 = *(v9 + 8);
    v71(v17, v8);
    v43 = v1[1];
    v75 = *v1;
    *v76 = v43;
    *&v76[16] = *(v1 + 4);
    v46 = DelayedPhase.modifier.getter(a1, v44, v45, v74);
    v47 = (*&v74[1])(v5, v46);

    if (v47)
    {
      v50 = *AGGraphGetValue();
      if (v1[2])
      {
LABEL_14:
        *(v1 + 3) = v50;
        *(v1 + 32) = 0;
        (*(v42 + 56))(v73, 1, 1, v3);
        result = swift_storeEnumTagMultiPayload();
        if (v1[2])
        {
          __break(1u);
          return result;
        }

        v51 = *(v1 + 3);
        (*(v42 + 8))(v5, v3);
        v75 = *v1;
        v76[0] = *(v1 + 16);
        v52 = v76[0];
        *&v76[1] = *(v1 + 17);
        *&v76[16] = *(v1 + 4);
        DelayedPhase.modifier.getter(a1, v53, v54, v74);
        v55 = v74[0];

        v56 = v51 + v55;
        specialized static GraphHost.currentHost.getter();
        if (v52)
        {
          type metadata accessor for GestureGraph();
          v57 = swift_dynamicCastClassUnconditional();
          v58 = *(v57 + 272);
          if (v56 < v58)
          {
            v58 = v56;
          }

          *(v57 + 272) = v58;
        }

        else
        {
          type metadata accessor for ViewGraph();
          v65 = swift_dynamicCastClassUnconditional();
          swift_beginAccess();
          v66 = *(v65 + 408);
          if (v56 < v66)
          {
            v66 = v56;
          }

          *(v65 + 408) = v66;
        }

        v39 = v73;
        goto LABEL_27;
      }

      v62 = v50 - *(v1 + 3);
      v63 = v1[1];
      v75 = *v1;
      *v76 = v63;
      *&v76[16] = *(v1 + 4);
      DelayedPhase.modifier.getter(a1, v48, v49, v74);
      v64 = v74[0];

      if (v64 > v62)
      {
        if (*(v1 + 32) != 1)
        {
          v50 = *(v1 + 3);
        }

        goto LABEL_14;
      }
    }

    (*(v42 + 8))(v5, v3);
    v59 = v1[1];
    v75 = *v1;
    *v76 = v59;
    *&v76[16] = *(v1 + 4);
    v39 = v73;
    v41 = DelayedPhase.childPhase.getter(a1, v73, v60, v61);
LABEL_27:
    v40 = v71;
    goto LABEL_28;
  }

  return result;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance DelayedPhase<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for GesturePhase(0, *(a1 + 16), a3, a4);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 1, 1, v5);
}

void *assignWithCopy for DelayedGesture(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[2];
  a1[1] = a2[1];
  a1[2] = v3;

  return a1;
}

uint64_t assignWithTake for DelayedGesture(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t storeEnumTagSinglePayload for DelayedGesture(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DelayedPhase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DelayedPhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@unowned Bool)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 24))();
  *a1 = result & 1;
  return result;
}

SwiftUI::Spring __swiftcall Spring.init(duration:bounce:)(Swift::Double duration, Swift::Double bounce)
{
  if (bounce <= -1.0)
  {
    v3 = INFINITY;
  }

  else if (bounce >= 0.0)
  {
    v3 = 1.0;
    if (bounce != 0.0)
    {
      if (bounce > 1.0)
      {
        bounce = 1.0;
      }

      v3 = 1.0 - bounce;
    }
  }

  else
  {
    v3 = 1.0 / (bounce + 1.0);
  }

  *&v4.f64[0] = qword_18DDBD080[v3 > 1.0];
  v4.f64[1] = v3;
  v5 = &qword_18DDA9270;
  v6 = sqrt(vabdd_f64(1.0, v3 * v3));
  v7 = vld1q_dup_f64(v5);
  v7.f64[0] = v6;
  v8 = vmulq_f64(v4, v7);
  v9 = vdivq_f64(v8, vdupq_lane_s64(*&duration, 0));
  *v2 = v9;
  *(v2 + 16) = 0x3FF0000000000000;
  result._mass = v7.f64[0];
  result.decayConstant = v8.f64[0];
  result.angularFrequency = v9.f64[0];
  return result;
}

double Spring.bounce.getter()
{
  v1 = v0[1];
  v2 = v1 * 0.5;
  v3 = v1 * v1;
  v4 = *v0 * *v0;
  if (*v0 >= 0.0)
  {
    v5 = v2 * (-6.28318531 / sqrt(v4 + v3)) / 3.14159265;
    v6 = 1.0;
  }

  else
  {
    v5 = 1.0 / (v2 * (6.28318531 / sqrt(v3 - v4)) / 3.14159265);
    v6 = -1.0;
  }

  return v5 + v6;
}

void specialized Spring.settlingDuration<A>(target:initialVelocity:epsilon:)(double a1, double a2, double a3, double a4, double a5)
{
  if (a5 != 0.0)
  {
    v8 = a1 * a5;
    if (a4 > 0.0)
    {
      fmax(-log(a3 / (sqrt(a1 * a1) + sqrt((v8 - a2) * (v8 - a2)))) / a5, 0.0);
      return;
    }

    v22 = v8 - a2;
    v20 = -a4 - a5;
    v21 = -a5;
    v18 = a5 - a4;
    v19 = a4 - a5;
    v17 = a4 + a4;
    v9 = 0.0;
    v10 = -1.0;
    v11 = INFINITY;
    for (i = 1023; ; --i)
    {
      if (a4 >= 0.0)
      {
        v15 = a1 - (v22 * v9 + a1) * exp(v9 * v21);
      }

      else
      {
        v13 = exp(v20 * v9);
        v14 = exp(v19 * v9);
        v15 = ((v18 * v13 + v20 * v14) / v17 + 1.0) * a1 - (v13 - v14) / v17 * a2;
      }

      v16 = sqrt((a1 - v15) * (a1 - v15));
      if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        return;
      }

      if (v11 >= a3)
      {
        break;
      }

      if (v16 < a3)
      {
        if (v9 - v10 > 1.0)
        {
          return;
        }

        goto LABEL_8;
      }

      if (!i)
      {
        return;
      }

      v11 = INFINITY;
LABEL_9:
      v9 = v9 + 0.1;
    }

    if (v16 < v11)
    {
      v10 = v9;
      v11 = v16;
    }

LABEL_8:
    if (!i)
    {
      return;
    }

    goto LABEL_9;
  }
}

double Spring.settlingDuration<A>(target:initialVelocity:epsilon:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v37 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v37 - v18;
  v20 = *(v5 + 8);
  if (*&v20 == 0.0)
  {
    return INFINITY;
  }

  v22 = *v5;
  v23 = *v5 <= 0.0;
  v38 = *(v5 + 8);
  if (v23)
  {
    v29 = (v10 + 8);
    v37[1] = a5 + 24;
    v21 = -1.0;
    v30 = INFINITY;
    v31 = 1024;
    v32 = 0.0;
    do
    {
      v39 = v22;
      v40 = v20;
      v33 = v17;
      Spring.value<A>(target:initialVelocity:time:)(a1, v17, a4, a5, v32);
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v34 = *v29;
      (*v29)(v19, a4);
      v35 = sqrt((*(a5 + 24))(a4, a5));
      v34(v12, a4);
      if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v30 >= a2)
      {
        if (v35 < v30)
        {
          v21 = v32;
          v30 = v35;
        }

        v20 = v38;
        v17 = v33;
      }

      else
      {
        v17 = v33;
        if (v35 >= a2)
        {
          v30 = INFINITY;
          v20 = v38;
        }

        else
        {
          v20 = v38;
          if (v32 - v21 > 1.0)
          {
            return v21;
          }
        }
      }

      v32 = v32 + 0.1;
      --v31;
    }

    while (v31);
    return 0.0;
  }

  else
  {
    VectorArithmetic.scaled(by:)(a4, a5, v15, *&v20);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v24 = *(v10 + 8);
    v24(v15, a4);
    v25 = *(a5 + 24);
    v26 = sqrt(v25(a4, a5));
    v27 = v25(a4, a5);
    v28 = log(a2 / (v26 + sqrt(v27)));
    v21 = fmax(-v28 / *&v38, 0.0);
    v24(v19, a4);
  }

  return v21;
}

uint64_t Spring.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x193AC11E0](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x193AC11E0](*&v5);
}

Swift::Int Spring.hashValue.getter()
{
  Hasher.init(_seed:)();
  Spring.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Spring()
{
  Hasher.init(_seed:)();
  Spring.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Spring(uint64_t a1)
{
  Hasher.init(_seed:)();
  Spring.hash(into:)();
  return Hasher._finalize()();
}

SwiftUI::Spring __swiftcall Spring.init(response:dampingRatio:)(Swift::Double response, Swift::Double dampingRatio)
{
  *&v3.f64[0] = qword_18DDBD080[dampingRatio > 1.0];
  v3.f64[1] = dampingRatio;
  v4 = &qword_18DDA9270;
  v5 = vld1q_dup_f64(v4);
  v5.f64[0] = sqrt(vabdd_f64(1.0, dampingRatio * dampingRatio));
  v6 = vmulq_f64(v3, v5);
  v7 = vdivq_f64(v6, vdupq_lane_s64(*&response, 0));
  *v2 = v7;
  *(v2 + 16) = 0x3FF0000000000000;
  result._mass = v5.f64[0];
  result.decayConstant = v6.f64[0];
  result.angularFrequency = v7.f64[0];
  return result;
}

long double Spring.dampingRatio.getter()
{
  v1 = v0[1];
  v2 = v1 * 0.5;
  v3 = v1 * v1;
  v4 = -*v0;
  if (*v0 >= 0.0)
  {
    v4 = *v0;
  }

  return v2 * (6.28318531 / sqrt(v3 + *v0 * v4)) / 3.14159265;
}

SwiftUI::Spring __swiftcall Spring.init(mass:stiffness:damping:allowOverDamping:)(Swift::Double mass, Swift::Double stiffness, Swift::Double damping, Swift::Bool allowOverDamping)
{
  v5 = stiffness / mass;
  v6 = sqrt(stiffness / mass);
  v7 = damping / (mass + mass);
  if (allowOverDamping || (v8 = 0.0, v6 >= v7))
  {
    v8 = sqrt(vabdd_f64(v5, v7 * v7));
    if (v6 < v7)
    {
      v8 = -v8;
    }
  }

  else
  {
    v7 = v6;
  }

  *v4 = v8;
  v4[1] = v7;
  v4[2] = mass;
  result._mass = v8;
  result.decayConstant = v7;
  result.angularFrequency = mass;
  return result;
}

SwiftUI::Spring __swiftcall Spring.init(settlingDuration:dampingRatio:epsilon:)(Swift::Double settlingDuration, Swift::Double dampingRatio, Swift::Double epsilon)
{
  v5 = v3;
  v6 = fmax(dampingRatio, 2.22044605e-16);
  if (v6 <= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = fmax(settlingDuration, 0.01);
  if (v8 <= 10.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 10.0;
  }

  if (v7 >= 1.0)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for closure #5 in Spring.init(settlingDuration:dampingRatio:epsilon:);
    *(v18 + 24) = v17;
    *(v18 + 32) = epsilon;
    *(v18 + 40) = v9;
    v19 = swift_allocObject();
    *(v19 + 16) = v9 * v9;
    *(v19 + 24) = 0;
    *(v19 + 32) = v9;
    v15 = partial apply for closure #6 in Spring.init(settlingDuration:dampingRatio:epsilon:);
    v16 = partial apply for closure #7 in Spring.init(settlingDuration:dampingRatio:epsilon:);
  }

  else
  {
    v10 = sqrt(1.0 - v7 * v7);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    *(v12 + 24) = 0;
    *(v12 + 32) = partial apply for closure #1 in Spring.init(settlingDuration:dampingRatio:epsilon:);
    *(v12 + 40) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = epsilon;
    *(v13 + 24) = v9 * v7;
    *(v13 + 32) = partial apply for closure #2 in Spring.init(settlingDuration:dampingRatio:epsilon:);
    *(v13 + 40) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v9 * v7;
    *(v14 + 24) = partial apply for closure #2 in Spring.init(settlingDuration:dampingRatio:epsilon:);
    *(v14 + 32) = v12;
    *(v14 + 40) = 0;
    *(v14 + 48) = v9 * v7 * 0.0;
    *(v14 + 56) = v9 * (v7 * v7);
    *(v14 + 64) = v10;

    v15 = partial apply for closure #3 in Spring.init(settlingDuration:dampingRatio:epsilon:);
    v16 = partial apply for closure #4 in Spring.init(settlingDuration:dampingRatio:epsilon:);
  }

  v20 = v16;
  v21 = 1.0 / v9;
  v22 = 1.0 / v9 * 5.0;

  v24 = (v15)(v23, v22);
  v25 = v22 - v24 / v20(v22);
  if ((~*&v25 & 0x7FF0000000000000) != 0 || (*&v25 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v27 = v15(v25);
    v28 = v25 - v27 / v20(v25);
    if ((~*&v28 & 0x7FF0000000000000) != 0 || (*&v28 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v30 = v25 - v28;
      v31 = 10;
      while (1)
      {
        v32 = v15(v28);
        v33 = v28 - v32 / v20(v28);
        if ((~*&v33 & 0x7FF0000000000000) == 0 && (*&v33 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          break;
        }

        if (vabdd_f64(v33, v28) <= epsilon)
        {
          if (epsilon * 100000.0 >= v30)
          {
            goto LABEL_51;
          }

          break;
        }

        v30 = v28 - v33;
        v28 = v33;
        if (!--v31)
        {
          goto LABEL_51;
        }
      }
    }
  }

  v35 = v15(v21);
  v36 = v35 / v20(v21);
  v33 = v21 - v36;
  if ((~COERCE__INT64(v21 - v36) & 0x7FF0000000000000) != 0 || (COERCE_UNSIGNED_INT64(v21 - v36) & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v38 = v15(v21 - v36);
    v39 = v38 / v20(v33);
    v40 = v33 - v39;
    if ((~COERCE__INT64(v33 - v39) & 0x7FF0000000000000) != 0 || (COERCE_UNSIGNED_INT64(v33 - v39) & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v42 = 17;
      do
      {
        v43 = v15(v40);
        v33 = v40 - v43 / v20(v40);
        if ((~*&v33 & 0x7FF0000000000000) == 0 && (*&v33 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          break;
        }

        v45 = vabdd_f64(v33, v40) <= epsilon || v42-- == 0;
        v40 = v33;
      }

      while (!v45);
    }

    else
    {
      v33 = v33 - v39;
    }
  }

LABEL_51:
  v46 = v33 * v33;
  v47 = sqrt(v33 * v33);
  v48 = v7 * (v47 + v47) * 0.5;

  v49 = sqrt(vabdd_f64(v46, v48 * v48));
  if (v47 >= v48)
  {
    v50 = v7 * (v47 + v47) * 0.5;
  }

  else
  {
    v50 = v47;
  }

  v51 = 0.0;
  if (v47 < v48)
  {
    v49 = 0.0;
  }

  *v5 = v49;
  *(v5 + 8) = v50;
  *(v5 + 16) = 0x3FF0000000000000;
  result._mass = v51;
  result.decayConstant = v50;
  result.angularFrequency = v49;
  return result;
}

uint64_t Spring.force<A>(target:position:velocity:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v24[1] = a5;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  v17 = *v5;
  v18 = v5[1];
  v19 = v5[2];
  VectorArithmetic.scaled(by:)(v20, v21, v24 - v15, v18 * -2.0 * v19);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  VectorArithmetic.scaled(by:)(a3, a4, v13, v19 * (v17 * v17 + v18 * v18));
  v22 = *(v8 + 8);
  v22(v10, a3);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v22(v13, a3);
  return (v22)(v16, a3);
}

double Spring.settlingDuration<A>(fromValue:toValue:initialVelocity:epsilon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  AssociatedConformanceWitness = a1;
  v27 = a3;
  v25[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v25[0] = v25 - v18;
  v19 = *(v6 + 2);
  v28 = *v6;
  v29 = v19;
  v20 = *(a5 + 24);
  v20(a4, a5);
  v20(a4, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v21 = *(v11 + 8);
  v21(v13, AssociatedTypeWitness);
  v21(v16, AssociatedTypeWitness);
  v20(a4, a5);
  v22 = v25[0];
  v23 = Spring.settlingDuration<A>(target:initialVelocity:epsilon:)(v25[0], a6, v16, AssociatedTypeWitness, AssociatedConformanceWitness);
  v21(v16, AssociatedTypeWitness);
  v21(v22, AssociatedTypeWitness);
  return v23;
}

uint64_t Spring.value<A>(fromValue:toValue:initialVelocity:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v45 = a6;
  v46 = a3;
  v40 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v39 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v37 = &v36 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v43 = &v36 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v41 = &v36 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v44 = &v36 - v25;
  v38 = *v7;
  v26 = *(v7 + 2);
  v27 = *(*(a4 - 8) + 16);
  v47 = a4;
  v27(a6, a2, a4);
  v28 = *(a5 + 24);
  v28(a4, a5);
  v48 = v38;
  v49 = v26;
  v28(a4, a5);
  v29 = v39;
  v28(a4, a5);
  *&v38 = swift_getAssociatedConformanceWitness();
  v40 = *(v38 + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v30 = *(v42 + 8);
  v30(v29, AssociatedTypeWitness);
  v30(v17, AssociatedTypeWitness);
  v28(v47, a5);
  v31 = v43;
  v32 = v37;
  Spring.value<A>(target:initialVelocity:time:)(v37, v17, AssociatedTypeWitness, v38, a7);
  v30(v17, AssociatedTypeWitness);
  v30(v32, AssociatedTypeWitness);
  v33 = v44;
  v34 = v41;
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v30(v31, AssociatedTypeWitness);
  v30(v34, AssociatedTypeWitness);
  return (*(a5 + 32))(v33, v47, a5);
}

uint64_t Spring.velocity<A>(fromValue:toValue:initialVelocity:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v34 = a6;
  v35 = a3;
  AssociatedConformanceWitness = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v31 = &v30 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v33 = &v30 - v23;
  v30 = *v7;
  v24 = *(v7 + 2);
  (*(*(a4 - 8) + 16))(a6, a2, a4);
  v36 = v30;
  v37 = v24;
  v25 = *(a5 + 24);
  v25(a4, a5);
  v25(a4, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v26 = *(v14 + 8);
  v26(v16, AssociatedTypeWitness);
  v26(v19, AssociatedTypeWitness);
  v25(a4, a5);
  v27 = v33;
  v28 = v31;
  Spring.velocity<A>(target:initialVelocity:time:)(v31, AssociatedTypeWitness, AssociatedConformanceWitness, v33, a7);
  v26(v19, AssociatedTypeWitness);
  v26(v28, AssociatedTypeWitness);
  return (*(a5 + 32))(v27, a4, a5);
}

uint64_t Spring.force<A>(fromValue:toValue:position:velocity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a3;
  v35 = a4;
  AssociatedConformanceWitness = a1;
  v33 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v30 = &v29 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v32 = &v29 - v22;
  v29 = *v7;
  v23 = *(v7 + 2);
  (*(*(a5 - 8) + 16))(a7, a2, a5);
  v36 = v29;
  v37 = v23;
  v24 = *(a6 + 24);
  v24(a5, a6);
  v24(a5, a6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v25 = *(v13 + 8);
  v25(v15, AssociatedTypeWitness);
  v25(v18, AssociatedTypeWitness);
  v24(a5, a6);
  v24(a5, a6);
  v26 = v32;
  v27 = v30;
  Spring.force<A>(target:position:velocity:)(v30, AssociatedTypeWitness, AssociatedConformanceWitness, v32);
  v25(v15, AssociatedTypeWitness);
  v25(v18, AssociatedTypeWitness);
  v25(v27, AssociatedTypeWitness);
  return (*(a6 + 32))(v26, a5, a6);
}

uint64_t static Animation.interpolatingSpring(_:initialVelocity:)(double *a1, double a2)
{
  v3 = -*a1;
  if (*a1 >= 0.0)
  {
    v3 = *a1;
  }

  v4 = 6.28318531 / sqrt(a1[1] * a1[1] + *a1 * v3);
  v5 = Spring.bounce.getter();

  return specialized static Animation.interpolatingSpring(duration:bounce:initialVelocity:)(v4, v5, a2);
}

BOOL Spring.isValid.getter()
{
  if ((~*v0 & 0x7FF0000000000000) == 0 && (*v0 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  if ((~v0[1] & 0x7FF0000000000000) != 0)
  {
    return (~v0[2] & 0x7FF0000000000000) != 0;
  }

  return 0;
}

double *specialized static Animation.spring(_:blendDuration:)(uint64_t a1, double a2)
{
  v3 = *a1;
  v13 = *(a1 + 8);
  v4 = Spring.bounce.getter();
  v5 = 1.0;
  if (v4 <= 1.0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = 1.0 - v6;
  if (v4 != 0.0)
  {
    v5 = v7;
  }

  if (v4 < 0.0)
  {
    v5 = 1.0 / (v4 + 1.0);
  }

  if (v4 > -1.0)
  {
    v8 = v5;
  }

  else
  {
    v8 = INFINITY;
  }

  *&v9 = *&vmulq_f64(v13, v13);
  v10 = -v3;
  if (v3 >= 0.0)
  {
    v10 = v3;
  }

  v11 = 6.28318531 / sqrt(v9 + v3 * v10);
  type metadata accessor for InternalAnimationBox<FluidSpringAnimation>(0);
  result = swift_allocObject();
  result[2] = v11;
  result[3] = v8;
  result[4] = a2;
  return result;
}

long double partial apply for closure #6 in Spring.init(settlingDuration:dampingRatio:epsilon:)(double a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = (*(v1 + 16))();
  if (v5 < 0.0)
  {
    v3 = -v3;
  }

  return exp(-(v4 * a1)) * (v4 * v5 + 1.0) - v3;
}

double partial apply for closure #3 in Spring.init(settlingDuration:dampingRatio:epsilon:)(double a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = exp(-(*(v1 + 24) * a1));
  return v3 - fabs(v5 * v4(a1));
}

long double partial apply for closure #4 in Spring.init(settlingDuration:dampingRatio:epsilon:)(double a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = a1 * a1;
  v10 = exp(-(v3 * a1));
  if (v10 * v4(a1) <= 0.0)
  {
    v11 = v5 + v6 * a1 - v9 * v7;
  }

  else
  {
    v11 = -(v5 + v6 * a1 - v9 * v7);
  }

  return v11 / (exp(v3 * a1) * (v9 * v8));
}

void lazy protocol witness table accessor for type Spring and conformance Spring()
{
  if (!lazy protocol witness table cache variable for type Spring and conformance Spring)
  {
    swift_getWitnessTable(protocol conformance descriptor for Spring, &type metadata for Spring, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Spring and conformance Spring);
  }
}

void type metadata accessor for InternalAnimationBox<FluidSpringAnimation>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for InternalAnimationBox<FluidSpringAnimation>)
  {
    lazy protocol witness table accessor for type FluidSpringAnimation and conformance FluidSpringAnimation();
    v4 = type metadata accessor for InternalAnimationBox(a1, &type metadata for FluidSpringAnimation, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for InternalAnimationBox<FluidSpringAnimation>);
    }
  }
}