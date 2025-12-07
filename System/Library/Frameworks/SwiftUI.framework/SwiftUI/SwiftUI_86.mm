uint64_t TabItemGroup.hidden.getter()
{
  outlined init with copy of TabItem?(v0 + 48, v11);
  if (v12)
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v5 = static TabOptions.TraitKey.defaultValue;
    v6[0] = unk_1EAB09380;
    *(v6 + 9) = *(&word_1EAB09388 + 1);
    v9 = static TabOptions.TraitKey.defaultValue;
    v10[0] = unk_1EAB09380;
    *(v10 + 9) = *(&word_1EAB09388 + 1);
    outlined init with copy of TabOptions(&v5, &v7);
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v7 = v9;
    v8[0] = v10[0];
    *(v8 + 9) = *(v10 + 9);
    outlined destroy of TabOptions(&v7);
    v9 = v3;
    v10[0] = *v4;
    *(v10 + 9) = *&v4[9];
    outlined destroy of TabOptions(&v9);
    v1 = BYTE1(v9);
    outlined destroy of TabItem(v11);
  }

  else
  {
    outlined destroy of TabItem?(v11, type metadata accessor for TabItem?);
    return 0;
  }

  return v1;
}

id protocol witness for UIViewControllerRepresentable.makeUIViewController(context:) in conformance TabItemGroup.HostView()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD258]) initWithNibName:0 bundle:0];
  specialized TabItemGroup.Coordinator.addChildRemovingExistingIfNeeded(_:to:)(v1, v2);
  return v2;
}

uint64_t protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance TabItemGroup.HostView@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TabItemGroup.Coordinator();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

void TabItemGroup.HostCache.removeOldestKey()()
{
  v1 = v0;
  type metadata accessor for Logger?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v1[2];
  if (!v5[2])
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v7 = v5[4];
  v6 = v5[5];

  static Log.tabView.getter();
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {

    outlined destroy of TabItem?(v4, type metadata accessor for Logger?);
  }

  else
  {

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v20 = v10;
      v13 = v12;
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v21);

      *(v13 + 4) = v15;
      v16 = v20;
      _os_log_impl(&dword_18BD4A000, v20, v11, "Removing child VC '%s'", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x18D0110E0](v14, -1, -1);
      MEMORY[0x18D0110E0](v13, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v4, v8);
  }

  if (!*(v1[3] + 16))
  {
    goto LABEL_14;
  }

  v17 = v1[1];
  if (v17)
  {

    v18 = specialized closure #1 in OrderedSet._bucket(for:)(v17 + 16, v17 + 32, v5, 0);
  }

  else
  {
    v18 = 0;
  }

  specialized OrderedSet._removeExistingMember(at:in:)(0, v18);
}

uint64_t destroy for TabItemGroup(uint64_t a1)
{

  result = outlined consume of TabCustomizationID.Base();
  if (*(a1 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 48));
  }

  if (*(a1 + 184))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 160));
  }

  return result;
}

uint64_t initializeWithCopy for TabItemGroup(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);

  v8 = outlined copy of TabCustomizationID.Base();
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v9 = *(a2 + 72);
  if (!v9)
  {
    v21 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v21;
    *(a1 + 144) = *(a2 + 144);
    v22 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v22;
    v23 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v23;
    v15 = *(a2 + 184);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_5:
    v24 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v24;
    *(a1 + 256) = *(a2 + 256);
    v25 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v25;
    v26 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v26;
    goto LABEL_6;
  }

  v10 = *(a2 + 80);
  *(a1 + 72) = v9;
  *(a1 + 80) = v10;
  (**(v9 - 8))(a1 + 48, a2 + 48, v8);
  v11 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v11;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v13 = *(a2 + 136);
  v12 = *(a2 + 144);
  *(a1 + 136) = v13;
  *(a1 + 144) = v12;
  *(a1 + 152) = *(a2 + 152);

  v14 = v13;

  v15 = *(a2 + 184);
  if (!v15)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = *(a2 + 192);
  *(a1 + 184) = v15;
  *(a1 + 192) = v16;
  (**(v15 - 8))(a1 + 160, a2 + 160);
  v17 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v17;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  v19 = *(a2 + 248);
  v18 = *(a2 + 256);
  *(a1 + 248) = v19;
  *(a1 + 256) = v18;
  *(a1 + 264) = *(a2 + 264);

  v20 = v19;

LABEL_6:
  *(a1 + 272) = *(a2 + 272);
  return a1;
}

uint64_t assignWithCopy for TabItemGroup(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  outlined copy of TabCustomizationID.Base();
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  outlined consume of TabCustomizationID.Base();
  v7 = *(a2 + 72);
  if (*(a1 + 72))
  {
    v8 = (a1 + 48);
    if (v7)
    {
      __swift_assign_boxed_opaque_existential_1(v8, (a2 + 48));
      *(a1 + 88) = *(a2 + 88);

      *(a1 + 96) = *(a2 + 96);

      *(a1 + 104) = *(a2 + 104);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 112) = *(a2 + 112);

      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
      v9 = *(a1 + 136);
      v10 = *(a2 + 136);
      *(a1 + 136) = v10;
      v11 = v10;

      *(a1 + 144) = *(a2 + 144);

      *(a1 + 152) = *(a2 + 152);
    }

    else
    {
      outlined destroy of TabItem(v8);
      v15 = *(a2 + 64);
      v14 = *(a2 + 80);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v15;
      *(a1 + 80) = v14;
      v16 = *(a2 + 144);
      v18 = *(a2 + 96);
      v17 = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v16;
      *(a1 + 96) = v18;
      *(a1 + 112) = v17;
    }
  }

  else if (v7)
  {
    *(a1 + 72) = v7;
    *(a1 + 80) = *(a2 + 80);
    (**(v7 - 8))(a1 + 48, a2 + 48);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 128);
    v12 = *(a2 + 136);
    *(a1 + 136) = v12;
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);

    v13 = v12;
  }

  else
  {
    v19 = *(a2 + 48);
    v20 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v20;
    *(a1 + 48) = v19;
    v21 = *(a2 + 96);
    v22 = *(a2 + 112);
    v23 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v23;
    *(a1 + 96) = v21;
    *(a1 + 112) = v22;
  }

  v24 = *(a2 + 184);
  if (*(a1 + 184))
  {
    v25 = (a1 + 160);
    if (v24)
    {
      __swift_assign_boxed_opaque_existential_1(v25, (a2 + 160));
      *(a1 + 200) = *(a2 + 200);

      *(a1 + 208) = *(a2 + 208);

      *(a1 + 216) = *(a2 + 216);
      *(a1 + 220) = *(a2 + 220);
      *(a1 + 224) = *(a2 + 224);

      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      v26 = *(a1 + 248);
      v27 = *(a2 + 248);
      *(a1 + 248) = v27;
      v28 = v27;

      *(a1 + 256) = *(a2 + 256);

      *(a1 + 264) = *(a2 + 264);
    }

    else
    {
      outlined destroy of TabItem(v25);
      v32 = *(a2 + 176);
      v31 = *(a2 + 192);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v32;
      *(a1 + 192) = v31;
      v33 = *(a2 + 256);
      v35 = *(a2 + 208);
      v34 = *(a2 + 224);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 256) = v33;
      *(a1 + 208) = v35;
      *(a1 + 224) = v34;
    }
  }

  else if (v24)
  {
    *(a1 + 184) = v24;
    *(a1 + 192) = *(a2 + 192);
    (**(v24 - 8))(a1 + 160, a2 + 160);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 220) = *(a2 + 220);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);
    v29 = *(a2 + 248);
    *(a1 + 248) = v29;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);

    v30 = v29;
  }

  else
  {
    v36 = *(a2 + 160);
    v37 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v37;
    *(a1 + 160) = v36;
    v38 = *(a2 + 208);
    v39 = *(a2 + 224);
    v40 = *(a2 + 256);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 256) = v40;
    *(a1 + 208) = v38;
    *(a1 + 224) = v39;
  }

  *(a1 + 272) = *(a2 + 272);
  return a1;
}

uint64_t assignWithTake for TabItemGroup(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v4;
  outlined consume of TabCustomizationID.Base();
  if (*(a1 + 72))
  {
    if (*(a2 + 72))
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 48));
      v5 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v5;
      v6 = *(a2 + 88);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = v6;

      *(a1 + 96) = *(a2 + 96);

      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);

      *(a1 + 120) = *(a2 + 120);
      v7 = *(a1 + 136);
      *(a1 + 136) = *(a2 + 136);

      *(a1 + 144) = *(a2 + 144);

      *(a1 + 152) = *(a2 + 152);
      if (!*(a1 + 184))
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    outlined destroy of TabItem(a1 + 48);
  }

  v8 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v8;
  *(a1 + 144) = *(a2 + 144);
  v9 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v9;
  v10 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v10;
  if (!*(a1 + 184))
  {
LABEL_10:
    v14 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v14;
    *(a1 + 256) = *(a2 + 256);
    v15 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v15;
    v16 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v16;
    goto LABEL_11;
  }

LABEL_7:
  if (!*(a2 + 184))
  {
    outlined destroy of TabItem(a1 + 160);
    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1((a1 + 160));
  v11 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v11;
  v12 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v12;

  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);

  *(a1 + 232) = *(a2 + 232);
  v13 = *(a1 + 248);
  *(a1 + 248) = *(a2 + 248);

  *(a1 + 256) = *(a2 + 256);

  *(a1 + 264) = *(a2 + 264);
LABEL_11:
  *(a1 + 272) = *(a2 + 272);
  return a1;
}

uint64_t getEnumTagSinglePayload for TabItemGroup(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TabItemGroup(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for TabItemGroup.HostCache(void *a1)
{

  return result;
}

void *initializeWithCopy for TabItemGroup.HostCache(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for TabItemGroup.HostCache(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  return a1;
}

void *assignWithTake for TabItemGroup.HostCache(void *a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 8);

  a1[3] = *(a2 + 24);

  return a1;
}

uint64_t TabItemGroup.description.getter()
{
  v1 = v0;
  v66[0] = 0;
  v66[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(122);
  v68 = 0;
  v69 = 0xE000000000000000;
  MEMORY[0x18D00C9B0](2122857, 0xE300000000000000);
  v2 = v0[3];
  v3 = v0[4];
  v4 = outlined copy of TabCustomizationID.Base();
  MEMORY[0x18D00C9B0](v2, v3, v4);
  outlined consume of TabCustomizationID.Base();
  MEMORY[0x18D00C9B0](0x72746E456261740ALL, 0xEF20746E756F4379);
  v66[0] = *(v0[1] + 16);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v5);

  MEMORY[0x18D00C9B0](0x657449626174202CLL, 0xEF20746E756F436DLL);
  v66[0] = *(*v0 + 16);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v6);

  MEMORY[0x18D00C9B0](0x6E6F69746361202CLL, 0xEF20746E756F4373);
  v66[0] = *(v0[2] + 16);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v7);

  MEMORY[0x18D00C9B0](0x696863206C6C610ALL, 0xEE00206E6572646CLL);
  v8 = TabItemGroup.allChildEntries.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    v44 = v0;
    v67 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v67;
    v11 = v8 + 32;
    do
    {
      outlined init with copy of TabEntry(v11, v66);
      outlined init with copy of TabEntry(v66, __src);
      if (v65)
      {
        memcpy(__dst, __src, sizeof(__dst));
        strcpy(&v59, "TabItemGroup ");
        HIWORD(v59) = -4864;
        v12 = TabItemGroup.description.getter();
        MEMORY[0x18D00C9B0](v12);

        v14 = *(&v59 + 1);
        v13 = v59;
        outlined destroy of TabItemGroup(__dst);
      }

      else
      {
        *&__dst[64] = *&__src[64];
        *&__dst[80] = *&__src[80];
        *&__dst[96] = *&__src[96];
        *__dst = *__src;
        *&__dst[16] = *&__src[16];
        *&__dst[32] = *&__src[32];
        *&__dst[48] = *&__src[48];
        *&v59 = 0;
        *(&v59 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(20);

        v61 = 0x206D657449626154;
        v62 = 0xE800000000000000;
        *&v59 = *&__dst[104];
        v15 = dispatch thunk of CustomStringConvertible.description.getter();
        v17 = v16;
        *&v59 = *&__dst[96];
        if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
        {
          *&v47 = *&__dst[96];
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          v55 = static TabOptions.TraitKey.defaultValue;
          v56[0] = unk_1EAB09380;
          *(v56 + 9) = *(&word_1EAB09388 + 1);
          v51 = static TabOptions.TraitKey.defaultValue;
          v52[0] = unk_1EAB09380;
          *(v52 + 9) = *(&word_1EAB09388 + 1);
          outlined init with copy of TabOptions(&v55, &v49);
          ViewTraitCollection.value<A>(for:defaultValue:)();
          v57 = v51;
          v58[0] = v52[0];
          *(v58 + 9) = *(v52 + 9);
          outlined destroy of TabOptions(&v57);
          v59 = v53;
          *v60 = v54[0];
          *&v60[9] = *(v54 + 9);
          outlined destroy of TabOptions(&v59);
          if (v60[24])
          {
            if (TabItem.needsCustomizationIDForEnablement.getter())
            {
              v49 = static TabOptions.TraitKey.defaultValue;
              v50[0] = unk_1EAB09380;
              *(v50 + 9) = *(&word_1EAB09388 + 1);
              v45 = static TabOptions.TraitKey.defaultValue;
              *v46 = unk_1EAB09380;
              *&v46[9] = *(&word_1EAB09388 + 1);
              outlined init with copy of TabOptions(&v49, &v47);
              ViewTraitCollection.value<A>(for:defaultValue:)();
              v51 = v45;
              v52[0] = *v46;
              *(v52 + 9) = *&v46[9];
              outlined destroy of TabOptions(&v51);
              v53 = v47;
              v54[0] = v48[0];
              *(v54 + 9) = *(v48 + 9);
              v18 = *(&v47 + 1);
              v19 = *&v48[0];
              v20 = BYTE8(v48[0]);
              outlined copy of TabCustomizationID?(*(&v47 + 1), *&v48[0], SBYTE8(v48[0]));
              outlined destroy of TabOptions(&v53);
              if (v20 != 255)
              {

                v15 = v18;
                v17 = v19;
              }
            }
          }

          else
          {

            v15 = 0xD000000000000016;
            v17 = 0x800000018CD45E10;
          }
        }

        MEMORY[0x18D00C9B0](v15, v17);

        MEMORY[0x18D00C9B0](0x3D6E656464696820, 0xE800000000000000);
        v21 = TabEntry.hidden.getter();
        v22 = (v21 & 1) == 0;
        if (v21)
        {
          v23 = 1702195828;
        }

        else
        {
          v23 = 0x65736C6166;
        }

        if (v22)
        {
          v24 = 0xE500000000000000;
        }

        else
        {
          v24 = 0xE400000000000000;
        }

        MEMORY[0x18D00C9B0](v23, v24);

        v13 = v61;
        v14 = v62;
        outlined destroy of TabItem(__dst);
      }

      outlined destroy of TabEntry(v66);
      v67 = v10;
      v26 = *(v10 + 16);
      v25 = *(v10 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v10 = v67;
      }

      *(v10 + 16) = v26 + 1;
      v27 = v10 + 16 * v26;
      *(v27 + 32) = v13;
      *(v27 + 40) = v14;
      v11 += 288;
      --v9;
    }

    while (v9);

    v1 = v44;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v28 = MEMORY[0x18D00CC60](v10, MEMORY[0x1E69E6158]);
  v30 = v29;

  MEMORY[0x18D00C9B0](v28, v30);

  MEMORY[0x18D00C9B0](0x646165487361680ALL, 0xEB000000003D7265);
  outlined init with copy of TabItem?((v1 + 6), v66);
  v31 = v66[3];
  outlined destroy of TabItem?(v66, type metadata accessor for TabItem?);
  v32 = v31 == 0;
  if (v31)
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  v34 = 0xE400000000000000;
  if (v32)
  {
    v35 = 0xE500000000000000;
  }

  else
  {
    v35 = 0xE400000000000000;
  }

  MEMORY[0x18D00C9B0](v33, v35);

  MEMORY[0x18D00C9B0](0xD000000000000019, 0x800000018CD45DF0);
  v36 = TabItemGroup.sidebarReorderable.getter();
  v37 = !v36;
  if (v36)
  {
    v38 = 1702195828;
  }

  else
  {
    v38 = 0x65736C6166;
  }

  if (v37)
  {
    v39 = 0xE500000000000000;
  }

  else
  {
    v39 = 0xE400000000000000;
  }

  MEMORY[0x18D00C9B0](v38, v39);

  MEMORY[0x18D00C9B0](0x3D6E656464696820, 0xE800000000000000);
  v40 = TabItemGroup.hidden.getter();
  v41 = (v40 & 1) == 0;
  if (v40)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (v41)
  {
    v34 = 0xE500000000000000;
  }

  MEMORY[0x18D00C9B0](v42, v34);

  return v68;
}

uint64_t outlined init with copy of TabItem?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TabItem?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for TabItem?()
{
  if (!lazy cache variable for type metadata for TabItem?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TabItem?);
    }
  }
}

double outlined copy of TabCustomizationID?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of TabCustomizationID.Base();
  }

  return result;
}

Swift::Int specialized closure #1 in OrderedSet._bucket(for:)(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a3 + 16) <= a4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v6 = 1 << *v5;
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v11 = v8 & result;
  v12 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  if (v12)
  {
    goto LABEL_7;
  }

LABEL_5:
  __break(1u);
  do
  {
    _HashTable.BucketIterator.advance()();
    if (!v12)
    {
      goto LABEL_5;
    }

LABEL_7:
    v9 = _HashTable.BucketIterator.currentValue.getter();
  }

  while ((v10 & 1) != 0 || v9 != a4);
  return v11;
}

void specialized TabItemGroup.Coordinator.addChildRemovingExistingIfNeeded(_:to:)(void *a1, id a2)
{
  v4 = [a2 childViewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    v22 = 0;
LABEL_11:
    v11 = [a2 childViewControllers];
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v12 >> 62)
    {
      v13 = __CocoaSet.count.getter();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13)
    {
      goto LABEL_19;
    }

    [a2 addChildViewController_];
    v14 = [a2 view];
    if (v14)
    {
      v15 = v14;
      v16 = [a1 view];
      if (v16)
      {
        v17 = v16;
        [v15 addSubview_];

        v18 = [a1 view];
        if (v18)
        {
          v19 = v18;
          v20 = [a2 view];
          if (v20)
          {
            v21 = v20;
            UIView.constrainToView(_:exceptEdges:identifier:)(v20, 0, 0x476D657449626174, 0xEC00000070756F72);

            [a1 didMoveToParentViewController_];
            goto LABEL_19;
          }

LABEL_29:
          __break(1u);
          return;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x18D00E9C0](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_25;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v22 = v7;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    v22 = v22;
    [v22 willMoveToParentViewController_];
    v9 = [v22 view];
    if (v9)
    {
      v10 = v9;
      [v9 removeFromSuperview];

      [v22 removeFromParentViewController];
      goto LABEL_11;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_19:
}

uint64_t outlined destroy of TabItem?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t View.representablePreferredFocusableView<A>(_:resolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[0] = a2;
  v15[1] = a3;
  outlined copy of AppIntentExecutor?(a2, a3);
  v13 = type metadata accessor for RepresentablePreferredFocusableViewModifier(0, a5, v11, v12);
  MEMORY[0x18D00A570](v15, a4, v13, a6);
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a2, a3);
}

uint64_t static RepresentablePreferredFocusableViewModifier._makeViewInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  type metadata accessor for RepresentablePreferredFocusableViewModifier(255, a3, a3, a4);
  type metadata accessor for _GraphValue();
  v20 = a3;
  v13 = _GraphValue.value.getter();
  v14 = partial apply for closure #1 in Attribute.subscript.getter;
  KeyPath = swift_getKeyPath();
  type metadata accessor for UIView?(255);
  swift_getFunctionTypeMetadata1();
  v17 = type metadata accessor for Optional();
  v18 = type metadata accessor for Map();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E698D3A8], v18);
  v5 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v13, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v16, v18, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);

  v13 = v12;
  v9 = type metadata accessor for RepresentablePreferredFocusableViewInput(0, a3, v7, v8);
  v10 = swift_getWitnessTable(protocol conformance descriptor for RepresentablePreferredFocusableViewInput<A>, v9);
  return specialized _GraphInputs.subscript.setter(&v13, v9, v9, *(v10 + 8));
}

uint64_t key path getter for RepresentablePreferredFocusableViewModifier.resolver : <A>RepresentablePreferredFocusableViewModifier<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = *(a2 + a3 - 8);
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v5;
    *(v8 + 32) = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@owned UIView?);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return outlined copy of AppIntentExecutor?(v5, v6);
}

uint64_t key path setter for RepresentablePreferredFocusableViewModifier.resolver : <A>RepresentablePreferredFocusableViewModifier<A>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = *(a3 + a4 - 8);
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v5;
    v8[4] = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out UIView?);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *a2;
  v11 = a2[1];
  outlined copy of AppIntentExecutor?(v5, v6);
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v10, v11);
  *a2 = v9;
  a2[1] = v8;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance RepresentablePreferredFocusableViewModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RepresentablePreferredFocusableViewModifier<A>, a5);

  return MEMORY[0x1EEDE0CC0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance RepresentablePreferredFocusableViewModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for RepresentablePreferredFocusableViewModifier<A>, a5);

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance RepresentablePreferredFocusableViewInput<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UIView?(255);
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Optional();
  v8 = type metadata accessor for OptionalAttribute();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E698D380], v8);

  return MEMORY[0x1EEDDD5E8](a1, a2, a3, a4, WitnessTable);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out UIView?)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@owned UIView?)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 24))(*a1);
  *a2 = result;
  return result;
}

double one-time initialization function for principal()
{
  static ToolbarItemPlacement.principal = 1;
  result = 0.0;
  unk_1EA9FBCA8 = 0u;
  unk_1EA9FBCB8 = 0u;
  byte_1EA9FBCC8 = 2;
  return result;
}

double one-time initialization function for navigation()
{
  static ToolbarItemPlacement.navigation = 2;
  result = 0.0;
  unk_1EA9FBD10 = 0u;
  unk_1EA9FBD20 = 0u;
  byte_1EA9FBD30 = 2;
  return result;
}

double one-time initialization function for secondaryAction()
{
  static ToolbarItemPlacement.secondaryAction = 3;
  result = 0.0;
  unk_1EAA22218 = 0u;
  unk_1EAA22228 = 0u;
  byte_1EAA22238 = 2;
  return result;
}

double one-time initialization function for status()
{
  static ToolbarItemPlacement.status = 4;
  result = 0.0;
  unk_1EAA015D8 = 0u;
  unk_1EAA015E8 = 0u;
  byte_1EAA015F8 = 2;
  return result;
}

double one-time initialization function for cancellationAction()
{
  static ToolbarItemPlacement.cancellationAction = 6;
  result = 0.0;
  unk_1EAA06018 = 0u;
  unk_1EAA06028 = 0u;
  byte_1EAA06038 = 2;
  return result;
}

double one-time initialization function for destructiveAction()
{
  static ToolbarItemPlacement.destructiveAction = 7;
  result = 0.0;
  unk_1EAA22248 = 0u;
  unk_1EAA22258 = 0u;
  byte_1EAA22268 = 2;
  return result;
}

double one-time initialization function for keyboard()
{
  static ToolbarItemPlacement.keyboard = 8;
  result = 0.0;
  unk_1EAA22278 = 0u;
  unk_1EAA22288 = 0u;
  byte_1EAA22298 = 2;
  return result;
}

double one-time initialization function for _title()
{
  static ToolbarItemPlacement._title = 11;
  result = 0.0;
  unk_1EAA222A8 = 0u;
  unk_1EAA222B8 = 0u;
  byte_1EAA222C8 = 2;
  return result;
}

double one-time initialization function for largeTitle()
{
  static ToolbarItemPlacement.largeTitle = 12;
  result = 0.0;
  unk_1EAA222D8 = 0u;
  unk_1EAA222E8 = 0u;
  byte_1EAA222F8 = 2;
  return result;
}

double one-time initialization function for largeNavigationTitleAccessory()
{
  static ToolbarItemPlacement.largeNavigationTitleAccessory = 14;
  result = 0.0;
  *algn_1EA9FBCE0 = 0u;
  *&algn_1EA9FBCE0[16] = 0u;
  byte_1EA9FBD00 = 2;
  return result;
}

double one-time initialization function for subtitle()
{
  static ToolbarItemPlacement.subtitle = 15;
  result = 0.0;
  unk_1EAA22308 = 0u;
  unk_1EAA22318 = 0u;
  byte_1EAA22328 = 2;
  return result;
}

double one-time initialization function for largeSubtitle()
{
  static ToolbarItemPlacement.largeSubtitle = 16;
  result = 0.0;
  unk_1EAA22338 = 0u;
  unk_1EAA22348 = 0u;
  byte_1EAA22358 = 2;
  return result;
}

double one-time initialization function for tabSidebar()
{
  qword_1EAA22380 = 0;
  result = 0.0;
  static ToolbarItemPlacement.tabSidebar = 0u;
  *algn_1EAA22370 = 0u;
  byte_1EAA22388 = 2;
  return result;
}

uint64_t assignWithCopy for ToolbarItemPlacement(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1);
    if (*(a2 + 40) == 1)
    {
      v4 = *(a2 + 3);
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      *(a1 + 40) = 1;
    }

    else
    {
      v5 = *a2;
      v6 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v5;
      *(a1 + 16) = v6;
    }
  }

  return a1;
}

_OWORD *assignWithTake for ToolbarItemPlacement(_OWORD *result, _OWORD *a2)
{
  if (result != a2)
  {
    v3 = result;
    outlined destroy of ToolbarItemPlacement.Role(result);
    v4 = a2[1];
    *v3 = *a2;
    v3[1] = v4;
    *(v3 + 25) = *(a2 + 25);
    return v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolbarItemPlacement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolbarItemPlacement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

__n128 assignWithCopy for ToolbarItemPlacement.Role(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 2)
    {
      v2 = *a1 + 2;
    }

    if (v2 == 1)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 40);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      v7 = *(a2 + 24);
      *(a1 + 24) = v7;
      *(a1 + 32) = *(a2 + 32);
      v8 = a1;
      (**(v7 - 8))();
      *(v8 + 40) = 1;
    }

    else if (v6)
    {
      result = *a2;
      v9 = *(a2 + 16);
      *(a1 + 25) = *(a2 + 25);
      *a1 = result;
      *(a1 + 16) = v9;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 40) = 0;
    }
  }

  return result;
}

__n128 assignWithTake for ToolbarItemPlacement.Role(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 2)
    {
      v2 = *a1 + 2;
    }

    if (v2 == 1)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 40);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      result = *a2;
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = 1;
    }

    else if (v6)
    {
      v8 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v8;
      result = *(a2 + 25);
      *(a1 + 25) = result;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 40) = 0;
    }
  }

  return result;
}

uint64_t getEnumTag for ToolbarItemPlacement.Role(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ToolbarItemPlacement.Role(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

double one-time initialization function for _navigationBarTrailing()
{
  static ToolbarItemPlacement._navigationBarTrailing = 25;
  result = 0.0;
  unk_1EAB09C88 = 0u;
  unk_1EAB09C98 = 0u;
  byte_1EAB09CA8 = 2;
  return result;
}

double one-time initialization function for _navigationBarLeading()
{
  static ToolbarItemPlacement._navigationBarLeading = 26;
  result = 0.0;
  unk_1EAB09CB8 = 0u;
  unk_1EAB09CC8 = 0u;
  byte_1EAB09CD8 = 2;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ToolbarItemPlacement.Role()
{
  Hasher.init(_seed:)();
  ToolbarItemPlacement.Role.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ToolbarItemPlacement.Role(uint64_t a1)
{
  Hasher.init(_seed:)();
  ToolbarItemPlacement.Role.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t ToolbarItemPlacement.Role.barLocation.getter@<X0>(uint64_t a1@<X8>)
{
  result = outlined init with copy of ToolbarItemPlacement.Role(v1, v8);
  if (v9 == 1)
  {
    v7 = *&v8[16];
    *a1 = *v8;
    *(a1 + 16) = v7;
    *(a1 + 32) = *&v8[32];
    return result;
  }

  if (v9 != 2)
  {
    goto LABEL_51;
  }

  v4 = vorrq_s8(*&v8[8], *&v8[24]);
  v5 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  if (*v8 == 1 && *&v5 == 0)
  {
    goto LABEL_22;
  }

  if (*v8 == 2 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD79D60;
    return result;
  }

  if (*v8 == 8 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD90780;
    return result;
  }

  if (*v8 == 9 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD90770;
    return result;
  }

  if (*v8 == 10 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD7DD20;
    return result;
  }

  if (*v8 == 11 && !*&v5)
  {
    goto LABEL_22;
  }

  if (*v8 == 12 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD6A6D0;
    return result;
  }

  if (*v8 == 13 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD90760;
    return result;
  }

  if (*v8 == 14 && !*&v5)
  {
    goto LABEL_22;
  }

  if (*v8 == 15 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD90750;
    return result;
  }

  if (*v8 == 16 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD79540;
    return result;
  }

  if (*v8 == 17 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD90740;
    return result;
  }

  if (*v8 == 18 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD90730;
    return result;
  }

  if (*v8 == 19 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD90720;
    return result;
  }

  if (*v8 == 20 && !*&v5)
  {
LABEL_22:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  if (*v8 == 29 && !*&v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = xmmword_18CD90710;
  }

  else
  {
LABEL_51:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return outlined destroy of ToolbarItemPlacement.Role(v8);
  }

  return result;
}

void EnvironmentValues.toolbarItemPlacement.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ToolbarItemPlacementKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ToolbarItemPlacementKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

uint64_t EnvironmentValues.toolbarItemPlacement.setter(uint64_t a1)
{
  outlined init with copy of ToolbarItemPlacement.Role(a1, v5);
  outlined init with copy of ToolbarItemPlacement.Role(v5, &v4);
  type metadata accessor for EnvironmentPropertyKey<ToolbarItemPlacementKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of ToolbarItemPlacement.Role(a1);
  return outlined destroy of ToolbarItemPlacement.Role(v5);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance ToolbarItemPlacementKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of ToolbarItemPlacement.Role(&static ToolbarItemPlacementKey.defaultValue, v2);
}

void type metadata accessor for EnvironmentPropertyKey<ToolbarItemPlacementKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemPlacementKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemPlacementKey>);
    }
  }
}

uint64_t View.navigationBarItems<A, B>(leading:trailing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = MEMORY[0x1E69E7CA8];
  type metadata accessor for ToolbarItem(255, MEMORY[0x1E69E7CA8] + 8, a4, a7);
  type metadata accessor for ToolbarItem(255, v16 + 8, a5, a8);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = type metadata accessor for TupleToolbarContent(255, TupleTypeMetadata2, v18, v19);
  type metadata accessor for ToolbarModifier(255, v16 + 8, v20, &protocol witness table for TupleToolbarContent<A>);
  v21 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v21);
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a1;
  v32 = a2;
  View.toolbar<A>(content:)(partial apply for closure #1 in View.navigationBarItems<A, B>(leading:trailing:), v24, a3, v20, a6, &protocol witness table for TupleToolbarContent<A>);
  v33[0] = a6;
  v33[1] = &protocol witness table for ToolbarModifier<A, B>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v21, v33);
  return _UnaryViewAdaptor.init(_:)();
}

uint64_t closure #1 in View.navigationBarItems<A, B>(leading:trailing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v36 = a1;
  v44 = a6;
  v39 = *(a4 - 8);
  v40 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E7CA8];
  v42 = v10;
  v43 = v11;
  v13 = type metadata accessor for ToolbarItem(0, MEMORY[0x1E69E7CA8] + 8, v12, v11);
  v41 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v19 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a5;
  v23 = type metadata accessor for ToolbarItem(0, v9 + 8, a3, a5);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v35 - v28;
  if (one-time initialization token for _navigationBarLeading != -1)
  {
    swift_once();
  }

  outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement._navigationBarLeading, v45);
  (*(v19 + 16))(v22, v36, a3);
  ToolbarItem<>.init(placement:content:)(v45, v22, a3, v37, v26);
  static ToolbarContentBuilder.buildExpression<A>(_:)(v26, v23, &protocol witness table for ToolbarItem<A, B>);
  v30 = *(v24 + 8);
  v30(v26, v23);
  if (one-time initialization token for _navigationBarTrailing != -1)
  {
    swift_once();
  }

  outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement._navigationBarTrailing, v45);
  v31 = v38;
  v32 = v42;
  (*(v39 + 16))(v38, v40, v42);
  ToolbarItem<>.init(placement:content:)(v45, v31, v32, v43, v15);
  static ToolbarContentBuilder.buildExpression<A>(_:)(v15, v13, &protocol witness table for ToolbarItem<A, B>);
  v33 = *(v41 + 8);
  v33(v15, v13);
  static ToolbarContentBuilder.buildBlock<A, B>(_:_:)(v29, v18, v23, v13, v44);
  v33(v18, v13);
  return v30(v29, v23);
}

uint64_t View.navigationBarItems<A>(leading:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(double))
{
  v13 = MEMORY[0x1E69E7CA8];
  v14 = type metadata accessor for ToolbarItem(255, MEMORY[0x1E69E7CA8] + 8, a3, a5);
  v17 = type metadata accessor for TupleToolbarContent(255, v14, v15, v16);
  type metadata accessor for ToolbarModifier(255, v13 + 8, v17, &protocol witness table for TupleToolbarContent<A>);
  v18 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v18);
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a1;
  View.toolbar<A>(content:)(a6, v20, a2, v17, a4, &protocol witness table for TupleToolbarContent<A>);
  v26[0] = a4;
  v26[1] = &protocol witness table for ToolbarModifier<A, B>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v18, v26);
  return _UnaryViewAdaptor.init(_:)();
}

uint64_t closure #1 in View.navigationBarItems<A>(leading:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, void *a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v25[1] = a6;
  v26 = a1;
  v27 = a7;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ToolbarItem(0, MEMORY[0x1E69E7CA8] + 8, v14, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v25 - v21;
  if (*a4 != -1)
  {
    swift_once();
  }

  outlined init with copy of ToolbarItemPlacement(a5, v28);
  (*(v11 + 16))(v13, v26, a2);
  ToolbarItem<>.init(placement:content:)(v28, v13, a2, a3, v19);
  static ToolbarContentBuilder.buildExpression<A>(_:)(v19, v16, &protocol witness table for ToolbarItem<A, B>);
  v23 = *(v17 + 8);
  v23(v19, v16);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return v23(v22, v16);
}

double View.menuSourcePresentationDisabled(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

uint64_t EnvironmentValues.disableMenuSourcePresentation.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  return v2;
}

void key path getter for EnvironmentValues.disableMenuSourcePresentation : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>, MEMORY[0x1E697FE40]);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>, MEMORY[0x1E697FE40]);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.disableMenuSourcePresentation : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>, MEMORY[0x1E697FE40]);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_disableMenuSourcePresentation>);
    }
  }
}

uint64_t TooltipResponder.__allocating_init(inputs:)(uint64_t a1)
{
  v1 = swift_allocObject();
  v1[28] = 0;
  v1[29] = 0;
  v1[27] = 0;
  static CGSize.invalidValue.getter();
  v1[30] = v2;
  v1[31] = v3;
  ViewTransform.init()();
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t protocol witness for Rule.value.getter in conformance TooltipModifier.ResolveText@<X0>(uint64_t *a1@<X8>)
{
  result = TooltipModifier.ResolveText.value.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance TooltipModifier.TransformPlatformItems@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in TooltipModifier.TransformPlatformItems.value.getter;
  *(result + 24) = v4;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a1[1] = result;
  return result;
}

uint64_t closure #1 in TooltipResponder.text.getter@<X0>(void *a2@<X8>)
{
  AGGraphClearUpdate();
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    goto LABEL_6;
  }

  v5 = *WeakValue;
  v4 = WeakValue[1];
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = *WeakValue & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
  }

  else
  {
LABEL_6:
    v5 = 0;
    v4 = 0;
  }

  result = AGGraphSetUpdate();
  *a2 = v5;
  a2[1] = v4;
  return result;
}

double TooltipResponder.globalFrame.getter()
{
  v1 = *(v0 + 264);
  v12 = *(v0 + 256);
  v13 = v1;
  v2 = *(v0 + 288);
  v14 = *(v0 + 272);
  v15 = v2;
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);

  ViewTransform.appendPosition(_:)(__PAIR128__(v4, v3));
  v9 = 0.0;
  v10 = 0;
  v11 = *(v0 + 240);
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = 2;

  CGRect.convert(to:transform:)();

  outlined destroy of CoordinateSpace(v6);

  return v9;
}

Swift::Void __swiftcall TooltipResponder.extendPrintTree(string:)(Swift::String *string)
{
  type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  static Update.dispatchImmediately<A>(reason:_:)();
  if (v4)
  {
    v1 = v3;
  }

  else
  {
    v1 = 7104878;
  }

  if (v4)
  {
    v2 = v4;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x18D00C9B0](v1, v2);

  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  MEMORY[0x18D00C9B0](0x207069746C6F6F74, 0xE900000000000028);
}

uint64_t TooltipResponder.__allocating_init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  v2[28] = 0;
  v2[29] = 0;
  v2[27] = 0;
  static CGSize.invalidValue.getter();
  v2[30] = v3;
  v2[31] = v4;
  ViewTransform.init()();
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)();
}

double TooltipResponder.__ivar_destroyer()
{

  return result;
}

double TooltipResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t assignWithTake for TooltipModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void type metadata accessor for _SemanticFeature<Semantics_v5>()
{
  if (!lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>)
  {
    v0 = type metadata accessor for _SemanticFeature();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>);
    }
  }
}

uint64_t *assignWithCopy for TooltipModifier.TooltipResponderUpdater(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 6) = *(a2 + 6);
  return a1;
}

uint64_t *assignWithTake for TooltipModifier.TooltipResponderUpdater(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  *(a1 + 6) = *(a2 + 6);
  return a1;
}

uint64_t getEnumTagSinglePayload for TooltipModifier.TooltipResponderUpdater(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TooltipModifier.TooltipResponderUpdater(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static EntityGestureResponderFactory.makeGestureContainer(parentView:entities:)(void *a1, uint64_t a2)
{
  v48 = *(a2 + 16);
  if (!v48)
  {
    return 0;
  }

  v4 = a1;
  v5 = [v4 _parentGestureRecognizerContainer];
  swift_unknownObjectRetain();
  v47 = v4;
  swift_unknownObjectRelease();
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    swift_getObjectType();
    v6 = swift_conformsToProtocol2();
    swift_unknownObjectRelease();
    if (v6)
    {
      break;
    }

    v7 = [v5 _parentGestureRecognizerContainer];
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v5 = v7;
    if (!v7)
    {
      return 0;
    }
  }

  ObjectType = swift_getObjectType();
  v10 = (*(v6 + 16))(ObjectType, v6);
  if (!v10)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v11 = v10;

  while (1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();

    if (!Strong)
    {
      swift_unknownObjectRelease();

      return 0;
    }

    type metadata accessor for RootEntityGestureResponder(0);
    v13 = swift_dynamicCastClass();

    if (v13)
    {
      break;
    }

    type metadata accessor for DefaultLayoutViewResponder();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v13 = v14;
      break;
    }
  }

  v45[1] = v11;
  v45[2] = v5;
  v46 = a1;
  v45[0] = Strong;
  swift_retain_n();
  swift_beginAccess();
  v15 = v48 - 1;
  v16 = (a2 + 16 * v48 + 24);
  v17 = v13;
  while (v15 < v48)
  {
    v55 = v15;
    v56 = v17;
    v38 = *(v16 - 1);
    v37 = *v16;
    v39 = swift_getObjectType();
    v40 = *(v37 + 24);
    swift_unknownObjectRetain();
    v57 = v39;
    v54 = v37;
    v41 = v40(v39, v37);

    if (v41)
    {
      type metadata accessor for EntityGestureResponder(0);
      v42 = swift_dynamicCastClass();
      if (v42)
      {
        v33 = v42;
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
    }

    v18 = v54;
    (*(v54 + 16))(v61, v57, v54);
    v19 = v62;
    v20 = v63;
    v21 = __swift_project_boxed_opaque_existential_1(v61, v62);
    v53 = type metadata accessor for EntityGestureResponder(0);
    v22 = *(v13 + 136);
    v64[2] = *(v13 + 120);
    v64[3] = v22;
    v64[4] = *(v13 + 152);
    v65 = *(v13 + 168);
    v23 = *(v13 + 104);
    v64[0] = *(v13 + 88);
    v64[1] = v23;
    v24 = *(v13 + 120);
    v25 = *(v13 + 152);
    v59[3] = *(v13 + 136);
    v59[4] = v25;
    v60 = *(v13 + 168);
    v26 = *(v13 + 104);
    v59[0] = *(v13 + 88);
    v59[1] = v26;
    v59[2] = v24;
    v49 = *(v13 + 176);
    v51 = swift_unknownObjectWeakLoadStrong();
    v52 = v45;
    v50 = *(v13 + 24);
    v27 = MEMORY[0x1EEE9AC00](v51);
    v29 = v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v29, v21, v19, v27);
    v31 = v47;
    swift_unknownObjectRetain();
    v32 = v56;

    outlined init with copy of _ViewInputs(v64, &v58);
    v33 = swift_allocObject();
    v34 = v49;
    EntityGestureResponder.init<A, B>(parent:inputs:viewSubgraph:host:entityTargetingView:entity:gesture:)(v32, v59, v34, v51, v50, v46, v38, v29, v44, v19, v18, v20);
    __swift_destroy_boxed_opaque_existential_1(v61);
    v35 = *(v18 + 32);

    v35(v36, v57, v18);
LABEL_16:

    swift_unknownObjectRelease();

    v15 = v55 - 1;
    v16 -= 2;
    v17 = v33;
    if (!v55)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_24:

  v43 = EntityGestureResponder.gestureContainer.getter();

  swift_unknownObjectRelease();
  return v43;
}

uint64_t EntityGestureResponder.__allocating_init<A, B>(parent:inputs:viewSubgraph:host:entityTargetingView:entity:gesture:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = swift_allocObject();
  EntityGestureResponder.init<A, B>(parent:inputs:viewSubgraph:host:entityTargetingView:entity:gesture:)(a1, a2, a3, a4, a5, a6, a7, a8, v22, a10, a11, a12);
  return v20;
}

uint64_t EntityGestureResponder.gestureContainer.getter()
{
  if (*(v0 + 240))
  {
    return swift_unknownObjectRetain();
  }

  if (!AGSubgraphIsValid())
  {
    return 0;
  }

  v1 = *(v0 + 88);
  v11[2] = *(v0 + 72);
  v11[3] = v1;
  v11[4] = *(v0 + 104);
  v12 = *(v0 + 120);
  v2 = *(v0 + 56);
  v11[0] = *(v0 + 40);
  v11[1] = v2;
  v7 = *(v0 + 72);
  v8 = *(v0 + 88);
  v9 = *(v0 + 104);
  v10 = *(v0 + 120);
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  lazy protocol witness table accessor for type EntityGestureResponder and conformance EntityGestureResponder(&lazy protocol witness table cache variable for type EntityGestureResponder and conformance EntityGestureResponder, protocol conformance descriptor for EntityGestureResponder);
  outlined init with copy of _ViewInputs(v11, v13);
  v3 = _ViewInputs.makeGestureContainer(responder:)();
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v14 = v10;
  v13[0] = v5;
  v13[1] = v6;
  outlined destroy of _ViewInputs(v13);
  *(v0 + 240) = v3;
  swift_unknownObjectRelease();
  result = *(v0 + 240);
  if (result)
  {
    return swift_unknownObjectRetain();
  }

  __break(1u);
  return result;
}

uint64_t RootEntityGestureResponder.children.getter()
{
  type metadata accessor for DefaultLayoutViewResponder();
  v1 = method lookup function for ViewResponder();
  v16 = v1();
  swift_beginAccess();
  v2 = *(v0 + 216);
  v3 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = MEMORY[0x1E6981A78];
      outlined init with copy of WeakBox<EntityGestureResponder>(*(v2 + 56) + ((v8 << 9) | (8 * v9)), v17, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78], type metadata accessor for WeakBox<EntityGestureResponder>);
      Strong = swift_weakLoadStrong();
      v12 = outlined destroy of WeakBox<EntityGestureResponder>(v17, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, v10, type metadata accessor for WeakBox<EntityGestureResponder>);
      if (Strong)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x18D00CC30](v12);
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v3 = v18;
  }

  while (v6);
  while (1)
  {
LABEL_6:
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v13 >= v7)
    {
      break;
    }

    v6 = *(v2 + 64 + 8 * v13);
    ++v8;
    if (v6)
    {
      v8 = v13;
      goto LABEL_4;
    }
  }

  if (!(v3 >> 62))
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for ViewResponder();
    v14 = v3;
    goto LABEL_16;
  }

LABEL_18:
  type metadata accessor for ViewResponder();

  v14 = _bridgeCocoaArray<A>(_:)();

LABEL_16:

  v18 = v16;
  specialized Array.append<A>(contentsOf:)(v14);
  return v18;
}

uint64_t RootEntityGestureResponder.children.setter(uint64_t a1)
{
  type metadata accessor for DefaultLayoutViewResponder();
  v2 = method lookup function for MultiViewResponder();

  return v2(a1);
}

uint64_t (*RootEntityGestureResponder.children.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = RootEntityGestureResponder.children.getter();
  return RootEntityGestureResponder.children.modify;
}

uint64_t RootEntityGestureResponder.children.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  type metadata accessor for DefaultLayoutViewResponder();
  v4 = method lookup function for MultiViewResponder();
  if ((a2 & 1) == 0)
  {
    return v4(v3);
  }

  v4(v5);
}

uint64_t RootEntityGestureResponder.addChild(responder:)(uint64_t a1)
{
  swift_beginAccess();

  specialized Dictionary.compactMapValues<A>(_:)(v2);
  v4 = v3;

  *(v1 + 216) = v4;

  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_getObjectType();
  v9 = Strong;
  v10[3] = swift_getAssociatedTypeWitness();
  v10[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v10);
  dispatch thunk of Identifiable.id.getter();
  swift_unknownObjectRelease();
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Hashable, MEMORY[0x1E69E5EA0]);
  swift_dynamicCast();
  swift_weakInit();
  swift_weakAssign();
  v7[8] = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v7, v8);
  swift_endAccess();
  swift_beginAccess();
  swift_weakLoadStrong();

  return swift_weakAssign();
}

uint64_t RootEntityGestureResponder.__allocating_init(inputs:)(uint64_t a1)
{
  v1 = swift_allocObject();
  *(v1 + 216) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_7SwiftUI7WeakBoxVyAE22EntityGestureResponderCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  return DefaultLayoutViewResponder.init(inputs:)();
}

double RootEntityGestureResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t RootEntityGestureResponderFilter.responder.getter()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = *(v0 + 96);
    AGGraphClearUpdate();
    v3 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v4 = *(v0 + 56);
    v18 = *(v0 + 40);
    v19 = v4;
    v20 = *(v0 + 72);
    v21 = *(v0 + 88);
    v5 = *(v0 + 24);
    v16 = *(v0 + 8);
    v17 = v5;
    type metadata accessor for RootEntityGestureResponder(0);
    v6 = swift_allocObject();
    *(v6 + 216) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_7SwiftUI7WeakBoxVyAE22EntityGestureResponderCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v10 = v16;
    v11 = v17;
    v12 = v18;
    outlined init with copy of _ViewInputs(&v16, v9);
    v7 = v0;
    v1 = DefaultLayoutViewResponder.init(inputs:)();
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    *(v7 + 104) = v1;
  }

  return v1;
}

Swift::Void __swiftcall RootEntityGestureResponderFilter.updateValue()()
{
  RootEntityGestureResponderFilter.responder.getter();
  type metadata accessor for WeakBox<EntityGestureResponder>(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
  AGGraphGetValue();
  if (v0)
  {
    type metadata accessor for DefaultLayoutViewResponder();
    v1 = method lookup function for MultiViewResponder();

    v1(v2);
  }

  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for AnyGesture<()>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_18CD69590;
    *(v3 + 32) = RootEntityGestureResponderFilter.responder.getter();
    AGGraphSetOutputValue();
  }
}

unint64_t static RootEntityGestureResponderModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, _BYTE *)@<X2>, void *a4@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2[1];
  v28 = a2[2];
  v6 = a2[2];
  v29 = a2[3];
  v7 = a2[3];
  v30 = a2[4];
  v8 = a2[1];
  v26 = *a2;
  v9 = *a2;
  v27 = v8;
  *&v22[32] = v6;
  *&v22[48] = v7;
  *&v22[64] = a2[4];
  v31 = *(a2 + 20);
  *&v22[80] = *(a2 + 20);
  *v22 = v9;
  *&v22[16] = v5;
  a3(&v12, a1, v22);
  *v22 = v29;
  *&v22[8] = DWORD2(v29);
  result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if ((result & 1) == 0)
  {
    goto LABEL_4;
  }

  *v22 = v12;
  *&v22[8] = v13;

  v11 = _ViewOutputs.viewResponders()();

  result = AGSubgraphGetCurrent();
  if (result)
  {
    *&v25[4] = v26;
    *&v25[20] = v27;
    *&v25[36] = v28;
    *&v25[52] = v29;
    *&v25[68] = v30;
    *&v25[84] = v31;
    *v22 = v11;
    *&v22[4] = *v25;
    *&v22[20] = *&v25[16];
    *&v22[84] = *&v25[80];
    *&v22[68] = *&v25[64];
    *&v22[52] = *&v25[48];
    *&v22[36] = *&v25[32];
    v23 = result;
    v24 = 0;
    v20 = *&v22[80];
    v21 = result;
    v15 = *v22;
    v16 = *&v22[16];
    v18 = *&v22[48];
    v19 = *&v22[64];
    v17 = *&v22[32];
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    outlined init with copy of _ViewInputs(&v26, v14);
    type metadata accessor for WeakBox<EntityGestureResponder>(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type RootEntityGestureResponderFilter and conformance RootEntityGestureResponderFilter();
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of RootEntityGestureResponderFilter(v22);
    LOBYTE(v15) = 0;
    result = PreferencesOutputs.subscript.setter();
LABEL_4:
    *a4 = v12;
    a4[1] = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t EntityGestureResponder.gestureGraph.getter()
{
  if (*(v0 + 216))
  {
    v1 = *(v0 + 216);
  }

  else
  {
    lazy protocol witness table accessor for type EntityGestureResponder and conformance EntityGestureResponder(&lazy protocol witness table cache variable for type EntityGestureResponder and conformance EntityGestureResponder, protocol conformance descriptor for EntityGestureResponder);
    type metadata accessor for GestureGraph();
    swift_allocObject();

    v1 = GestureGraph.init(rootResponder:)();
    *(v0 + 216) = v1;
  }

  return v1;
}

uint64_t EntityGestureResponder.bindingBridge.getter()
{
  if (*(v0 + 224))
  {
    v1 = *(v0 + 224);
  }

  else
  {
    v2 = *(v0 + 88);
    v15[2] = *(v0 + 72);
    v15[3] = v2;
    v15[4] = *(v0 + 104);
    v16 = *(v0 + 120);
    v3 = *(v0 + 56);
    v15[0] = *(v0 + 40);
    v15[1] = v3;
    v11 = *(v0 + 72);
    v12 = *(v0 + 88);
    v13 = *(v0 + 104);
    v14 = *(v0 + 120);
    v9 = *(v0 + 40);
    v10 = *(v0 + 56);
    outlined init with copy of _ViewInputs(v15, v17);
    v4 = v0;
    EntityGestureResponder.gestureGraph.getter();

    lazy protocol witness table accessor for type EntityGestureResponder and conformance EntityGestureResponder(&lazy protocol witness table cache variable for type EntityGestureResponder and conformance EntityGestureResponder, protocol conformance descriptor for EntityGestureResponder);
    v1 = _ViewInputs.makeEventBindingBridge(bindingManager:responder:)();
    v6 = v5;

    v17[2] = v11;
    v17[3] = v12;
    v17[4] = v13;
    v18 = v14;
    v17[0] = v9;
    v17[1] = v10;
    outlined destroy of _ViewInputs(v17);
    v7 = v4[27];
    swift_beginAccess();
    *(v7 + 200) = v6;
    swift_unknownObjectWeakAssign();
    v4[28] = v1;
    v4[29] = v6;
  }

  return v1;
}

uint64_t closure #1 in EntityGestureResponder.makeGesture(inputs:)(__int128 *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v17 = a1[4];
  v18 = v2;
  v19[0] = a1[6];
  *(v19 + 12) = *(a1 + 108);
  v3 = a1[1];
  v13 = *a1;
  v14 = v3;
  v4 = a1[3];
  v15 = a1[2];
  v16 = v4;
  outlined init with copy of _Benchmark(a2 + 160, v20);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for AnyGesture<()>(0, &lazy cache variable for type metadata for AnyGesture<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E697DA20]);
  lazy protocol witness table accessor for type EntityGestureRule and conformance EntityGestureRule();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of _PresentationTransitionOutputs(v20);
  v10 = v17;
  v11 = v18;
  *v12 = v19[0];
  *&v12[12] = *(v19 + 12);
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v9 = v16;
  outlined init with copy of _GestureInputs(&v13, v20);
  static AnyGesture._makeGesture(gesture:inputs:)();
  v20[4] = v10;
  v20[5] = v11;
  v21[0] = *v12;
  *(v21 + 12) = *&v12[12];
  v20[0] = v6;
  v20[1] = v7;
  v20[2] = v8;
  v20[3] = v9;
  return outlined destroy of _GestureInputs(v20);
}

Swift::Void __swiftcall EntityGestureResponder.resetGesture()()
{
  swift_beginAccess();
  v1 = *(v0 + 200);
  *(v0 + 200) = 0;

  swift_beginAccess();
  v2 = *(v0 + 208);
  *(v0 + 208) = 0;
}

uint64_t EntityGestureResponder.children.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 248);
  v2 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = MEMORY[0x1E6981A78];
      outlined init with copy of WeakBox<EntityGestureResponder>(*(v1 + 56) + ((v8 << 9) | (8 * v9)), v13, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78], type metadata accessor for WeakBox<EntityGestureResponder>);
      Strong = swift_weakLoadStrong();
      result = outlined destroy of WeakBox<EntityGestureResponder>(v13, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, v10, type metadata accessor for WeakBox<EntityGestureResponder>);
      if (Strong)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x18D00CC30](result);
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v14;
  }

  while (v5);
LABEL_6:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(v1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      v8 = v12;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t EntityGestureResponder.addChild(responder:)(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_getObjectType();
  v5 = Strong;
  v6[3] = swift_getAssociatedTypeWitness();
  v6[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v6);
  dispatch thunk of Identifiable.id.getter();
  swift_unknownObjectRelease();
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Hashable, MEMORY[0x1E69E5EA0]);
  swift_dynamicCast();
  swift_weakInit();
  swift_weakAssign();
  v3[8] = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v3, v4);
  swift_endAccess();
  swift_beginAccess();
  swift_weakLoadStrong();

  return swift_weakAssign();
}

uint64_t EntityGestureResponder.init<A, B>(parent:inputs:viewSubgraph:host:entityTargetingView:entity:gesture:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  swift_unknownObjectWeakInit();
  *(v13 + 232) = 0u;
  *(v13 + 216) = 0u;
  *(v13 + 200) = 0u;
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_7SwiftUI7WeakBoxVyAE22EntityGestureResponderCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v20 = *(a2 + 48);
  *(v13 + 72) = *(a2 + 32);
  *(v13 + 88) = v20;
  *(v13 + 104) = *(a2 + 64);
  v21 = *(a2 + 16);
  *(v13 + 40) = *a2;
  *(v13 + 248) = v19;
  *(v13 + 120) = *(a2 + 80);
  *(v13 + 56) = v21;
  *(v13 + 128) = a3;
  swift_unknownObjectWeakAssign();
  *(v13 + 152) = a11;
  swift_unknownObjectUnownedInit();
  *(v13 + 184) = a10;
  *(v13 + 192) = a12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 160));
  v23 = *(a10 - 8);
  (*(v23 + 16))(boxed_opaque_existential_1, a8, a10);
  *(v13 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  swift_beginAccess();
  *(v13 + 24) = a5;
  swift_unknownObjectWeakAssign();
  v33 = a1;
  type metadata accessor for ViewResponder();
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for EntityGestureParentResponder, &protocol descriptor for EntityGestureParentResponder);
  v24 = a3;

  if (swift_dynamicCast())
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v31, v34);
    v25 = v35;
    v26 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    (*(v26 + 8))(v13, v25, v26);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v23 + 8))(a8, a10);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    outlined destroy of WeakBox<EntityGestureResponder>(v31, &lazy cache variable for type metadata for EntityGestureParentResponder?, &lazy cache variable for type metadata for EntityGestureParentResponder, &protocol descriptor for EntityGestureParentResponder, type metadata accessor for IntelligenceSubelementProviding?);
    v27 = static os_log_type_t.fault.getter();
    v28 = static Log.eventDebuggingLog.getter();
    os_log(_:dso:log:_:_:)(v27, &dword_18BD4A000, v28, "Parent responder doesn't conform to the\nEntityGestureParentResponder protocol.", 78, 2, MEMORY[0x1E69E7CC0]);

    swift_beginAccess();
    swift_weakLoadStrong();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v23 + 8))(a8, a10);
    swift_weakAssign();
  }

  return v13;
}

uint64_t EntityGestureResponder.__ivar_destroyer()
{
  v1 = *(v0 + 88);
  v4[2] = *(v0 + 72);
  v4[3] = v1;
  v4[4] = *(v0 + 104);
  v5 = *(v0 + 120);
  v2 = *(v0 + 56);
  v4[0] = *(v0 + 40);
  v4[1] = v2;
  outlined destroy of _ViewInputs(v4);

  MEMORY[0x18D011290](v0 + 136);
  outlined destroy of unowned EntityWithGesture(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1((v0 + 160));

  swift_unknownObjectRelease();
}

uint64_t EntityGestureResponder.deinit()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + 16);
  swift_weakDestroy();
  v1 = *(v0 + 88);
  v4[2] = *(v0 + 72);
  v4[3] = v1;
  v4[4] = *(v0 + 104);
  v5 = *(v0 + 120);
  v2 = *(v0 + 56);
  v4[0] = *(v0 + 40);
  v4[1] = v2;
  outlined destroy of _ViewInputs(v4);

  MEMORY[0x18D011290](v0 + 136);
  outlined destroy of unowned EntityWithGesture(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1((v0 + 160));

  swift_unknownObjectRelease();

  return v0;
}

double EntityGestureResponder.__deallocating_deinit()
{
  EntityGestureResponder.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t protocol witness for AnyGestureResponder.inputs.getter in conformance EntityGestureResponder@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v4 = *(v1 + 104);
  v10 = *(v1 + 88);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 120);
  v6 = *(v1 + 56);
  v9[0] = *(v1 + 40);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of _ViewInputs(v9, v8);
}

void *protocol witness for AnyGestureResponder.childSubgraph.getter in conformance EntityGestureResponder()
{
  swift_beginAccess();
  v1 = *(v0 + 200);
  v2 = v1;
  return v1;
}

void protocol witness for AnyGestureResponder.childSubgraph.setter in conformance EntityGestureResponder(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 200);
  *(v1 + 200) = a1;
}

void *protocol witness for AnyGestureResponder.childViewSubgraph.getter in conformance EntityGestureResponder()
{
  swift_beginAccess();
  v1 = *(v0 + 208);
  v2 = v1;
  return v1;
}

void protocol witness for AnyGestureResponder.childViewSubgraph.setter in conformance EntityGestureResponder(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 208);
  *(v1 + 208) = a1;
}

uint64_t protocol witness for AnyGestureContainingResponder.eventSources.getter in conformance EntityGestureResponder()
{
  EntityGestureResponder.bindingBridge.getter();
  v0 = dispatch thunk of EventBindingBridge.eventSources.getter();

  return v0;
}

double protocol witness for AnyGestureContainingResponder.detachContainer() in conformance EntityGestureResponder()
{
  *(v0 + 240) = 0;
  swift_unknownObjectRelease();
  return result;
}

uint64_t protocol witness for AnyGestureContainingResponder.isValid.getter in conformance EntityGestureResponder()
{
  if (*(v0 + 240))
  {
    return AGSubgraphIsValid();
  }

  else
  {
    return 0;
  }
}

uint64_t EntityGestureRule.updateValue()()
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69E7CA8];
  type metadata accessor for AnyGesture<()>(0, &lazy cache variable for type metadata for AnyGesture<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E697DA20]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for AnyGesture<()>(0, &lazy cache variable for type metadata for EmptyGesture<()>, v1 + 8, MEMORY[0x1E697DE40]);
    lazy protocol witness table accessor for type EmptyGesture<()> and conformance EmptyGesture<A>();
    v8[0] = AnyGesture.init<A>(_:)();
    AGGraphSetOutputValue();
  }

  outlined init with copy of WeakBox<EntityGestureResponder>(v0, &v6, &lazy cache variable for type metadata for Gesture?, &lazy cache variable for type metadata for Gesture, MEMORY[0x1E69819D8], type metadata accessor for IntelligenceSubelementProviding?);
  if (!v7)
  {
    return outlined destroy of WeakBox<EntityGestureResponder>(&v6, &lazy cache variable for type metadata for Gesture?, &lazy cache variable for type metadata for Gesture, MEMORY[0x1E69819D8], type metadata accessor for IntelligenceSubelementProviding?);
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v6, v8);
  v2 = v9;
  v3 = v10;
  v4 = __swift_project_boxed_opaque_existential_1(v8, v9);
  *&v6 = anyGesture #1 <A>(_:) in EntityGestureRule.updateValue()(v4, v2, v3);
  AGGraphSetOutputValue();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t anyGesture #1 <A>(_:) in EntityGestureRule.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _MapGesture();
  MEMORY[0x1EEE9AC00](v5);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  Gesture.map<A>(_:)();

  swift_getWitnessTable(MEMORY[0x1E697DDD8], v5);
  return AnyGesture.init<A>(_:)();
}

uint64_t outlined init with take of (key: UInt64, value: WeakBox<EntityGestureResponder>)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (key: UInt64, value: WeakBox<EntityGestureResponder>)(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (key: UInt64, value: WeakBox<EntityGestureResponder>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (key: UInt64, value: WeakBox<EntityGestureResponder>))
  {
    type metadata accessor for WeakBox<EntityGestureResponder>(255, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: UInt64, value: WeakBox<EntityGestureResponder>));
    }
  }
}

uint64_t outlined destroy of (key: UInt64, value: WeakBox<EntityGestureResponder>)(uint64_t a1)
{
  type metadata accessor for (key: UInt64, value: WeakBox<EntityGestureResponder>)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type EntityGestureResponder and conformance EntityGestureResponder(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for EntityGestureResponder(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for WeakBox<EntityGestureResponder>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type RootEntityGestureResponderFilter and conformance RootEntityGestureResponderFilter()
{
  result = lazy protocol witness table cache variable for type RootEntityGestureResponderFilter and conformance RootEntityGestureResponderFilter;
  if (!lazy protocol witness table cache variable for type RootEntityGestureResponderFilter and conformance RootEntityGestureResponderFilter)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RootEntityGestureResponderFilter, &type metadata for RootEntityGestureResponderFilter, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RootEntityGestureResponderFilter and conformance RootEntityGestureResponderFilter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityGestureRule and conformance EntityGestureRule()
{
  result = lazy protocol witness table cache variable for type EntityGestureRule and conformance EntityGestureRule;
  if (!lazy protocol witness table cache variable for type EntityGestureRule and conformance EntityGestureRule)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EntityGestureRule, &unk_1EFFB59C0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EntityGestureRule and conformance EntityGestureRule);
  }

  return result;
}

void type metadata accessor for AnyGesture<()>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EmptyGesture<()> and conformance EmptyGesture<A>()
{
  result = lazy protocol witness table cache variable for type EmptyGesture<()> and conformance EmptyGesture<A>;
  if (!lazy protocol witness table cache variable for type EmptyGesture<()> and conformance EmptyGesture<A>)
  {
    type metadata accessor for AnyGesture<()>(255, &lazy cache variable for type metadata for EmptyGesture<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E697DE40]);
    result = swift_getWitnessTable(MEMORY[0x1E697DE48], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyGesture<()> and conformance EmptyGesture<A>);
  }

  return result;
}

uint64_t outlined init with copy of WeakBox<EntityGestureResponder>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [ViewResponder] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ViewResponder] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ViewResponder] and conformance [A])
  {
    type metadata accessor for WeakBox<EntityGestureResponder>(255, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [ViewResponder] and conformance [A]);
  }

  return result;
}

uint64_t outlined destroy of WeakBox<EntityGestureResponder>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

__n128 assignWithCopy for EntityGestureRule(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v2)
    {
      result.n128_f64[0] = __swift_assign_boxed_opaque_existential_1(a1, a2);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      result = *a2;
      v6 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *a1 = result;
      *(a1 + 16) = v6;
    }
  }

  else if (v2)
  {
    *(a1 + 24) = v2;
    *(a1 + 32) = *(a2 + 32);
    (**(v2 - 8))();
  }

  else
  {
    result = *a2;
    v7 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *a1 = result;
    *(a1 + 16) = v7;
  }

  return result;
}

__n128 assignWithTake for EntityGestureRule(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v3 = a1;
    __swift_destroy_boxed_opaque_existential_1(a1);
    a1 = v3;
  }

  result = *a2;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

double destroy for RootEntityGestureResponderFilter(uint64_t a1)
{

  return result;
}

uint64_t initializeWithCopy for RootEntityGestureResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v5 = *(a2 + 96);
  v4 = *(a2 + 104);
  *(a1 + 96) = v5;
  *(a1 + 104) = v4;

  v6 = v5;

  return a1;
}

uint64_t assignWithCopy for RootEntityGestureResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  v4 = *(a2 + 96);
  v5 = *(a1 + 96);
  *(a1 + 96) = v4;
  v6 = v4;

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t assignWithTake for RootEntityGestureResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t storeEnumTagSinglePayload for RootEntityGestureResponderFilter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double View.transactionalAnchorPreferenceTransform<A, B>(key:value:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v11 = type metadata accessor for TransactionalAnchorPreferenceTransformModifier(0, a6, a7, a9);

  MEMORY[0x18D00A570](v13, a5, v11, a8);

  return result;
}

uint64_t static TransactionalAnchorPreferenceTransformModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = *MEMORY[0x1E69E9840];
  v35[0] = *a2;
  *(v35 + 12) = *(a2 + 12);
  v9 = *(a2 + 28);
  v21 = *(a2 + 32);
  v10 = *(a2 + 48);
  v12 = *(a2 + 56);
  v11 = *(a2 + 60);
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  type metadata accessor for TransactionalAnchorPreferenceTransformModifier(255, a5, a6, a7);
  type metadata accessor for _GraphValue();
  *&v27[20] = *(&v35[1] + 4);
  v28 = v9;
  v29 = v21;
  v30 = v10;
  v31 = v12;
  v32 = v11;
  v33 = v19;
  v34 = v20;
  *v27 = _GraphValue.value.getter();
  *&v27[4] = _ViewInputs.animatedPosition()();
  *&v27[8] = _ViewInputs.animatedCGSize()();
  *&v27[12] = v11;
  *&v27[16] = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  FunctionTypeMetadata = swift_getFunctionTypeMetadata();
  v24 = type metadata accessor for TransactionalAnchorTransform(0, a5, a6, a7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TransactionalAnchorTransform<A, B>, v24);
  v13 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v27, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v22, v24, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  v15 = AGGraphSetFlags();
  *v27 = v35[0];
  *&v27[12] = *(v35 + 12);
  v28 = v9;
  v29 = v21;
  v30 = v10;
  v31 = v12;
  v32 = v11;
  v33 = v19;
  v34 = v20;
  a3(v15, v27);
  *v27 = v10;
  *&v27[8] = v12;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t TransactionalAnchorTransform.modifier.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for TransactionalAnchorPreferenceTransformModifier(0, a4, a5, a6);
  v6 = *AGGraphGetValue();

  return v6;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TransactionalAnchorPreferenceTransformModifier<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TransactionalAnchorPreferenceTransformModifier<A, B>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

double (*TransactionalAnchorTransform.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  AGGraphClearUpdate();
  v12 = *AGGraphGetValue();

  AGGraphSetUpdate();
  AnchorGeometry.init(position:size:transform:)();
  v13 = TransactionalAnchorTransform.modifier.getter(a1, a2, a3, a4, a5, a6);
  v15 = v14;
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  *(v18 + 32) = a6;
  *(v18 + 40) = v13;
  *(v18 + 48) = v15;
  *(v18 + 56) = v17;
  *(v18 + 64) = v20;
  *(v18 + 72) = v21;
  *(v18 + 80) = v12;
  return partial apply for closure #2 in TransactionalAnchorTransform.value.getter;
}

uint64_t (*protocol witness for Rule.value.getter in conformance TransactionalAnchorTransform<A, B>@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = TransactionalAnchorTransform.value.getter(v5, v4, v6, v7, v8, v9);
  v12 = v11;
  result = swift_allocObject();
  *(result + 2) = v7;
  *(result + 3) = v8;
  *(result + 4) = v9;
  *(result + 5) = v10;
  *(result + 6) = v12;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout B.PreferenceKey.Value) -> ();
  a2[1] = result;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance TransactionalAnchorTransform<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TransactionalAnchorTransform<A, B>, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

double partial apply for closure #2 in TransactionalAnchorTransform.value.getter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 80);
  v5 = Anchor.Source.prepare(geometry:)();
  v3(a1, v5, v4);

  return result;
}

unint64_t specialized TransactionalAnchorTransform.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(32);

  v3 = static PreferenceKey.readableName.getter();
  MEMORY[0x18D00C9B0](v3);

  return 0xD00000000000001ELL;
}

Swift::Void __swiftcall UIKitStatusBarBridge.updateStatusBar(isAnimated:shouldDefer:)(Swift::Bool isAnimated, Swift::Bool shouldDefer)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v2 + 40);
    v6 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v8 = ViewGraphDelegate.uiViewController.getter(ObjectType, *(*(v5 + 16) + 8));
    swift_unknownObjectRelease();
    swift_unknownObjectWeakInit();

    if (shouldDefer)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = isAnimated;
      *(v9 + 24) = partial apply for closure #1 in UIKitStatusBarBridge.updateStatusBar(isAnimated:shouldDefer:);
      *(v9 + 32) = v6;

      onNextMainRunLoop(do:)();
    }

    else if (isAnimated)
    {
      v10 = objc_opt_self();
      v11 = swift_allocObject();
      *(v11 + 16) = partial apply for closure #1 in UIKitStatusBarBridge.updateStatusBar(isAnimated:shouldDefer:);
      *(v11 + 24) = v6;
      v15[4] = closure #1 in update #1 () in UIKitStatusBarBridge.updateStatusBar(isAnimated:shouldDefer:)partial apply;
      v15[5] = v11;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1107296256;
      v15[2] = thunk for @escaping @callee_guaranteed () -> ();
      v15[3] = &block_descriptor_25;
      v12 = _Block_copy(v15);

      [v10 animateWithDuration:v12 animations:0.3];

      _Block_release(v12);
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;

        [v14 setNeedsStatusBarAppearanceUpdate];
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void *LayoutSubview.containerValues.getter@<X0>(void *a1@<X8>)
{
  result = LayoutProxy.traits.getter();
  if (v3)
  {
    *a1 = v3;
  }

  else
  {

    return MEMORY[0x1EEDDF020](result);
  }

  return result;
}

__n128 DefaultToolbarItem.init(kind:placement:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  v3 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  result = *(a2 + 25);
  *(a3 + 33) = result;
  return result;
}

uint64_t DefaultToolbarItem.body.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = (v1 + 8);
  v4 = *v1;
  result = outlined init with copy of ToolbarItemPlacement(v3, (a1 + 8));
  *a1 = v4;
  return result;
}

uint64_t static DefaultToolbarItem.InternalContent._makeToolbar(content:inputs:)@<X0>(int *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v5 = a2[3];
  v16 = a2[2];
  v17[0] = v5;
  *(v17 + 12) = *(a2 + 60);
  v6 = a2[1];
  v15[0] = *a2;
  v15[1] = v6;
  v11 = v16;
  *v12 = a2[3];
  *&v12[12] = *(a2 + 60);
  v7 = *a1;
  v9 = v15[0];
  v10 = v4;
  outlined init with copy of _ToolbarInputs(v15, v18);
  PreferenceKeys.remove(_:)();
  LODWORD(v18[0]) = v7;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ToolbarItem<(), _UnaryViewAdaptor<EmptyView>>(0, &lazy cache variable for type metadata for ToolbarItem<(), _UnaryViewAdaptor<EmptyView>>, type metadata accessor for ToolbarItem);
  lazy protocol witness table accessor for type DefaultToolbarItem.InternalContent.MakeToolbarItem and conformance DefaultToolbarItem.InternalContent.MakeToolbarItem();
  Attribute.init<A>(body:value:flags:update:)();
  v13[2] = v11;
  v14[0] = *v12;
  *(v14 + 12) = *&v12[12];
  v13[0] = v9;
  v13[1] = v10;
  _s7SwiftUI11ToolbarItemV05_makeC07content6inputsAA01_C7OutputsVAA11_GraphValueVyACyxq_GG_AA01_C6InputsVtFZyt_AA17_UnaryViewAdaptorVyAA05EmptyM0VGTt2B5(v13, a3);

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v18[2] = v11;
  v19[0] = *v12;
  *(v19 + 12) = *&v12[12];
  v18[0] = v9;
  v18[1] = v10;
  return outlined destroy of _ToolbarInputs(v18);
}

uint64_t implicit closure #1 in static DefaultToolbarItem.InternalContent._makeToolbar(content:inputs:)(int a1)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type DefaultToolbarItem.InternalContent.WriteSearchColumn and conformance DefaultToolbarItem.InternalContent.WriteSearchColumn();
  return Attribute.init<A>(body:value:flags:update:)();
}

__n128 DefaultToolbarItem.InternalContent.MakeToolbarItem.value.getter@<Q0>(uint64_t a2@<X8>)
{
  Value = AGGraphGetValue();
  outlined init with copy of DefaultToolbarItem.InternalContent(Value, v8);
  v6 = v9;
  *v7 = v10[0];
  *&v7[9] = *(v10 + 9);
  if (*AGGraphGetValue() == 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 5;
  }

  *a2 = v6;
  *(a2 + 16) = *v7;
  result = *&v7[9];
  *(a2 + 25) = *&v7[9];
  *(a2 + 41) = 1;
  *(a2 + 43) = v4;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance DefaultToolbarItem.InternalContent.MakeToolbarItem@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 512;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance DefaultToolbarItem.InternalContent.WriteSearchColumn@<X0>(BOOL *a1@<X8>)
{
  Value = AGGraphGetValue();
  outlined init with copy of DefaultToolbarItem.InternalContent(Value, v5);
  v3 = v5[0];
  result = outlined destroy of DefaultToolbarItem.InternalContent(v5);
  *a1 = v3 == 3;
  return result;
}

uint64_t protocol witness for ToolbarContent.body.getter in conformance DefaultToolbarItem@<X0>(_BYTE *a1@<X8>)
{
  v3 = (v1 + 8);
  v4 = *v1;
  result = outlined init with copy of ToolbarItemPlacement(v3, (a1 + 8));
  *a1 = v4;
  return result;
}

__n128 initializeWithCopy for DefaultToolbarItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 48) == 1)
  {
    v2 = *(a2 + 32);
    *(a1 + 32) = v2;
    (**(v2 - 8))(a1 + 8, a2 + 8);
    *(a1 + 48) = 1;
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v5;
    result = *(a2 + 33);
    *(a1 + 33) = result;
  }

  return result;
}

uint64_t assignWithCopy for DefaultToolbarItem(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 8);
  *a1 = *a2;
  v4 = (a1 + 8);
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1 + 8);
    if (*(a2 + 48) == 1)
    {
      v6 = *(a2 + 32);
      *(a1 + 32) = v6;
      *(a1 + 40) = *(a2 + 40);
      (**(v6 - 8))(v4, v3);
      *(a1 + 48) = 1;
    }

    else
    {
      v7 = *v3;
      v8 = v3[1];
      *(v4 + 25) = *(v3 + 25);
      *v4 = v7;
      v4[1] = v8;
    }
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for DefaultToolbarItem(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultToolbarItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t _s7SwiftUI11ToolbarItemV05_makeC07content6inputsAA01_C7OutputsVAA11_GraphValueVyACyxq_GG_AA01_C6InputsVtFZyt_AA17_UnaryViewAdaptorVyAA05EmptyM0VGTt2B5@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  LODWORD(v29[0]) = AGGraphCreateOffsetAttribute2();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>>(0);
  type metadata accessor for ToolbarItem<(), _UnaryViewAdaptor<EmptyView>>.MakeView(0);
  lazy protocol witness table accessor for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), _UnaryViewAdaptor<EmptyView>>.MakeView and conformance ToolbarItem<A, B>.MakeView, type metadata accessor for ToolbarItem<(), _UnaryViewAdaptor<EmptyView>>.MakeView, protocol conformance descriptor for ToolbarItem<A, B>.MakeView);
  v16 = Attribute.init<A>(body:value:flags:update:)();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v5 = a2[1];
  v31 = *a2;
  v32 = v5;
  v7 = *a2;
  v6 = a2[1];
  v33 = a2[2];
  v23 = v7;
  v24 = v6;
  v25 = a2[2];
  outlined init with copy of _GraphInputs(&v31, v29);
  _ViewListInputs.init(_:)();
  if ((~v30 & 0xC) != 0)
  {
    v30 |= 0xCuLL;
  }

  type metadata accessor for SubscriptionLifetime<ObservableObjectPublisher>(0, &lazy cache variable for type metadata for SubscriptionLifetime<ObservableObjectPublisher>, MEMORY[0x1E697FA78]);
  swift_allocObject();
  outlined init with copy of _GraphInputs(&v31, &v23);
  v8 = SubscriptionLifetime.init()();
  v9 = Attribute.init<A>(body:value:flags:update:)();
  v23 = v31;
  v24 = v32;
  v25 = v33;
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  AGCreateWeakAttribute();
  type metadata accessor for SubscriptionLifetime<ObservableObjectPublisher>(0, &lazy cache variable for type metadata for AttributeInvalidatingSubscriber<ObservableObjectPublisher>, MEMORY[0x1E6980A48]);
  swift_allocObject();
  v10 = AttributeInvalidatingSubscriber.init(host:attribute:)();
  *&v21[0] = __PAIR64__(v9, OffsetAttribute2);
  *(&v21[2] + 8) = v25;
  *(&v21[1] + 8) = v24;
  *(v21 + 8) = v23;
  *(&v21[3] + 1) = v10;
  v22 = v8;
  v25 = v21[2];
  v26 = v21[3];
  *&v27 = v8;
  v23 = v21[0];
  v24 = v21[1];
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of ToolbarPlacementEnvironment(v21, v20);
  lazy protocol witness table accessor for type ToolbarPlacementEnvironment and conformance ToolbarPlacementEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ToolbarPlacementEnvironment(v21);
  _GraphInputs.environment.setter();
  LODWORD(v20[0]) = v16;
  lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
  static View.makeDebuggableViewList(view:inputs:)();
  v11 = _ViewListOutputs.makeAttribute(inputs:)();
  outlined destroy of ToolbarPlacementEnvironment(v21);
  outlined destroy of _ViewListOutputs(&v23);
  outlined destroy of _ViewListInputs(v29);
  outlined init with copy of _ToolbarInputs(a2, &v23);
  _s7SwiftUI18ToolbarMakeEntriesV9placement11toolbarItem8viewList6inputsAC14AttributeGraph0L0VyAA0cH9PlacementVG_AJyAA0cH0Vyxq_GGAJyAA04ViewJ0_pGAA01_C6InputsVtcAA0O0R_r0_lufCyt_AA06_UnaryO7AdaptorVyAA05EmptyO0VGTt4B5(OffsetAttribute2, v11, a2, &v23);
  v20[2] = v25;
  v20[3] = v26;
  v20[4] = v27;
  v20[5] = v28;
  v20[0] = v23;
  v20[1] = v24;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of ToolbarMakeEntries(&v23, &v18);
  type metadata accessor for [ToolbarStorage.Entry](0);
  lazy protocol witness table accessor for type ToolbarMakeEntries and conformance ToolbarMakeEntries();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ToolbarMakeEntries(&v23);
  *&v20[0] = *(a2 + 6);
  DWORD2(v20[0]) = *(a2 + 14);
  v12 = *(a2 + 8) + 1;
  outlined init with copy of PreferencesInputs(v20, &v18);
  v13 = PreferencesOutputs.init()();
  v14 = v19;
  *a3 = v18;
  *(a3 + 8) = v14;
  *(a3 + 16) = v12;
  v18 = *&v20[0];
  v19 = DWORD2(v20[0]);
  MEMORY[0x1EEE9AC00](v13);
  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  outlined destroy of ToolbarMakeEntries(&v23);
}

uint64_t _s7SwiftUI18ToolbarMakeEntriesV9placement11toolbarItem8viewList6inputsAC14AttributeGraph0L0VyAA0cH9PlacementVG_AJyAA0cH0Vyxq_GGAJyAA04ViewJ0_pGAA01_C6InputsVtcAA0O0R_r0_lufCyt_AA06_UnaryO7AdaptorVyAA05EmptyO0VGTt4B5@<X0>(int a1@<W0>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AGGraphCreateOffsetAttribute2();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v24 = *(a4 + 72);
  v22 = *(a4 + 24);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _sSSSgMaTm_1(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  _sSSSgMaTm_1(0, &lazy cache variable for type metadata for ToString<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for ToString);
  lazy protocol witness table accessor for type ToString<()> and conformance ToString<A>();
  v21 = Attribute.init<A>(body:value:flags:update:)();
  if (one-time initialization token for toolbarTransitionIdentifier != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarMatchedTransitionIdentifier != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _sSSSgMaTm_1(0, &lazy cache variable for type metadata for MatchedTransitionIdentifier?, &type metadata for MatchedTransitionIdentifier, MEMORY[0x1E69E6720]);
  v19 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v18 = AGGraphCreateOffsetAttribute2();
  v7 = AGGraphCreateOffsetAttribute2();
  if (one-time initialization token for toolbarCustomizationBehavior != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarItemContainerTint != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _sSSSgMaTm_1(0, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
  v9 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarCustomizationVisibility != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarItemIsHidden != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarItemPlatterVisibility != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _sSSSgMaTm_1(0, &lazy cache variable for type metadata for Visibility?, MEMORY[0x1E697DB50], MEMORY[0x1E69E6720]);
  v12 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for toolbarCustomizationOptions != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v14 = AGSubgraphGetCurrent();
  if (!v14)
  {
    __break(1u);
  }

  v15 = v14;
  result = outlined destroy of _ToolbarInputs(a4);
  v17 = *(a4 + 64);
  *a5 = a1;
  *(a5 + 4) = OffsetAttribute2;
  *(a5 + 8) = a3;
  *(a5 + 12) = v24;
  *(a5 + 16) = v22;
  *(a5 + 20) = 0;
  *(a5 + 24) = v21;
  *(a5 + 28) = v20;
  *(a5 + 32) = v19;
  *(a5 + 36) = v18;
  *(a5 + 40) = v8;
  *(a5 + 44) = v9;
  *(a5 + 48) = v10;
  *(a5 + 52) = v11;
  *(a5 + 56) = v12;
  *(a5 + 60) = v13;
  *(a5 + 64) = v7;
  *(a5 + 72) = v15;
  *(a5 + 80) = v17;
  *(a5 + 88) = 0;
  return result;
}

void type metadata accessor for _UnaryViewAdaptor<EmptyView>()
{
  if (!lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>)
  {
    v0 = type metadata accessor for _UnaryViewAdaptor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultToolbarItem.InternalContent.MakeToolbarItem and conformance DefaultToolbarItem.InternalContent.MakeToolbarItem()
{
  result = lazy protocol witness table cache variable for type DefaultToolbarItem.InternalContent.MakeToolbarItem and conformance DefaultToolbarItem.InternalContent.MakeToolbarItem;
  if (!lazy protocol witness table cache variable for type DefaultToolbarItem.InternalContent.MakeToolbarItem and conformance DefaultToolbarItem.InternalContent.MakeToolbarItem)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultToolbarItem.InternalContent.MakeToolbarItem, &type metadata for DefaultToolbarItem.InternalContent.MakeToolbarItem, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultToolbarItem.InternalContent.MakeToolbarItem and conformance DefaultToolbarItem.InternalContent.MakeToolbarItem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultToolbarItem.InternalContent.WriteSearchColumn and conformance DefaultToolbarItem.InternalContent.WriteSearchColumn()
{
  result = lazy protocol witness table cache variable for type DefaultToolbarItem.InternalContent.WriteSearchColumn and conformance DefaultToolbarItem.InternalContent.WriteSearchColumn;
  if (!lazy protocol witness table cache variable for type DefaultToolbarItem.InternalContent.WriteSearchColumn and conformance DefaultToolbarItem.InternalContent.WriteSearchColumn)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DefaultToolbarItem.InternalContent.WriteSearchColumn, &type metadata for DefaultToolbarItem.InternalContent.WriteSearchColumn, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultToolbarItem.InternalContent.WriteSearchColumn and conformance DefaultToolbarItem.InternalContent.WriteSearchColumn);
  }

  return result;
}

uint64_t outlined destroy of DefaultToolbarItem.InternalContent(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1((result + 8));
    return v1;
  }

  return result;
}

void type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>>)
  {
    type metadata accessor for _UnaryViewAdaptor<EmptyView>();
    type metadata accessor for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ToolbarItem<(), _UnaryViewAdaptor<EmptyView>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for _UnaryViewAdaptor<EmptyView>();
    v7 = v6;
    v8 = lazy protocol witness table accessor for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>, type metadata accessor for _UnaryViewAdaptor<EmptyView>, MEMORY[0x1E697F380]);
    v9 = a3(a1, MEMORY[0x1E69E7CA8] + 8, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<EmptyView> and conformance _UnaryViewAdaptor<A>, type metadata accessor for _UnaryViewAdaptor<EmptyView>, MEMORY[0x1E697F380]);
    v5[1] = lazy protocol witness table accessor for type StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<EmptyView>, StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToString<()> and conformance ToString<A>()
{
  result = lazy protocol witness table cache variable for type ToString<()> and conformance ToString<A>;
  if (!lazy protocol witness table cache variable for type ToString<()> and conformance ToString<A>)
  {
    _sSSSgMaTm_1(255, &lazy cache variable for type metadata for ToString<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for ToString);
    result = swift_getWitnessTable(protocol conformance descriptor for ToString<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToString<()> and conformance ToString<A>);
  }

  return result;
}

uint64_t static TableRow._makeRows(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 136);
  v8 = *(a2 + 144);
  v9 = *(a2 + 148);
  PreferencesOutputs.init()();
  type metadata accessor for TableRow(255, a3, a4, v10);
  type metadata accessor for _GraphValue();
  LODWORD(v15) = _GraphValue.value.getter();
  HIDWORD(v15) = v9;
  List = type metadata accessor for TableRow.MakeList(0, a3, a4, v11);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableRow<A>.MakeList, List, v15);
  type metadata accessor for Attribute<TableRowList>(0, &lazy cache variable for type metadata for Attribute<TableRowList>, &type metadata for TableRowList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v15, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_11, v19, List, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  v15 = v7;
  v16 = v8;
  v18 = v17;
  return PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

uint64_t TableRow.MakeList.tableRow.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for TableRow(0, a2, a3, a4);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a5, Value, v6);
}

void TableRow.MakeList.traits.getter(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    v3 = 0;
  }

  else
  {
    AGGraphGetValue();
  }

  *a2 = v3;
}

uint64_t TableRow.MakeList.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TableRow(0, v11, v12, v13);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v24 - v15;
  TableRow.MakeList.tableRow.getter(a2, a3, v17, &v24 - v15);
  v18 = *(v8 + 32);
  v18(v10, v16, a2);
  TableRow.MakeList.traits.getter(a1, &v25);
  v19 = v25;
  v21 = type metadata accessor for TableRow.Generator(0, a2, a3, v20);
  a4[3] = v21;
  a4[4] = &protocol witness table for TableRow<A>.Generator;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  result = (v18)(boxed_opaque_existential_1, v10, a2);
  *(boxed_opaque_existential_1 + *(v21 + 36)) = v19;
  return result;
}

uint64_t TableRow.Generator.visitRows<A>(applying:from:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v23[0] = a4;
  v23[1] = a1;
  v10 = *(a3 + 16);
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v15 = v23 - v14;
  v16 = *(v10 - 8);
  (*(v16 + 16))(v23 - v14, v6, v10, v13);
  (*(v16 + 56))(v15, 0, 1, v10);
  v28 = 1;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v17 = *(v6 + *(a3 + 36));
  if (v17)
  {
    v25 = *(v6 + *(a3 + 36));
    v18 = v17;
  }

  else
  {
    ViewTraitCollection.init()();
    v18 = v25;
  }

  v24 = v18;
  v19 = *(a5 + 8);
  v20 = *(a3 + 24);

  v21 = v19(v15, &v28, v26, &v24, v10, MEMORY[0x1E6981E70], v20, MEMORY[0x1E6981E60], v23[0], a5);

  outlined destroy of TableRowList?(v26);
  result = (*(v12 + 8))(v15, v11);
  if (__OFADD__(*a2, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a2;
    return v21 & 1;
  }

  return result;
}

uint64_t TableRow.Generator.rowIDs.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = &v10[-v3 - 16];
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  _convertToAnyHashable<A>(_:)();
  (*(v2 + 8))(v4, AssociatedTypeWitness);
  v10[24] = 1;
  type metadata accessor for Attribute<TableRowList>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TableRowID>, &type metadata for TableRowID, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  v6 = v9;
  v7 = *v10;
  v5[1] = xmmword_18CD63400;
  v5[2] = v6;
  v5[3] = v7;
  *(v5 + 57) = *&v10[9];
  type metadata accessor for WrappedTableRowIDs<[TableRowID]>(0);
  result = swift_allocObject();
  *(result + 16) = v5;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TableRow<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for TableRow<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for TableRow.Generator(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for WrappedTableRowIDs<[TableRowID]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for WrappedTableRowIDs<[TableRowID]>)
  {
    type metadata accessor for Attribute<TableRowList>(255, &lazy cache variable for type metadata for [TableRowID], &type metadata for TableRowID, MEMORY[0x1E69E62F8]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type [TableRowID] and conformance [A]();
    v6 = type metadata accessor for WrappedTableRowIDs(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for WrappedTableRowIDs<[TableRowID]>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [TableRowID] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [TableRowID] and conformance [A];
  if (!lazy protocol witness table cache variable for type [TableRowID] and conformance [A])
  {
    type metadata accessor for Attribute<TableRowList>(255, &lazy cache variable for type metadata for [TableRowID], &type metadata for TableRowID, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6338], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [TableRowID] and conformance [A]);
  }

  return result;
}

uint64_t outlined destroy of TableRowList?(uint64_t a1)
{
  type metadata accessor for Attribute<TableRowList>(0, &lazy cache variable for type metadata for TableRowList?, &type metadata for TableRowList, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Attribute<TableRowList>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _TypeSelectEquivalentTableRowModifier.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of Text?(v2, v3, v4, v5);
}

uint64_t protocol witness for _TableRowContentModifier.body.getter in conformance _TypeSelectEquivalentTableRowModifier@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of Text?(v2, v3, v4, v5);
}

unint64_t lazy protocol witness table accessor for type _TypeSelectEquivalentTableRowModifier and conformance _TypeSelectEquivalentTableRowModifier()
{
  result = lazy protocol witness table cache variable for type _TypeSelectEquivalentTableRowModifier and conformance _TypeSelectEquivalentTableRowModifier;
  if (!lazy protocol witness table cache variable for type _TypeSelectEquivalentTableRowModifier and conformance _TypeSelectEquivalentTableRowModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _TypeSelectEquivalentTableRowModifier, &type metadata for _TypeSelectEquivalentTableRowModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TypeSelectEquivalentTableRowModifier and conformance _TypeSelectEquivalentTableRowModifier);
  }

  return result;
}

uint64_t TableRowContent.typeSelectEquivalent(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11 & 1;
  TableRowContent.typeSelectEquivalent(_:)(v8, v9, v11 & 1, v13, a5, a6);
  outlined consume of Text.Storage(v8, v10, v12);
}

{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  outlined copy of Text?(a1, a2, a3, a4);
  lazy protocol witness table accessor for type _TypeSelectEquivalentTableRowModifier and conformance _TypeSelectEquivalentTableRowModifier();
  TableRowContent.modifier<A>(_:)(&v8, a5, &type metadata for _TypeSelectEquivalentTableRowModifier);
  return outlined consume of Text?(v8, v9, v10, v11);
}

uint64_t TableRowContent.typeSelectEquivalent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13 & 1;
  TableRowContent.typeSelectEquivalent(_:)(v10, v11, v13 & 1, v15, a2, a4);
  outlined consume of Text.Storage(v10, v12, v14);
}

{
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in TableRowContent.typeSelectEquivalent<A>(_:), v13, MEMORY[0x1E69E73E0], MEMORY[0x1E6981148], v7, &v14);
  v8 = v14;
  v9 = v15;
  v10 = v16;
  v11 = v17;
  TableRowContent.typeSelectEquivalent(_:)(v14, v15, v16, v17, a2, a4);
  return outlined consume of Text?(v8, v9, v10, v11);
}

uint64_t TypeSelectHost.as<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  if (type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for ViewGraphOwner, MEMORY[0x1E697E590]) == a1)
  {
    v9 = v3;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TypeSelectHost<A>, v6);
    v3 = *(a1 - 8);
    if (v3[8] == 16)
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_8:
    result = swift_getWitnessTable(protocol conformance descriptor for TypeSelectHost<A>, v6, v9, WitnessTable);
    v9 = v3;
    WitnessTable = result;
    v3 = *(a1 - 8);
    if (v3[8] != 16)
    {
      __break(1u);
      return result;
    }

LABEL_9:
    (v3[2])(a2, &v9, a1);
    return (v3[7])(a2, 0, 1, a1);
  }

  if (type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for ViewGraphDelegate, MEMORY[0x1E697F308]) == a1)
  {
    goto LABEL_8;
  }

  v7 = *(*(a1 - 8) + 56);

  return v7(a2, 1, 1, a1);
}

Swift::Void __swiftcall TypeSelectHost.updateRootView()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(v2 - 8);
  v4 = (MEMORY[0x1EEE9AC00])();
  v6 = &v7 - v5;
  (*(v3 + 16))(&v7 - v5, v0 + *(v1 + 136), v2, v4);
  ViewGraph.setRootView<A>(_:)();
  (*(v3 + 8))(v6, v2);
}

Swift::Void __swiftcall TypeSelectHost.updateEnvironment()()
{

  GraphHost.setEnvironment(_:)();
}

char *TypeSelectHost.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 136));

  return v0;
}

double TypeSelectHost.__deallocating_deinit()
{
  TypeSelectHost.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t protocol witness for ViewRendererHost.responderNode.getter in conformance TypeSelectHost<A>()
{
  swift_getWitnessTable(protocol conformance descriptor for TypeSelectHost<A>, *v0);

  return ViewGraphRootValueUpdater.responderNode.getter();
}

double protocol witness for ViewGraphOwner.currentTimestamp.getter in conformance TypeSelectHost<A>@<D0>(double *a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 32);
  *a1 = result;
  return result;
}

void protocol witness for ViewGraphOwner.currentTimestamp.setter in conformance TypeSelectHost<A>(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 32) = v2;
}

void protocol witness for ViewGraphOwner.renderingPhase.setter in conformance TypeSelectHost<A>(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 26) = v2;
}

uint64_t protocol witness for GraphDelegate.updateGraph<A>(body:) in conformance TypeSelectHost<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for TypeSelectHost<A>, *v3);

  return ViewGraphRootValueUpdater.updateGraph<A>(body:)();
}

void protocol witness for GraphDelegate.graphDidChange() in conformance TypeSelectHost<A>()
{
  swift_getWitnessTable(protocol conformance descriptor for TypeSelectHost<A>, *v0);

  ViewGraphRootValueUpdater.graphDidChange()();
}

uint64_t View.typeSelectEquivalent(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    v7 = Text.init(_:tableName:bundle:comment:)();
    v9 = v8;
    v11 = v10 & 1;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v11 = 0;
    v6 = 0;
  }

  v12 = v6;
  View._trait<A>(_:_:)();
  return outlined consume of Text?(v7, v9, v11, v12);
}

uint64_t View.typeSelectEquivalent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.typeSelectEquivalent<A>(_:), v11, MEMORY[0x1E69E73E0], MEMORY[0x1E6981148], v5, &v12);
  v6 = v12;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  View._trait<A>(_:_:)();
  return outlined consume of Text?(v6, v7, v8, v9);
}

uint64_t TableRowContent.typeSelectEquivalent(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v6 = a6;
    v7 = a5;

    v8 = Text.init(_:tableName:bundle:comment:)();
    a5 = v7;
    a6 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14 & 1;
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v15 = 0;
    v13 = 0;
  }

  TableRowContent.typeSelectEquivalent(_:)(v9, v11, v15, v13, a5, a6);

  return outlined consume of Text?(v9, v11, v15, v13);
}

uint64_t closure #1 in View.typeSelectEquivalent<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = Text.init<A>(_:)();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t destroy for _TypeSelectEquivalentTableRowModifier(uint64_t result)
{
  if (*(result + 24))
  {
    outlined consume of Text.Storage(*result, *(result + 8), *(result + 16));
  }

  return result;
}

__n128 initializeWithCopy for _TypeSelectEquivalentTableRowModifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *a2;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v4, v5);
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v2;
  }

  else
  {
    result = *a2;
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
  }

  return result;
}

uint64_t assignWithCopy for _TypeSelectEquivalentTableRowModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      v7 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v6, v7);
      v8 = *a1;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Text(a1);
      v14 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v14;
    }
  }

  else if (v4)
  {
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v12, v13);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
  }

  return a1;
}

_OWORD *assignWithTake for _TypeSelectEquivalentTableRowModifier(_OWORD *result, uint64_t a2)
{
  if (*(result + 3))
  {
    v2 = *(a2 + 24);
    if (v2)
    {
      v3 = *(a2 + 16);
      v4 = *result;
      v5 = *(result + 1);
      v6 = *(result + 16);
      *result = *a2;
      *(result + 16) = v3;
      v7 = result;
      outlined consume of Text.Storage(v4, v5, v6);
      *(v7 + 24) = v2;

      return v7;
    }

    else
    {
      v9 = result;
      outlined destroy of Text(result);
      v11 = *(a2 + 16);
      *v9 = *a2;
      v9[1] = v11;
      return v9;
    }
  }

  else
  {
    v8 = *(a2 + 16);
    *result = *a2;
    result[1] = v8;
  }

  return result;
}

uint64_t type metadata completion function for TypeSelectHost(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata accessor for _TraitWritingModifier<TypeSelectEquivalentKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<TypeSelectEquivalentKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<TypeSelectEquivalentKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<TypeSelectEquivalentKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<TypeSelectEquivalentKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<TypeSelectEquivalentKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<TypeSelectEquivalentKey>();
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<TypeSelectEquivalentKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t PhoneIdiomGroupBoxStyle.makeBody(configuration:)(double a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = static HorizontalAlignment.center.getter();
  v7 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  if (specialized Environment.wrappedValue.getter(a3, a4 & 1))
  {
    v9 = 0;
  }

  else
  {
    v9 = static Edge.Set.all.getter();
  }

  v23 = 1;
  v22 = 1;
  LOBYTE(v16) = 1;
  WORD4(v16) = 768;
  *&v17 = KeyPath;
  *(&v17 + 1) = v7;
  v18[0] = v9;
  memset(&v18[8], 0, 32);
  v18[40] = 1;
  __asm { FMOV            V0.2D, #8.0 }

  *v19 = _Q0;
  *&v19[16] = 1;
  v19[18] = 1;
  Spacing.init()();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>>(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>> and conformance <> ModifiedContent<A, B>();
  View.spacing(_:)();

  v20[4] = *&v18[16];
  v20[5] = *&v18[32];
  v21[0] = *v19;
  *(v21 + 15) = *&v19[15];
  v20[0] = v6;
  v20[1] = v16;
  v20[2] = v17;
  v20[3] = *v18;
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>>(v20);
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>(255);
    type metadata accessor for ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>(255, &lazy cache variable for type metadata for StyleContextWriter<ContainerStyleContext>, MEMORY[0x1E697FBF0], MEMORY[0x1E697FBE8], MEMORY[0x1E697F4C8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>)
  {
    type metadata accessor for ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>(255);
    type metadata accessor for _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>)
  {
    type metadata accessor for VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>);
    }
  }
}

void type metadata accessor for VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>, type metadata accessor for (ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)> and conformance TupleView<A>();
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>);
    }
  }
}

void type metadata accessor for (ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>(255, &lazy cache variable for type metadata for ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, &type metadata for GroupBoxStyleConfiguration.Label, MEMORY[0x1E697EBB0], MEMORY[0x1E697E830]);
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, type metadata accessor for Font?, MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for Font?()
{
  if (!lazy cache variable for type metadata for Font?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Font?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>, type metadata accessor for (ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content), MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable(MEMORY[0x1E6981F48], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)> and conformance TupleView<A>);
  }

  return result;
}

void type metadata accessor for _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>)
  {
    lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle();
    v1 = type metadata accessor for _InsettableBackgroundShapeModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>);
    }
  }
}

void type metadata accessor for ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StyleContextWriter<ContainerStyleContext> and conformance StyleContextWriter<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle> and conformance _InsettableBackgroundShapeModifier<A, B>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle> and conformance _InsettableBackgroundShapeModifier<A, B>, type metadata accessor for _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle> and conformance _InsettableBackgroundShapeModifier<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, MEMORY[0x1E6981870]);
    v5[1] = MEMORY[0x1E697E5D8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle> and conformance _InsettableBackgroundShapeModifier<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<GroupBoxStyleConfiguration.Label, _AlignmentLayout>, _EnvironmentKeyWritingModifier<Font?>>, GroupBoxStyleConfiguration.Content)>>, _PaddingLayout>, _InsettableBackgroundShapeModifier<BackgroundStyle, RoundedRectangle>>, StyleContextWriter<ContainerStyleContext>>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double destroy for AccessibilityStepperModifier(uint64_t a1)
{
  if (*a1)
  {
  }

  if (*(a1 + 40))
  {
  }

  if (*(a1 + 56))
  {
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityStepperModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    *a1 = v4;
    *(a1 + 8) = v5;
    v7 = *(a2 + 24);
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
  }

  else
  {
    v12 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v12;
  }

  v13 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  if (v13)
  {
    v14 = *(a2 + 48);
    *(a1 + 40) = v13;
    *(a1 + 48) = v14;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
  }

  v15 = *(a2 + 56);
  if (v15)
  {
    v16 = *(a2 + 64);
    *(a1 + 56) = v15;
    *(a1 + 64) = v16;
  }

  else
  {
    *(a1 + 56) = *(a2 + 56);
  }

  *(a1 + 72) = *(a2 + 72);
  v17 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v17;

  return a1;
}

uint64_t assignWithCopy for AccessibilityStepperModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (v5)
    {
      *a1 = v5;
      v6 = v5;

      v7 = *(a1 + 8);
      v8 = *(a2 + 8);
      *(a1 + 8) = v8;
      v9 = v8;

      v10 = *(a1 + 16);
      v11 = *(a2 + 16);
      *(a1 + 16) = v11;
      v12 = v11;

      v13 = *(a1 + 24);
      v14 = *(a2 + 24);
      *(a1 + 24) = v14;
      v15 = v14;
    }

    else
    {
      outlined destroy of AccessibilityStepperValue(a1);
      v23 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v23;
    }
  }

  else if (v5)
  {
    *a1 = v5;
    v16 = *(a2 + 8);
    *(a1 + 8) = v16;
    v17 = *(a2 + 16);
    *(a1 + 16) = v17;
    v18 = *(a2 + 24);
    *(a1 + 24) = v18;
    v19 = v5;
    v20 = v16;
    v21 = v17;
    v22 = v18;
  }

  else
  {
    v24 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v24;
  }

  v25 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  v26 = *(a2 + 40);
  if (v25)
  {
    if (v26)
    {
      v27 = *(a2 + 48);
      *(a1 + 40) = v26;
      *(a1 + 48) = v27;

      goto LABEL_15;
    }
  }

  else if (v26)
  {
    v28 = *(a2 + 48);
    *(a1 + 40) = v26;
    *(a1 + 48) = v28;

    goto LABEL_15;
  }

  *(a1 + 40) = *(a2 + 40);
LABEL_15:
  v29 = *(a2 + 56);
  if (!*(a1 + 56))
  {
    if (v29)
    {
      v31 = *(a2 + 64);
      *(a1 + 56) = v29;
      *(a1 + 64) = v31;

      goto LABEL_22;
    }

LABEL_21:
    *(a1 + 56) = *(a2 + 56);
    goto LABEL_22;
  }

  if (!v29)
  {

    goto LABEL_21;
  }

  v30 = *(a2 + 64);
  *(a1 + 56) = v29;
  *(a1 + 64) = v30;

LABEL_22:
  v32 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v32;

  v33 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v33;

  return a1;
}

uint64_t assignWithTake for AccessibilityStepperModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (*a2)
    {
      *a1 = *a2;

      v5 = *(a1 + 8);
      *(a1 + 8) = *(a2 + 8);

      v6 = *(a1 + 16);
      *(a1 + 16) = *(a2 + 16);

      v7 = *(a1 + 24);
      *(a1 + 24) = *(a2 + 24);

      goto LABEL_6;
    }

    outlined destroy of AccessibilityStepperValue(a1);
  }

  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
LABEL_6:
  v9 = *(a2 + 40);
  v10 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  if (v10)
  {
    if (v9)
    {
      v11 = *(a2 + 48);
      *(a1 + 40) = v9;
      *(a1 + 48) = v11;

      goto LABEL_13;
    }
  }

  else if (v9)
  {
    v12 = *(a2 + 48);
    *(a1 + 40) = v9;
    *(a1 + 48) = v12;
    goto LABEL_13;
  }

  *(a1 + 40) = *(a2 + 40);
LABEL_13:
  v13 = *(a2 + 56);
  if (!*(a1 + 56))
  {
    if (v13)
    {
      v15 = *(a2 + 64);
      *(a1 + 56) = v13;
      *(a1 + 64) = v15;
      goto LABEL_20;
    }

LABEL_19:
    *(a1 + 56) = *(a2 + 56);
    goto LABEL_20;
  }

  if (!v13)
  {

    goto LABEL_19;
  }

  v14 = *(a2 + 64);
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;

LABEL_20:
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityStepperModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityStepperModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for AccessibilityLinkModifier(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkDestination();
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v24 = *a2;
    *a1 = *a2;
    a1 = v24 + ((v5 + 16) & ~v5);
  }

  else
  {
    v6 = v4;
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    v11 = *(a2 + 34);
    v12 = *(a2 + 32);
    outlined copy of Environment<OpenURLAction>.Content(*a2, v8, v9, v10, v12, v11);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
    *(a1 + 34) = v11;
    v13 = *(a2 + 40);
    v14 = *(a2 + 48);
    v15 = *(a2 + 56);
    v16 = *(a2 + 64);
    v17 = *(a2 + 74);
    v18 = *(a2 + 72);
    outlined copy of Environment<OpenURLAction>.Content(v13, v14, v15, v16, v18, v17);
    *(a1 + 40) = v13;
    *(a1 + 48) = v14;
    *(a1 + 56) = v15;
    *(a1 + 64) = v16;
    *(a1 + 72) = v18;
    *(a1 + 74) = v17;
    v19 = *(v6 + 24);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v22 = type metadata accessor for URL();
    (*(*(v22 - 8) + 16))(v20, v21, v22);
    v23 = type metadata accessor for LinkDestination.Configuration();
    *(v20 + *(v23 + 20)) = *(v21 + *(v23 + 20));
  }

  return a1;
}

uint64_t assignWithCopy for AccessibilityLinkModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 34);
  v9 = *(a2 + 32);
  outlined copy of Environment<OpenURLAction>.Content(*a2, v5, v6, v7, v9, v8);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 34);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v15 = *(a1 + 32);
  *(a1 + 32) = v9;
  *(a1 + 34) = v8;
  outlined consume of Environment<OpenURLAction>.Content(v10, v11, v12, v13, v15, v14);
  v16 = *(a2 + 40);
  v17 = *(a2 + 48);
  v18 = *(a2 + 56);
  v19 = *(a2 + 64);
  v20 = *(a2 + 74);
  v21 = *(a2 + 72);
  outlined copy of Environment<OpenURLAction>.Content(v16, v17, v18, v19, v21, v20);
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  v24 = *(a1 + 56);
  v25 = *(a1 + 64);
  v26 = *(a1 + 74);
  *(a1 + 40) = v16;
  *(a1 + 48) = v17;
  *(a1 + 56) = v18;
  *(a1 + 64) = v19;
  v27 = *(a1 + 72);
  *(a1 + 72) = v21;
  *(a1 + 74) = v20;
  outlined consume of Environment<OpenURLAction>.Content(v22, v23, v24, v25, v27, v26);
  v28 = *(type metadata accessor for LinkDestination() + 24);
  v29 = a1 + v28;
  v30 = a2 + v28;
  v31 = type metadata accessor for URL();
  (*(*(v31 - 8) + 24))(v29, v30, v31);
  v32 = type metadata accessor for LinkDestination.Configuration();
  *(v29 + *(v32 + 20)) = *(v30 + *(v32 + 20));
  return a1;
}

uint64_t initializeWithTake for AccessibilityLinkModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 31) = *(a2 + 31);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 71) = *(a2 + 71);
  v5 = *(type metadata accessor for LinkDestination() + 24);
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 32))(v6, v7, v8);
  v9 = type metadata accessor for LinkDestination.Configuration();
  *(v6 + *(v9 + 20)) = *(v7 + *(v9 + 20));
  return a1;
}

uint64_t assignWithTake for AccessibilityLinkModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 34);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 34);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  v12 = *(a1 + 32);
  *(a1 + 32) = v4;
  *(a1 + 34) = v5;
  outlined consume of Environment<OpenURLAction>.Content(v6, v7, v8, v9, v12, v10);
  v13 = *(a2 + 72);
  v14 = *(a2 + 74);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = *(a1 + 74);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v20 = *(a1 + 72);
  *(a1 + 72) = v13;
  *(a1 + 74) = v14;
  outlined consume of Environment<OpenURLAction>.Content(v15, v16, v17, v18, v20, v19);
  v21 = *(type metadata accessor for LinkDestination() + 24);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v24 = type metadata accessor for URL();
  (*(*(v24 - 8) + 40))(v22, v23, v24);
  v25 = type metadata accessor for LinkDestination.Configuration();
  *(v22 + *(v25 + 20)) = *(v23 + *(v25 + 20));
  return a1;
}

uint64_t type metadata completion function for AccessibilityAdjustableModifier.Configuration(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeWithCopy for AccessibilityAdjustableModifier.Configuration(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    v7 = *(v6 + 84);
    v8 = *(v6 + 64);
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    memcpy(a1, a2, v9);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, v5);
    v7 = *(v10 + 28);
    v8 = *(v10 + 8);
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  v13 = &a1[v12];
  v14 = &a2[v12];
  *v13 = *v14;
  v15 = v13 & 0xFFFFFFFFFFFFFFF8;
  v16 = v14 & 0xFFFFFFFFFFFFFFF8;
  v14 &= 0xFFFFFFFFFFFFFFF8;
  v19 = *(v14 + 8);
  v17 = (v14 + 8);
  v18 = v19;
  if (v19 < 0xFFFFFFFF)
  {
    *(v15 + 8) = *v17;
  }

  else
  {
    v20 = *(v17 + 1);
    *(v15 + 8) = v18;
    *(v15 + 16) = v20;
  }

  v21 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v16 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*v22 < 0xFFFFFFFFuLL)
  {
    *v21 = *v22;
  }

  else
  {
    v23 = *(v22 + 8);
    *v21 = *v22;
    *(v21 + 8) = v23;
  }

  v24 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  v26 = v25[1];
  *v24 = *v25;
  v24[1] = v26;
  v27 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  v29 = v28[1];
  *v27 = *v28;
  v27[1] = v29;

  return a1;
}

char *assignWithCopy for AccessibilityAdjustableModifier.Configuration(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 24))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = &a1[v13];
  v15 = &a2[v13];
  *v14 = *v15;
  v16 = v14 & 0xFFFFFFFFFFFFFFF8;
  v17 = ((v14 & 0xFFFFFFFFFFFFFFF8) + 8);
  v18 = v15 & 0xFFFFFFFFFFFFFFF8;
  v20 = ((v15 & 0xFFFFFFFFFFFFFFF8) + 8);
  v19 = *v20;
  if (*v17 < 0xFFFFFFFF)
  {
    if (v19 >= 0xFFFFFFFF)
    {
      v22 = v20[1];
      *v17 = v19;
      *((v14 & 0xFFFFFFFFFFFFFFF8) + 16) = v22;

      goto LABEL_22;
    }
  }

  else
  {
    if (v19 >= 0xFFFFFFFF)
    {
      v21 = v20[1];
      *v17 = v19;
      *((v14 & 0xFFFFFFFFFFFFFFF8) + 16) = v21;

      goto LABEL_22;
    }
  }

  *v17 = *v20;
LABEL_22:
  v23 = ((v16 + 31) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v18 + 31) & 0xFFFFFFFFFFFFFFF8);
  v25 = *v24;
  if (*v23 < 0xFFFFFFFFuLL)
  {
    if (v25 >= 0xFFFFFFFF)
    {
      v27 = v24[1];
      *v23 = v25;
      v23[1] = v27;

      goto LABEL_29;
    }

LABEL_28:
    *v23 = *v24;
    goto LABEL_29;
  }

  if (v25 < 0xFFFFFFFF)
  {

    goto LABEL_28;
  }

  v26 = v24[1];
  *v23 = v25;
  v23[1] = v26;

LABEL_29:
  v28 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  v30 = v29[1];
  *v28 = *v29;
  v28[1] = v30;

  v31 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v29 + 23) & 0xFFFFFFFFFFFFFFF8);
  v33 = v32[1];
  *v31 = *v32;
  v31[1] = v33;

  return a1;
}

void *initializeWithTake for AccessibilityAdjustableModifier.Configuration(void *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    v7 = *(v6 + 84);
    v8 = *(v6 + 64);
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    memcpy(a1, a2, v9);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, v5);
    v7 = *(v10 + 28);
    v8 = *(v10 + 8);
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  v13 = &a2[v12];
  *(a1 + v12) = a2[v12];
  v14 = (a1 + v12) & 0xFFFFFFFFFFFFFFF8;
  v15 = v13 & 0xFFFFFFFFFFFFFFF8;
  v13 &= 0xFFFFFFFFFFFFFFF8;
  v18 = *(v13 + 8);
  v16 = (v13 + 8);
  v17 = v18;
  if (v18 < 0xFFFFFFFF)
  {
    *(v14 + 8) = *v16;
  }

  else
  {
    v19 = *(v16 + 1);
    *(v14 + 8) = v17;
    *(v14 + 16) = v19;
  }

  v20 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*v21 < 0xFFFFFFFFuLL)
  {
    *v20 = *v21;
  }

  else
  {
    v22 = *(v21 + 8);
    *v20 = *v21;
    *(v20 + 8) = v22;
  }

  v23 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  *((v23 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

char *assignWithTake for AccessibilityAdjustableModifier.Configuration(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 40))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = &a1[v13];
  v15 = &a2[v13];
  *v14 = *v15;
  v16 = v14 & 0xFFFFFFFFFFFFFFF8;
  v17 = ((v14 & 0xFFFFFFFFFFFFFFF8) + 8);
  v18 = v15 & 0xFFFFFFFFFFFFFFF8;
  v20 = ((v15 & 0xFFFFFFFFFFFFFFF8) + 8);
  v19 = *v20;
  if (*v17 < 0xFFFFFFFF)
  {
    if (v19 >= 0xFFFFFFFF)
    {
      v22 = v20[1];
      *v17 = v19;
      v17[1] = v22;
      goto LABEL_22;
    }
  }

  else
  {
    if (v19 >= 0xFFFFFFFF)
    {
      v21 = v20[1];
      *v17 = v19;
      v17[1] = v21;

      goto LABEL_22;
    }
  }

  *v17 = *v20;
LABEL_22:
  v23 = ((v16 + 31) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v18 + 31) & 0xFFFFFFFFFFFFFFF8);
  v25 = *v24;
  if (*v23 < 0xFFFFFFFFuLL)
  {
    if (v25 >= 0xFFFFFFFF)
    {
      v27 = v24[1];
      *v23 = v25;
      v23[1] = v27;
      goto LABEL_29;
    }

LABEL_28:
    *v23 = *v24;
    goto LABEL_29;
  }

  if (v25 < 0xFFFFFFFF)
  {

    goto LABEL_28;
  }

  v26 = v24[1];
  *v23 = v25;
  v23[1] = v26;

LABEL_29:
  v28 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;

  *((v28 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v29 + 23) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityAdjustableModifier.Configuration(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = (((((((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((((((a1 + v8) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for AccessibilityAdjustableModifier.Configuration(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(*(a4 + 24) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = (((((((v10 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v12 = a3 - v9;
    if ((((((((v10 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if ((((((((v10 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if ((((((((v10 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v9 + a2;
      v17 = a1;
      bzero(a1, v11);
      a1 = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v5)
    {
      *(a1 + v11) = v15;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v11) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFF)
  {
    v22 = ((((((a1 + v10) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v22 = a2 & 0x7FFFFFFF;
      v22[1] = 0;
    }

    else
    {
      *v22 = a2 - 1;
    }
  }

  else if (v8 >= a2)
  {
    v23 = *(v6 + 56);

    v23();
  }

  else
  {
    if (v10 <= 3)
    {
      v18 = ~(-1 << (8 * v10));
    }

    else
    {
      v18 = -1;
    }

    if (v10)
    {
      v19 = v18 & (~v8 + a2);
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v10);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

uint64_t View.accessibilityCombinedElement(options:ignoredTraits:)@<X0>(char a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  type metadata accessor for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  v20 = v16;
  View._accessibilityElement(children:)(&v20, a3, a4);

  ModifiedContent<>.accessibilityRemoveTraits(_:)(v9, v15);
  v17 = *(v10 + 8);
  v17(v12, v9);
  v19[1] = 64;
  ModifiedContent<>.accessibilityAddVisibility(_:)(v9, x8_0);
  return (v17)(v15, v9);
}

uint64_t AccessibilityDefaultActionRepresentableConfiguration.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v4 = *(a1 + 16);
  type metadata accessor for AccessibilityProxyTransformModifier<Never, PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for AccessibilityProxyTransformModifier<Never, PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label);
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  v12 = v2[1];
  v24[0] = *v2;
  v24[1] = v12;
  v13 = v2[3];
  v24[2] = v2[2];
  v24[3] = v13;
  v14 = swift_allocObject();
  v15 = *(a1 + 24);
  *(v14 + 16) = v4;
  *(v14 + 24) = v15;
  v16 = v2[1];
  *(v14 + 32) = *v2;
  *(v14 + 48) = v16;
  v17 = v2[3];
  *(v14 + 64) = v2[2];
  *(v14 + 80) = v17;
  v18 = (*(*(a1 - 8) + 16))(v23, v24, a1);
  View.accessibilityAttachment<A>(content:_:)(v18, partial apply for closure #1 in AccessibilityDefaultActionRepresentableConfiguration.body(content:), v14, v4, &type metadata for PrimitiveButtonStyleConfiguration.Label, v15, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, v8);

  v22[0] = v15;
  v22[1] = &protocol witness table for AccessibilityProxyTransformModifier<A, B>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v5, v22);
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v6 + 8);
  v19(v8, v5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v19)(v11, v5);
}

uint64_t closure #1 in AccessibilityDefaultActionRepresentableConfiguration.body(content:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  AccessibilityAttachment.Tree.attachment.getter(&v38);
  outlined destroy of AccessibilityAttachment.Tree(a1);
  if (v40)
  {
    outlined init with copy of AccessibilityProperties(&v38, v41);
    outlined destroy of AccessibilityAttachment(&v38);
  }

  else
  {
    _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(&v38, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
    memset(v41, 0, sizeof(v41));
  }

  outlined init with copy of AppIntentAction?(v41, &v38, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
  if (v40)
  {
    v7 = v39;

    outlined destroy of AccessibilityProperties(&v38);
    if (v7)
    {
      if (*(v7 + 16))
      {
        v8 = *(v7 + 32);
        v9 = *(v7 + 40);
        v10 = *(v7 + 48);
        v11 = *(v7 + 56);
        outlined copy of Text.Storage(v8, v9, *(v7 + 48));

        goto LABEL_11;
      }
    }
  }

  else
  {
    _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(&v38, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
LABEL_11:
  outlined init with copy of AppIntentAction?(v41, &v38, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
  if (v40)
  {
    v12 = AccessibilityProperties.images.getter();
    outlined destroy of AccessibilityProperties(&v38);
    if (*(v12 + 16))
    {
      v13 = *(v12 + 32);

      goto LABEL_17;
    }
  }

  else
  {
    _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(&v38, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
  }

  v13 = 0;
LABEL_17:
  v14 = a2[2];
  v42[0] = a2[1];
  v42[1] = v14;
  v42[2] = a2[3];
  v15 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
    type metadata accessor for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>(0, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>, lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler, &type metadata for AccessibilityAppIntentHandler, type metadata accessor for AnyAccessibilityAction.ConcreteBase);
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0u;
    *(v18 + 48) = a2[1];
    *(v18 + 64) = *(a2 + 4);
    *(v18 + 72) = v15;
    *(v18 + 80) = a2[3];
    *(v18 + 96) = 0;
    *(v18 + 104) = 0;
    *(v18 + 112) = 0;
    *(v18 + 120) = 2;
    *(v18 + 128) = v8;
    *(v18 + 136) = v9;
    *(v18 + 144) = v10;
    *(v18 + 152) = v11;
    *(v18 + 160) = v13;
    v19 = 1;
    *(v18 + 168) = 1;
  }

  else
  {
    v20 = swift_allocObject();
    *(v20 + 16) = a3;
    *(v20 + 24) = a4;
    v21 = a2[1];
    *(v20 + 32) = *a2;
    *(v20 + 48) = v21;
    v22 = a2[3];
    *(v20 + 64) = a2[2];
    *(v20 + 80) = v22;
    v23 = swift_allocObject();
    *(v23 + 16) = partial apply for closure #1 in closure #1 in AccessibilityDefaultActionRepresentableConfiguration.body(content:);
    *(v23 + 24) = v20;
    v31 = a1;
    v24 = AccessibilityActionHandlerSeed++;
    type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>(0);
    v30 = a4;
    v17 = v25;
    v18 = swift_allocObject();
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0u;
    *(v18 + 48) = 0u;
    *(v18 + 64) = 0;
    *(v18 + 72) = 2;
    *(v18 + 80) = v8;
    *(v18 + 88) = v9;
    *(v18 + 96) = v10;
    *(v18 + 104) = v11;
    *(v18 + 112) = v13;
    *(v18 + 120) = thunk for @escaping @callee_guaranteed () -> (@out AccessibilityActionResult)partial apply;
    *(v18 + 128) = v23;
    *(v18 + 136) = v24;
    a1 = v31;
    v27 = type metadata accessor for AccessibilityDefaultActionRepresentableConfiguration(0, a3, v30, v26);
    (*(*(v27 - 8) + 16))(&v38, a2, v27);
    v19 = 0;
  }

  v33 = v18;
  v34 = v38;
  v35 = v17;
  v36 = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
  v37 = v19;
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_18CD63400;
  outlined init with copy of AnyAccessibilityAction(&v33, v28 + 32);
  outlined copy of Text?(v8, v9, v10, v11);

  outlined init with copy of AppIntentAction?(v42, &v38, &lazy cache variable for type metadata for AppIntentAction?, &type metadata for AppIntentAction);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.init<A>(_:_:)();
  AccessibilityAttachment.init(properties:)();

  outlined consume of Text?(v8, v9, v10, v11);
  outlined destroy of AnyAccessibilityAction(&v33);
  result = _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(v41, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
  *(a1 + 296) = 0;
  return result;
}

uint64_t AccessibilityButtonModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a1;
  v36 = a3;
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18], MEMORY[0x1E69808E8]);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = type metadata accessor for AccessibilityButtonModifier.Representable(255, v5, v6, v7);
  v9 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for StaticIf();
  v34 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v30 = &v29 - v12;
  type metadata accessor for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>(255, &lazy cache variable for type metadata for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label);
  v13 = type metadata accessor for ModifiedContent();
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v31 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v32 = &v29 - v16;
  v17 = v3[1];
  v42[0] = *v3;
  v42[1] = v17;
  v18 = v3[3];
  v42[2] = v3[2];
  v42[3] = v18;
  v37[14] = v5;
  v37[15] = v6;
  v37[16] = v42;
  v37[8] = v5;
  v37[9] = v6;
  v37[10] = v42;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityButtonModifier<A>.Representable, v8);
  v41[0] = v6;
  v41[1] = WitnessTable;
  v20 = MEMORY[0x1E697E858];
  v21 = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v41);
  v40[0] = v6;
  v40[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v22 = swift_getWitnessTable(v20, v10, v40);
  v23 = v30;
  View.staticIf<A, B, C>(context:trueModifier:falseModifier:)();
  v37[2] = v5;
  v37[3] = v6;
  v37[4] = v42;
  v39[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>();
  v39[1] = v21;
  v39[2] = v22;
  v24 = swift_getWitnessTable(MEMORY[0x1E6981CE8], v11, v39);
  v25 = v31;
  View.accessibilityShowsLargeContentViewer<A, B>(_:largeContentView:)(v24, destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, v37, v11, &type metadata for PrimitiveButtonStyleConfiguration.Label, &type metadata for PlaceholderLargeContentView, v24, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, v31, &protocol witness table for PlaceholderLargeContentView);
  (*(v34 + 8))(v23, v11);
  v38[0] = v24;
  v38[1] = &protocol witness table for AccessibilityLargeContentViewModifier<A, B>;
  swift_getWitnessTable(v20, v13, v38);
  v26 = v32;
  static ViewBuilder.buildExpression<A>(_:)();
  v27 = *(v33 + 8);
  v27(v25, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v27)(v26, v13);
}

uint64_t closure #1 in AccessibilityButtonModifier.body(content:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AccessibilityButtonModifier.Representable(255, a3, a4, a4);
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - v13;
  v15 = a2[1];
  v23 = *a2;
  v24 = v15;
  v16 = a2[3];
  v25 = a2[2];
  v26 = v16;
  v18 = type metadata accessor for AccessibilityButtonModifier(0, a3, a4, v17);
  (*(*(v18 - 8) + 16))(v27, a2, v18);
  MEMORY[0x18D00A570](&v23, a3, v7, a4);
  v27[0] = v23;
  v27[1] = v24;
  v27[2] = v25;
  v27[3] = v26;
  (*(*(v7 - 8) + 8))(v27, v7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityButtonModifier<A>.Representable, v7);
  v22[0] = a4;
  v22[1] = WitnessTable;
  swift_getWitnessTable(MEMORY[0x1E697E858], v8, v22);
  static ViewBuilder.buildExpression<A>(_:)();
  v20 = *(v9 + 8);
  v20(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v20)(v14, v8);
}

uint64_t closure #2 in AccessibilityButtonModifier.body(content:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v23 - v13;
  v15 = a2[1];
  v24 = *a2;
  v25 = v15;
  v16 = a2[3];
  v26 = a2[2];
  v27 = v16;
  v28 = 1;
  v18 = type metadata accessor for AccessibilityButtonModifier(0, a3, a4, v17);
  (*(*(v18 - 8) + 16))(&v29, a2, v18);
  *&v29 = a3;
  *(&v29 + 1) = a3;
  *&v30 = a4;
  *(&v30 + 1) = a4;
  v19 = type metadata accessor for AccessibilityButtonModifier.Attachment(0, &v29);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityButtonModifier<A>.Attachment<A1>, v19);
  v23[0] = a4;
  v23[1] = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v8, v23);
  (*(WitnessTable + 40))(a1, v19, WitnessTable);
  v31 = v26;
  v32 = v27;
  v33 = v28;
  v29 = v24;
  v30 = v25;
  (*(*(v19 - 8) + 8))(&v29, v19);
  static ViewBuilder.buildExpression<A>(_:)();
  v21 = *(v9 + 8);
  v21(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v21)(v14, v8);
}

double AccessibilityButtonModifier.Representable.body(content:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v45 = *v2;
  v46 = v4;
  v5 = v2[3];
  v7 = *v2;
  v6 = v2[1];
  v47 = v2[2];
  v48 = v5;
  v38 = v7;
  v39 = v6;
  v8 = v2[3];
  v40 = v2[2];
  v41 = v8;
  v9 = *(a2 + 16);
  swift_getWitnessTable(protocol conformance descriptor for AccessibilityButtonModifier<A>.Representable);
  v10 = type metadata accessor for _ViewModifier_Content();
  v11 = *(a2 + 24);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v10);
  v42 = 0;
  v14 = type metadata accessor for AccessibilityButtonModifier.Configuration(0, v9, v11, v13);
  (*(*(v14 - 8) + 16))(&v49, &v45, v14);
  *&v49 = v9;
  *(&v49 + 1) = v10;
  *&v50 = v11;
  *(&v50 + 1) = WitnessTable;
  v15 = type metadata accessor for AccessibilityButtonModifier.Attachment(0, &v49);
  v16 = swift_getWitnessTable(protocol conformance descriptor for AccessibilityButtonModifier<A>.Attachment<A1>, v15);
  v17 = type metadata accessor for ModifiedContent();
  v37[0] = WitnessTable;
  v37[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v29 = MEMORY[0x1E697E858];
  v18 = swift_getWitnessTable(MEMORY[0x1E697E858], v17, v37);
  (*(v16 + 40))(v30, v18, v15, v16);
  v51 = v40;
  v52 = v41;
  v53 = v42;
  v49 = v38;
  v50 = v39;
  (*(*(v15 - 8) + 8))(&v49, v15);
  v36 = v30[0];
  v19 = v45;
  v20 = v46;
  v21 = v47;
  v22 = v48;
  v23 = swift_checkMetadataState();
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v35 = v22;

  outlined copy of ToggleStyleConfiguration.Effect(v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1));
  v25 = type metadata accessor for AccessibilityDefaultActionRepresentableConfiguration(0, v23, v18, v24);
  v26 = swift_getWitnessTable(protocol conformance descriptor for AccessibilityDefaultActionRepresentableConfiguration<A>, v25);
  type metadata accessor for AccessibilityProxyTransformModifier<Never, PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for AccessibilityProxyTransformModifier<Never, PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label);
  v27 = type metadata accessor for ModifiedContent();
  v31[0] = v18;
  v31[1] = &protocol witness table for AccessibilityProxyTransformModifier<A, B>;
  swift_getWitnessTable(v29, v27, v31);
  (*(v26 + 40))(&v43, &v36, v25, v26);
  v38 = v32;
  v39 = v33;
  v40 = v34;
  v41 = v35;
  (*(*(v25 - 8) + 8))(&v38, v25);

  v30[0] = v43;
  v30[1] = v44;
  swift_checkMetadataState();
  static ViewBuilder.buildExpression<A>(_:)();

  v43 = v32;
  v44 = v33;
  static ViewBuilder.buildExpression<A>(_:)();

  return result;
}

uint64_t AccessibilityButtonModifier.Attachment.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v28 = a3;
  v5 = *(a2 + 24);
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  v19 = v3[1];
  v33 = *v3;
  v34 = v19;
  v20 = v3[3];
  v35 = v3[2];
  v36 = v20;
  v27 = *(a2 + 40);
  v21 = *(v3 + 64);
  View.accessibilityCombinedElement(options:ignoredTraits:)(12, v5, v27, v9);
  *&v31[0] = 1;
  ModifiedContent<>.accessibilityAddTraits(_:)(v31, v6);
  v22 = *(v7 + 8);
  v22(v9, v6);
  v31[0] = v33;
  v31[1] = v34;
  v31[2] = v35;
  v31[3] = v36;
  v32 = v21;
  v30 = AccessibilityButtonModifier.Attachment.accessibilityActions.getter(a2);
  v23 = lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  v24 = lazy protocol witness table accessor for type [AnyAccessibilityAction] and conformance [A]();
  ModifiedContent<>.update<A>(_:combining:isEnabled:)(&type metadata for AccessibilityProperties.ActionsKey, &v30, v21 & 1, v6, &type metadata for AccessibilityProperties.ActionsKey, v23, v24, v15);

  v22(v12, v6);
  v29[0] = v27;
  v29[1] = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v6, v29, v26);
  static ViewBuilder.buildExpression<A>(_:)();
  v22(v15, v6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v22)(v18, v6);
}

uint64_t AccessibilityButtonModifier.Attachment.accessibilityActions.getter(uint64_t a1)
{
  v27 = *(v1 + 64);
  v2 = v1[3];
  v25 = v1[2];
  v26 = v2;
  v3 = v1[1];
  v23 = *v1;
  v24 = v3;
  if ((v27 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = *(&v25 + 1);
  if (*(&v25 + 1))
  {
    v5 = v26;
    v6 = v25;
    v7 = v24;
    type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_18CD63400;
    v6 &= 1u;
    v22[0] = v6;
    type metadata accessor for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>(0, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>, lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler, &type metadata for AccessibilityAppIntentHandler, type metadata accessor for AnyAccessibilityAction.ConcreteBase);
    *(v8 + 56) = v9;
    *(v8 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
    v10 = swift_allocObject();
    *(v8 + 32) = v10;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = v7;
    *(v10 + 64) = v6;
    *(v10 + 72) = v4;
    *(v10 + 80) = v5;
    *(v10 + 96) = 0;
    *(v10 + 104) = 0;
    *(v10 + 112) = 0;
    *(v10 + 120) = 2;
    *(v10 + 128) = 0u;
    *(v10 + 144) = 0u;
    *(v10 + 153) = 0u;
    *(v8 + 72) = 1;
    outlined copy of Environment<AppIntentExecutor?>.Content(v7, *(&v7 + 1), v6);
    v11 = v4;

    return v8;
  }

  else
  {
    type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18CD63400;
    v15 = swift_allocObject();
    v16 = *(a1 + 32);
    *(v15 + 16) = *(a1 + 16);
    *(v15 + 32) = v16;
    v17 = v1[3];
    *(v15 + 80) = v1[2];
    *(v15 + 96) = v17;
    *(v15 + 112) = *(v1 + 64);
    v18 = v1[1];
    *(v15 + 48) = *v1;
    *(v15 + 64) = v18;
    v19 = swift_allocObject();
    *(v19 + 16) = partial apply for closure #1 in AccessibilityButtonModifier.Attachment.accessibilityActions.getter;
    *(v19 + 24) = v15;
    LODWORD(v15) = AccessibilityActionHandlerSeed++;
    type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>(0);
    *(v14 + 56) = v20;
    *(v14 + 64) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
    v21 = swift_allocObject();
    *(v14 + 32) = v21;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0u;
    *(v21 + 64) = 0;
    *(v21 + 72) = 2;
    *(v21 + 80) = 0u;
    *(v21 + 96) = 0u;
    *(v21 + 112) = 0;
    *(v21 + 120) = thunk for @escaping @callee_guaranteed () -> (@out AccessibilityActionResult)partial apply;
    *(v21 + 128) = v19;
    *(v21 + 136) = v15;
    *(v14 + 72) = 0;
    (*(*(a1 - 8) + 16))(v22, &v23, a1);
    return v14;
  }
}

uint64_t AccessibilityPlaybackButtonModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v32 = a1;
  v36 = a2;
  v3 = *(a1 + 16);
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v34 = &v31 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v35 = &v31 - v21;
  v33 = *(a1 + 24);
  View.accessibilityCombinedElement(options:ignoredTraits:)(0, v3, v33, v8);
  *&v38[0] = 1;
  ModifiedContent<>.accessibilityAddTraits(_:)(v38, v5);
  v22 = *(v6 + 8);
  v22(v8, v5);
  *&v38[0] = 1024;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v22(v11, v5);
  v23 = specialized static Text.Accessibility.playback(for:)(v2);
  v25 = v24;
  LOBYTE(v8) = v26;
  ModifiedContent<>.accessibilityLabel(_:)(v23, v24, v26 & 1, v27, v5, v17);
  outlined consume of Text.Storage(v23, v25, v8 & 1);

  v22(v14, v5);
  AccessibilityPlaybackButtonModifier.resolvedValue.getter(v32, v38);
  v28 = v34;
  ModifiedContent<>.accessibilityValue(_:)(v5, v34);
  outlined destroy of AccessibilityValueStorage(v38);
  v22(v17, v5);
  v37[0] = v33;
  v37[1] = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v5, v37);
  v29 = v35;
  static ViewBuilder.buildExpression<A>(_:)();
  v22(v28, v5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v22)(v29, v5);
}

double AccessibilityPlaybackButtonModifier.resolvedValue.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21[-v6 - 8];
  type metadata accessor for ClosedRange<Date>(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v14 = type metadata accessor for AccessibilityPlaybackButtonModifier.Configuration(0, *(a1 + 16), *(a1 + 24), v13);
  outlined init with copy of ClosedRange<Date>?(v2 + *(v14 + 40), v7);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    outlined destroy of ClosedRange<Date>?(v7, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>);
    LOBYTE(v24[0]) = 0;
    lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
    lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
    lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
    AccessibilityValueStorage.init<A>(_:description:)();
  }

  else
  {
    outlined init with take of LinkDestination(v7, v12, type metadata accessor for ClosedRange<Date>);
    v16 = v2 + *(v14 + 36);
    v17 = *(v16 + 16);
    if (v17 == 4)
    {
      v21[0] = 0;
      lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
      lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
      lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
      AccessibilityValueStorage.init<A>(_:description:)();
    }

    else if (v17 == 5)
    {
      AccessibilityPlaybackButtonModifier.percentageValue(interval:)(v12, v24);
    }

    else
    {
      v18 = *(v2 + *(v14 + 36) + 8);
      v21[0] = *v16;
      v22 = v18;
      v23 = v17;
      AccessibilityPlaybackButtonModifier.descriptionValue(_:interval:)(v21, v12, v24);
    }

    outlined destroy of LinkDestination(v12, type metadata accessor for ClosedRange<Date>);
    v19 = v24[1];
    *a2 = v24[0];
    a2[1] = v19;
    result = *&v25;
    a2[2] = v25;
  }

  return result;
}

void *AccessibilityPlaybackButtonModifier.percentageValue(interval:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v34 = a1;
  v35 = a2;
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  MEMORY[0x1EEE9AC00](v5 - 8);
  type metadata accessor for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>(0, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>.Percent, lazy protocol witness table accessor for type Double and conformance Double, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E58]);
  v7 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of LinkDestination.Configuration(v2, v22, type metadata accessor for PlaybackButton.State);
  v23 = (*(v14 + 48))(v22, 2, v13);
  if (v23)
  {
    if (v23 == 1)
    {
      LOBYTE(v38) = 0;
      lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
      lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
      lazy protocol witness table accessor for type AccessibilityEmptyValue and conformance AccessibilityEmptyValue();
      return AccessibilityValueStorage.init<A>(_:description:)();
    }

    else
    {
      outlined init with copy of LinkDestination.Configuration(v34, v19, type metadata accessor for ClosedRange<Date>);
      Text.init(progressInterval:countsDown:)();
      return AccessibilityValueStorage.init(description:)();
    }
  }

  else
  {
    (*(v14 + 32))(v16, v22, v13);
    ClosedRange<>.progress(at:countdown:)();
    v36 = v25;
    static Locale.autoupdatingCurrent.getter();
    v34 = lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.Percent.init(locale:)();
    v26 = v31;
    v27 = v32;
    v28 = v33;
    (*(v32 + 104))(v31, *MEMORY[0x1E69E7038], v33);
    MEMORY[0x18D0000D0](v26, 0x3FF0000000000000, 0, v7);
    (*(v27 + 8))(v26, v28);
    v29 = *(v30 + 8);
    v29(v9, v7);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double>.Percent and conformance FloatingPointFormatStyle<A>.Percent();
    BinaryFloatingPoint.formatted<A>(_:)();
    v29(v12, v7);
    v36 = v38;
    v37 = v39;
    lazy protocol witness table accessor for type String and conformance String();
    Text.init<A>(_:)();
    AccessibilityValueStorage.init(description:)();
    return (*(v14 + 8))(v16, v13);
  }
}

void *AccessibilityPlaybackButtonModifier.descriptionValue(_:interval:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v33[1] = a3;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a1 + 1);
  v16 = a1[16];
  outlined init with copy of LinkDestination.Configuration(v4, v13, type metadata accessor for PlaybackButton.State);
  v17 = (*(v8 + 48))(v13, 2, v7);
  if (v17)
  {
    if (v17 == 1)
    {
      LOBYTE(v40) = v14;
      v41 = v15;
      v42 = v16;
      type metadata accessor for ClosedRange<Date>(0);
      v40 = Text.DateStyle.timeRemainingString(lowerBound:upperBound:)(a2, a2 + *(v18 + 36));
      v41 = v19;
      lazy protocol witness table accessor for type String and conformance String();
      v20 = Text.init<A>(_:)();
    }

    else
    {
      type metadata accessor for ClosedRange<Date>(0);
      (*(v8 + 16))(v10, a2 + *(v30 + 36), v7);
      LOBYTE(v40) = v14;
      v41 = v15;
      v42 = v16;
      v20 = Text.init(_:style:)();
    }

    v25 = v20;
    v27 = v21;
    v29 = v22;
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    LOBYTE(v40) = v14;
    v41 = v15;
    v42 = v16;
    type metadata accessor for ClosedRange<Date>(0);
    v40 = Text.DateStyle.timeRemainingString(lowerBound:upperBound:)(v10, a2 + *(v23 + 36));
    v41 = v24;
    lazy protocol witness table accessor for type String and conformance String();
    v25 = Text.init<A>(_:)();
    v27 = v26;
    v29 = v28;
    (*(v8 + 8))(v10, v7);
  }

  LOBYTE(v40) = v14;
  v41 = v15;
  v42 = v16;
  static Text.DateStyle.timer.getter();
  v34[0] = v37;
  v35 = v38;
  v36 = v39;
  if (MEMORY[0x18D009E00](&v40, v34))
  {
    type metadata accessor for AccessibilityTextModifier();
    v31 = swift_allocObject();
    *(v31 + 16) = 1800;
    *(v31 + 18) = 1;
    *(v31 + 24) = 0u;
    *(v31 + 40) = 0u;
    Text.modified(with:)();

    outlined consume of Text.Storage(v25, v27, v29 & 1);
  }

  return AccessibilityValueStorage.init(description:)();
}

uint64_t AccessibilityLinkModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v32 = a1;
  v33 = a4;
  v4 = *(a2 + 16);
  v31 = *(a2 + 24);
  v5 = type metadata accessor for AccessibilityLinkModifier.Configuration(0, v4, v31, a3);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  v30 = MEMORY[0x1E697E810];
  type metadata accessor for LinkDestination.Configuration?(0, &lazy cache variable for type metadata for LinkDestination.Configuration?, MEMORY[0x1E697E810]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v29 - v21;
  (*(v6 + 16))(v8, v29, v5, v20);
  v23 = type metadata accessor for LinkDestination();
  outlined init with copy of LinkDestination.Configuration(&v8[*(v23 + 24)], v11, MEMORY[0x1E697E810]);
  outlined destroy of LinkDestination(v8, MEMORY[0x1E697E828]);
  v24 = type metadata accessor for LinkDestination.Configuration();
  (*(*(v24 - 8) + 56))(v11, 0, 1, v24);
  v25 = v4;
  v26 = v31;
  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E6980090], v11, 1, v25, MEMORY[0x1E6980090], v31, MEMORY[0x1E6980088]);
  outlined destroy of ClosedRange<Date>?(v11, &lazy cache variable for type metadata for LinkDestination.Configuration?, v30);
  v35 = 8;
  ModifiedContent<>.accessibilityAddTraits(_:)(&v35, v12);
  v27 = *(v13 + 8);
  v27(v15, v12);
  v34[0] = v26;
  v34[1] = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v12, v34);
  static ViewBuilder.buildExpression<A>(_:)();
  v27(v18, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v27)(v22, v12);
}

void AccessibilityLinkModifier.Archived.body(content:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8[0] = a1;
  v8[2] = a2;
  v2 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v2);
  v3 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v8[1] = v8 - v7;
  View.accessibilityIgnoreViewResponders()();
}

uint64_t sub_18C473E50()
{
  *(v9 - 96) = v7;
  *(v9 - 88) = &protocol witness table for IgnoreViewRespondersModifier;
  v10 = MEMORY[0x1E697E858];
  *(v9 - 144) = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(v10, v4, v9 - 96);
  View.accessibilityCombinedElement(options:ignoredTraits:)(8, v4, WitnessTable, v8);
  (*(v0 + 8))(v6, v4);
  *(v9 - 104) = 1;
  ModifiedContent<>.accessibilityAddTraits(_:)((v9 - 104), v1);
  v12 = *(v2 + 8);
  v12(v8, v1);
  *(v9 - 104) = 8;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  v12(v5, v1);
  *(v9 - 120) = WitnessTable;
  *(v9 - 112) = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable(*(v9 - 144), v1, v9 - 120);
  v13 = *(v9 - 136);
  static ViewBuilder.buildExpression<A>(_:)();
  v12(v3, v1);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v12)(v13, v1);
}

uint64_t AccessibilityToggleModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v53 = a2;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v42 - v15;
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18], MEMORY[0x1E69808E8]);
  v49 = v16;
  v17 = *(a1 + 24);
  *&v73 = v4;
  *(&v73 + 1) = &type metadata for ToggleStyleConfiguration.Label;
  v43 = v4;
  *v74 = v17;
  *&v74[8] = &protocol witness table for ToggleStyleConfiguration.Label;
  v47 = type metadata accessor for AccessibilityToggleModifier.RepresentationModifier(255, &v73);
  v48 = type metadata accessor for ModifiedContent();
  v18 = type metadata accessor for StaticIf();
  v19 = *(v18 - 8);
  v51 = v18;
  v52 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v46 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v50 = &v42 - v22;
  v23 = v2[3];
  v69 = v2[2];
  v70 = v23;
  v24 = v2[5];
  v71 = v2[4];
  v72 = v24;
  v25 = v2[1];
  v67 = *v2;
  v68 = v25;
  View.accessibilityCombinedElement(options:ignoredTraits:)(12, v4, v17, v8);
  *&v74[16] = v69;
  v75 = v70;
  v76 = v71;
  v77 = v72;
  v73 = v67;
  *v74 = v68;
  v63 = v69;
  v64 = v70;
  v65 = v71;
  v66 = v72;
  v61 = v67;
  v62 = v68;
  v60 = ToggleStyleConfiguration.accessibilityActions.getter();
  v26 = lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  v27 = lazy protocol witness table accessor for type [AnyAccessibilityAction] and conformance [A]();
  ModifiedContent<>.update<A>(_:combining:isEnabled:)(&type metadata for AccessibilityProperties.ActionsKey, &v60, 1, v5, &type metadata for AccessibilityProperties.ActionsKey, v26, v27, v11);

  v28 = *(v6 + 8);
  v28(v8, v5);
  *&v61 = 1;
  v29 = v44;
  ModifiedContent<>.accessibilityAddTraits(_:)(&v61, v5);
  v28(v11, v5);
  v42 = v6 + 8;
  v61 = *&v74[8];
  LOBYTE(v62) = v74[24];
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for Binding<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v60);
  if (v60)
  {
    v30 = 2 * (v60 != 1);
  }

  else
  {
    v30 = 1;
  }

  LOBYTE(v60) = v30;
  v61 = 0u;
  v62 = 0u;
  *&v63 = 0;
  _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(&v61, &lazy cache variable for type metadata for AnyAccessibilityValue?, MEMORY[0x1E697FBB0]);
  lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
  lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
  lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
  AnyAccessibilityValue.init<A>(_:)();
  *(&v63 + 1) = 0;
  v31 = v45;
  ModifiedContent<>.accessibilityValue(_:)(v5, v45);
  v28(v29, v5);
  outlined destroy of AccessibilityValueStorage(&v61);
  v54 = v43;
  v55 = v17;
  v56 = &v67;
  v59[0] = v17;
  v59[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v32 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v59);
  v34 = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>();
  v35 = swift_getWitnessTable(protocol conformance descriptor for AccessibilityToggleModifier<A>.RepresentationModifier<A1>, v47);
  v58[0] = WitnessTable;
  v58[1] = v35;
  v41 = swift_getWitnessTable(v32, v48, v58);
  v36 = v46;
  View.staticIf<A, B>(_:then:)();
  v28(v31, v5);
  v57[0] = v34;
  v57[1] = v41;
  v57[2] = WitnessTable;
  v37 = v51;
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v51, v57);
  v38 = v50;
  static ViewBuilder.buildExpression<A>(_:)();
  v39 = *(v52 + 8);
  v39(v36, v37);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v39)(v38, v37);
}

uint64_t closure #1 in AccessibilityToggleModifier.body(content:)@<X0>(uint64_t a1@<X0>, __n128 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a1;
  v36 = a5;
  v44.n128_u64[0] = a3;
  v44.n128_u64[1] = &type metadata for ToggleStyleConfiguration.Label;
  v31 = a4;
  v45.n128_u64[0] = a4;
  v45.n128_u64[1] = &protocol witness table for ToggleStyleConfiguration.Label;
  v32 = type metadata accessor for ModifiedContent();
  v33 = type metadata accessor for AccessibilityToggleModifier.RepresentationModifier(255, &v44);
  v7 = type metadata accessor for ModifiedContent();
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v29 - v11;
  v12 = a2[4];
  v44 = a2[3];
  v45 = v12;
  v46 = a2[5];
  v13 = v12.n128_u64[1];
  if (v12.n128_u64[1])
  {
    v14 = v44.n128_u64[1];
    v15 = v44.n128_u64[0];
    v16 = v46.n128_u64[1];
    v17 = v46.n128_u64[0];
    v18 = v45.n128_u8[0] & 1;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 0;
  }

  (off_1EFFA4730->initializeWithTake)(v43);
  *&v40 = a3;
  *(&v40 + 1) = &type metadata for ToggleStyleConfiguration.Label;
  v19 = v31;
  *&v41 = v31;
  *(&v41 + 1) = &protocol witness table for ToggleStyleConfiguration.Label;
  v20 = (v43 + *(type metadata accessor for AccessibilityToggleModifier.RepresentationModifier(0, &v40) + 52));
  *v20 = v15;
  v20[1] = v14;
  v20[2] = v18;
  v20[3] = v13;
  v20[4] = v17;
  v20[5] = v16;
  v40 = v43[0];
  v41 = v43[1];
  v42 = v43[2];
  outlined init with copy of ToggleStyleConfiguration.Effect(&v44, v39);
  v38[0] = v19;
  v38[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v21 = MEMORY[0x1E697E858];
  v22 = v32;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v32, v38);
  v24 = v33;
  MEMORY[0x18D00A570](&v40, v22, v33, WitnessTable);
  outlined consume of ToggleStyleConfiguration.Effect(v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1));
  v25 = swift_getWitnessTable(protocol conformance descriptor for AccessibilityToggleModifier<A>.RepresentationModifier<A1>, v24);
  v37[0] = WitnessTable;
  v37[1] = v25;
  swift_getWitnessTable(v21, v7, v37);
  v26 = v30;
  static ViewBuilder.buildExpression<A>(_:)();
  v27 = *(v35 + 8);
  v27(v9, v7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v27)(v26, v7);
}

uint64_t AccessibilityToggleModifier.RepresentationModifier.body(content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = *(a2 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable(protocol conformance descriptor for AccessibilityToggleModifier<A>.RepresentationModifier<A1>, v7);
  v30 = type metadata accessor for _ViewModifier_Content();
  v9 = a2[3];
  v29 = a2[5];
  v34[0] = MEMORY[0x1E69E73E0];
  v34[1] = v9;
  v10 = v9;
  v34[2] = MEMORY[0x1E6982070];
  v34[3] = v29;
  type metadata accessor for AccessibilityProxyTransformModifier(255, v34);
  v11 = type metadata accessor for ModifiedContent();
  v31 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v28 - v16;
  (*(v5 + 16))(v8, v3, a2, v15);
  v18 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *&v20 = a2[2];
  *(&v20 + 1) = v10;
  v21 = v10;
  *&v22 = a2[4];
  v23 = v29;
  *(&v22 + 1) = v29;
  *(v19 + 16) = v20;
  *(v19 + 32) = v22;
  (*(v5 + 32))(v19 + v18, v8, a2);
  v24 = v30;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v30);
  View.accessibilityAttachment<A>(content:_:)(v28[1], partial apply for closure #1 in AccessibilityToggleModifier.RepresentationModifier.body(content:), v19, v24, v21, WitnessTable, v23, v13);

  v33[0] = WitnessTable;
  v33[1] = &protocol witness table for AccessibilityProxyTransformModifier<A, B>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v11, v33);
  static ViewBuilder.buildExpression<A>(_:)();
  v26 = *(v31 + 8);
  v26(v13, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v26)(v17, v11);
}

uint64_t closure #1 in AccessibilityToggleModifier.RepresentationModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v34 = a3;
  *(&v34 + 1) = a4;
  v35 = a5;
  v36 = a6;
  result = type metadata accessor for AccessibilityToggleModifier.RepresentationModifier(0, &v34);
  v9 = a2 + *(result + 52);
  v10 = *(v9 + 24);
  if (v10)
  {
    v11 = *(v9 + 40);
    v29 = *(v9 + 32);
    v31 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *v9;
    outlined copy of Environment<AppIntentExecutor?>.Content(*v9, v31, v12 & 1);
    v14 = v10;
    v15 = v11;

    AccessibilityAttachment.Tree.attachment.getter(&v34);
    outlined destroy of AccessibilityAttachment.Tree(a1);
    if (v37)
    {
      outlined init with copy of AccessibilityProperties(&v34, v38);
      outlined destroy of AccessibilityAttachment(&v34);
    }

    else
    {
      _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(&v34, &lazy cache variable for type metadata for AccessibilityAttachment?, MEMORY[0x1E697FFF0]);
      memset(v38, 0, 288);
    }

    outlined init with copy of AppIntentAction?(v38, &v34, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
    if (v37)
    {
      v16 = v36;

      outlined destroy of AccessibilityProperties(&v34);
      if (v16)
      {
        if (*(v16 + 16))
        {
          v17 = *(v16 + 56);
          v18 = *(v16 + 32);
          v19 = *(v16 + 40);
          v20 = *(v16 + 48);
          outlined copy of Text.Storage(v18, v19, *(v16 + 48));
          v28 = v17;

          goto LABEL_12;
        }
      }
    }

    else
    {
      _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(&v34, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v28 = 0;
LABEL_12:
    outlined init with copy of AppIntentAction?(v38, &v34, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
    if (v37)
    {
      v21 = AccessibilityProperties.images.getter();
      outlined destroy of AccessibilityProperties(&v34);
      if (*(v21 + 16))
      {
        v22 = *(v21 + 32);

        v23 = v22;

LABEL_18:
        type metadata accessor for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>(0, &lazy cache variable for type metadata for AnyAccessibilityAction.ConcreteBase<AccessibilityAppIntentHandler>, lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler, &type metadata for AccessibilityAppIntentHandler, type metadata accessor for AnyAccessibilityAction.ConcreteBase);
        v32[3] = v24;
        v32[4] = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
        v25 = swift_allocObject();
        v32[0] = v25;
        *(v25 + 16) = 0u;
        *(v25 + 32) = 0u;
        *(v25 + 48) = v13;
        *(v25 + 56) = v31;
        v26 = v12 & 1;
        *(v25 + 64) = v26;
        *(v25 + 72) = v14;
        *(v25 + 80) = v29;
        *(v25 + 88) = v15;
        *(v25 + 96) = 0;
        *(v25 + 104) = 0;
        *(v25 + 112) = 0;
        *(v25 + 120) = 2;
        *(v25 + 128) = v18;
        *(v25 + 136) = v19;
        *(v25 + 144) = v20;
        *(v25 + 152) = v28;
        *(v25 + 160) = v23;
        *(v25 + 168) = 1;
        v33 = 1;
        type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6F90]);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_18CD63400;
        outlined init with copy of AnyAccessibilityAction(v32, v27 + 32);
        outlined copy of Environment<AppIntentExecutor?>.Content(v13, v31, v26);
        v30 = v14;

        outlined copy of Text?(v18, v19, v20, v28);
        lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();

        AccessibilityProperties.init<A>(_:_:)();
        AccessibilityAttachment.init(properties:)();

        outlined consume of Text?(v18, v19, v20, v28);
        outlined consume of Environment<AppIntentExecutor?>.Content(v13, v31, v26);

        _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(v38, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
        result = outlined destroy of AnyAccessibilityAction(v32);
        *(a1 + 296) = 0;
        return result;
      }
    }

    else
    {
      _s7SwiftUI21AnyAccessibilityValueVSgWOhTm_0(&v34, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
    }

    v23 = 0;
    goto LABEL_18;
  }

  return result;
}

uint64_t closure #1 in ToggleStyleConfiguration.accessibilityActions.getter@<X0>(_BYTE *a2@<X8>)
{
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v4);
  result = dispatch thunk of AnyLocation.set(_:transaction:)();
  *a2 = 2;
  return result;
}

double AccessibilityImageModifier.scrapeableContent(environment:idiom:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = swift_allocObject();
  AccessibilityImageConfiguration.attachment.getter();
  outlined init with copy of AccessibilityProperties(v9, v7 + 16);
  outlined destroy of AccessibilityAttachment(v9);
  *(v7 + 304) = v5;
  *(v7 + 312) = v6;
  *(v7 + 320) = *a2;
  *a3 = v7 | 0x3000000000000000;

  return result;
}

double static AccessibilityImageModifier.makeAccessibilityViewModifier(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, double *a4@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a2[1];
  v16 = *a2;
  v17 = v6;
  v18 = a2[2];
  v7 = *(a2 + 6);
  v8 = *(a2 + 14);
  v21 = *(a2 + 60);
  v22 = *(a2 + 76);
  v19 = v7;
  v20 = v8;
  a3(&v14);
  *&v16 = v7;
  DWORD2(v16) = v8;
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
  {
    *&v16 = v7;
    DWORD2(v16) = v8;
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      *&v16 = v14;
      DWORD2(v16) = LODWORD(v15);
      v9 = PreferencesOutputs.subscript.getter();
      if ((v9 & 0x100000000) != 0)
      {
        v10 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v10 = v9;
      }

      KeyPath = swift_getKeyPath();
      LODWORD(v16) = v5;
      *(&v16 + 1) = partial apply for specialized closure #1 in Attribute.subscript.getter;
      *&v17 = KeyPath;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      type metadata accessor for RelationshipModifier<String>(0, &lazy cache variable for type metadata for Map<AccessibilityImageModifier, AccessibilityAttachment>, &type metadata for AccessibilityImageModifier, MEMORY[0x1E697FFF0], MEMORY[0x1E698D398]);
      lazy protocol witness table accessor for type Map<AccessibilityImageModifier, AccessibilityAttachment> and conformance Map<A, B>();

      v12 = Attribute.init<A>(body:value:flags:update:)();

      *&v16 = __PAIR64__(v12, v10);
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type AccessibilityAttachment.DeferredTransform and conformance AccessibilityAttachment.DeferredTransform();
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v16) = 0;
      PreferencesOutputs.subscript.setter();
    }
  }

  *a4 = v14;
  result = v15;
  a4[1] = v15;
  return result;
}

BOOL protocol witness for AccessibilityViewModifier.willCreateNode(for:) in conformance AccessibilityImageModifier(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

uint64_t AccessibilityStaticTextModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v47 = a3;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v38 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v45 = &v38 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v46 = &v38 - v20;
  v21 = *v3;
  v39 = *(v3 + 8);
  v40 = v21;
  v41 = *(v3 + 24);
  v22 = *(v3 + 144);
  v76 = *(v3 + 128);
  v77 = v22;
  v78 = *(v3 + 160);
  v79 = *(v3 + 176);
  v23 = *(v3 + 80);
  v72 = *(v3 + 64);
  v73 = v23;
  v24 = *(v3 + 112);
  v74 = *(v3 + 96);
  v75 = v24;
  v25 = *(v3 + 48);
  v70 = *(v3 + 32);
  v71 = v25;
  v26 = *(v3 + 16);
  v69 = *(v3 + 177);
  v27 = *(v3 + 178);
  AccessibilityProperties.init(reserving:)();
  v28 = v5;
  v29 = *(a2 + 24);
  View.accessibility(_:)(&v59, v28, v29);
  outlined destroy of AccessibilityProperties(&v59);
  if (v27)
  {
    v30 = 8;
  }

  else
  {
    v30 = 1;
  }

  LODWORD(v59) = v30;
  DWORD1(v59) = v30;
  ModifiedContent<>.accessibilityVisibility(_:)(v6, v12);
  v31 = *(v7 + 8);
  v31(v9, v6);
  v32 = v42;
  ModifiedContent<>.accessibilityLabel(_:)(v40, v39, v26, v41, v6, v42);
  v31(v12, v6);
  v81[6] = v76;
  v81[7] = v77;
  v81[8] = v78;
  v81[2] = v72;
  v81[3] = v73;
  v81[4] = v74;
  v81[5] = v75;
  v81[0] = v70;
  v81[1] = v71;
  v65 = v76;
  v66 = v77;
  v67 = v78;
  v61 = v72;
  v62 = v73;
  v63 = v74;
  v64 = v75;
  v82 = v79;
  v68 = v79;
  v59 = v70;
  v60 = v71;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v55 = v65;
  v56 = v66;
  v57 = v67;
  v58 = v68;
  v51 = v61;
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v49 = v59;
  v50 = v60;
  outlined init with copy of TextLayoutProperties(v81, &v80);
  v33 = v44;
  ModifiedContent<>.accessibilityTextLayoutProperties(_:)(v6, v44);
  v65 = v55;
  v66 = v56;
  v67 = v57;
  v68 = v58;
  v61 = v51;
  v62 = v52;
  v63 = v53;
  v64 = v54;
  v59 = v49;
  v60 = v50;
  outlined destroy of AccessibilityTextLayoutProperties(&v59);
  v31(v32, v6);
  v34 = 256;
  if (v69)
  {
    v34 = 1280;
  }

  *&v81[0] = v34;
  v35 = v45;
  ModifiedContent<>.accessibilityAddTraits(_:)(v81, v6);
  v31(v33, v6);
  v48[0] = v29;
  v48[1] = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v6, v48);
  v36 = v46;
  static ViewBuilder.buildExpression<A>(_:)();
  v31(v35, v6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v31)(v36, v6);
}

int *AccessibilityAdjustableModifier.Configuration.init(value:continuous:onIncrement:onDecrement:onSet:onEditingChanged:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16)
{
  v22 = type metadata accessor for Optional();
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v31[0] = a12;
  v31[1] = a13;
  v32 = a14;
  v33 = a15;
  v34 = a16;
  result = type metadata accessor for AccessibilityAdjustableModifier.Configuration(0, v31);
  *(a9 + result[17]) = a2;
  v24 = (a9 + result[18]);
  *v24 = a3;
  v24[1] = a4;
  v25 = (a9 + result[19]);
  *v25 = a5;
  v25[1] = a6;
  v26 = (a9 + result[20]);
  *v26 = a7;
  v26[1] = a8;
  v27 = (a9 + result[21]);
  *v27 = a10;
  v27[1] = a11;
  return result;
}

uint64_t AccessibilityAdjustableModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v27 = a3;
  v28 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v9[5];
  v24 = v9[4];
  v14 = v9[6];
  v13 = v9[7];
  v38[0] = v11;
  v38[1] = v10;
  v25 = v10;
  v38[2] = v24;
  v38[3] = v12;
  v38[4] = v14;
  v38[5] = v13;
  v15 = *(type metadata accessor for AccessibilityAdjustableModifier.Configuration(0, v38) + 68);
  v26 = v4;
  LOBYTE(v38[0]) = *(v4 + v15);
  (*(v6 + 16))(v8, v4, a2);
  v16 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v11;
  *(v17 + 3) = v10;
  v18 = v24;
  *(v17 + 4) = v24;
  *(v17 + 5) = v12;
  *(v17 + 6) = v14;
  *(v17 + 7) = v13;
  (*(v6 + 32))(&v17[v16], v8, a2);
  v19 = lazy protocol witness table accessor for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction();
  v20 = v27;
  View.accessibilityAction<A>(_:label:image:_:)(v38, 0, 0, 0, 0, 0, partial apply for closure #1 in AccessibilityAdjustableModifier.body(content:), v17, v27, v11, &type metadata for AccessibilityAdjustableAction, v18, v19);

  v30 = v11;
  v31 = v25;
  v32 = v18;
  v33 = v12;
  v34 = v14;
  v35 = v13;
  v36 = v20;
  v37 = v26;
  type metadata accessor for Optional();
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in AccessibilityAdjustableModifier.body(content:), v29, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v21, v38);
}

uint64_t closure #1 in AccessibilityAdjustableModifier.body(content:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v23 = a3;
  v16 = *a1;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v17 = type metadata accessor for AccessibilityAdjustableModifier.Configuration(0, &v23);
  v18 = (*(a2 + v17[21]))(1);
  if (v16)
  {
    v19 = *(a2 + v17[19]);
    if (!v19)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v19 = *(a2 + v17[18]);
  if (v19)
  {
LABEL_5:
    v19(v18);
  }

LABEL_6:
  *a9 = 2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v20 = type metadata accessor for AccessibilityAdjustableModifier.Configuration(0, &v23);
  return (*(a2 + *(v20 + 84)))(0);
}

uint64_t closure #2 in AccessibilityAdjustableModifier.body(content:)(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v51 = a6;
  v48 = a8;
  v50 = a3;
  v45 = a2;
  v46 = a4;
  v43 = a1;
  v53 = a9;
  v52[0] = a4;
  v52[1] = a5;
  v52[2] = a6;
  v52[3] = a7;
  v39 = a7;
  v52[4] = a8;
  v52[5] = a9;
  v49 = type metadata accessor for AccessibilityAdjustableModifier(0, v52);
  v44 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v38 - v11;
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - v13;
  v15 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  v40 = &v38 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v41 = v24;
  v42 = &v38 - v23;
  v25 = v24;
  (*(v24 + 16))(v17, a2, v15, v22);
  v26 = *(a5 - 8);
  (*(v26 + 16))(v14, v43, a5);
  (*(v26 + 56))(v14, 0, 1, a5);
  v27 = v48;
  AccessibilityValueStorage.init<A>(_:description:)();
  ModifiedContent<>.accessibilityValue(_:)(v15, v20);
  outlined destroy of AccessibilityValueStorage(v52);
  v43 = *(v25 + 8);
  v43(v17, v15);
  v28 = v44;
  v29 = v47;
  v30 = v49;
  (*(v44 + 16))(v47, v50, v49);
  v31 = (*(v28 + 80) + 64) & ~*(v28 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = v46;
  *(v32 + 3) = a5;
  v33 = v39;
  *(v32 + 4) = v51;
  *(v32 + 5) = v33;
  v34 = v53;
  *(v32 + 6) = v27;
  *(v32 + 7) = v34;
  (*(v28 + 32))(&v32[v31], v29, v30);
  v35 = v42;
  v36 = v40;
  ModifiedContent<>.accessibilitySetValueAction(_:)(partial apply for closure #1 in closure #2 in AccessibilityAdjustableModifier.body(content:), v32, v15, v42);

  v43(v36, v15);
  return (*(v41 + 40))(v45, v35, v15);
}

uint64_t closure #1 in closure #2 in AccessibilityAdjustableModifier.body(content:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a1;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v16 = type metadata accessor for AccessibilityAdjustableModifier.Configuration(0, &v20);
  (*(a2 + *(v16 + 84)))(1);
  v17 = *(a2 + *(v16 + 80));
  v20 = v15;
  v17(&v20);
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v18 = type metadata accessor for AccessibilityAdjustableModifier.Configuration(0, &v20);
  return (*(a2 + *(v18 + 84)))(0);
}

uint64_t closure #2 in AccessibilitySliderModifier.init(_:value:)(double *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v6[18] = *a1;
  v6[19] = v2;
  v6[20] = v3;
  outlined init with copy of SliderStyleConfiguration(a1, v6);
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for Binding<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v6);
  v4 = v6[0] + a1[9];
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  v6[0] = v4;
  dispatch thunk of AnyLocation.set(_:transaction:)();
  return outlined destroy of SliderStyleConfiguration(a1);
}

uint64_t closure #3 in AccessibilitySliderModifier.init(_:value:)(double *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v6[18] = *a1;
  v6[19] = v2;
  v6[20] = v3;
  outlined init with copy of SliderStyleConfiguration(a1, v6);
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for Binding<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v6);
  v4 = v6[0] - a1[9];
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  v6[0] = v4;
  dispatch thunk of AnyLocation.set(_:transaction:)();
  return outlined destroy of SliderStyleConfiguration(a1);
}

void closure #4 in AccessibilitySliderModifier.init(_:value:)(void **a1, void *a2, void *a3, void *a4, void *a5, uint64_t *a6)
{
  if (a2)
  {
    v11 = *a1;
    v34 = a2;
    v35 = a3;
    v36 = a4;
    v37 = a5;
    v12 = a5;
    v13 = a2;
    v14 = a3;
    v15 = a4;
    v16 = AccessibilityBoundedNumber.minValue.getter();
    if (v16 && (v17 = v16, [v16 doubleValue], v19 = v18, v17, v34 = v13, v35 = a3, v36 = a4, v37 = a5, (v20 = AccessibilityBoundedNumber.maxValue.getter()) != 0))
    {
      v21 = v20;
      [v20 doubleValue];
      v23 = v22;

      v34 = v13;
      v35 = a3;
      v36 = a4;
      v37 = a5;
      v24 = AccessibilityBoundedNumber.step.getter();
      if (v24)
      {
        v25 = v24;
        v38 = *&v11;
        v26 = AccessibilityNumber.value.getter();
        [v26 doubleValue];
        v28 = v27;

        [v25 doubleValue];
        v30 = v29;

        if (v30 == 1.0)
        {
          v31 = round(v28);
        }

        else
        {
          v31 = v30 * round(v28 / v30);
        }
      }

      else
      {
        v34 = v11;
        v32 = AccessibilityNumber.value.getter();
        [v32 doubleValue];
        v31 = v33;
      }

      v38 = (v31 - v19) / (v23 - v19);
      outlined init with copy of SliderStyleConfiguration(a6, &v34);
      dispatch thunk of AnyLocation.set(_:transaction:)();
      outlined consume of AccessibilityBoundedNumber?(a2, a3, a4, a5);
      outlined destroy of SliderStyleConfiguration(a6);
    }

    else
    {
      outlined consume of AccessibilityBoundedNumber?(a2, a3, a4, a5);
    }
  }
}

double AccessibilityStepperModifier.init(_:value:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1[1];
  v30 = *a1;
  v7 = a1[3];
  v8 = a1[4];
  v27 = a1[5];
  v28 = a1[2];
  v9 = a1[6];
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  if (*a2)
  {
    v14 = *(a2 + 8);
  }

  else
  {
    v14 = 0;
  }

  v35 = *(a2 + 8);
  if (*a2)
  {
    v15 = *(a2 + 16);
  }

  else
  {
    v15 = 0;
  }

  v34 = *(a2 + 16);
  if (*a2)
  {
    v16 = *(a2 + 24);
  }

  else
  {
    v16 = 0;
  }

  *&v40 = *a2;
  *(&v40 + 1) = v14;
  *&v41 = v15;
  *(&v41 + 1) = v16;
  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v13;
  v17[6] = v30;
  v17[7] = v6;
  v17[8] = v28;
  v17[9] = v7;
  v18 = v8;
  v17[10] = v8;
  v17[11] = v27;
  v17[12] = v9;
  v19 = v9;
  v29 = lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue();
  v31 = lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue();
  v20 = lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue();
  *&v26 = a4;
  *(&v26 + 1) = v29;
  AccessibilityAdjustableModifier.Configuration.init(value:continuous:onIncrement:onDecrement:onSet:onEditingChanged:)(&v40, 0, v6, v28, v7, v18, partial apply for closure #2 in AccessibilityStepperModifier.init(_:value:), v17, v38, v27, v19, a3, MEMORY[0x1E69804B8], v26, v31, v20);
  v36[4] = v38[4];
  v36[5] = v38[5];
  v37 = v39;
  v36[0] = v38[0];
  v36[1] = v38[1];
  v36[2] = v38[2];
  v36[3] = v38[3];
  *&v40 = a3;
  *(&v40 + 1) = MEMORY[0x1E69804B8];
  *&v41 = a4;
  *(&v41 + 1) = v29;
  *&v42 = v31;
  *(&v42 + 1) = v20;
  v21 = type metadata accessor for AccessibilityAdjustableModifier.Configuration(0, &v40);
  (*(*(v21 - 8) + 32))(&v40, v36, v21);
  v22 = v45;
  *(a5 + 64) = v44;
  *(a5 + 80) = v22;
  *(a5 + 96) = v46;
  v23 = v41;
  *a5 = v40;
  *(a5 + 16) = v23;
  v24 = v43;
  *(a5 + 32) = v42;
  *(a5 + 48) = v24;
  outlined copy of AccessibilityBoundedNumber?(v10, v35, v34, v13);
  outlined copy of AppIntentExecutor?(v6, v28);
  outlined copy of AppIntentExecutor?(v7, v18);

  return result;
}

void closure #2 in AccessibilityStepperModifier.init(_:value:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (!a2)
  {
    return;
  }

  v11 = a5;
  a2;
  v12 = a3;
  v13 = a4;
  v14 = AccessibilityNumber.value.getter();
  [v14 doubleValue];
  v16 = v15;

  v17 = AccessibilityBoundedNumber.value.getter();
  [v17 doubleValue];
  v19 = v18;

  v20 = v16 - v19;
  v21 = AccessibilityBoundedNumber.step.getter();
  if (v21)
  {
    v22 = v21;
    [v21 doubleValue];
    v24 = v23;
  }

  else
  {
    v24 = 1.0;
  }

  v25 = round(v20 / v24);
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  v26 = fabs(v25);
  if (v26 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return;
  }

  if (v26 >= 1)
  {
    v27 = v26 + 1;
    while (v20 <= 0.0)
    {
      v28 = *(a6 + 24);
      if (v28)
      {
        goto LABEL_11;
      }

LABEL_12:
      if (--v27 <= 1)
      {
        goto LABEL_16;
      }
    }

    v28 = *(a6 + 8);
    if (!v28)
    {
      goto LABEL_12;
    }

LABEL_11:
    v28();
    goto LABEL_12;
  }

LABEL_16:

  outlined consume of AccessibilityBoundedNumber?(a2, a3, a4, a5);
}

uint64_t AccessibilityStepperModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v31 = a3;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for ModifiedContent();
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = v3[3];
  v13 = v3[5];
  v43 = v3[4];
  v44 = v13;
  v14 = v3[1];
  v40[0] = *v3;
  v40[1] = v14;
  v15 = v3[3];
  v17 = *v3;
  v16 = v3[1];
  v41 = v3[2];
  v42 = v15;
  v18 = v3[5];
  v37 = v43;
  v38 = v18;
  v33 = v17;
  v34 = v16;
  v45 = *(v3 + 12);
  v39 = *(v3 + 12);
  v35 = v41;
  v36 = v12;
  v19 = *(a2 + 24);
  v20 = lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue();
  v21 = lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue();
  v22 = lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue();
  *&v46 = v5;
  *(&v46 + 1) = MEMORY[0x1E69804B8];
  *&v47 = v19;
  *(&v47 + 1) = v20;
  *&v48 = v21;
  *(&v48 + 1) = v22;
  v23 = type metadata accessor for AccessibilityAdjustableModifier(0, &v46);
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v46, v40, v23);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityAdjustableModifier<A, B>, v23);
  v32[0] = v19;
  v32[1] = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v6, v32);
  (*(WitnessTable + 40))(v29, v23, WitnessTable);
  v50 = v37;
  v51 = v38;
  v52 = v39;
  v46 = v33;
  v47 = v34;
  v48 = v35;
  v49 = v36;
  (*(v24 + 8))(&v46, v23);
  static ViewBuilder.buildExpression<A>(_:)();
  v26 = *(v30 + 8);
  v26(v8, v6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v26)(v11, v6);
}

uint64_t AccessibilityDisclosureModifier.init(_:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v5);
  v3 = v5;

  return v3 | 0x100u;
}

uint64_t AccessibilityDisclosureModifier.body(content:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20[-1] - v12;
  v21 = a2 & 1;
  v14 = lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue();
  v15 = lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue();
  v16 = lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue();
  View.accessibilityValue<A>(_:description:)(&v21, 0, 0, 0, 0, a3, MEMORY[0x1E6980878], a4, v10, v14, v15, v16);
  v20[0] = a4;
  v20[1] = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v7, v20);
  static ViewBuilder.buildExpression<A>(_:)();
  v17 = *(v8 + 8);
  v17(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v17)(v13, v7);
}

uint64_t AccessibilityDisclosureModifier.List.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v27 = a3;
  v25 = a1;
  v26 = a2;
  v28 = a6;
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v25 - v19;
  View.accessibilityCombinedElement(options:ignoredTraits:)(0, a4, a5, v11);
  *&v30 = 3;
  ModifiedContent<>.accessibilityAddTraits(_:)(&v30, v8);
  v21 = *(v9 + 8);
  v21(v11, v8);
  v30 = 0u;
  v31 = 0u;
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  v23 = v26;
  *(v22 + 32) = v25;
  *(v22 + 40) = v23;
  *(v22 + 48) = v27;

  ModifiedContent<>.accessibilityAction(kind:_:)(&v30, partial apply for closure #1 in AccessibilityDisclosureModifier.List.body(content:), v22, v8);

  outlined consume of AccessibilityActionKind.ActionKind(v30, *(&v30 + 1), v31, *(&v31 + 1));
  v21(v14, v8);
  v29[0] = a5;
  v29[1] = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v8, v29);
  static ViewBuilder.buildExpression<A>(_:)();
  v21(v17, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v21)(v20, v8);
}

uint64_t closure #1 in AccessibilityDisclosureModifier.List.body(content:)@<X0>(_BYTE *a4@<X8>)
{
  type metadata accessor for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v6);
  result = dispatch thunk of AnyLocation.set(_:transaction:)();
  *a4 = 3;
  return result;
}

void AccessibilityGaugeModifier.body(content:)()
{
  v0 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v0);
  v1 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  View.accessibilityIgnoreViewResponders()();
}

uint64_t sub_18C4774AC()
{
  *(v9 - 112) = v8;
  *(v9 - 104) = &protocol witness table for IgnoreViewRespondersModifier;
  v11 = MEMORY[0x1E697E858];
  *(v9 - 184) = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(v11, v4, v9 - 112);
  View.accessibilityCombinedElement(options:ignoredTraits:)(0, v4, WitnessTable, v5);
  (*(v7 + 8))(v6, v4);
  *(v9 - 120) = v10;
  *(v9 - 136) = 0;
  *(v9 - 128) = 0;
  *(v9 - 152) = 0x3FF0000000000000;
  *(v9 - 144) = 0;
  ModifiedContent<>.accessibilityValue<A>(_:from:to:description:)(v9 - 120, v9 - 136, v9 - 152, 0, 0, 0, 0, v1, v3, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63F0]);
  v13 = *(v0 + 8);
  v13(v5, v1);
  *(v9 - 168) = WitnessTable;
  *(v9 - 160) = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable(*(v9 - 184), v1, v9 - 168);
  static ViewBuilder.buildExpression<A>(_:)();
  v13(v3, v1);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v2, v1);
}

uint64_t AccessibilityGroupBoxLabelModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v26 = a1;
  v27 = a4;
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  type metadata accessor for RelationshipModifier<String>(255, &lazy cache variable for type metadata for RelationshipModifier<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], type metadata accessor for RelationshipModifier);
  v13 = type metadata accessor for ModifiedContent();
  v25 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  View.accessibilityCombinedElement(options:ignoredTraits:)(0, a2, a3, v9);
  v30[0] = 2;
  ModifiedContent<>.accessibilityAddTraits(_:)(v30, v6);
  v19 = *(v7 + 8);
  v19(v9, v6);
  v30[0] = 0x786F4270756F7267;
  v30[1] = 0xE800000000000000;
  v29[0] = a3;
  v29[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v20 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v29);
  View.accessibilityLabeledPair<A>(role:id:in:)(0, v30, v26, v6, MEMORY[0x1E69E6158], WitnessTable);
  v19(v12, v6);
  v28[0] = WitnessTable;
  v28[1] = &protocol witness table for RelationshipModifier<A>;
  swift_getWitnessTable(v20, v13, v28);
  static ViewBuilder.buildExpression<A>(_:)();
  v22 = *(v25 + 8);
  v22(v15, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v22)(v18, v13);
}

uint64_t AccessibilityGroupBoxContentModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v7 = MEMORY[0x1E69E6158];
  type metadata accessor for RelationshipModifier<String>(255, &lazy cache variable for type metadata for RelationshipModifier<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], type metadata accessor for RelationshipModifier);
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - v13;
  v19[0] = 0x786F4270756F7267;
  v19[1] = 0xE800000000000000;
  View.accessibilityLabeledPair<A>(role:id:in:)(1, v19, a1, a2, v7, a3);
  v18[0] = a3;
  v18[1] = &protocol witness table for RelationshipModifier<A>;
  swift_getWitnessTable(MEMORY[0x1E697E858], v8, v18);
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v9 + 8);
  v15(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v14, v8);
}

uint64_t AccessibilitySectionHeaderModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v20[1] = a4;
  type metadata accessor for AccessibilitySectionHeaderModifier.ChildModifier(255, a2, a3, a5);
  v8 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for StaticIf();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  v20[10] = a2;
  v20[11] = a3;
  v20[12] = a1;
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a1;
  v16 = lazy protocol witness table accessor for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling();
  v22[0] = a3;
  v22[1] = &protocol witness table for AccessibilitySectionHeaderModifier<A>.ChildModifier;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v22);
  StaticIf<>.init(_:then:else:)();
  v21[0] = v16;
  v21[1] = a3;
  v21[2] = WitnessTable;
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v9, v21);
  static ViewBuilder.buildExpression<A>(_:)();
  v17 = *(v10 + 8);
  v17(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v17)(v15, v9);
}

uint64_t closure #1 in AccessibilitySectionHeaderModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t closure #2 in AccessibilitySectionHeaderModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AccessibilitySectionHeaderModifier.ChildModifier(255, a2, a3, a4);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-1] - v13;
  v19 = 2;
  MEMORY[0x18D00A570](&v19, a2, v6, a3, v12);
  v18[0] = a3;
  v18[1] = &protocol witness table for AccessibilitySectionHeaderModifier<A>.ChildModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v7, v18);
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v8 + 8);
  v15(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v14, v7);
}

uint64_t AccessibilitySectionHeaderModifier.ChildModifier.updatedAttachment(for:nodes:atIndex:)(void x0_0, void x1_0, uint64_t a1)
{
  if (a1)
  {
    AccessibilityProperties.init()();
  }

  else
  {
    v3 = *v2;
    AccessibilityProperties.init()();
    v5[5] = v3;
    v5[6] = 0;
    v6 = 0;
  }

  static AccessibilityAttachment.properties(_:)();
  return outlined destroy of AccessibilityProperties(v5);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilitySectionHeaderModifier<A>.ChildModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilitySectionHeaderModifier<A>.ChildModifier, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t AccessibilityLabelModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AccessibilityLabelModifier.ChildModifier(255, a2, a3, a4);
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - v11;
  MEMORY[0x18D00A570](v10);
  v15[0] = a3;
  v15[1] = &protocol witness table for AccessibilityLabelModifier<A>.ChildModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v5, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v6 + 8);
  v13(v8, v5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v12, v5);
}

uint64_t AccessibilityLabelModifier.ChildModifier.updatedAttachment(for:nodes:atIndex:)()
{
  AccessibilityProperties.init()();
  *&v2[40] = vdupq_n_s64(0x80000uLL);
  v2[56] = 0;
  static AccessibilityAttachment.properties(_:)();
  return outlined destroy of AccessibilityProperties(v2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityLabelModifier<A>.ChildModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityLabelModifier<A>.ChildModifier, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

void AccessibilityBadgedViewModifier.body(content:)(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  View.accessibility()(a5, a6);
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    v12[0] = a1;
    v12[1] = a2;
    v12[2] = a3;
    v12[3] = a4;
    closure #1 in AccessibilityBadgedViewModifier.body(content:)(v12, a7);
  }
}

uint64_t closure #1 in AccessibilityBadgedViewModifier.body(content:)(uint64_t *a1, uint64_t a2)
{
  v19 = a2;
  v3 = type metadata accessor for ModifiedContent();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = *a1;
  v11 = a1[2];
  if (v11 < 0)
  {
    v13 = a1[1];
    outlined copy of Text.Storage(*a1, v13, v11 & 1);

    outlined copy of Text.Storage(v10, v13, v11 & 1);
  }

  else
  {
    v20 = *a1;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;

    LOBYTE(v11) = 0;
  }

  v14 = v6;
  v15 = v6;
  v16 = v19;
  (*(v4 + 16))(v14, v19, v3);
  ModifiedContent<>.accessibilityValue(_:)(v10, v13, v11 & 1, v3, v9);
  outlined consume of Text.Storage(v10, v13, v11 & 1);

  outlined consume of Text.Storage(v10, v13, v11 & 1);

  (*(v4 + 8))(v15, v3);
  return (*(v4 + 40))(v16, v9, v3);
}

uint64_t AccessibilityBadgedViewModifier.Badge.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21[-1] - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21[-1] - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21[-1] - v16;
  View.accessibilityHidden(_:)(1, a2, a3);
  v22 = 19;
  ModifiedContent<>.accessibilityAddTraits(_:)(v5, v11);
  v18 = *(v6 + 8);
  v18(v8, v5);
  v22 = 2;
  ModifiedContent<>.accessibilityIdentifier(_:placement:)(v5, v14);
  v18(v11, v5);
  v21[0] = a3;
  v21[1] = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v5, v21);
  static ViewBuilder.buildExpression<A>(_:)();
  v18(v14, v5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v18)(v17, v5);
}

uint64_t AccessibilityListCoreCellModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a1;
  v17[2] = a3;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  outlined init with copy of AccessibilityScrollableContext((v3 + 8), v32);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v25 = 0;
  v26 = 0;
  v13 = 4;
  if (!*v3)
  {
    v13 = 0;
  }

  v20 = v13;
  v21 = v13;
  v22 = 0;
  memset(v31, 0, 24);
  v31[3] = 1;
  v31[5] = 0;
  v31[4] = 0;
  v18[2] = 0;
  v19 = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v23);
  v37[3] = v23[6];
  v37[4] = v23[7];
  v37[5] = v23[8];
  v36 = v23[2];
  v37[0] = v23[3];
  v37[1] = v23[4];
  v37[2] = v23[5];
  v34 = v23[0];
  LOBYTE(v37[6]) = v24;
  v35 = v23[1];
  AccessibilityProperties.init(identifier:label:traits:value:visibility:textLayoutProperties:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(&v30);
  v35 = v32[1];
  v36 = v32[2];
  v37[0] = *v33;
  *(v37 + 15) = *&v33[15];
  v34 = v32[0];
  memcpy(&v37[1] + 8, v31, 0x128uLL);
  v14 = *(a2 + 24);
  MEMORY[0x18D00A570](&v34, v5, &type metadata for AccessibilityScrollableContextModifier, v14);
  outlined destroy of AccessibilityScrollableContextModifier(&v34);
  v18[0] = v14;
  v18[1] = &protocol witness table for AccessibilityScrollableContextModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v6, v18);
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = *(v7 + 8);
  v15(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v15)(v12, v6);
}

uint64_t AccessibilityTableCellModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v19[1] = a2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  v16 = *(a1 + 24);
  View.accessibilityCombinedElement(options:ignoredTraits:)(0, v5, v16, v9);
  ModifiedContent<>.accessibilityTableContext(_:)(v3, v6, v12);
  v17 = *(v7 + 8);
  v17(v9, v6);
  v20[0] = v16;
  v20[1] = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable(MEMORY[0x1E697E858], v6, v20);
  static ViewBuilder.buildExpression<A>(_:)();
  v17(v12, v6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v17)(v15, v6);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance AccessibilityCustomSectionHeaderStyling(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  PropertyList.subscript.getter();
  return v5;
}

BOOL protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance AccessibilityBadgedViewNeedsValue(uint64_t *a1)
{
  lazy protocol witness table accessor for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue();
  PropertyList.subscript.getter();
  return (v2 & 1) == 0;
}

unint64_t lazy protocol witness table accessor for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler()
{
  result = lazy protocol witness table cache variable for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler;
  if (!lazy protocol witness table cache variable for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityAppIntentHandler, &type metadata for AccessibilityAppIntentHandler, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler;
  if (!lazy protocol witness table cache variable for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityAppIntentHandler, &type metadata for AccessibilityAppIntentHandler, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler;
  if (!lazy protocol witness table cache variable for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityAppIntentHandler, &type metadata for AccessibilityAppIntentHandler, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAppIntentHandler and conformance AccessibilityAppIntentHandler);
  }

  return result;
}

uint64_t outlined destroy of ClosedRange<Date>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for LinkDestination.Configuration?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AccessibilityStepperValue and conformance AccessibilityStepperValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue;
  if (!lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69804C8], MEMORY[0x1E69804B8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue;
  if (!lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69804C0], MEMORY[0x1E69804B8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue;
  if (!lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69804B0], MEMORY[0x1E69804B8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityStepperValue and conformance AccessibilityStepperValue);
  }

  return result;
}

void type metadata accessor for AccessibilityLargeContentViewModifier<PlaceholderLargeContentView, MenuStyleConfiguration.Label>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v9[6] = v4;
    v9[7] = v5;
    v9[0] = &type metadata for PlaceholderLargeContentView;
    v9[1] = a3;
    v9[2] = &protocol witness table for PlaceholderLargeContentView;
    v9[3] = a4;
    v7 = type metadata accessor for AccessibilityLargeContentViewModifier(0, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t partial apply for closure #1 in AccessibilityButtonModifier.Attachment.accessibilityActions.getter@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 48))();
  *a1 = 2;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling()
{
  result = lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityCustomSectionHeaderStyling, &type metadata for AccessibilityCustomSectionHeaderStyling, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityCustomSectionHeaderStyling, &type metadata for AccessibilityCustomSectionHeaderStyling, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityCustomSectionHeaderStyling, &type metadata for AccessibilityCustomSectionHeaderStyling, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityCustomSectionHeaderStyling, &type metadata for AccessibilityCustomSectionHeaderStyling, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling;
  if (!lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AccessibilityCustomSectionHeaderStyling, &type metadata for AccessibilityCustomSectionHeaderStyling, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityCustomSectionHeaderStyling and conformance AccessibilityCustomSectionHeaderStyling);
  }

  return result;
}

void type metadata accessor for AccessibilityProxyTransformModifier<Never, PrimitiveButtonStyleConfiguration.Label>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v9[6] = v4;
    v9[7] = v5;
    v9[0] = MEMORY[0x1E69E73E0];
    v9[1] = a3;
    v9[2] = MEMORY[0x1E6982070];
    v9[3] = a4;
    v7 = type metadata accessor for AccessibilityProxyTransformModifier(0, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityShowsLabelIcon>, lazy protocol witness table accessor for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon, &type metadata for AccessibilityShowsLabelIcon, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in AccessibilityAdjustableModifier.body(content:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v11 = *(type metadata accessor for AccessibilityAdjustableModifier(0, v14) - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return closure #1 in AccessibilityAdjustableModifier.body(content:)(a1, v12, v5, v6, v7, v8, v9, v10, a2);
}

uint64_t objectdestroy_42Tm()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v12 = v2;
  v13 = v1;
  v14 = v3;
  v15 = v4;
  v16 = v6;
  v17 = v5;
  v7 = *(type metadata accessor for AccessibilityAdjustableModifier(0, &v12) - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));
  v9 = *(v1 - 8);
  if (!(*(v9 + 48))(v8, 1, v1))
  {
    (*(v9 + 8))(v8, v1);
  }

  v12 = v2;
  v13 = v1;
  v14 = v3;
  v15 = v4;
  v16 = v6;
  v17 = v5;
  v10 = type metadata accessor for AccessibilityAdjustableModifier.Configuration(0, &v12);
  if (*&v8[*(v10 + 72)])
  {
  }

  if (*&v8[*(v10 + 76)])
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in AccessibilityAdjustableModifier.body(content:)(uint64_t *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = *(type metadata accessor for AccessibilityAdjustableModifier(0, v12) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return closure #1 in closure #2 in AccessibilityAdjustableModifier.body(content:)(a1, v10, v3, v4, v5, v6, v7, v8);
}

void *destroy for AccessibilityTableCellModifier(void *a1)
{
  if (!*(a1 + 40))
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

__n128 initializeWithCopy for AccessibilityTableCellModifier(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  else
  {
    v2 = *(a2 + 24);
    *(a1 + 24) = v2;
    (**(v2 - 8))();
    *(a1 + 40) = 0;
  }

  return result;
}

__int128 *assignWithCopy for AccessibilityTableCellModifier(__int128 *result, __int128 *a2)
{
  if (*(result + 40) == 255)
  {
    if (*(a2 + 40))
    {
      v10 = *a2;
      v11 = a2[1];
      *(result + 25) = *(a2 + 25);
      *result = v10;
      result[1] = v11;
      return result;
    }

    v6 = *(a2 + 3);
    *(result + 3) = v6;
    *(result + 4) = *(a2 + 4);
    v7 = result;
    (**(v6 - 8))(result, a2);
    goto LABEL_11;
  }

  if (*(a2 + 40) == 255)
  {
    v3 = result;
    outlined destroy of AccessibilityTableContext(result);
    v4 = *(a2 + 25);
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    *(v3 + 25) = v4;
    return v3;
  }

  if (result != a2)
  {
    v7 = result;
    outlined destroy of AccessibilityTableContext(result);
    if (*(a2 + 40))
    {
      v8 = *a2;
      v9 = a2[1];
      *(v7 + 25) = *(a2 + 25);
      *v7 = v8;
      *(v7 + 16) = v9;
      return v7;
    }

    v12 = *(a2 + 3);
    *(v7 + 24) = v12;
    *(v7 + 32) = *(a2 + 4);
    (**(v12 - 8))(v7, a2);
LABEL_11:
    result = v7;
    *(v7 + 40) = 0;
  }

  return result;
}

__n128 assignWithTake for AccessibilityTableCellModifier(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 255)
  {
    goto LABEL_7;
  }

  if (*(a2 + 40) == 255 || a1 != a2)
  {
    v3 = a1;
    v4 = a2;
    outlined destroy of AccessibilityTableContext(a1);
    a2 = v4;
    a1 = v3;
LABEL_7:
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    result = *(a2 + 25);
    *(a1 + 25) = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityTableCellModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityTableCellModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = ~a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityListCoreCellModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = a1 + 8;
  v4 = *(a2 + 78);
  if (v4 == 2)
  {
    v5 = *(a2 + 32);
    *(a1 + 32) = v5;
    (**(v5 - 8))(v3, a2 + 8);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
  }

  else if (v4 == 1)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v7 = *(a2 + 32);
    *(a1 + 32) = v7;
    (**(v7 - 8))(v3, a2 + 8);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 76) = *(a2 + 76);
  }

  *(a1 + 78) = v4;

  return a1;
}