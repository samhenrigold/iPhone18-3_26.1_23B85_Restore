uint64_t sub_1BA8745F4(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1BAA3A0CC();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1BA85B4BC(i, v5);
    sub_1BA8474EC(0, &qword_1EBC0ED80, off_1E7F046A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1BAA3A0AC();
    sub_1BAA3A0DC();
    sub_1BAA3A0EC();
    sub_1BAA3A0BC();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1BA874700(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1BAA39E4C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t static NEHotspotManager.shared.getter()
{
  if (qword_1EBC0E940 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1BA8747F8()
{
  type metadata accessor for NEHotspotManager();
  swift_allocObject();
  result = sub_1BA8748BC();
  qword_1EBC0EEB0 = result;
  return result;
}

uint64_t NEHotspotManager.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1BAA3A1DC();
  MEMORY[0x1BFAF8EE0](v1);
  return sub_1BAA3A1FC();
}

uint64_t sub_1BA8748BC()
{
  v7[0] = sub_1BAA39FBC();
  v1 = *(v7[0] - 8);
  MEMORY[0x1EEE9AC00](v7[0]);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BAA39FAC();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1BAA3995C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
  sub_1BAA3994C();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1BA87945C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE58, &qword_1BAA4D8C0);
  sub_1BA8794B4();
  sub_1BAA3A05C();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v7[0]);
  *(v0 + 16) = sub_1BAA39FEC();
  *(v0 + 24) = 0;
  *(v0 + 32) = [objc_opt_self() sharedManager];
  *(v0 + 40) = 0;
  return v0;
}

uint64_t sub_1BA874B60(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BA879578;
  *(v6 + 24) = v5;
  v9[4] = sub_1BA87957C;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA863DB0;
  v9[3] = &block_descriptor_266;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t NEHotspotManager.isEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BA874F50;
  *(v6 + 24) = v5;
  v9[4] = sub_1BA874F5C;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA863DB0;
  v9[3] = &block_descriptor_10;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_1BA874E18(uint64_t a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [v4 hotspot];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 isEnabled];

LABEL_5:
    *a2 = v7;
    return;
  }

  __break(1u);
}

void sub_1BA874EC0(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = v2;
    v5 = [v4 hotspot];
    if (v5)
    {
      v6 = v5;
      [v5 setEnabled_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*NEHotspotManager.isEnabled.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = *(v1 + 16);
  sub_1BAA39FDC();
  v4[64] = *v4;
  return sub_1BA875034;
}

void sub_1BA875034(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = *(*a1 + 48);
  isEscapingClosureAtFileLocation = *(*a1 + 56);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    v3 = v7;
    *(v7 + 16) = sub_1BA879578;
    *(v7 + 24) = v6;
    v2[4] = sub_1BA87957C;
    v2[5] = v7;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1BA863DB0;
    v2[3] = &block_descriptor_15_0;
    v8 = _Block_copy(v2);

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1BA879578;
  *(v10 + 24) = v9;
  v2[4] = sub_1BA87957C;
  v2[5] = v10;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1BA863DB0;
  v2[3] = &block_descriptor_26_2;
  v11 = _Block_copy(v2);

  dispatch_sync(isEscapingClosureAtFileLocation, v11);
  _Block_release(v11);
  v12 = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_1BA8752D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 16);
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1BA879660;
  *(v7 + 24) = v6;
  v10[4] = sub_1BA87957C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1BA863DB0;
  v10[3] = &block_descriptor_254;
  v8 = _Block_copy(v10);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t NEHotspotManager.evaluationProviderBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1BA8755C0;
  *(v8 + 24) = v7;
  v11[4] = sub_1BA87957C;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1BA863DB0;
  v11[3] = &block_descriptor_36_0;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void (*NEHotspotManager.evaluationProviderBundleIdentifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED70, &qword_1BAA4D470);
  sub_1BAA39FDC();
  v4[3] = *v4;
  return sub_1BA8756B0;
}

void sub_1BA8756B0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v6 = *(*a1 + 56);
  if ((a2 & 1) == 0)
  {
    v11 = swift_allocObject();
    v11[2] = v5;
    v11[3] = v3;
    v11[4] = v6;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1BA879660;
    *(v12 + 24) = v11;
    v2[4] = sub_1BA87957C;
    v2[5] = v12;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1BA863DB0;
    v2[3] = &block_descriptor_59;
    v13 = _Block_copy(v2);

    dispatch_sync(v4, v13);
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1BA879660;
  *(v8 + 24) = v7;
  v2[4] = sub_1BA87957C;
  v2[5] = v8;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1BA863DB0;
  v2[3] = &block_descriptor_48;
  v9 = _Block_copy(v2);

  dispatch_sync(v4, v9);
  _Block_release(v9);
  v10 = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

double sub_1BA875968@<D0>(_OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED70, &qword_1BAA4D470);
  sub_1BAA39FDC();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1BA8759D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 16);
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1BA879664;
  *(v7 + 24) = v6;
  v10[4] = sub_1BA87957C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1BA863DB0;
  v10[3] = &block_descriptor_242;
  v8 = _Block_copy(v10);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t NEHotspotManager.authenticationProviderBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1BA875E58;
  *(v8 + 24) = v7;
  v11[4] = sub_1BA87957C;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1BA863DB0;
  v11[3] = &block_descriptor_69;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_1BA875CA4(uint64_t a1@<X0>, SEL *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v6 = v4;
    v7 = [v6 hotspot];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 *a2];

      v10 = sub_1BAA39D9C();
      v12 = v11;

      *a3 = v10;
      a3[1] = v12;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1BA875D70(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    return;
  }

  v10 = v4;
  v7 = [v10 hotspot];
  v8 = v7;
  if (!a3)
  {
    if (v7)
    {
      v9 = sub_1BAA39D8C();
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return;
  }

  if (!v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = sub_1BAA39D8C();

LABEL_8:
  [v8 *a4];
}

void (*NEHotspotManager.authenticationProviderBundleIdentifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ED70, &qword_1BAA4D470);
  sub_1BAA39FDC();
  v4[3] = *v4;
  return sub_1BA875F48;
}

void sub_1BA875F48(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v6 = *(*a1 + 56);
  if ((a2 & 1) == 0)
  {
    v11 = swift_allocObject();
    v11[2] = v5;
    v11[3] = v3;
    v11[4] = v6;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1BA879664;
    *(v12 + 24) = v11;
    v2[4] = sub_1BA87957C;
    v2[5] = v12;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1BA863DB0;
    v2[3] = &block_descriptor_93_1;
    v13 = _Block_copy(v2);

    dispatch_sync(v4, v13);
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1BA879664;
  *(v8 + 24) = v7;
  v2[4] = sub_1BA87957C;
  v2[5] = v8;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1BA863DB0;
  v2[3] = &block_descriptor_82_0;
  v9 = _Block_copy(v2);

  dispatch_sync(v4, v9);
  _Block_release(v9);
  v10 = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_1BA876200(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BA879580;
  *(v6 + 24) = v5;
  v9[4] = sub_1BA87957C;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA863DB0;
  v9[3] = &block_descriptor_230;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t NEHotspotManager.safariDomains.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BA8764E4;
  *(v6 + 24) = v5;
  v9[4] = sub_1BA87957C;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA863DB0;
  v9[3] = &block_descriptor_103;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void (*NEHotspotManager.safariDomains.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EEB8, &qword_1BAA4DAB8);
  sub_1BAA39FDC();
  return sub_1BA8765C8;
}

void sub_1BA8765C8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if ((a2 & 1) == 0)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v5;
    *(v10 + 24) = v3;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1BA879580;
    *(v11 + 24) = v10;
    v2[4] = sub_1BA87957C;
    v2[5] = v11;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1BA863DB0;
    v2[3] = &block_descriptor_126_0;
    v12 = _Block_copy(v2);

    dispatch_sync(v4, v12);
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1BA879580;
  *(v7 + 24) = v6;
  v2[4] = sub_1BA87957C;
  v2[5] = v7;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1BA863DB0;
  v2[3] = &block_descriptor_115;
  v8 = _Block_copy(v2);

  dispatch_sync(v4, v8);
  _Block_release(v8);
  v9 = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_1BA87687C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EEB8, &qword_1BAA4DAB8);
  sub_1BAA39FDC();
  return v2;
}

void *sub_1BA8768E4@<X0>(void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EEB8, &qword_1BAA4DAB8);
  result = sub_1BAA39FDC();
  *a2 = v4;
  return result;
}

uint64_t sub_1BA876954(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BA879584;
  *(v6 + 24) = v5;
  v9[4] = sub_1BA87957C;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA863DB0;
  v9[3] = &block_descriptor_218;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t NEHotspotManager.evaluatedSSIDs.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BA876DB4;
  *(v6 + 24) = v5;
  v9[4] = sub_1BA87957C;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA863DB0;
  v9[3] = &block_descriptor_136;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void sub_1BA876C14(uint64_t a1@<X0>, SEL *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_8:
    *a3 = v10;
    return;
  }

  v6 = v4;
  v7 = [v6 hotspot];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 *a2];

    if (v9)
    {
      v10 = sub_1BAA39E4C();

      v6 = v9;
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_1BA876CFC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v5 = v3;
    v6 = [v5 hotspot];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1BAA39E3C();
      [v7 *a3];
    }

    else
    {
      __break(1u);
    }
  }
}

void (*NEHotspotManager.evaluatedSSIDs.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EEB8, &qword_1BAA4DAB8);
  sub_1BAA39FDC();
  return sub_1BA876E98;
}

void sub_1BA876E98(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if ((a2 & 1) == 0)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v5;
    *(v10 + 24) = v3;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1BA879584;
    *(v11 + 24) = v10;
    v2[4] = sub_1BA87957C;
    v2[5] = v11;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = sub_1BA863DB0;
    v2[3] = &block_descriptor_160;
    v12 = _Block_copy(v2);

    dispatch_sync(v4, v12);
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1BA879584;
  *(v7 + 24) = v6;
  v2[4] = sub_1BA87957C;
  v2[5] = v7;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = sub_1BA863DB0;
  v2[3] = &block_descriptor_149;
  v8 = _Block_copy(v2);

  dispatch_sync(v4, v8);
  _Block_release(v8);
  v9 = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_1BA877154()
{
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  v2 = sub_1BA8474EC(0, &qword_1EBC0ED80, off_1E7F046A0);
  *v1 = v0;
  v1[1] = sub_1BA877240;
  v3 = *(v0 + 120);

  return MEMORY[0x1EEE6DE38](v0 + 112, 0, 0, 0xD000000000000015, 0x80000001BAA511C0, sub_1BA8779C4, v3, v2);
}

uint64_t sub_1BA877240()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1BA8774F4;
  }

  else
  {
    v2 = sub_1BA877354;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BA877354()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1BA878DC0;
  *(v5 + 24) = v4;
  v0[12] = sub_1BA87957C;
  v0[13] = v5;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1BA863DB0;
  v0[11] = &block_descriptor_178;
  v6 = _Block_copy(v0 + 8);

  v7 = v2;

  dispatch_sync(v3, v6);

  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_1BA8774F4()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = v1;
  v4 = sub_1BAA398AC();
  v5 = sub_1BAA39F8C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BA83C000, v4, v5, "failed to load the configurations: %@", v7, 0xCu);
    sub_1BA878D58(v8);
    MEMORY[0x1BFAFC150](v8, -1, -1);
    MEMORY[0x1BFAFC150](v7, -1, -1);
  }

  v11 = v0[15];

  v12 = *(v11 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1BA877E0C;
  *(v13 + 24) = v11;
  v0[6] = sub_1BA87957C;
  v0[7] = v13;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BA863DB0;
  v0[5] = &block_descriptor_167;
  v14 = _Block_copy(v0 + 2);

  dispatch_sync(v12, v14);
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v0[17];
    sub_1BA877E1C();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }

  return result;
}

void sub_1BA8777BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE78, &qword_1BAA4D8D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 32);
  if (v9)
  {
    sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
    v10 = sub_1BAA39FCC();
    (*(v5 + 16))(v8, a1, v4);
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v11, v8, v4);
    *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
    aBlock[4] = sub_1BA878FB0;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA874700;
    aBlock[3] = &block_descriptor_273_0;
    v13 = _Block_copy(aBlock);

    [v9 loadConfigurationsWithCompletionQueue:v10 handler:v13];
    _Block_release(v13);
  }
}

id sub_1BA8779CC(uint64_t a1, id a2)
{
  if (!a2)
  {
    if (a1)
    {
      v13 = sub_1BA8745F4(a1);
      if (v13)
      {
        v14 = v13;
        v15 = v13 & 0xFFFFFFFFFFFFFF8;
        if (v13 >> 62)
        {
          v2 = sub_1BAA3A10C();
          if (v2)
          {
LABEL_10:
            v16 = 0;
            while (1)
            {
              if ((v14 & 0xC000000000000001) != 0)
              {
                v17 = MEMORY[0x1BFAF8D80](v16, v14);
              }

              else
              {
                if (v16 >= *(v15 + 16))
                {
                  goto LABEL_25;
                }

                v17 = *(v14 + 8 * v16 + 32);
              }

              v18 = v17;
              v19 = (v16 + 1);
              if (__OFADD__(v16, 1))
              {
                __break(1u);
LABEL_25:
                __break(1u);
                goto LABEL_26;
              }

              v20 = [v17 hotspot];
              if (v20)
              {
                break;
              }

              ++v16;
              if (v19 == v2)
              {
                goto LABEL_28;
              }
            }

            v21 = v20;

            if (qword_1EBC0E910 != -1)
            {
              swift_once();
            }

            v22 = sub_1BAA398CC();
            __swift_project_value_buffer(v22, qword_1EBC11B98);
            v23 = v18;
            v24 = sub_1BAA398AC();
            v25 = sub_1BAA39F7C();

            if (os_log_type_enabled(v24, v25))
            {
              v26 = swift_slowAlloc();
              v27 = swift_slowAlloc();
              *v26 = 138412290;
              *(v26 + 4) = v23;
              *v27 = v23;
              v28 = v23;
              _os_log_impl(&dword_1BA83C000, v24, v25, "found hotspot configuration:  %@", v26, 0xCu);
              sub_1BA878D58(v27);
              MEMORY[0x1BFAFC150](v27, -1, -1);
              MEMORY[0x1BFAFC150](v26, -1, -1);
            }

LABEL_34:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE78, &qword_1BAA4D8D0);
            return sub_1BAA39EAC();
          }
        }

        else
        {
          v2 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v2)
          {
            goto LABEL_10;
          }
        }

LABEL_28:

        if (qword_1EBC0E910 != -1)
        {
          swift_once();
        }

        v29 = sub_1BAA398CC();
        __swift_project_value_buffer(v29, qword_1EBC11B98);
        v30 = sub_1BAA398AC();
        v31 = sub_1BAA39F6C();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_1BA83C000, v30, v31, "failed to find hotspot configuration, using default", v32, 2u);
          MEMORY[0x1BFAFC150](v32, -1, -1);
        }
      }
    }

    result = sub_1BA879068();
    if (!result)
    {
      return result;
    }

    goto LABEL_34;
  }

  v2 = a2;
  v3 = a2;
  if (qword_1EBC0E910 != -1)
  {
LABEL_26:
    swift_once();
  }

  v4 = sub_1BAA398CC();
  __swift_project_value_buffer(v4, qword_1EBC11B98);
  v5 = v2;
  v6 = sub_1BAA398AC();
  v7 = sub_1BAA39F8C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BA83C000, v6, v7, "failed to load the configurations: %@", v8, 0xCu);
    sub_1BA878D58(v9);
    MEMORY[0x1BFAFC150](v9, -1, -1);
    MEMORY[0x1BFAFC150](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE78, &qword_1BAA4D8D0);
  return sub_1BAA39E9C();
}

void sub_1BA877E0C()
{
  *(v0 + 40) = 0;
  v1 = *(v0 + 24);
  *(v0 + 24) = 0;
}

unint64_t sub_1BA877E1C()
{
  result = qword_1EBC0EEC0;
  if (!qword_1EBC0EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0EEC0);
  }

  return result;
}

uint64_t sub_1BA877E90()
{
  sub_1BAA39FDC();

  return MEMORY[0x1EEE6DFA0](sub_1BA877F64, 0, 0);
}

uint64_t sub_1BA877F64()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v1[16];
  v1[2] = v2;
  v1[3] = sub_1BA8780F8;
  v5 = swift_continuation_init();
  v6 = *(v4 + 32);
  if (v6)
  {
    v7 = v5;
    v8 = *(v1[16] + 24);
    sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
    v9 = v8;
    v10 = sub_1BAA39FCC();
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    v1[14] = sub_1BA878E28;
    v1[15] = v11;
    v1[10] = MEMORY[0x1E69E9820];
    v1[11] = 1107296256;
    v1[12] = sub_1BA8538E4;
    v1[13] = &block_descriptor_186;
    v12 = _Block_copy(v1 + 10);

    [v6 saveConfiguration:v9 withCompletionQueue:v10 handler:v12];
    _Block_release(v12);
  }

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1BA8780F8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 136) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1BA878240, 0, 0);
  }

  else
  {
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_1BA878240()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = v1;
  v4 = sub_1BAA398AC();
  v5 = sub_1BAA39F8C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BA83C000, v4, v5, "failed to save the configuration: %@", v7, 0xCu);
    sub_1BA878D58(v8);
    MEMORY[0x1BFAFC150](v8, -1, -1);
    MEMORY[0x1BFAFC150](v7, -1, -1);
  }

  v11 = *(v0 + 136);

  sub_1BA877E1C();
  swift_allocError();
  *v12 = 0;
  swift_willThrow();

  v13 = *(v0 + 8);

  return v13();
}

void sub_1BA8783F4(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    sub_1BA877E1C();
    swift_allocError();
    v8 = 1;
LABEL_10:
    *v7 = v8;
    swift_willThrow();
    return;
  }

  v2 = *(a1 + 24);
  if (!v2 || (v3 = [v2 hotspot]) == 0)
  {
    sub_1BA877E1C();
    swift_allocError();
    v8 = 2;
    goto LABEL_10;
  }

  sub_1BA8474EC(0, &qword_1EBC0EE28, 0x1E695DF70);
  v4 = MEMORY[0x1BFAF8D20](MEMORY[0x1E69E7CC0]);
  v5 = *(a1 + 24);
  if (v5)
  {
    if (([v5 checkValidityAndCollectErrors_] & 1) == 0)
    {
      sub_1BA877E1C();
      swift_allocError();
      *v6 = 2;
      swift_willThrow();
    }
  }
}

uint64_t sub_1BA87854C()
{
  sub_1BAA39FDC();

  return MEMORY[0x1EEE6DFA0](sub_1BA878620, 0, 0);
}

uint64_t sub_1BA878620()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v1[16];
  v1[2] = v2;
  v1[3] = sub_1BA8787B4;
  v5 = swift_continuation_init();
  v6 = *(v4 + 32);
  if (v6)
  {
    v7 = v5;
    v8 = *(v1[16] + 24);
    sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
    v9 = v8;
    v10 = sub_1BAA39FCC();
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    v1[14] = sub_1BA878E68;
    v1[15] = v11;
    v1[10] = MEMORY[0x1E69E9820];
    v1[11] = 1107296256;
    v1[12] = sub_1BA8538E4;
    v1[13] = &block_descriptor_193;
    v12 = _Block_copy(v1 + 10);

    [v6 removeConfiguration:v9 withCompletionQueue:v10 handler:v12];
    _Block_release(v12);
  }

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1BA8787B4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 136) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1BA8788FC, 0, 0);
  }

  else
  {
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_1BA8788FC()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = v1;
  v4 = sub_1BAA398AC();
  v5 = sub_1BAA39F8C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BA83C000, v4, v5, "failed to remove the hotspot configuration: %@", v7, 0xCu);
    sub_1BA878D58(v8);
    MEMORY[0x1BFAFC150](v8, -1, -1);
    MEMORY[0x1BFAFC150](v7, -1, -1);
  }

  v11 = *(v0 + 136);

  sub_1BA877E1C();
  swift_allocError();
  *v12 = 0;
  swift_willThrow();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1BA878AB0(uint64_t result)
{
  if (*(result + 24))
  {
    if (*(result + 40) == 1)
    {
      return result;
    }

    v1 = 1;
  }

  else
  {
    v1 = 0;
  }

  sub_1BA877E1C();
  swift_allocError();
  *v2 = v1;
  return swift_willThrow();
}

uint64_t sub_1BA878B1C(void *a1, uint64_t a2, const char *a3)
{
  if (a1)
  {
    v6 = a1;
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v7 = sub_1BAA398CC();
    __swift_project_value_buffer(v7, qword_1EBC11B98);
    v8 = a1;
    v9 = sub_1BAA398AC();
    v10 = sub_1BAA39F8C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_1BA83C000, v9, v10, a3, v11, 0xCu);
      sub_1BA878D58(v12);
      MEMORY[0x1BFAFC150](v12, -1, -1);
      MEMORY[0x1BFAFC150](v11, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
    v15 = swift_allocError();
    *v16 = a1;

    return MEMORY[0x1EEE6DEE8](a2, v15);
  }

  else
  {

    return MEMORY[0x1EEE6DEE0](a2);
  }
}

uint64_t NEHotspotManager.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 41, 7);
}

uint64_t sub_1BA878D58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECB0, &qword_1BAA4D0B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BA878DC0()
{
  v1 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v1 + 40) = 1;
  v2 = *(v1 + 24);
  *(v1 + 24) = v4;

  return v4;
}

unint64_t sub_1BA878E90()
{
  result = qword_1EBC0EEC8;
  if (!qword_1EBC0EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0EEC8);
  }

  return result;
}

uint64_t objectdestroy_95Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_28Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_1BA878FB0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE78, &qword_1BAA4D8D0);

  return sub_1BA8779CC(a1, a2);
}

id sub_1BA879068()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 infoDictionary];

  if (v2)
  {
    v3 = sub_1BAA39D6C();

    if (*(v3 + 16) && (v4 = sub_1BA850978(0xD000000000000013, 0x80000001BAA51500), (v5 & 1) != 0))
    {
      sub_1BA85B4BC(*(v3 + 56) + 32 * v4, v24);

      if (swift_dynamicCast())
      {
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v6 = [v0 mainBundle];
  v7 = [v6 infoDictionary];

  if (v7)
  {
    v8 = sub_1BAA39D6C();

    if (*(v8 + 16) && (v9 = sub_1BA850978(0x656C646E75424643, 0xEC000000656D614ELL), (v10 & 1) != 0))
    {
      sub_1BA85B4BC(*(v8 + 56) + 32 * v9, v24);

      swift_dynamicCast();
    }

    else
    {
    }
  }

LABEL_12:
  v11 = objc_allocWithZone(NEConfiguration);

  v12 = sub_1BAA39D8C();

  v13 = [v11 initWithName:v12 grade:2];

  if (!v13)
  {

    return v13;
  }

  v14 = [objc_allocWithZone(NEHotspot) init];
  [v13 setHotspot_];

  v15 = [v0 mainBundle];
  v16 = [v15 bundleIdentifier];

  if (v16)
  {
    sub_1BAA39D9C();
  }

  v17 = sub_1BAA39D8C();

  [v13 setApplication_];

  v18 = sub_1BAA39D8C();

  [v13 setApplicationName_];

  result = [v13 hotspot];
  if (result)
  {
    v20 = result;
    v21 = [v0 mainBundle];
    v22 = [v21 bundleIdentifier];

    if (v22)
    {
      sub_1BAA39D9C();
    }

    v23 = sub_1BAA39D8C();

    [v20 setPluginType_];

    return v13;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BA87945C()
{
  result = qword_1EBC0EE50;
  if (!qword_1EBC0EE50)
  {
    sub_1BAA39FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0EE50);
  }

  return result;
}

unint64_t sub_1BA8794B4()
{
  result = qword_1EBC0EE60;
  if (!qword_1EBC0EE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC0EE58, &qword_1BAA4D8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0EE60);
  }

  return result;
}

uint64_t NEAppProxyFlow.open(withLocalFlowEndpoint:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBA0, &qword_1BAA4CF60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = aBlock - v9;
  sub_1BA84985C(a1, aBlock - v9, &qword_1EBC0EBA0, &qword_1BAA4CF60);
  v11 = sub_1BAA398EC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BA84BC58(v10, &qword_1EBC0EBA0, &qword_1BAA4CF60);
    v13 = 0;
  }

  else
  {
    v13 = sub_1BAA398DC();
    (*(v12 + 8))(v10, v11);
  }

  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BA8538E4;
  aBlock[3] = &block_descriptor_11;
  v14 = _Block_copy(aBlock);

  [v4 openWithLocalFlowEndpoint:v13 completionHandler:v14];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t NEAppProxyFlow.open(withLocalFlowEndpoint:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BA879884, 0, 0);
}

uint64_t sub_1BA879884()
{
  v1 = v0 + 2;
  v2 = v0[10];
  v0[2] = v0;
  v0[3] = sub_1BA853A50;
  v3 = swift_continuation_init();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  NEAppProxyFlow.open(withLocalFlowEndpoint:completionHandler:)(v2, sub_1BA853D60, v4);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t NEAppProxyFlow.setMetadata(on:)()
{
  [v0 setMetadata_];

  return swift_unknownObjectRelease();
}

uint64_t NEAppProxyFlow.interface.getter@<X0>(uint64_t a1@<X8>)
{
  if ([v1 networkInterface])
  {
    swift_unknownObjectRetain();
    sub_1BAA3992C();
    v3 = sub_1BAA3991C();
    (*(*(v3 - 8) + 56))(a1, 0, 1, v3);

    return swift_unknownObjectRelease();
  }

  else
  {
    v5 = sub_1BAA3991C();
    v6 = *(*(v5 - 8) + 56);

    return v6(a1, 1, 1, v5);
  }
}

uint64_t sub_1BA879AAC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  if ([*a1 networkInterface])
  {
    swift_unknownObjectRetain();
    sub_1BAA3992C();
    v3 = sub_1BAA3991C();
    (*(*(v3 - 8) + 56))(a2, 0, 1, v3);

    return swift_unknownObjectRelease();
  }

  else
  {
    v5 = sub_1BAA3991C();
    v6 = *(*(v5 - 8) + 56);

    return v6(a2, 1, 1, v5);
  }
}

uint64_t sub_1BA879BA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EED0, &qword_1BAA4DC00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BA84985C(a1, &v6 - v3, &qword_1EBC0EED0, &qword_1BAA4DC00);
  return NEAppProxyFlow.interface.setter(v4);
}

uint64_t NEAppProxyFlow.interface.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EED0, &qword_1BAA4DC00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_1BAA3991C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA84985C(a1, v6, &qword_1EBC0EED0, &qword_1BAA4DC00);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BA84BC58(v6, &qword_1EBC0EED0, &qword_1BAA4DC00);
    [v2 setNetworkInterface_];
    return sub_1BA84BC58(a1, &qword_1EBC0EED0, &qword_1BAA4DC00);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    result = sub_1BAA3990C();
    if (result)
    {
      [v2 setNetworkInterface_];
      swift_unknownObjectRelease();
      sub_1BA84BC58(a1, &qword_1EBC0EED0, &qword_1BAA4DC00);
      return (*(v8 + 8))(v10, v7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void (*NEAppProxyFlow.interface.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EED0, &qword_1BAA4DC00) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  v6 = v5;
  a1[2] = v5;
  if ([v2 networkInterface])
  {
    swift_unknownObjectRetain();
    sub_1BAA3992C();
    v7 = sub_1BAA3991C();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = sub_1BAA3991C();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  return sub_1BA879FC4;
}

void sub_1BA879FC4(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1BA84985C(*(a1 + 16), v2, &qword_1EBC0EED0, &qword_1BAA4DC00);
    NEAppProxyFlow.interface.setter(v2);
    sub_1BA84BC58(v3, &qword_1EBC0EED0, &qword_1BAA4DC00);
  }

  else
  {
    NEAppProxyFlow.interface.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

char *NEVPNIKEv2SecurityAssociationParameters.postQuantumKeyExchangeMethods.getter()
{
  v1 = [v0 postQuantumKeyExchangeMethods];
  sub_1BA87A1F8();
  v2 = sub_1BAA39E4C();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BAA3A10C())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFAF8D80](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 integerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1BA87A3FC(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_1BA87A3FC((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      *&v5[8 * v11 + 32] = v9;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_19:

  return v5;
}

unint64_t sub_1BA87A1F8()
{
  result = qword_1EBC0EED8;
  if (!qword_1EBC0EED8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC0EED8);
  }

  return result;
}

void NEVPNIKEv2SecurityAssociationParameters.postQuantumKeyExchangeMethods.setter(uint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      v3 += 8;
      sub_1BAA39F5C();
      MEMORY[0x1BFAF8B20]();
      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BAA39E6C();
      }

      sub_1BAA39E7C();
      --v2;
    }

    while (v2);
  }

  sub_1BA87A1F8();
  v4 = sub_1BAA39E3C();

  [v1 setPostQuantumKeyExchangeMethods_];
}

void (*NEVPNIKEv2SecurityAssociationParameters.postQuantumKeyExchangeMethods.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NEVPNIKEv2SecurityAssociationParameters.postQuantumKeyExchangeMethods.getter();
  return sub_1BA87A3A4;
}

void sub_1BA87A3A4(uint64_t *a1, char a2)
{
  if (a2)
  {

    NEVPNIKEv2SecurityAssociationParameters.postQuantumKeyExchangeMethods.setter(v2);
  }

  else
  {
    NEVPNIKEv2SecurityAssociationParameters.postQuantumKeyExchangeMethods.setter(*a1);
  }
}

char *sub_1BA87A3FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EEE0, &qword_1BAA4DC08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t NEPacketTunnelProvider.virtualInterface.getter@<X0>(uint64_t a1@<X8>)
{
  if ([v1 virtualInterface])
  {
    sub_1BAA3992C();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_1BAA3991C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBuffer(uint64_t result, unint64_t *a2, int a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_54;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_55;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        v17 = v16 < v15 && a3 == 0;
        v18 = (v12 + 1);
        if (v17)
        {
          return 3;
        }

LABEL_28:
        if (v15 > (~v18 & 0x7FFFFFFFFFFFFFFFLL))
        {
          return 7;
        }

        if (v18 <= v18 + v15)
        {
          result = 0;
          a2[1] = v18;
          a2[2] = v15;
          return result;
        }

        goto LABEL_55;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
LABEL_55:
        __break(0x5519u);
LABEL_56:
        __break(0x5515u);
        return result;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v18 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_55;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_56;
        }

        v23 = *v14++;
        v15 = (v15 << 8) | v23;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (v15 <= v22)
          {
            v24 = 1;
          }

          else
          {
            v24 = a3;
          }

          result = 3;
          if (v15 >= 0x80 && (v24 & 1) != 0)
          {
            goto LABEL_28;
          }

          return result;
        }
      }
    }

LABEL_54:
    __break(0x5513u);
    goto LABEL_55;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_54;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_55;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBitString(uint64_t result, unint64_t *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (!*(result + 8))
  {
    return 3;
  }

  v3 = **result;
  *a3 = v3;
  v4 = *(result + 8);
  if (v4 != 1)
  {
    if (v3 <= 7)
    {
      v5 = v4 - 1;
      if (!v4)
      {
LABEL_20:
        __break(0x5515u);
        goto LABEL_21;
      }

      v6 = *result;
      v7 = *result + v4;
      v8 = (*result + v5);
      if (v8 >= v7 || v8 < v6)
      {
LABEL_19:
        __break(0x5519u);
        goto LABEL_20;
      }

      if (((0xFFu >> (8 - v3)) & *v8) == 0)
      {
        if (v6 == -1)
        {
LABEL_21:
          __break(0x5513u);
          return result;
        }

        v10 = v6 + 1;
        if (v6 + 1 <= v7 && v6 <= v10)
        {
          result = 0;
          *a2 = v10;
          a2[1] = v5;
          return result;
        }

        goto LABEL_19;
      }
    }

    return 3;
  }

  if (v3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseBooleanWithDefault(unsigned __int8 **a1, BOOL a2, BOOL *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 == 1)
  {
    v4 = **a1;
    if (v4 == 255 || v4 == 0)
    {
      a2 = v4 != 0;
LABEL_9:
      result = 0;
      *a3 = a2;
      return result;
    }
  }

  return 3;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, v4);
  if (!result)
  {
    if (HIDWORD(v4[0]))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4[0];
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERParseIntegerSigned(uint64_t a1, _DWORD *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64Signed(a1, v4);
  if (!result)
  {
    if (v4[0] == SLODWORD(v4[0]))
    {
      result = 0;
      *a2 = v4[0];
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t DERParseInteger64Signed(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  v4 = *result + v2;
  v5 = **result;
  if (**result)
  {
    if (v5 != 255)
    {
      goto LABEL_7;
    }

    if (v2 != 1)
    {
      if ((v3 + 1) < v4)
      {
        if ((v3[1] & 0x80000000) == 0)
        {
LABEL_7:
          if (v2 > 8)
          {
            return 7;
          }

          goto LABEL_10;
        }

        return 3;
      }

LABEL_21:
      __break(0x5519u);
      return result;
    }
  }

  else if (v2 != 1)
  {
    if ((v3 + 1) >= v4)
    {
      goto LABEL_21;
    }

    if ((v3[1] & 0x80000000) == 0)
    {
      return 3;
    }

    if (v2 > 9)
    {
      return 7;
    }
  }

LABEL_10:
  v6 = v5 >> 7;
  do
  {
    v7 = v6;
    v8 = *v3++;
    v6 = v8 | (v6 << 8);
    --v2;
  }

  while (v2);
  if ((v5 & 0x80000000) == 0 && v7 << 8 < 0)
  {
    return 7;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  v8[3] = *MEMORY[0x1E69E9840];
  memset(v8, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v8, 0);
  if (!result)
  {
    v6 = v8[0];
    *a2 = v8[0];
    if (v6 >> 1 == 0x1000000000000008)
    {
      if (__CFADD__(v8[1], v8[2]))
      {
        __break(0x5513u);
      }

      else
      {
        v7 = v8[1] + v8[2];
        if (v8[1] <= v8[1] + v8[2])
        {
          result = 0;
          *a3 = v8[1];
          a3[1] = v7;
          return result;
        }
      }

      __break(0x5519u);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v12[3] = *MEMORY[0x1E69E9840];
  memset(v12, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v37 = *MEMORY[0x1E69E9840];
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSequenceWithBlock(uint64_t a1, uint64_t a2)
{
  v4[3] = *MEMORY[0x1E69E9840];
  memset(v4, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v4, 0);
  if (!result)
  {
    if (v4[0] - 0x2000000000000012 >= 0xFFFFFFFFFFFFFFFELL)
    {
      return DERDecodeSequenceContentWithBlock(&v4[1], a2);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERDecodeSequenceContentWithBlock(unint64_t *a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (__CFADD__(*a1, v3))
  {
    __break(0x5513u);
LABEL_13:
    __break(0x5519u);
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_13;
  }

  v9[0] = *a1;
  v9[1] = v4;
  memset(v8, 170, sizeof(v8));
  v7 = 0;
  do
  {
    if (v7)
    {
      return 0;
    }

    LODWORD(result) = DERDecodeSeqNext(v9, v8);
    if (result)
    {
      break;
    }

    LODWORD(result) = (*(a2 + 16))(a2, v8, &v7);
  }

  while (!result);
  if (result <= 1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

BOOL DEROidCompare(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    return v4 == *(a2 + 8) && memcmp(*a1, *a2, v4) == 0;
  }

  return result;
}

void sub_1BA87E2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BA87FF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__111(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BA88049C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_1BA881788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id obj, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__170(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id setLocalCertificate(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (isa_nsdata(v1))
    {
      v3 = v2;
      goto LABEL_8;
    }

    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = objc_opt_class();
      v6 = v8;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "setLocalCertificate: unsupported data type %@.", &v7, 0xCu);
    }
  }

  v3 = 0;
LABEL_8:

  return v3;
}

uint64_t ingestIKEv2Dict(void *a1, void *a2, void *a3)
{
  v95 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [v6 objectForKeyedSubscript:@"DeadPeerDetectionRate"];
      v10 = isa_nsstring(v9);

      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = [v6 objectForKeyedSubscript:@"DeadPeerDetectionRate"];
      if (objc_msgSend_isEqualToString_(v11))
      {
        v12 = 0;
      }

      else if (objc_msgSend_isEqualToString_(v11))
      {
        v12 = 1;
      }

      else if (objc_msgSend_isEqualToString_(v11))
      {
        v12 = 2;
      }

      else
      {
        if (!objc_msgSend_isEqualToString_(v11))
        {
LABEL_18:

LABEL_19:
          v15 = [v6 objectForKeyedSubscript:@"ServerCertificateIssuerCommonName"];
          [v8 setServerCertificateIssuerCommonName:v15];

          v16 = [v6 objectForKeyedSubscript:@"ServerCertificateCommonName"];
          [v8 setServerCertificateCommonName:v16];

          v17 = [v6 objectForKeyedSubscript:@"IKESecurityAssociationParameters"];
          v18 = isa_nsdictionary(v17);

          if (v18)
          {
            v13 = [v6 objectForKeyedSubscript:@"IKESecurityAssociationParameters"];
            v19 = [v8 IKESecurityAssociationParameters];
            ingestIKEv2SAParameters(v13, v19);
          }

          else
          {
            v13 = 0;
          }

          v20 = [v6 objectForKeyedSubscript:@"ChildSecurityAssociationParameters"];
          v21 = isa_nsdictionary(v20);

          if (v21)
          {
            v22 = [v6 objectForKeyedSubscript:@"ChildSecurityAssociationParameters"];
            v23 = [v8 childSecurityAssociationParameters];
            ingestIKEv2SAParameters(v22, v23);
          }

          else
          {
            if (!v13)
            {
              goto LABEL_27;
            }

            v22 = [v8 childSecurityAssociationParameters];
            ingestIKEv2SAParameters(v13, v22);
          }

LABEL_27:
          v24 = [v6 objectForKeyedSubscript:@"EnforceStrictAlgorithmSelection"];
          v25 = isa_nsnumber(v24);

          if (v25)
          {
            v26 = [v6 objectForKeyedSubscript:@"EnforceStrictAlgorithmSelection"];
            *(v8 + 249) = [v26 BOOLValue];
          }

          v27 = [v6 objectForKeyedSubscript:@"AllowPostQuantumKeyExchangeFallback"];
          v28 = isa_nsnumber(v27);

          if (v28)
          {
            v29 = [v6 objectForKeyedSubscript:@"AllowPostQuantumKeyExchangeFallback"];
            [v8 setAllowPostQuantumKeyExchangeFallback:{objc_msgSend(v29, "BOOLValue")}];
          }

          v30 = [v6 objectForKeyedSubscript:@"CertificateType"];
          v31 = isa_nsstring(v30);

          if (!v31)
          {
LABEL_48:
            v34 = [v6 objectForKeyedSubscript:@"UseConfigurationAttributeInternalIPSubnet"];
            v35 = isa_nsnumber(v34);

            if (v35)
            {
              v36 = [v6 objectForKeyedSubscript:@"UseConfigurationAttributeInternalIPSubnet"];
              [v8 setUseConfigurationAttributeInternalIPSubnet:{objc_msgSend(v36, "BOOLValue")}];
            }

            v37 = [v6 objectForKeyedSubscript:@"DisableMOBIKE"];
            v38 = isa_nsnumber(v37);

            if (v38)
            {
              v39 = [v6 objectForKeyedSubscript:@"DisableMOBIKE"];
              [v8 setDisableMOBIKE:{objc_msgSend(v39, "BOOLValue")}];
            }

            v40 = [v6 objectForKeyedSubscript:@"DisableRedirect"];
            v41 = isa_nsnumber(v40);

            if (v41)
            {
              v42 = [v6 objectForKeyedSubscript:@"DisableRedirect"];
              [v8 setDisableRedirect:{objc_msgSend(v42, "BOOLValue")}];
            }

            v43 = [v6 objectForKeyedSubscript:@"EnablePFS"];
            v44 = isa_nsnumber(v43);

            if (v44)
            {
              v45 = [v6 objectForKeyedSubscript:@"EnablePFS"];
              [v8 setEnablePFS:{objc_msgSend(v45, "BOOLValue")}];
            }

            v46 = [v6 objectForKeyedSubscript:@"NATKeepAliveOffloadEnable"];
            if (isa_nsnumber(v46))
            {
              v47 = [v6 objectForKeyedSubscript:@"NATKeepAliveOffloadEnable"];
              v48 = [v47 BOOLValue];

              if ((v48 & 1) == 0)
              {
                [v8 setNatKeepAliveOffloadEnable:1];
              }
            }

            else
            {
            }

            if ([v8 natKeepAliveOffloadEnable] == 2)
            {
              v49 = [v6 objectForKeyedSubscript:@"NATKeepAliveInterval"];
              if (!isa_nsnumber(v49))
              {
LABEL_64:

                goto LABEL_65;
              }

              v50 = [v6 objectForKeyedSubscript:@"NATKeepAliveInterval"];
              v51 = [v50 intValue];

              if (v51 >= 20)
              {
                v49 = [v6 objectForKeyedSubscript:@"NATKeepAliveInterval"];
                [v8 setNatKeepAliveOffloadInterval:{objc_msgSend(v49, "intValue")}];
                goto LABEL_64;
              }
            }

LABEL_65:
            v52 = [v6 objectForKeyedSubscript:@"EnableCertificateRevocationCheck"];
            v53 = isa_nsnumber(v52);

            if (v53)
            {
              v54 = [v6 objectForKeyedSubscript:@"EnableCertificateRevocationCheck"];
              [v8 setEnableRevocationCheck:{objc_msgSend(v54, "BOOLValue")}];

              if ([v8 enableRevocationCheck])
              {
                v55 = [v6 objectForKeyedSubscript:@"StrictCertificateRevocationCheck"];
                v56 = isa_nsnumber(v55);

                if (v56)
                {
                  v57 = [v6 objectForKeyedSubscript:@"StrictCertificateRevocationCheck"];
                  [v8 setStrictRevocationCheck:{objc_msgSend(v57, "BOOLValue")}];
                }
              }
            }

            v58 = [v6 objectForKeyedSubscript:@"TLSMinimumVersion"];
            v59 = isa_nsstring(v58);

            if (!v59)
            {
LABEL_78:
              v62 = [v6 objectForKeyedSubscript:@"TLSMaximumVersion"];
              v63 = isa_nsstring(v62);

              if (!v63)
              {
                goto LABEL_87;
              }

              v64 = [v6 objectForKeyedSubscript:@"TLSMaximumVersion"];
              if (objc_msgSend_isEqualToString_(v64))
              {
                v65 = 1;
              }

              else if (objc_msgSend_isEqualToString_(v64))
              {
                v65 = 2;
              }

              else
              {
                if (!objc_msgSend_isEqualToString_(v64))
                {
LABEL_86:

LABEL_87:
                  v66 = [v6 objectForKeyedSubscript:@"MTU"];
                  v67 = isa_nsnumber(v66);

                  if (v67)
                  {
                    v68 = [v6 objectForKeyedSubscript:@"MTU"];
                    if ([v68 unsignedIntegerValue] < 0x3E8 || objc_msgSend(v68, "unsignedIntegerValue") >= 0x5DD)
                    {
                      v69 = ne_log_obj();
                      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                      {
                        v90[0] = 67109632;
                        v90[1] = [v68 intValue];
                        v91 = 1024;
                        v92 = 1000;
                        v93 = 1024;
                        v94 = 1500;
                        _os_log_error_impl(&dword_1BA83C000, v69, OS_LOG_TYPE_ERROR, "invalid mtu size %d, should be between %d and %d", v90, 0x14u);
                      }

                      goto LABEL_93;
                    }

                    [v8 setMtu:{objc_msgSend(v68, "unsignedIntegerValue")}];
                  }

                  v71 = [v6 objectForKeyedSubscript:@"ExtensibleSSOProvider"];
                  v72 = isa_nsstring(v71);

                  if (v72)
                  {
                    v73 = [v6 objectForKeyedSubscript:@"ExtensibleSSOProvider"];
                    [v8 setExtensibleSSOProvider:v73];
                  }

                  v74 = [v6 objectForKeyedSubscript:@"PPKIdentifier"];
                  if (isa_nsstring(v74))
                  {
                    v75 = [v6 objectForKeyedSubscript:@"PPK"];
                    v76 = isa_nsdata(v75);

                    if (!v76)
                    {
LABEL_107:
                      v70 = 1;
                      goto LABEL_108;
                    }

                    v74 = objc_alloc_init(NEVPNIKEv2PPKConfiguration);
                    v77 = [NEKeychainItem alloc];
                    v78 = [v6 objectForKeyedSubscript:@"PPK"];
                    v79 = v8[10];
                    v81 = objc_getProperty(v8, v80, 88, 1);
                    v83 = [(NEKeychainItem *)v77 initWithData:v78 domain:v79 accessGroup:v81];
                    if (v74)
                    {
                      objc_setProperty_atomic_copy(v74, v82, v83, 32);
                    }

                    v85 = [v6 objectForKeyedSubscript:@"PPKIdentifier"];
                    if (v74)
                    {
                      objc_setProperty_atomic_copy(v74, v84, v85, 16);
                    }

                    v86 = [v6 objectForKeyedSubscript:@"PPKMandatory"];
                    v87 = isa_nsnumber(v86);

                    if (v87)
                    {
                      v88 = [v6 objectForKeyedSubscript:@"PPKMandatory"];
                      -[NEVPNIKEv2PPKConfiguration setIsMandatory:](v74, "setIsMandatory:", [v88 BOOLValue]);
                    }

                    [v8 setPpkConfiguration:v74];
                  }

                  goto LABEL_107;
                }

                v65 = 3;
              }

              [v8 setMaximumTLSVersion:v65];
              goto LABEL_86;
            }

            v60 = [v6 objectForKeyedSubscript:@"TLSMinimumVersion"];
            if (objc_msgSend_isEqualToString_(v60))
            {
              v61 = 1;
            }

            else if (objc_msgSend_isEqualToString_(v60))
            {
              v61 = 2;
            }

            else
            {
              if (!objc_msgSend_isEqualToString_(v60))
              {
LABEL_77:

                goto LABEL_78;
              }

              v61 = 3;
            }

            [v8 setMinimumTLSVersion:v61];
            goto LABEL_77;
          }

          v32 = [v6 objectForKeyedSubscript:@"CertificateType"];
          if (objc_msgSend_isEqualToString_(v32))
          {
            v33 = 1;
          }

          else if (objc_msgSend_isEqualToString_(v32))
          {
            v33 = 2;
          }

          else if (objc_msgSend_isEqualToString_(v32))
          {
            v33 = 3;
          }

          else if (objc_msgSend_isEqualToString_(v32))
          {
            v33 = 4;
          }

          else if (objc_msgSend_isEqualToString_(v32))
          {
            v33 = 5;
          }

          else if (objc_msgSend_isEqualToString_(v32))
          {
            v33 = 7;
          }

          else
          {
            if (!objc_msgSend_isEqualToString_(v32))
            {
LABEL_47:

              goto LABEL_48;
            }

            v33 = 6;
          }

          [v8 setCertificateType:v33];
          goto LABEL_47;
        }

        v12 = 3;
      }

      [v8 setDeadPeerDetectionRate:v12];
      goto LABEL_18;
    }

    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v90[0]) = 0;
      v14 = "ingestIKEv2Dict: uninitialized protocol";
      goto LABEL_10;
    }
  }

  else
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v90[0]) = 0;
      v14 = "ingestIKEv2Dict: empty dictionary";
LABEL_10:
      _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, v14, v90, 2u);
    }
  }

LABEL_93:
  v70 = 0;
LABEL_108:

  return v70;
}

void ingestIKEv2SAParameters(void *a1, void *a2)
{
  v21 = a1;
  v3 = a2;
  v4 = [v21 objectForKeyedSubscript:@"EncryptionAlgorithm"];
  v5 = isa_nsstring(v4);

  if (v5)
  {
    v6 = [v21 objectForKeyedSubscript:@"EncryptionAlgorithm"];
    if (objc_msgSend_isEqualToString_(v6))
    {
      v7 = 1;
    }

    else if (objc_msgSend_isEqualToString_(v6))
    {
      v7 = 2;
    }

    else if (objc_msgSend_isEqualToString_(v6))
    {
      v7 = 3;
    }

    else if (objc_msgSend_isEqualToString_(v6))
    {
      v7 = 4;
    }

    else if (objc_msgSend_isEqualToString_(v6))
    {
      v7 = 5;
    }

    else if (objc_msgSend_isEqualToString_(v6))
    {
      v7 = 6;
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(v6))
      {
LABEL_17:

        goto LABEL_18;
      }

      v7 = 7;
    }

    [v3 setEncryptionAlgorithm:v7];
    goto LABEL_17;
  }

LABEL_18:
  v8 = [v21 objectForKeyedSubscript:@"IntegrityAlgorithm"];
  v9 = isa_nsstring(v8);

  if (!v9)
  {
    goto LABEL_31;
  }

  v10 = [v21 objectForKeyedSubscript:@"IntegrityAlgorithm"];
  if (objc_msgSend_isEqualToString_(v10))
  {
    v11 = 1;
LABEL_29:
    [v3 setIntegrityAlgorithm:v11];
    goto LABEL_30;
  }

  if (objc_msgSend_isEqualToString_(v10))
  {
    v11 = 2;
    goto LABEL_29;
  }

  if (objc_msgSend_isEqualToString_(v10))
  {
    v11 = 3;
    goto LABEL_29;
  }

  if (objc_msgSend_isEqualToString_(v10))
  {
    v11 = 4;
    goto LABEL_29;
  }

  if (objc_msgSend_isEqualToString_(v10))
  {
    v11 = 5;
    goto LABEL_29;
  }

LABEL_30:

LABEL_31:
  v12 = [v21 objectForKeyedSubscript:@"DiffieHellmanGroup"];
  v13 = isa_nsnumber(v12);

  if (v13)
  {
    v14 = [v21 objectForKeyedSubscript:@"DiffieHellmanGroup"];
    [v3 setDiffieHellmanGroup:{objc_msgSend(v14, "intValue")}];
  }

  v15 = [v21 objectForKeyedSubscript:@"PostQuantumKeyExchangeMethods"];
  v16 = isa_nsarray(v15);

  if (v16)
  {
    v17 = [v21 objectForKeyedSubscript:@"PostQuantumKeyExchangeMethods"];
    [v3 setPostQuantumKeyExchangeMethods:v17];
  }

  v18 = [v21 objectForKeyedSubscript:@"LifeTimeInMinutes"];
  v19 = isa_nsnumber(v18);

  if (v19)
  {
    v20 = [v21 objectForKeyedSubscript:@"LifeTimeInMinutes"];
    [v3 setLifetimeMinutes:{objc_msgSend(v20, "intValue")}];
  }
}

CFStringRef copyNextName(CFStringRef theString)
{
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, @" ");
  if (ArrayBySeparatingStrings)
  {
    v3 = ArrayBySeparatingStrings;
    MutableCopy = CFArrayCreateMutableCopy(0, 0, ArrayBySeparatingStrings);
    CFRelease(v3);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(MutableCopy, theString);
  }

  Count = CFArrayGetCount(MutableCopy);
  if (Count < 2 || (v6 = Count - 1, ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, Count - 1), IntValue = CFStringGetIntValue(ValueAtIndex), IntValue < 1))
  {
    v9 = 2;
  }

  else
  {
    v9 = (IntValue + 1);
    CFArrayRemoveValueAtIndex(MutableCopy, v6);
  }

  v10 = CFStringCreateWithFormat(0, 0, @"%d", v9);
  CFArrayAppendValue(MutableCopy, v10);
  CFRelease(v10);
  v11 = CFStringCreateByCombiningStrings(0, MutableCopy, @" ");
  CFRelease(MutableCopy);
  return v11;
}

id getWriterSemaphore()
{
  if (getWriterSemaphore_sema_init != -1)
  {
    dispatch_once(&getWriterSemaphore_sema_init, &__block_literal_global_388);
  }

  v1 = getWriterSemaphore_semaphore;

  return v1;
}

void sub_1BA89E628(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (a2 == 1)
  {
    v27 = objc_begin_catch(a1);
    v28 = ne_log_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      LODWORD(STACK[0x220]) = 138412290;
      STACK[0x224] = v27;
      _os_log_fault_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_FAULT, "Got an exception while reading the index: %@", &STACK[0x220], 0xCu);
    }

    [(NEConfigurationManager *)a26 errorWithCode:0 specifics:?];
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    JUMPOUT(0x1BA89DA48);
  }

  _Unwind_Resume(a1);
}

void sub_1BA89E8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __getWriterSemaphore_block_invoke()
{
  v0 = dispatch_semaphore_create(1);
  v1 = getWriterSemaphore_semaphore;
  getWriterSemaphore_semaphore = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1BA8A8BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NEDNSProxyMapError(void *a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = 0;
    goto LABEL_22;
  }

  v3 = [v1 domain];
  v4 = [v3 isEqual:@"NEConfigurationErrorDomain"];

  if (v4)
  {
    v5 = [v2 code];
    if (v5 <= 6)
    {
      if ((v5 - 1) >= 4)
      {
        if (v5 == 5)
        {
          v7 = [v2 localizedDescription];
          v8 = 3;
          goto LABEL_20;
        }

        if (v5 != 6)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_18;
    }

    if (v5 <= 0x15)
    {
      if (((1 << v5) & 0x101900) != 0 || ((1 << v5) & 0x200400) != 0)
      {
LABEL_18:
        v7 = [v2 localizedDescription];
        goto LABEL_19;
      }

      if (v5 == 9)
      {
        v7 = ne_log_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEFAULT, "The configuration was not saved because it was unchanged from the previously saved version", buf, 2u);
        }

        v6 = 0;
        goto LABEL_21;
      }
    }

    if (v5 != 7)
    {
LABEL_26:
      v12 = MEMORY[0x1E696AEC0];
      v13 = [v2 localizedDescription];
      v7 = [v12 stringWithFormat:@"Unknown: %@", v13];

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v7 = @"Unknown.";
LABEL_19:
  v8 = 1;
LABEL_20:
  v9 = MEMORY[0x1E696ABC0];
  v15 = *MEMORY[0x1E696A578];
  v16[0] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v6 = [v9 errorWithDomain:@"NEDNSProxyErrorDomain" code:v8 userInfo:v10];

LABEL_21:
LABEL_22:

  return v6;
}

void sub_1BA8AD6B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 248));
  _Unwind_Resume(a1);
}

void sub_1BA8ADC00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA8B0C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(v20);
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA8B38B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1BA8B6204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA8B66C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA8B744C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA8BAD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_1BA8BD2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_1BA8C58E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id NEFilterMapError(void *a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqual:@"NEConfigurationErrorDomain"];

  if (!v3)
  {
    v5 = @"Unknown.";
LABEL_13:
    v6 = 6;
    goto LABEL_14;
  }

  v4 = [v1 code];
  if (v4 <= 6)
  {
    if ((v4 - 1) < 4)
    {
LABEL_4:
      v5 = [v1 localizedDescription];
      v6 = 1;
LABEL_14:
      v7 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A578];
      v15[0] = v5;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v9 = [v7 errorWithDomain:@"NEFilterErrorDomain" code:v6 userInfo:v8];

      goto LABEL_15;
    }

    if (v4 == 5)
    {
      v5 = [v1 localizedDescription];
      v6 = 3;
      goto LABEL_14;
    }

    if (v4 == 6)
    {
      goto LABEL_12;
    }

LABEL_24:
    v11 = MEMORY[0x1E696AEC0];
    v12 = [v1 localizedDescription];
    v5 = [v11 stringWithFormat:@"Unknown: %@", v12];

    goto LABEL_13;
  }

  if (v4 > 0x15)
  {
    goto LABEL_23;
  }

  if (((1 << v4) & 0x101900) != 0)
  {
LABEL_12:
    v5 = [v1 localizedDescription];
    goto LABEL_13;
  }

  if (((1 << v4) & 0x200400) != 0)
  {
    v5 = [v1 localizedDescription];
    v6 = 5;
    goto LABEL_14;
  }

  if (v4 != 9)
  {
LABEL_23:
    if (v4 == 7)
    {
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEFAULT, "The configuration was not saved because it was unchanged from the previously saved version", buf, 2u);
  }

  v9 = 0;
LABEL_15:

  return v9;
}

void sub_1BA8CF944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA8D02D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA8D6524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BA8DB0F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_1BA8DBB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA8DE4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6849(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BA8DFAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id obj, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v50 - 176), 8);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void sub_1BA8E0AC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

id createHotspotNetworkArray(const __CFArray *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i != v4; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v7 = [[NEHotspotNetwork alloc] initWithNetwork:?];
      [v2 addObject:v7];
    }
  }

  return v2;
}

void sub_1BA8EB980(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

__CFString *NEIKEv2DigitalSignatureAlgorithmCreateString(unint64_t a1)
{
  if (a1 >= 0xC)
  {
    return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown[%lld]", a1];
  }

  else
  {
    return off_1E7F07CA8[a1];
  }
}

__CFString *NEIKEv2SecurePasswordMethodCreateString(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return @"AugPAKE";
    }

    if (a1 != 3)
    {
      if (a1 == 11001)
      {
        return @"SPAKE2Plus";
      }

      return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown[%lld]", a1];
    }

    return @"SecurePSK";
  }

  else
  {
    if (a1 == -1)
    {
      return @"Placeholder";
    }

    if (a1)
    {
      if (a1 == 1)
      {
        return @"PACE";
      }

      return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown[%lld]", a1];
    }

    return @"Invalid";
  }
}

__CFString *NEIKEv2AuthenticationMethodCreateString(uint64_t a1)
{
  if (a1 <= 10)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return @"None";
      }

      if (a1 == 1)
      {
        return @"RSASignature";
      }
    }

    else
    {
      switch(a1)
      {
        case 2:
          return @"SharedKey";
        case 9:
          return @"ECDSA256";
        case 10:
          return @"ECDSA384";
      }
    }

    return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown[%lld]", a1];
  }

  if (a1 > 12)
  {
    switch(a1)
    {
      case 13:
        return @"NULL";
      case 14:
        return @"DigitalSignature";
      case 245:
        return @"RSAPSS";
    }

    return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown[%lld]", a1];
  }

  if (a1 == 11)
  {
    return @"ECDSA521";
  }

  else
  {
    return @"GenericSecurePassword";
  }
}

__CFString *NEIKEv2EncryptionTypeCreateString(unint64_t a1)
{
  if (a1 >= 0xA)
  {
    return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown[%lld]", a1];
  }

  else
  {
    return off_1E7F07E48[a1];
  }
}

__CFString *NEIKEv2EncryptionWireTypeCreateString(unint64_t a1)
{
  if (a1 >= 0x20)
  {
    return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown[%lld]", a1];
  }

  else
  {
    return off_1E7F07D48[a1];
  }
}

__CFString *NEIKEv2ProtocolIDCreateString(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return @"Invalid";
    }

    if (a1 == 1)
    {
      return @"IKE";
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return @"AH";
      case 3:
        return @"ESP";
      case 240:
        return @"TLS";
    }
  }

  return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown[%lld]", a1];
}

__CFString *NEIKEv2CreateChildSAModeString(unint64_t a1)
{
  if (a1 >= 3)
  {
    return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
  }

  else
  {
    return off_1E7F07C90[a1];
  }
}

uint64_t NEIKEv2CreateErrorInternal(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  buf[3] = *MEMORY[0x1E69E9840];
  v9 = a1;
  if (v9)
  {
    buf[0] = &a9;
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v9 arguments:&a9];
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Internal: %@", v10];
    ErrorWithDescription = NEIKEv2CreateErrorWithDescription(1, v11);
  }

  else
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = "NEIKEv2CreateErrorInternal";
      _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, "%s called with null errorDescriptionFormat", buf, 0xCu);
    }

    ErrorWithDescription = 0;
  }

  return ErrorWithDescription;
}

uint64_t NEIKEv2CreateErrorWithDescription(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E696ABC0]);
  v8 = *MEMORY[0x1E696A578];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v4 initWithDomain:@"NEIKEv2ErrorDomain" code:a1 userInfo:v5];

  if (!v6)
  {
    abort();
  }

  return v6;
}

__CFString *NEIKEv2AttributeTypeCreateString(uint64_t a1)
{
  result = @"Invalid";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = @"InternalIP4Address";
      break;
    case 2:
      result = @"InternalIP4Netmask";
      break;
    case 3:
      result = @"InternalIP4DNS";
      break;
    case 4:
      result = @"InternalIP4NBNS";
      break;
    case 5:
      result = @"InternalAddressExpiry";
      break;
    case 6:
      result = @"InternalIP4DHCP";
      break;
    case 7:
      result = @"ApplicationVersion";
      break;
    case 8:
      result = @"InternalIP6Address";
      break;
    case 9:
    case 11:
    case 16:
    case 17:
    case 18:
    case 19:
    case 22:
    case 23:
    case 24:
      goto LABEL_6;
    case 10:
      result = @"InternalIP6DNS";
      break;
    case 12:
      result = @"InternalIP6DHCP";
      break;
    case 13:
      result = @"InternalIP4Subnet";
      break;
    case 14:
      result = @"SupportedAttributes";
      break;
    case 15:
      result = @"InternalIP6Subnet";
      break;
    case 20:
      result = @"PCSCFIP4Address";
      break;
    case 21:
      result = @"PCSCFIP6Address";
      break;
    case 25:
      result = @"InternalDNSDomain";
      break;
    default:
      if (a1 == 25958)
      {
        result = @"InitiatorTransportIP6Address";
      }

      else if (a1 == 25959)
      {
        result = @"ResponderTransportIP6Address";
      }

      else
      {
LABEL_6:
        result = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
      }

      break;
  }

  return result;
}

uint64_t NEIKEv2CreateError(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = ne_log_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v1, OS_LOG_TYPE_FAULT, "NEIKEv2CreateError(NEIKEv2ErrorInternal) is not allowed, use NEIKEv2CreateErrorInternal() instead", v7, 2u);
    }

    String = @"Internal";
    v3 = 1;
  }

  else
  {
    String = NEIKEv2ErrorCreateString(a1);
    v3 = a1;
  }

  ErrorWithDescription = NEIKEv2CreateErrorWithDescription(v3, String);

  return ErrorWithDescription;
}

__CFString *NEIKEv2ErrorCreateString(uint64_t a1)
{
  if ((a1 - 1) >= 0xF)
  {
    return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
  }

  else
  {
    return off_1E7F07C18[a1 - 1];
  }
}

uint64_t NEIKEv2CreateErrorFailedToSend(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  buf[3] = *MEMORY[0x1E69E9840];
  v9 = a1;
  if (v9)
  {
    buf[0] = &a9;
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v9 arguments:&a9];
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FailedToSend: %@", v10];
    ErrorWithDescription = NEIKEv2CreateErrorWithDescription(2, v11);
  }

  else
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = "NEIKEv2CreateErrorFailedToSend";
      _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, "%s called with null errorDescriptionFormat", buf, 0xCu);
    }

    ErrorWithDescription = 0;
  }

  return ErrorWithDescription;
}

uint64_t NEIKEv2CreateErrorCrypto(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  buf[3] = *MEMORY[0x1E69E9840];
  v9 = a1;
  if (v9)
  {
    buf[0] = &a9;
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v9 arguments:&a9];
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Crypto: %@", v10];
    ErrorWithDescription = NEIKEv2CreateErrorWithDescription(7, v11);
  }

  else
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = "NEIKEv2CreateErrorCrypto";
      _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, "%s called with null errorDescriptionFormat", buf, 0xCu);
    }

    ErrorWithDescription = 0;
  }

  return ErrorWithDescription;
}

uint64_t NEIKEv2CreateErrorPeerInvalidSyntax(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  buf[3] = *MEMORY[0x1E69E9840];
  v9 = a1;
  if (v9)
  {
    buf[0] = &a9;
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v9 arguments:&a9];
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PeerInvalidSyntax: %@", v10];
    ErrorWithDescription = NEIKEv2CreateErrorWithDescription(6, v11);
  }

  else
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = "NEIKEv2CreateErrorPeerInvalidSyntax";
      _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, "%s called with null errorDescriptionFormat", buf, 0xCu);
    }

    ErrorWithDescription = 0;
  }

  return ErrorWithDescription;
}

uint64_t NEIKEv2CreateErrorAuthentication(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  buf[3] = *MEMORY[0x1E69E9840];
  v9 = a1;
  if (v9)
  {
    buf[0] = &a9;
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v9 arguments:&a9];
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Authentication: %@", v10];
    ErrorWithDescription = NEIKEv2CreateErrorWithDescription(8, v11);
  }

  else
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = "NEIKEv2CreateErrorAuthentication";
      _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, "%s called with null errorDescriptionFormat", buf, 0xCu);
    }

    ErrorWithDescription = 0;
  }

  return ErrorWithDescription;
}

__CFString *NEIKEv2HashTypeCreateString(unint64_t a1)
{
  if (a1 >= 6)
  {
    return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
  }

  else
  {
    return off_1E7F080D0[a1];
  }
}

uint64_t __Block_byref_object_copy__9420(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BA944028(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

uint64_t NEIKEv2ASN1CheckForNULLItem(uint64_t a1, _DWORD *a2)
{
  v6 = 0;
  v5 = xmmword_1BAA4F8D8;
  if (*(a1 + 8))
  {
    v3 = DERDecodeItem(a1, &v5);
    *a2 = v3;
    if (v3 || (v5 & 0x1FFFFFFFFFFFFFFFLL) != 5)
    {
      return 0;
    }
  }

  else
  {
    *a2 = 0;
  }

  return 1;
}

uint64_t NEIKEv2ASN1DecodeIntegerItem(uint64_t a1, int *a2)
{
  v7 = 0;
  v8[0] = 0;
  v8[1] = 0;
  v3 = DERDecodeItem(a1, &v7);
  if (v3)
  {
    v4 = v3;
    result = 0;
  }

  else if (v7 == 2)
  {
    v6 = 0;
    v4 = DERParseInteger(v8, &v6);
    if (v4)
    {
      result = 0;
    }

    else
    {
      result = v6;
    }
  }

  else
  {
    result = 0;
    v4 = 2;
  }

  *a2 = v4;
  return result;
}

void sub_1BA958A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12503(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BA95944C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void sub_1BA95B674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA95BC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BA95EDA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t NEIKEv2PacketTunnelProviderGetSocket(void *a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, void *a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = -1;
  if (objc_getProperty(v9, v10, 160, 1))
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v35 = "NEIKEv2PacketTunnelProviderGetSocket";
      _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "%s: A previous call is in progress, ignore", buf, 0xCu);
    }

LABEL_4:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  v13 = ne_log_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = "PFKey";
    v35 = "NEIKEv2PacketTunnelProviderGetSocket";
    v36 = 2112;
    *buf = 136315906;
    v37 = v9;
    if (a2)
    {
      v14 = "IKE";
    }

    v38 = 2080;
    v39 = v14;
    v40 = 2080;
    v41 = a5;
    _os_log_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_INFO, "%s: %@: socket type %s (%s)", buf, 0x2Au);
  }

  if (a2)
  {
    if (!a3 || !a4)
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v35 = "NEIKEv2PacketTunnelProviderGetSocket";
        v36 = 2112;
        v37 = v9;
        _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_INFO, "%s: %@: Null local/remote", buf, 0x16u);
      }

      goto LABEL_4;
    }

    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a3 length:*a3];
    v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:a4 length:*a4];
    if (a5)
    {
      a5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a5];
    }
  }

  else
  {
    a5 = 0;
    v15 = 0;
    v11 = 0;
  }

  v16 = dispatch_semaphore_create(0);
  objc_setProperty_atomic(v9, v17, v16, 160);

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __NEIKEv2PacketTunnelProviderGetSocket_block_invoke;
  v26[3] = &unk_1E7F088C8;
  v18 = v9;
  v29 = a2;
  v27 = v18;
  v28 = &v30;
  [v18 requestSocket:a2 interface:a5 local:v11 remote:v15 completionHandler:v26];
  v20 = objc_getProperty(v18, v19, 160, 1);
  v21 = dispatch_time(0, 2000000000);
  v22 = dispatch_semaphore_wait(v20, v21);

  if (v22)
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "NEIKEv2PacketTunnelProviderGetSocket";
      v36 = 2112;
      v37 = v18;
      _os_log_error_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_ERROR, "%s: %@ Wait Timeout\n", buf, 0x16u);
    }
  }

  objc_setProperty_atomic(v18, v23, 0, 160);
  v12 = *(v31 + 6);

LABEL_20:
  _Block_object_dispose(&v30, 8);

  return v12;
}

void sub_1BA95F268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void NEIKEv2PacketTunnelHandleConnected(void *a1)
{
  v117 = *MEMORY[0x1E69E9840];
  v103 = 0;
  v104 = &v103;
  v105 = 0x3032000000;
  v106 = __Block_byref_object_copy__12503;
  v107 = __Block_byref_object_dispose__12504;
  self = a1;
  v108 = self;
  v1 = ne_log_obj();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = self[21];
    v3 = &stru_1F3880810;
    *buf = 138412802;
    if ((~v2 & 0xF) == 0)
    {
      v3 = @"Connected with Config";
    }

    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v3;
    *&buf[22] = 1024;
    LODWORD(v114) = v2;
    _os_log_impl(&dword_1BA83C000, v1, OS_LOG_TYPE_DEFAULT, "%@: Tunnel flags - %@ <%X>", buf, 0x1Cu);
  }

  if ((~self[21] & 0xF) != 0)
  {
    goto LABEL_35;
  }

  v5 = objc_getProperty(self, v4, 88, 1);
  if (!v5)
  {
    goto LABEL_29;
  }

  v7 = v5;
  v8 = objc_getProperty(self, v6, 96, 1);
  if (!v8)
  {
LABEL_28:

    goto LABEL_29;
  }

  v10 = v8;
  v11 = objc_getProperty(self, v9, 104, 1);
  if (!v11)
  {

    goto LABEL_28;
  }

  v12 = v11;
  v13 = [self protocolConfiguration];
  v14 = v13 == 0;

  if (v14)
  {
    goto LABEL_29;
  }

  v16 = objc_getProperty(self, v15, 128, 1);
  Property = objc_getProperty(self, v17, 208, 1);
  v95 = [(NEIKEv2Server *)v16 getViableServerAddressForPath:?];

  v96 = [(NETunnelNetworkSettings *)[NEPacketTunnelNetworkSettings alloc] initWithTunnelRemoteAddress:v95];
  v20 = objc_getProperty(self, v19, 88, 1);
  objc_opt_self();
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v98 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v22 = v20;
  v23 = [v22 countByEnumeratingWithState:&v109 objects:buf count:16];
  if (!v23)
  {
    goto LABEL_24;
  }

  v24 = *v110;
  do
  {
    v25 = 0;
    do
    {
      if (*v110 != v24)
      {
        objc_enumerationMutation(v22);
      }

      v26 = *(*(&v109 + 1) + 8 * v25);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v27 = [v26 address];
        v28 = [v27 hostname];
        [v21 addObject:v28];

LABEL_18:
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = [v26 stringValue];
        [v98 addObject:v27];
        goto LABEL_18;
      }

LABEL_19:
      ++v25;
    }

    while (v23 != v25);
    v29 = [v22 countByEnumeratingWithState:&v109 objects:buf count:16];
    v23 = v29;
  }

  while (v29);
LABEL_24:

  if ([v21 count])
  {
    v30 = [[NEDNSSettings alloc] initWithServers:v21];
    if ([v98 count])
    {
      [(NEDNSSettings *)v30 setMatchDomains:v98];
    }
  }

  else
  {
    v30 = 0;
  }

  [(NETunnelNetworkSettings *)v96 setDNSSettings:v30];
  v35 = objc_getProperty(self, v34, 88, 1);
  v37 = objc_getProperty(self, v36, 96, 1);
  v39 = objc_getProperty(self, v38, 104, 1);
  v40 = v35;
  v41 = v37;
  v99 = v39;
  objc_opt_self();
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v42 = v40;
  v43 = [v42 countByEnumeratingWithState:&v109 objects:buf count:16];
  if (!v43)
  {
    v45 = 0;
    v44 = 0;
    v53 = v42;
    goto LABEL_56;
  }

  v44 = 0;
  v45 = 0;
  v46 = *v110;
  while (2)
  {
    v47 = 0;
    while (2)
    {
      if (*v110 != v46)
      {
        objc_enumerationMutation(v42);
      }

      v48 = *(*(&v109 + 1) + 8 * v47);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v49 = [v48 address];
        v50 = [v49 hostname];
        v51 = v45;
        v45 = v50;
        goto LABEL_46;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v49 = [v48 address];
        v52 = [v49 hostname];
        v51 = v44;
        v44 = v52;
LABEL_46:
      }

      if (v43 != ++v47)
      {
        continue;
      }

      break;
    }

    v43 = [v42 countByEnumeratingWithState:&v109 objects:buf count:16];
    if (v43)
    {
      continue;
    }

    break;
  }

  if (v45)
  {
    v53 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v45, 0}];
    if (v44)
    {
      v54 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v44, 0}];
    }

    else
    {
      v54 = 0;
    }

    v43 = [[NEIPv4Settings alloc] initWithAddresses:v53 subnetMasks:v54];
    v55 = [NEIKEv2Helper createRouteArrayFromTunnelConfig:v42 localTS:v41 remoteTS:v99 gatewayAddress:v45 isIPv4:1];
    [(NEIPv4Settings *)v43 setIncludedRoutes:v55];

LABEL_56:
  }

  else
  {
    v43 = 0;
  }

  [(NEPacketTunnelNetworkSettings *)v96 setIPv4Settings:v43];
  v57 = objc_getProperty(self, v56, 88, 1);
  v59 = objc_getProperty(self, v58, 96, 1);
  v61 = objc_getProperty(self, v60, 104, 1);
  v62 = v57;
  v63 = v59;
  v100 = v61;
  objc_opt_self();
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v64 = v62;
  v65 = [(__CFString *)v64 countByEnumeratingWithState:&v109 objects:buf count:16];
  if (!v65)
  {
    v80 = 0;
    v67 = v64;
    goto LABEL_73;
  }

  v66 = 0;
  v67 = 0;
  v68 = *v110;
  do
  {
    for (i = 0; i != v65; ++i)
    {
      if (*v110 != v68)
      {
        objc_enumerationMutation(v64);
      }

      v70 = *(*(&v109 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v71 = [v70 address];
        v72 = [v71 hostname];

        v66 = [v70 prefix];
        v67 = v72;
      }
    }

    v65 = [(__CFString *)v64 countByEnumeratingWithState:&v109 objects:buf count:16];
  }

  while (v65);

  if (v67)
  {
    v73 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v67, 0}];
    v74 = objc_alloc(MEMORY[0x1E695DEC8]);
    v75 = [MEMORY[0x1E696AD98] numberWithInt:v66];
    v76 = [v74 initWithObjects:{v75, 0}];

    v77 = [[NEIPv6Settings alloc] initWithAddresses:v73 networkPrefixLengths:v76];
    v78 = NECreateIPv6SubnetAddressWithPrefix(v67, v66);
    if (v78)
    {
      v79 = [NEIKEv2Helper createRouteArrayFromTunnelConfig:v64 localTS:v63 remoteTS:v100 gatewayAddress:v78 isIPv4:0];
      [(NEIPv6Settings *)v77 setIncludedRoutes:v79];

      v80 = v77;
    }

    else
    {
      v80 = 0;
    }

LABEL_73:
  }

  else
  {
    v80 = 0;
  }

  [(NEPacketTunnelNetworkSettings *)v96 setIPv6Settings:v80];
  v81 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1280];
  [(NEPacketTunnelNetworkSettings *)v96 setMTU:v81];

  if (!v96)
  {
LABEL_29:
    v31 = ne_log_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_error_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_ERROR, "%@: Stopping tunnel because create tunnel settings failed", buf, 0xCu);
    }

    v32 = v104[5];
    if (v32)
    {
      *(v32 + 77) = 1;
    }

    v102[0] = MEMORY[0x1E69E9820];
    v102[1] = 3221225472;
    v102[2] = __NEIKEv2PacketTunnelHandleConnected_block_invoke;
    v102[3] = &unk_1E7F087B8;
    v102[4] = &v103;
    [(NEIKEv2PacketTunnelProvider *)self stopIKEv2TunnelWithReason:v102 completionHandler:?];
    v33 = 0;
    goto LABEL_34;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v114 = __Block_byref_object_copy__12503;
  v115 = __Block_byref_object_dispose__12504;
  v82 = self;
  v116 = v82;
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __NEIKEv2PacketTunnelHandleConnected_block_invoke_2;
  v101[3] = &unk_1E7F087E0;
  v101[4] = buf;
  [v82 setTunnelNetworkSettings:v96 completionHandler:v101];
  v84 = objc_getProperty(v82, v83, 240, 1);
  v86 = v84;
  if (v84)
  {
    v87 = objc_getProperty(v84, v85, 352, 1);
    if (v87)
    {
      v88 = v87[12];
      goto LABEL_78;
    }
  }

  else
  {
    v87 = 0;
  }

  v88 = 0;
LABEL_78:
  v82[76] = v88 & 1;

  v90 = objc_getProperty(v82, v89, 240, 1);
  v92 = v90;
  if (v90)
  {
    v93 = objc_getProperty(v90, v91, 352, 1);
    if (v93)
    {
      v94 = v93[11];
      goto LABEL_81;
    }
  }

  else
  {
    v93 = 0;
  }

  v94 = 0;
LABEL_81:
  v82[79] = v94 & 1;

  _Block_object_dispose(buf, 8);
  v33 = v96;
LABEL_34:

LABEL_35:
  _Block_object_dispose(&v103, 8);
}

void sub_1BA962EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void __NEIKEv2PacketTunnelHandleConnected_block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 32);
  Property = *(*(v5 + 8) + 40);
  if (v4)
  {
    if (Property)
    {
      Property = objc_getProperty(Property, v3, 264, 1);
      v5 = *(a1 + 32);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __NEIKEv2PacketTunnelHandleConnected_block_invoke_3;
    block[3] = &unk_1E7F087B8;
    block[4] = v5;
    dispatch_async(Property, block);
  }

  else
  {
    [Property setReasserting:0];
    [(NEIKEv2PacketTunnelProvider *)*(*(*(a1 + 32) + 8) + 40) invokeStartTunnelCompletionHandler:?];
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 40);
      if (v10)
      {
        v11 = objc_getProperty(*(v9 + 40), v8, 208, 1);
      }

      else
      {
        v11 = 0;
      }

      v13 = [v11 scopedInterface];
      v14 = *(*(*(a1 + 32) + 8) + 40);
      if (v13)
      {
        if (v14)
        {
          v14 = objc_getProperty(v14, v12, 208, 1);
        }

        v15 = v14;
        v16 = [v15 scopedInterface];
      }

      else
      {
        if (v14)
        {
          v14 = objc_getProperty(v14, v12, 208, 1);
        }

        v15 = v14;
        v16 = [v15 interface];
      }

      v17 = v16;
      v18 = [v16 interfaceName];
      *buf = 138412546;
      v21 = v10;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEFAULT, "%@: Tunnel Status: UP - (scoped to %@)", buf, 0x16u);
    }
  }
}

void __NEIKEv2PacketTunnelHandleConnected_block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    *buf = 138412290;
    v9 = v6;
    _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "%@: Stopping tunnel due to set tunnel network settings failed", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = *(*(v3 + 8) + 40);
  if (v4)
  {
    *(v4 + 77) = 1;
    v3 = *(a1 + 32);
    v5 = *(*(v3 + 8) + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __NEIKEv2PacketTunnelHandleConnected_block_invoke_368;
  v7[3] = &unk_1E7F087B8;
  v7[4] = v3;
  [(NEIKEv2PacketTunnelProvider *)v5 stopIKEv2TunnelWithReason:v7 completionHandler:?];
}

void sub_1BA963CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA9641DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __NEIKEv2CompanionDatapathCopyQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("Companion proxy datapath queue", v2);
  v1 = NEIKEv2CompanionDatapathCopyQueue_queue;
  NEIKEv2CompanionDatapathCopyQueue_queue = v0;
}

void __NEIKEv2PacketTunnelProviderGetSocket_block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    if (*(a1 + 48))
    {
      v6 = "IKE";
    }

    else
    {
      v6 = "PFKEY";
    }

    v14 = 136315650;
    v15 = "NEIKEv2PacketTunnelProviderGetSocket_block_invoke";
    v16 = 2112;
    v17 = v5;
    v18 = 2080;
    v19 = v6;
    _os_log_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_INFO, "%s: %@: completion handler invoked for %s socket request", &v14, 0x20u);
  }

  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = dup([v3 fileDescriptor]);
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = *(*(*(a1 + 40) + 8) + 24);
      v14 = 136315650;
      v15 = "NEIKEv2PacketTunnelProviderGetSocket_block_invoke";
      v16 = 2112;
      v17 = v9;
      v18 = 1024;
      LODWORD(v19) = v10;
      _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_INFO, "%s: %@: Got socket %d", &v14, 0x1Cu);
    }

    close([v3 fileDescriptor]);
  }

  v11 = *(a1 + 32);
  if (v11 && objc_getProperty(v11, v7, 160, 1))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v12, 160, 1);
    }

    dispatch_semaphore_signal(Property);
  }
}

void __NEIKEv2PacketTunnelProviderCopyQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("NEIKEv2PacketTunnelProvider Queue", v2);
  v1 = NEIKEv2PacketTunnelProviderCopyQueue_queue;
  NEIKEv2PacketTunnelProviderCopyQueue_queue = v0;
}

void sub_1BA96715C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA96779C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__int128 *ne_loopback_protocol_get_id()
{
  if (ne_loopback_protocol_get_id_protocolOnce != -1)
  {
    dispatch_once(&ne_loopback_protocol_get_id_protocolOnce, &__block_literal_global_13152);
  }

  return &g_identifier;
}

void __ne_loopback_protocol_get_id_block_invoke()
{
  xmmword_1EBC117B0 = 0u;
  unk_1EBC117C0 = 0u;
  xmmword_1EBC11790 = 0u;
  unk_1EBC117A0 = 0u;
  xmmword_1EBC11770 = 0u;
  *&qword_1EBC11780 = 0u;
  xmmword_1EBC11750 = 0u;
  unk_1EBC11760 = 0u;
  xmmword_1EBC11730 = 0u;
  unk_1EBC11740 = 0u;
  xmmword_1EBC11710 = 0u;
  *&qword_1EBC11720 = 0u;
  xmmword_1EBC116F0 = 0u;
  unk_1EBC11700 = 0u;
  xmmword_1EBC116D0 = 0u;
  *&qword_1EBC116E0 = 0u;
  g_callbacks = 0u;
  qword_1EBC117F0 = 0;
  g_identifier = 0u;
  unk_1EBC117E0 = 0u;
  __strlcpy_chk();
  qword_1EBC117F0 = 0x100000004;
  nw_protocol_set_default_one_to_one_callbacks();
  *&g_callbacks = ne_loopback_add_input_handler;
  *(&g_callbacks + 1) = ne_loopback_remove_input_handler;
  *&xmmword_1EBC11710 = ne_loopback_get_input_frames;
  *(&xmmword_1EBC11710 + 1) = ne_loopback_get_output_frames;
  qword_1EBC11720 = ne_loopback_finalize_output_frames;
  *&xmmword_1EBC11770 = ne_loopback_supports_external_data;
  qword_1EBC11780 = ne_loopback_output_finished;
  qword_1EBC116E8 = ne_loopback_connected;
  *(&xmmword_1EBC116F0 + 1) = ne_loopback_error;
  *(&xmmword_1EBC116D0 + 1) = ne_loopback_connect;
  qword_1EBC116E0 = ne_loopback_disconnect;
  if ((nw_protocol_register_extended() & 1) == 0)
  {
    v0 = ne_log_obj();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *v1 = 0;
      _os_log_error_impl(&dword_1BA83C000, v0, OS_LOG_TYPE_ERROR, "Failed to register the np_tunnel_flow protocol", v1, 2u);
    }
  }
}

char *ne_loopback_protocol_create(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (ne_loopback_protocol_get_id_protocolOnce != -1)
  {
    dispatch_once(&ne_loopback_protocol_get_id_protocolOnce, &__block_literal_global_13152);
  }

  if (nw_protocols_are_equal())
  {
    v6 = nw_parameters_copy_context();
    v7 = [NELoopbackConnection alloc];
    v8 = v6;
    if (v7 && (v13.receiver = v7, v13.super_class = NELoopbackConnection, (v9 = objc_msgSendSuper2(&v13, sel_init)) != 0))
    {
      v10 = v9;
      *(v9 + 8) = xmmword_1BAA4E570;
      *(v9 + 24) = xmmword_1BAA4E580;
      *(v9 + 40) = 0u;
      v11 = v9 + 40;
      *(v9 + 56) = 0u;
      *(v9 + 72) = 0u;
      *(v9 + 88) = 0u;
      *(v9 + 7) = &g_identifier;
      *(v9 + 8) = &g_callbacks;
      objc_storeStrong(v9 + 15, v6);
      nw_frame_array_init();

      *(v10 + 10) = v10;
    }

    else
    {

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void ne_loopback_disconnect(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = v1;
  if (v1)
  {
    objc_getProperty(v1, v2, 120, 1);
  }

  v5 = v3;
  v4 = v3;
  nw_queue_context_async();
}

uint64_t __ne_loopback_disconnect_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1 + 40;
  }

  else
  {
    v2 = 0;
  }

  result = *(v2 + 48);
  if (result)
  {
    return (*(*(result + 24) + 48))();
  }

  return result;
}

uint64_t ne_loopback_connect(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = v1;
  if (v1)
  {
    objc_getProperty(v1, v2, 120, 1);
  }

  v6 = v3;
  v4 = v3;
  nw_queue_context_async();

  return 1;
}

uint64_t __ne_loopback_connect_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1 + 40;
  }

  else
  {
    v2 = 0;
  }

  result = *(v2 + 48);
  if (result)
  {
    return (*(*(result + 24) + 40))();
  }

  return result;
}

uint64_t ne_loopback_error(uint64_t result)
{
  if (result)
  {
    result = *(result + 48);
    if (result)
    {
      return (*(*(result + 24) + 56))();
    }
  }

  return result;
}

uint64_t ne_loopback_connected(uint64_t result, uint64_t a2)
{
  if (*(result + 32) == a2)
  {
    return (*(*(*(result + 48) + 24) + 40))();
  }

  return result;
}

void ne_loopback_output_finished(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v6 = v1;
  if (v1)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v6[17];
      *buf = 134218240;
      v8 = v3;
      v9 = 1024;
      v10 = nw_frame_array_unclaimed_length();
      _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "Loopback received output finished with %llu bytes received, current input bytes %u", buf, 0x12u);
    }

    v1 = v6;
    v4 = v6[11];
    if (v4)
    {
      v5 = *(*(v4 + 24) + 184);
      if (v5)
      {
        v5();
        v1 = v6;
      }
    }
  }

  [(NELoopbackConnection *)v1 notifyInputHandler];
}

uint64_t ne_loopback_finalize_output_frames(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  nw_frame_array_foreach();
  [(NELoopbackConnection *)v2 notifyInputHandler];

  return 1;
}

uint64_t __ne_loopback_finalize_output_frames_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  nw_frame_array_remove();
  nw_frame_finalize();

  return 1;
}

uint64_t ne_loopback_get_output_frames(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  v6 = *(a1 + 40);
  if (!v6)
  {
    return 0;
  }

  nw_frame_array_init();
  result = 0;
  if (a4 && a5)
  {
    v10 = 0;
    v11 = *(v6 + 128);
    while (1)
    {
      v12 = *(v6 + 8 + 8 * v11);
      v13 = v12 >= a4 ? a4 : v12;
      if (!malloc_type_malloc(v13, 0x100004077774924uLL))
      {
        break;
      }

      nw_frame_create();
      nw_frame_array_append();
      v14 = *(v6 + 128);
      if (v14 == 3)
      {
        v11 = 0;
      }

      else
      {
        v11 = v14 + 1;
      }

      *(v6 + 128) = v11;
      a4 -= v13;
      result = (v10 + 1);
      if (a4)
      {
        v15 = a5 - 1 == v10;
      }

      else
      {
        v15 = 1;
      }

      v10 = (v10 + 1);
      if (v15)
      {
        return result;
      }
    }

    return v10;
  }

  return result;
}

void ne_loopback_output_frame_finalizer(void *a1, int a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      v5 = a1;
      *(a3 + 136) += nw_frame_unclaimed_length();
      nw_frame_get_buffer();
      nw_frame_reset();
      nw_frame_array_append();
    }
  }

  else
  {

    ne_loopback_input_frame_finalizer(a1);
  }
}

void ne_loopback_input_frame_finalizer(void *a1)
{
  v1 = a1;
  buffer = nw_frame_get_buffer();
  nw_frame_reset();

  free(buffer);
}

uint64_t ne_loopback_get_input_frames(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 40))
  {
    return 0;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  nw_frame_array_init();
  if (!a4 || !a5)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *&buf[4] = a5;
      LOWORD(v29) = 1024;
      *(&v29 + 2) = a4;
      v10 = "Maximum frame count (%u) and/or maximum byte count (%u) is 0";
      v11 = buf;
      v14 = v9;
      v15 = 14;
      goto LABEL_27;
    }

    goto LABEL_8;
  }

  if (nw_frame_array_is_empty())
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v10 = "No input data currently available";
      v11 = buf;
LABEL_15:
      v14 = v9;
      v15 = 2;
LABEL_27:
      _os_log_debug_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEBUG, v10, v11, v15);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  *buf = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __90__NELoopbackConnection_addInputFramesToArray_maximumBytes_minimumBytes_maximumFrameCount___block_invoke;
  v31 = &unk_1E7F089B8;
  v32 = &v24;
  nw_frame_array_foreach();
  if (*(v25 + 6) < a3)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v23 = 0;
      v10 = "Not enough data available to meet the required minimum";
      v11 = &v23;
      goto LABEL_15;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  nw_frame_array_first();
  v9 = v12 = 0;
  if (!v9)
  {
    goto LABEL_10;
  }

  v16 = 0;
  do
  {
    if (v12 >= a5)
    {
      break;
    }

    v17 = a4 - v16;
    if (a4 <= v16)
    {
      break;
    }

    v18 = nw_frame_array_next();
    if (nw_frame_unclaimed_length() + v16 <= a4)
    {
      nw_frame_array_remove();
      nw_frame_array_append();
      v16 += nw_frame_unclaimed_length();
      v21 = v9;
      v9 = v18;
    }

    else
    {
      v19 = malloc_type_malloc(a4 - v16, 0x100004077774924uLL);
      if (!v19)
      {

        break;
      }

      v20 = nw_frame_create();
      nw_frame_array_append();
      v21 = v20;
      v22 = nw_frame_unclaimed_bytes();
      memcpy(v19, v22, v17);
      nw_frame_claim();
      v16 = a4;
    }

    v12 = (v12 + 1);
  }

  while (v9);
LABEL_9:

LABEL_10:
  _Block_object_dispose(&v24, 8);
  return v12;
}

void sub_1BA96B0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL ne_loopback_remove_input_handler(void *a1, uint64_t a2, int a3)
{
  *(a2 + 32) = 0;
  v4 = a1[6];
  if (v4 == a2)
  {
    a1[6] = 0;
    v7 = a1[4];
    if (v7)
    {
      (*(*(v7 + 24) + 8))();
    }

    if (a3)
    {
      v8 = a1[5];
      a1[5] = 0;
    }
  }

  return v4 == a2;
}

uint64_t ne_loopback_add_input_handler(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  *(a2 + 32) = a1;
  *(a1 + 48) = a2;
  if (v2)
  {
    v3 = (v2 + 40);
  }

  else
  {
    v3 = 0;
  }

  uuid_copy(v3, a2);
  return 1;
}

void sub_1BA96C2D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NEIKEv2RequestContextTypeString(unsigned int a1)
{
  if (a1 >= 8)
  {
    return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
  }

  else
  {
    return off_1E7F08C68[a1];
  }
}

void sub_1BA97489C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA97516C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NEIKEv2CreateSessionStateString(unint64_t a1)
{
  if (a1 >= 5)
  {
    return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
  }

  else
  {
    return off_1E7F08C40[a1];
  }
}

void sub_1BA976C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BA9784D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id *location, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  if (a18)
  {
    objc_destroyWeak(location);
  }

  objc_destroyWeak(&a42);
  _Unwind_Resume(a1);
}

void sub_1BA97A5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BA97D78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

id NEIKEv2TransportCopyNATTFramerDefinition()
{
  if (NEIKEv2TransportCopyNATTFramerDefinition_onceToken != -1)
  {
    dispatch_once(&NEIKEv2TransportCopyNATTFramerDefinition_onceToken, &__block_literal_global_14111);
  }

  v1 = NEIKEv2TransportCopyNATTFramerDefinition_definition;

  return v1;
}

uint64_t __NEIKEv2TransportCopyNATTFramerDefinition_block_invoke()
{
  definition = nw_framer_create_definition("UDP-NAT-T", 0, &__block_literal_global_4_14114);
  v1 = NEIKEv2TransportCopyNATTFramerDefinition_definition;
  NEIKEv2TransportCopyNATTFramerDefinition_definition = definition;

  return MEMORY[0x1EEE66BB8](definition, v1);
}

uint64_t __NEIKEv2TransportCopyNATTFramerDefinition_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  nw_framer_set_input_handler(v2, &__block_literal_global_7);
  nw_framer_set_output_handler(v2, &__block_literal_global_12);

  return 1;
}

void __NEIKEv2TransportCopyNATTFramerDefinition_block_invoke_9(uint64_t a1, void *a2, uint64_t a3, size_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a2;
  nw_framer_write_output(v5, _block_invoke_nonESPMarker, 4uLL);
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134217984;
    v8 = a4;
    _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "UDP-NAT-T: Writing frame length %zu for NAT-T", &v7, 0xCu);
  }

  nw_framer_write_output_no_copy(v5, a4);
}

uint64_t __NEIKEv2TransportCopyNATTFramerDefinition_block_invoke_3(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = MEMORY[0x1E69E9820];
  while (1)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    parse[0] = v3;
    parse[1] = 3221225472;
    parse[2] = __NEIKEv2TransportCopyNATTFramerDefinition_block_invoke_4;
    parse[3] = &unk_1E7F08CF0;
    parse[4] = &v16;
    parse[5] = &v12;
    if (!nw_framer_parse_input(v2, 1uLL, 0xFFFFFFFFuLL, 0, parse))
    {
      break;
    }

    if (v13[3])
    {
      if (*(v17 + 6))
      {
        v4 = ne_log_obj();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          v8 = v13[3];
          v9 = bswap32(*(v17 + 6));
          *buf = 134218240;
          v21 = v8;
          v22 = 1024;
          v23 = v9;
          _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "UDP-NAT-T: Reading frame length %zu for NAT-T, unexpected non-zero marker %04X", buf, 0x12u);
        }
      }

      else
      {
        v4 = ne_log_obj();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v7 = v13[3];
          *buf = 134217984;
          v21 = v7;
          _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "UDP-NAT-T: Reading frame length %zu for NAT-T", buf, 0xCu);
        }
      }

      v5 = nw_framer_message_create(v2);
      v6 = nw_framer_deliver_input_no_copy(v2, v13[3], v5, 1);

      if (!v6)
      {
        break;
      }
    }

    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v16, 8);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return 0;
}

void sub_1BA982FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

unint64_t __NEIKEv2TransportCopyNATTFramerDefinition_block_invoke_4(uint64_t a1, _DWORD *a2, unint64_t a3, int a4)
{
  v4 = 0;
  if (a2)
  {
    if (a4)
    {
      v4 = a3;
      if (a3 >= 4)
      {
        *(*(*(a1 + 32) + 8) + 24) = *a2;
        *(*(*(a1 + 40) + 8) + 24) = a3 - 4;
        return 4;
      }
    }
  }

  return v4;
}

id NEIKEv2TransportCopyTCPFramerDefinition()
{
  if (NEIKEv2TransportCopyTCPFramerDefinition_onceToken != -1)
  {
    dispatch_once(&NEIKEv2TransportCopyTCPFramerDefinition_onceToken, &__block_literal_global_14);
  }

  v1 = NEIKEv2TransportCopyTCPFramerDefinition_definition;

  return v1;
}

uint64_t __NEIKEv2TransportCopyTCPFramerDefinition_block_invoke()
{
  definition = nw_framer_create_definition("IKE-TCP", 0, &__block_literal_global_17_14124);
  v1 = NEIKEv2TransportCopyTCPFramerDefinition_definition;
  NEIKEv2TransportCopyTCPFramerDefinition_definition = definition;

  return MEMORY[0x1EEE66BB8](definition, v1);
}

uint64_t __NEIKEv2TransportCopyTCPFramerDefinition_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  nw_framer_set_input_handler(v2, &__block_literal_global_19);
  nw_framer_set_output_handler(v2, &__block_literal_global_22);
  nw_framer_write_output(v2, "IKETCP", 6uLL);

  return 1;
}

void __NEIKEv2TransportCopyTCPFramerDefinition_block_invoke_20(uint64_t a1, void *a2, uint64_t a3, size_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4 + 6;
  *output_buffer = bswap32(a4 + 6) >> 16;
  v9 = 0;
  v6 = a2;
  nw_framer_write_output(v6, output_buffer, 6uLL);
  v7 = ne_log_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    v11 = v5;
    v12 = 1024;
    v13 = v9;
    _os_log_debug_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEBUG, "IKE-TCP: Writing frame of length %u for SPI %04X", buf, 0xEu);
  }

  nw_framer_write_output_no_copy(v6, a4);
}

uint64_t __NEIKEv2TransportCopyTCPFramerDefinition_block_invoke_3(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69E9820];
  do
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v16 = 0;
    *temp_buffer = 0;
    parse[0] = v4;
    parse[1] = 3221225472;
    parse[2] = __NEIKEv2TransportCopyTCPFramerDefinition_block_invoke_4;
    parse[3] = &unk_1E7F08D38;
    v14 = &v17;
    v5 = v3;
    v13 = v5;
    if (nw_framer_parse_input(v5, 6uLL, 6uLL, temp_buffer, parse))
    {
      if (*(v18 + 6))
      {
        v6 = ne_log_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v10 = *(v18 + 6);
          *buf = 67109376;
          v22 = v10;
          v23 = 1024;
          v24 = 0;
          _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "IKE-TCP: Reading frame of length %u for SPI %04X", buf, 0xEu);
        }

        v7 = nw_framer_message_create(v5);
        v8 = nw_framer_deliver_input_no_copy(v5, *(v18 + 6), v7, 1);
        v9 = v8;
        if (!v8)
        {
          v2 = 0;
        }
      }

      else
      {
        v9 = 0;
        v2 = 0;
      }
    }

    else
    {
      v9 = 0;
      v2 = 6;
    }

    _Block_object_dispose(&v17, 8);
  }

  while (v9);

  return v2;
}

void sub_1BA983410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __NEIKEv2TransportCopyTCPFramerDefinition_block_invoke_4(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  result = 0;
  v10 = *MEMORY[0x1E69E9840];
  if (a2 && a3 >= 6)
  {
    *(*(*(a1 + 40) + 8) + 24) = bswap32(*a2) >> 16;
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 24);
    if (v6 > 5)
    {
      if (*(a2 + 1))
      {
        *(v5 + 24) = v6 - 2;
        return 2;
      }

      else
      {
        *(v5 + 24) = v6 - 6;
        return 6;
      }
    }

    else
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(*(*(a1 + 40) + 8) + 24);
        v9[0] = 67109120;
        v9[1] = v8;
        _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "IKE-TCP: Received invalid frame length %u", v9, 8u);
      }

      nw_framer_mark_failed_with_error(*(a1 + 32), 40);
      return 0;
    }
  }

  return result;
}

void sub_1BA98370C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *NEIPSecDBCreateSessionWithSocket(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if (__NEIPSecDBInitialize_onceToken != -1)
  {
    dispatch_once(&__NEIPSecDBInitialize_onceToken, &__block_literal_global_14276);
  }

  if (!g_IPSecDBSessions)
  {
    return 0;
  }

  Instance = _CFRuntimeCreateInstance();
  v10 = Instance;
  if (!Instance)
  {
    return v10;
  }

  *(Instance + 104) = 0;
  *(Instance + 88) = 0u;
  *(Instance + 72) = 0u;
  *(Instance + 56) = 0u;
  *(Instance + 40) = 0u;
  *(Instance + 24) = 0u;
  *(Instance + 16) = atomic_fetch_add_explicit(&sNEIPSecDBIndex, 1uLL, memory_order_relaxed);
  if (a2)
  {
    v11 = CFRetain(a2);
  }

  else
  {
    v11 = 0;
  }

  *(v10 + 24) = v11;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  v12 = _NEIPSecDBGetQueue();
  v13 = NEPFKeyOpen(v12, NEIPSecDBReceivePFKeyMessage, v10, a5);
  *(v10 + 64) = v13;
  if (!v13 || (pfkey_send_x3(v13, 7, 2u), pfkey_send_x3(*(v10 + 64), 7, 3u), *(v10 + 72) = 0x100000001, v14 = *MEMORY[0x1E695E480], v15 = MEMORY[0x1E695E9D8], v16 = MEMORY[0x1E695E9E8], *(v10 + 80) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), Mutable = CFDictionaryCreateMutable(v14, 0, v15, v16), *(v10 + 88) = Mutable, !*(v10 + 80)) || !Mutable)
  {
    CFRelease(v10);
    return 0;
  }

  v18 = _NEIPSecDBGetQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __NEIPSecDBCreateSessionWithSocket_block_invoke;
  block[3] = &__block_descriptor_tmp;
  block[4] = v10;
  dispatch_sync(v18, block);
  v19 = ne_log_obj();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v10;
    _os_log_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_INFO, "Created a new NEIPSecDB session %@", buf, 0xCu);
  }

  return v10;
}

const __CFDictionary *NEIPSecDBGetSAWithMessage(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = -1;
  }

  if (!a2)
  {
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 138412290;
    *&buf[4] = a1;
    v23 = "%@ pfkey received message is NULL";
LABEL_36:
    _os_log_error_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);
    return 0;
  }

  v5 = *a2;
  v6 = a2[6];
  if (v6)
  {
    v7 = v6 + 8;
  }

  else
  {
    v7 = 0;
  }

  if (!v5)
  {
    v22 = ne_log_obj();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 138412290;
    *&buf[4] = a1;
    v23 = "%@ pfkey received msg is NULL";
    goto LABEL_36;
  }

  v8 = a2[1];
  if (!v8)
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = a1;
      _os_log_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_INFO, "%@ pfkey received SA is NULL", buf, 0xCu);
    }

    return 0;
  }

  v9 = *(a1 + 80);
  if (!v9)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(v9);
  if (!Count)
  {
    return 0;
  }

  v11 = Count;
  v28 = v7;
  v12 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  v13 = malloc_type_calloc(v11, 8uLL, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(*(a1 + 80), v12, v13);
  if (v11 < 1)
  {
LABEL_41:
    v15 = 0;
    v25 = 0;
    v27 = v12;
    if (v12)
    {
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v14 = 0;
  while (1)
  {
    *buf = 0;
    v31 = 0;
    v30 = 0;
    v15 = v13[v14];
    Value = CFDictionaryGetValue(v15, @"Direction");
    if (Value)
    {
      v17 = CFEqual(Value, @"In");
      v18 = v17 == 0;
      if (v17)
      {
        v19 = buf;
        goto LABEL_18;
      }
    }

    else
    {
      v18 = 1;
    }

    v19 = 0;
LABEL_18:
    if (v18)
    {
      v20 = buf;
    }

    else
    {
      v20 = 0;
    }

    if (!NEIPSecDBFilloutBasicSAInfo(v15, &v30 + 1, &v30, &v31, v19, v20, 0))
    {
      goto LABEL_28;
    }

    if (v31 && v31 != *(v8 + 4) || HIBYTE(v30) != *(v5 + 3))
    {
      v21 = *buf;
      if (!*buf)
      {
        goto LABEL_28;
      }

LABEL_27:
      free(v21);
      goto LABEL_28;
    }

    v21 = *buf;
    if (NEIPSecDBAddressesMatch(*buf, v28))
    {
      break;
    }

    if (v21)
    {
      goto LABEL_27;
    }

LABEL_28:
    if (v11 == ++v14)
    {
      goto LABEL_41;
    }
  }

  valuePtr = 0;
  v27 = v12;
  CFNumberGetValue(v12[v14], kCFNumberCFIndexType, &valuePtr);
  if (*buf)
  {
    free(*buf);
  }

  if (a3)
  {
    *a3 = valuePtr;
  }

LABEL_42:
  free(v27);
  v25 = v15;
LABEL_43:
  if (v13)
  {
    free(v13);
  }

  return v25;
}

BOOL NEIPSecDBAddressesMatch(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 1);
    if (v3 == *(a2 + 1))
    {
      if (v3 == 30)
      {
        return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
      }

      if (v3 == 2)
      {
        return *(a1 + 4) == *(a2 + 4);
      }
    }

    return 0;
  }

  return v2;
}

void NEIPSecDBNotifyClient(uint64_t a1, int a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 32) && (*(a1 + 56) & 1) == 0 && *(a1 + 48))
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v12 = a1;
      v13 = 1024;
      v14 = a3;
      v15 = 1024;
      v16 = a2;
      _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_INFO, "%@ received notification %#x for SAID %u", buf, 0x18u);
    }

    CFRetain(a1);
    v7 = *(a1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __NEIPSecDBNotifyClient_block_invoke;
    block[3] = &__block_descriptor_tmp_307;
    v9 = a2;
    v10 = a3;
    block[4] = a1;
    block[5] = 0;
    dispatch_async(v7, block);
  }
}

void __NEIPSecDBNotifyClient_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 56) & 1) == 0)
  {
    (*(v2 + 32))(v2, *(a1 + 48), *(a1 + 52), *(a1 + 40), *(v2 + 40));
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

void __NEIPSecDBDeallocate(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      dispatch_source_cancel(*(a1 + 64));
      dispatch_release(v2);
      *(a1 + 64) = 0;
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      dispatch_release(v3);
      *(a1 + 48) = 0;
    }

    v4 = *(a1 + 80);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 80) = 0;
    }

    v5 = *(a1 + 88);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 88) = 0;
    }

    v6 = *(a1 + 24);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 24) = 0;
    }
  }
}

BOOL NEIPSecDBSetDispatchQueue(uint64_t a1, dispatch_object_t object)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      dispatch_release(v4);
      *(a1 + 48) = 0;
    }

    if (object)
    {
      *(a1 + 48) = object;
      dispatch_retain(object);
    }

    return 1;
  }

  else
  {
    v6 = ne_log_obj();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (result)
    {
      v7 = 136315138;
      v8 = "NEIPSecDBSetDispatchQueue";
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "%s called with null session", &v7, 0xCu);
      return 0;
    }
  }

  return result;
}

uint64_t NEIPSecDBAddLarvalSA(uint64_t a1, CFTypeRef cf, _DWORD *a3)
{
  v51[3] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v25 = ne_log_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    LODWORD(v45) = 136315138;
    *(&v45 + 4) = "NEIPSecDBAddLarvalSA";
    v26 = "%s called with null session";
LABEL_44:
    _os_log_fault_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_FAULT, v26, &v45, 0xCu);
    return 0;
  }

  if (!*(a1 + 80))
  {
    v25 = ne_log_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    LODWORD(v45) = 136315138;
    *(&v45 + 4) = "NEIPSecDBAddLarvalSA";
    v26 = "%s called with null session->sas";
    goto LABEL_44;
  }

  v38 = 0;
  v36 = 0;
  v37 = 0;
  valuePtr = 0;
  v34 = 0;
  v33 = 0;
  memset(v51, 0, 24);
  *buffer = 0;
  v49 = 0;
  v50 = 0;
  *&v45 = 0;
  *(&v45 + 1) = &v45;
  v46 = 0x2000000000;
  v47 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  if (!NEIPSecDBValidateSADictionary(cf, 1, 0))
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = a1;
      _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, "%@ add larval SA dictionary validation failed", buf, 0xCu);
    }

    goto LABEL_29;
  }

  if (NEIPSecDBFilloutBasicSAInfo(cf, &v38 + 1, &v38, &v33, &v37, &v36, v51))
  {
    Value = CFDictionaryGetValue(cf, @"UniqueID");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    }

    v7 = CFDictionaryGetValue(cf, @"LifeTimeinSeconds");
    v8 = v7;
    if (v7)
    {
      CFNumberGetValue(v7, kCFNumberLongLongType, &v34);
    }

    if (CFDictionaryContainsKey(cf, @"OutgoingInterface"))
    {
      v9 = CFDictionaryGetValue(cf, @"OutgoingInterface");
      CFStringGetCString(v9, buffer, 24, 0x600u);
    }

    v10 = NEIPSecDBCreateMutableDictionary(cf, @"In");
    v11 = _NEIPSecDBGetQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __NEIPSecDBAddLarvalSA_block_invoke;
    block[3] = &unk_1E7F08E68;
    block[6] = a1;
    block[7] = v10;
    block[4] = &v45;
    block[5] = &v29;
    dispatch_sync(v11, block);
    if (v10)
    {
      CFRelease(v10);
    }

    v12 = bswap32(v33);
    v13 = v51;
    if (!LOBYTE(v51[0]))
    {
      v13 = 0;
    }

    v14 = buffer;
    if (!buffer[0])
    {
      v14 = 0;
    }

    *&v27 = v13;
    *(&v27 + 1) = v14;
    if (NEPFKeySendGetSPI(*(a1 + 64), HIBYTE(v38), v38, v36, v37, v12, v12, valuePtr, v8 != 0, v34, 0, 1u, v27))
    {
      if (NEIPSecDBCopyResponseForQueuedRequest(v30[3], 0))
      {
        v15 = NEIPSecDBGetSPIForSA(a1, *(*(&v45 + 1) + 24));
        v16 = v15;
        if (a3)
        {
          *a3 = v15;
        }

        v17 = ne_log_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = *(*(&v45 + 1) + 24);
          *buf = 138412802;
          v40 = a1;
          v41 = 1024;
          v42 = v18;
          v43 = 1024;
          v44 = v16;
          _os_log_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_INFO, "%@ added larval SAID %u SPI %08X", buf, 0x18u);
        }

        goto LABEL_29;
      }

      v20 = ne_log_obj();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 138412290;
      v40 = a1;
      v21 = "%@ add larval SA, failed to receive response for pfkey get spi";
    }

    else
    {
      v20 = ne_log_obj();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
LABEL_28:
        NEIPSecDBRemoveSAIDFromSAs(a1, *(*(&v45 + 1) + 24));
        *(*(&v45 + 1) + 24) = 0;
        goto LABEL_29;
      }

      *buf = 138412290;
      v40 = a1;
      v21 = "%@ add larval SA, pfkey send get spi failed";
    }

    _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0xCu);
    goto LABEL_28;
  }

LABEL_29:
  if (v37)
  {
    free(v37);
  }

  if (v36)
  {
    free(v36);
  }

  v22 = v30[3];
  if (v22)
  {
    NEIPSecDBRemoveQueuedRequest(v22);
    free(v30[3]);
  }

  v23 = *(*(&v45 + 1) + 24);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v45, 8);
  return v23;
}

BOOL NEIPSecDBValidateSADictionary(CFTypeRef cf, char a2, char a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (NEInitCFTypes_onceToken == -1)
  {
    if (!cf)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
    if (!cf)
    {
      return 0;
    }
  }

  v6 = CFDICTIONARY_TYPE;
  if (CFGetTypeID(cf) != v6)
  {
    return 0;
  }

  if (!NEGetValueWithType(cf, @"LocalAddress", CFSTRING_TYPE))
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3713;
    v16 = 2112;
    v17 = @"LocalAddress";
    v18 = 2048;
    v19 = CFSTRING_TYPE;
    v9 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_92;
  }

  if (!NEGetValueWithType(cf, @"RemoteAddress", CFSTRING_TYPE))
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3714;
    v16 = 2112;
    v17 = @"RemoteAddress";
    v18 = 2048;
    v19 = CFSTRING_TYPE;
    v9 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_92;
  }

  if (CFDictionaryContainsKey(cf, @"LocalPrefix") && !NEGetValueWithType(cf, @"LocalPrefix", CFNUMBER_TYPE))
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3715;
    v16 = 2112;
    v17 = @"LocalPrefix";
    v18 = 2048;
    v19 = CFNUMBER_TYPE;
    v9 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_92;
  }

  if (CFDictionaryContainsKey(cf, @"RemotePrefix") && !NEGetValueWithType(cf, @"RemotePrefix", CFNUMBER_TYPE))
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3716;
    v16 = 2112;
    v17 = @"RemotePrefix";
    v18 = 2048;
    v19 = CFNUMBER_TYPE;
    v9 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_92;
  }

  if (CFDictionaryContainsKey(cf, @"LocalPort") && !NEGetValueWithType(cf, @"LocalPort", CFNUMBER_TYPE))
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3717;
    v16 = 2112;
    v17 = @"LocalPort";
    v18 = 2048;
    v19 = CFNUMBER_TYPE;
    v9 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_92;
  }

  if (CFDictionaryContainsKey(cf, @"RemotePort") && !NEGetValueWithType(cf, @"RemotePort", CFNUMBER_TYPE))
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3718;
    v16 = 2112;
    v17 = @"RemotePort";
    v18 = 2048;
    v19 = CFNUMBER_TYPE;
    v9 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_92;
  }

  if (CFDictionaryContainsKey(cf, @"IPSecInterface") && !NEGetValueWithType(cf, @"IPSecInterface", CFSTRING_TYPE))
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3719;
    v16 = 2112;
    v17 = @"IPSecInterface";
    v18 = 2048;
    v19 = CFSTRING_TYPE;
    v9 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_92;
  }

  if (CFDictionaryContainsKey(cf, @"OutgoingInterface") && !NEGetValueWithType(cf, @"OutgoingInterface", CFSTRING_TYPE))
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3720;
    v16 = 2112;
    v17 = @"OutgoingInterface";
    v18 = 2048;
    v19 = CFSTRING_TYPE;
    v9 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_92;
  }

  if (a3)
  {
    return 1;
  }

  if (!NEGetValueWithType(cf, @"Mode", CFSTRING_TYPE))
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3722;
    v16 = 2112;
    v17 = @"Mode";
    v18 = 2048;
    v19 = CFSTRING_TYPE;
    v9 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_92;
  }

  if (!NEGetValueWithType(cf, @"IPSecProtocol", CFSTRING_TYPE))
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3723;
    v16 = 2112;
    v17 = @"IPSecProtocol";
    v18 = 2048;
    v19 = CFSTRING_TYPE;
    v9 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_92;
  }

  if (a2)
  {
    return 1;
  }

  if (!NEGetValueWithType(cf, @"SPIValue", CFNUMBER_TYPE))
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3726;
    v16 = 2112;
    v17 = @"SPIValue";
    v18 = 2048;
    v19 = CFNUMBER_TYPE;
    v9 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_92;
  }

  if (CFDictionaryContainsKey(cf, @"ReplayWindowSize") && !NEGetValueWithType(cf, @"ReplayWindowSize", CFNUMBER_TYPE))
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3727;
    v16 = 2112;
    v17 = @"ReplayWindowSize";
    v18 = 2048;
    v19 = CFNUMBER_TYPE;
    v9 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_92;
  }

  if (CFDictionaryContainsKey(cf, @"LifeTimeinSeconds") && !NEGetValueWithType(cf, @"LifeTimeinSeconds", CFNUMBER_TYPE))
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3728;
    v16 = 2112;
    v17 = @"LifeTimeinSeconds";
    v18 = 2048;
    v19 = CFNUMBER_TYPE;
    v9 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_92;
  }

  if (CFDictionaryContainsKey(cf, @"EncryptionAlgorithm") && !NEGetValueWithType(cf, @"EncryptionAlgorithm", CFSTRING_TYPE))
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3730;
    v16 = 2112;
    v17 = @"EncryptionAlgorithm";
    v18 = 2048;
    v19 = CFSTRING_TYPE;
    v9 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_92;
  }

  if (CFDictionaryContainsKey(cf, @"EncryptionKey"))
  {
    TypeID = CFDataGetTypeID();
    if (!NEGetValueWithType(cf, @"EncryptionKey", TypeID))
    {
      v8 = ne_log_obj();
      result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v12 = 136315906;
      v13 = "NEIPSecDBValidateSADictionary";
      v14 = 1024;
      v15 = 3731;
      v16 = 2112;
      v17 = @"EncryptionKey";
      v18 = 2048;
      v19 = CFDataGetTypeID();
      v9 = "%s:%d: type of value for key %@ != %lu";
      goto LABEL_92;
    }
  }

  if (CFDictionaryContainsKey(cf, @"AuthAlgorithm") && !NEGetValueWithType(cf, @"AuthAlgorithm", CFSTRING_TYPE))
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3733;
    v16 = 2112;
    v17 = @"AuthAlgorithm";
    v18 = 2048;
    v19 = CFSTRING_TYPE;
    v9 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_92;
  }

  if (CFDictionaryContainsKey(cf, @"AuthKey"))
  {
    v11 = CFDataGetTypeID();
    if (!NEGetValueWithType(cf, @"AuthKey", v11))
    {
      v8 = ne_log_obj();
      result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v12 = 136315906;
      v13 = "NEIPSecDBValidateSADictionary";
      v14 = 1024;
      v15 = 3734;
      v16 = 2112;
      v17 = @"AuthKey";
      v18 = 2048;
      v19 = CFDataGetTypeID();
      v9 = "%s:%d: type of value for key %@ != %lu";
      goto LABEL_92;
    }
  }

  if (CFDictionaryContainsKey(cf, @"NATTraversal") && !NEGetValueWithType(cf, @"NATTraversal", CFBOOLEAN_TYPE))
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3736;
    v16 = 2112;
    v17 = @"NATTraversal";
    v18 = 2048;
    v19 = CFBOOLEAN_TYPE;
    v9 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_92;
  }

  if (CFDictionaryContainsKey(cf, @"NATTKeepAlive") && !NEGetValueWithType(cf, @"NATTKeepAlive", CFBOOLEAN_TYPE))
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3737;
    v16 = 2112;
    v17 = @"NATTKeepAlive";
    v18 = 2048;
    v19 = CFBOOLEAN_TYPE;
    v9 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_92;
  }

  if (CFDictionaryContainsKey(cf, @"NATTDetectedPeer") && !NEGetValueWithType(cf, @"NATTDetectedPeer", CFBOOLEAN_TYPE))
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3738;
    v16 = 2112;
    v17 = @"NATTDetectedPeer";
    v18 = 2048;
    v19 = CFBOOLEAN_TYPE;
    v9 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_92;
  }

  if (CFDictionaryContainsKey(cf, @"NATTPort") && !NEGetValueWithType(cf, @"NATTPort", CFNUMBER_TYPE))
  {
    v8 = ne_log_obj();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3739;
    v16 = 2112;
    v17 = @"NATTPort";
    v18 = 2048;
    v19 = CFNUMBER_TYPE;
    v9 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_92;
  }

  if (!CFDictionaryContainsKey(cf, @"NATTSourcePort") || NEGetValueWithType(cf, @"NATTSourcePort", CFNUMBER_TYPE))
  {
    return 1;
  }

  v8 = ne_log_obj();
  result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v12 = 136315906;
    v13 = "NEIPSecDBValidateSADictionary";
    v14 = 1024;
    v15 = 3740;
    v16 = 2112;
    v17 = @"NATTSourcePort";
    v18 = 2048;
    v19 = CFNUMBER_TYPE;
    v9 = "%s:%d: type of value for key %@ != %lu";
LABEL_92:
    _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, v9, &v12, 0x26u);
    return 0;
  }

  return result;
}

__CFDictionary *NEIPSecDBCreateMutableDictionary(const __CFDictionary *a1, const void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "NEIPSecDBCreateMutableDictionary";
      v8 = "%s called with null saData";
      goto LABEL_13;
    }

    return 0;
  }

  if (!a2)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "NEIPSecDBCreateMutableDictionary";
      v8 = "%s called with null direction";
      goto LABEL_13;
    }

    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    v9 = 136315138;
    v10 = "NEIPSecDBCreateMutableDictionary";
    v8 = "%s called with null mutableSAData";
LABEL_13:
    _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, v8, &v9, 0xCu);
    return 0;
  }

  v5 = Mutable;
  CFDictionaryAddValue(Mutable, @"Direction", a2);
  NEIPSecDBCopyValueIfPresent(a1, v5, @"Mode");
  NEIPSecDBCopyValueIfPresent(a1, v5, @"IPSecProtocol");
  NEIPSecDBCopyValueIfPresent(a1, v5, @"SPIValue");
  NEIPSecDBCopyValueIfPresent(a1, v5, @"LocalAddress");
  NEIPSecDBCopyValueIfPresent(a1, v5, @"LocalPort");
  NEIPSecDBCopyValueIfPresent(a1, v5, @"RemoteAddress");
  NEIPSecDBCopyValueIfPresent(a1, v5, @"RemotePort");
  NEIPSecDBCopyValueIfPresent(a1, v5, @"IPSecInterface");
  NEIPSecDBCopyValueIfPresent(a1, v5, @"OutgoingInterface");
  return v5;
}

_OWORD *__NEIPSecDBAddLarvalSA_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = *(v2 + 72);
  if ((v4 + 1) > 1)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 1;
  }

  *(v2 + 72) = v5;
  *(*(a1[4] + 8) + 24) = v4;
  if (v3)
  {
    NEAddValueToIntKeyedDictionary(*(v2 + 80), *(*(a1[4] + 8) + 24), v3);
    v2 = a1[6];
  }

  result = NEIPSecDBCreateQueuedRequest(v2, 1, *(*(a1[4] + 8) + 24));
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void NEIPSecDBRemoveSAIDFromSAs(uint64_t a1, int a2)
{
  v4 = _NEIPSecDBGetQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __NEIPSecDBRemoveSAIDFromSAs_block_invoke;
  v5[3] = &__block_descriptor_tmp_228;
  v5[4] = a1;
  v6 = a2;
  dispatch_sync(v4, v5);
}

uint64_t NEIPSecDBCopyResponseForQueuedRequest(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = *(a1 + 24);
    v5 = v4 > 0x1A;
    v6 = (1 << v4) & 0x400000E;
    if (v5 || v6 == 0)
    {
      v8 = 2000000000;
    }

    else
    {
      v8 = 4000000000;
    }

    v9 = *(a1 + 16);
    v10 = dispatch_time(0, v8);
    dispatch_semaphore_wait(v9, v10);
    v11 = _NEIPSecDBGetQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __NEIPSecDBCopyResponseForQueuedRequest_block_invoke;
    block[3] = &__block_descriptor_tmp_230;
    block[4] = a1;
    dispatch_sync(v11, block);
    v12 = *(a1 + 32);
    if (a2 && (*(a1 + 32) & 1) != 0)
    {
      *a2 = *(a1 + 40);
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t NEIPSecDBGetSPIForSA(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "NEIPSecDBGetSPIForSA";
    v8 = "%s called with null session";
LABEL_10:
    _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, v8, &buf, 0xCu);
    return 0;
  }

  if (!*(a1 + 80))
  {
    v7 = ne_log_obj();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "NEIPSecDBGetSPIForSA";
    v8 = "%s called with null session->sas";
    goto LABEL_10;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v12 = 0x2000000000;
  v13 = 0;
  v4 = _NEIPSecDBGetQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __NEIPSecDBGetSPIForSA_block_invoke;
  block[3] = &unk_1E7F08E90;
  v10 = a2;
  block[4] = &buf;
  block[5] = a1;
  dispatch_sync(v4, block);
  v5 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  return v5;
}

void NEIPSecDBRemoveQueuedRequest(uint64_t a1)
{
  v2 = _NEIPSecDBGetQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __NEIPSecDBRemoveQueuedRequest_block_invoke;
  block[3] = &__block_descriptor_tmp_231;
  block[4] = a1;
  dispatch_sync(v2, block);
}

void __NEIPSecDBRemoveQueuedRequest_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2;
  if (*v2)
  {
    *(v3 + 8) = v2[1];
    v2 = *(a1 + 32);
    v3 = *v2;
  }

  *v2[1] = v3;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      dispatch_release(v5);
      *(*(a1 + 32) + 16) = 0;
    }
  }
}

_OWORD *NEIPSecDBCreateQueuedRequest(uint64_t a1, int a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = malloc_type_malloc(0x30uLL, 0x10E004027337507uLL);
    *v6 = 0u;
    v6[1] = 0u;
    v6[2] = 0u;
    *(v6 + 6) = a2;
    *(v6 + 7) = a3;
    *(v6 + 2) = dispatch_semaphore_create(0);
    v9 = *(a1 + 96);
    v8 = (a1 + 96);
    v7 = v9;
    *v6 = v9;
    if (v9)
    {
      *(v7 + 8) = v6;
    }

    *v8 = v6;
    *(v6 + 1) = v8;
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = 136315138;
      v13 = "NEIPSecDBCreateQueuedRequest";
      _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, "%s called with null session", &v12, 0xCu);
    }

    return 0;
  }

  return v6;
}

void NEIPSecDBCopyValueIfPresent(const __CFDictionary *a1, __CFDictionary *a2, void *key)
{
  value = 0;
  if (CFDictionaryGetValueIfPresent(a1, key, &value))
  {
    CFDictionaryAddValue(a2, key, value);
  }
}

uint64_t NEIPSecDBAddSA(uint64_t a1, CFTypeRef cf)
{
  v75[3] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v46 = ne_log_obj();
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    LODWORD(v69) = 136315138;
    *(&v69 + 4) = "NEIPSecDBAddSA";
    v47 = "%s called with null session";
LABEL_108:
    _os_log_fault_impl(&dword_1BA83C000, v46, OS_LOG_TYPE_FAULT, v47, &v69, 0xCu);
    return 0;
  }

  if (!*(a1 + 80))
  {
    v46 = ne_log_obj();
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    LODWORD(v69) = 136315138;
    *(&v69 + 4) = "NEIPSecDBAddSA";
    v47 = "%s called with null session->sas";
    goto LABEL_108;
  }

  v61 = 0;
  v62 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 1;
  v57 = 0;
  valuePtr = 0;
  v56 = 0;
  memset(v75, 0, 24);
  *buffer = 0;
  v73 = 0;
  v74 = 0;
  v54 = 0;
  *&v69 = 0;
  *(&v69 + 1) = &v69;
  v70 = 0x2000000000;
  v71 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2000000000;
  v53 = 0;
  if (!NEIPSecDBValidateSADictionary(cf, 0, 0))
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v64 = a1;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "%@ add SA dictionary validation failed", buf, 0xCu);
    }

    goto LABEL_85;
  }

  if (NEIPSecDBFilloutBasicSAInfo(cf, &v59 + 1, &v59, &v60, &v62, &v61, v75))
  {
    Value = CFDictionaryGetValue(cf, @"UniqueID");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    }

    v5 = CFDictionaryGetValue(cf, @"ReplayWindowSize");
    if (v5)
    {
      CFNumberGetValue(v5, kCFNumberCharType, &v58);
    }

    v6 = CFDictionaryGetValue(cf, @"EncryptionAlgorithm");
    if (!v6)
    {
      v8 = 0;
      v9 = 0;
      goto LABEL_20;
    }

    v7 = v6;
    if (CFEqual(v6, @"DES"))
    {
      v8 = 0;
      v9 = 1;
      goto LABEL_20;
    }

    if (CFEqual(v7, @"3DES"))
    {
      v8 = 0;
      v9 = 2;
      goto LABEL_20;
    }

    if (CFEqual(v7, @"AES-128") || CFEqual(v7, @"AES-256"))
    {
      v8 = 0;
      v9 = 12;
      goto LABEL_20;
    }

    if (CFEqual(v7, @"AES-128-GCM") || CFEqual(v7, @"AES-256-GCM"))
    {
      v8 = 0;
      v9 = 13;
      goto LABEL_20;
    }

    if (CFEqual(v7, @"ChaCha20-Poly1305"))
    {
      v8 = 0;
      v9 = 14;
      goto LABEL_20;
    }

    if (CFEqual(v7, @"ChaCha20-Poly1305-IIV"))
    {
      v9 = 14;
    }

    else
    {
      if (!CFEqual(v7, @"AES-128-GCM-IIV") && !CFEqual(v7, @"AES-256-GCM-IIV"))
      {
        if (CFEqual(v7, @"NULL-With-AES-128-GMAC") || CFEqual(v7, @"NULL-With-AES-256-GMAC"))
        {
          v8 = 0;
          v9 = 15;
        }

        else
        {
          v8 = 0;
          if (CFEqual(v7, @"NULL"))
          {
            v9 = 3;
          }

          else
          {
            v9 = 0;
          }
        }

LABEL_20:
        v11 = CFDictionaryGetValue(cf, @"AuthAlgorithm");
        if (v11)
        {
          v12 = v11;
          if (CFEqual(v11, @"MD5-96"))
          {
            v13 = 1;
          }

          else if (CFEqual(v12, @"SHA1-96"))
          {
            v13 = 2;
          }

          else if (CFEqual(v12, @"SHA2-256"))
          {
            v13 = 6;
          }

          else if (CFEqual(v12, @"SHA2-384"))
          {
            v13 = 7;
          }

          else
          {
            v13 = 8 * (CFEqual(v12, @"SHA2-512") != 0);
          }
        }

        else
        {
          v13 = 0;
        }

        v14 = CFDictionaryGetValue(cf, @"EncryptionKey");
        BytePtr = v14;
        if (v14)
        {
          Length = CFDataGetLength(v14);
          v17 = Length;
          if (Length < 1)
          {
            BytePtr = 0;
          }

          else
          {
            BytePtr = CFDataGetBytePtr(BytePtr);
          }
        }

        else
        {
          v17 = 0;
        }

        v18 = CFDictionaryGetValue(cf, @"AuthKey");
        v19 = v18;
        if (v18)
        {
          v20 = CFDataGetLength(v18);
          v21 = v20;
          if (v20 < 1)
          {
            v19 = 0;
          }

          else
          {
            v19 = CFDataGetBytePtr(v19);
          }
        }

        else
        {
          v21 = 0;
        }

        v22 = CFDictionaryGetValue(cf, @"NATTraversal");
        if (v22 && CFBooleanGetValue(v22))
        {
          v8 |= 2u;
        }

        v23 = CFDictionaryGetValue(cf, @"NATTKeepAlive");
        if (v23 && CFBooleanGetValue(v23))
        {
          v8 |= 4u;
        }

        v24 = CFDictionaryGetValue(cf, @"NATTKeepAliveOffload");
        if (v24 && CFBooleanGetValue(v24))
        {
          v8 |= 0x8000u;
        }

        v25 = CFDictionaryGetValue(cf, @"NATTKeepAliveOffloadInterval");
        if (v25)
        {
          CFNumberGetValue(v25, kCFNumberShortType, &v54);
        }

        v26 = CFDictionaryGetValue(cf, @"NATTKeepAliveInterval");
        if (v26)
        {
          CFNumberGetValue(v26, kCFNumberShortType, &v54 + 2);
        }

        v27 = CFDictionaryGetValue(cf, @"NATTDetectedPeer");
        if (v27 && CFBooleanGetValue(v27))
        {
          v8 |= 0x1000u;
        }

        v28 = CFDictionaryGetValue(cf, @"LifeTimeinSeconds");
        if (v28)
        {
          CFNumberGetValue(v28, kCFNumberLongLongType, &v57);
        }

        v29 = CFDictionaryGetValue(cf, @"NATTPort");
        if (v29)
        {
          CFNumberGetValue(v29, kCFNumberShortType, &v56 + 2);
        }

        v30 = CFDictionaryGetValue(cf, @"NATTSourcePort");
        if (v30)
        {
          CFNumberGetValue(v30, kCFNumberShortType, &v56);
        }

        if (CFDictionaryContainsKey(cf, @"OutgoingInterface"))
        {
          v31 = CFDictionaryGetValue(cf, @"OutgoingInterface");
          CFStringGetCString(v31, buffer, 24, 0x600u);
        }

        v32 = CFDictionaryGetValue(cf, @"sequencePerTrafficClass");
        if (v32)
        {
          v33 = 2 * (CFBooleanGetValue(v32) != 0);
        }

        else
        {
          v33 = 0;
        }

        v34 = NEIPSecDBCreateMutableDictionary(cf, @"Out");
        v35 = _NEIPSecDBGetQueue();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __NEIPSecDBAddSA_block_invoke;
        block[3] = &unk_1E7F08EB8;
        block[6] = a1;
        block[7] = v34;
        block[4] = &v69;
        block[5] = &v50;
        dispatch_sync(v35, block);
        if (v34)
        {
          CFRelease(v34);
        }

        v36 = v75;
        if (!LOBYTE(v75[0]))
        {
          v36 = 0;
        }

        v37 = buffer;
        if (!buffer[0])
        {
          v37 = 0;
        }

        *&v48 = v36;
        *(&v48 + 1) = v37;
        if (NEPFKeySendAdd(*(a1 + 64), HIBYTE(v59), v59, v62, v61, v60, valuePtr, v58, BytePtr, v9, v17, v19, v13, v21, v8, v33, 0, 0, v57, 0, 0, v56, HIWORD(v56), HIWORD(v54), v54, 1, v48))
        {
          v38 = NEIPSecDBCopyResponseForQueuedRequest(v51[3], 0);
          v39 = ne_log_obj();
          v40 = v39;
          if (v38)
          {
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              v41 = *(*(&v69 + 1) + 24);
              *buf = 138412802;
              v64 = a1;
              v65 = 1024;
              v66 = v41;
              v67 = 1024;
              v68 = bswap32(v60);
              _os_log_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_INFO, "%@ added SAID %u SPI %08X", buf, 0x18u);
            }

            goto LABEL_85;
          }

          if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_84;
          }

          *buf = 138412290;
          v64 = a1;
          v42 = "%@ add SA, failed to receive response for pfkey add SA";
        }

        else
        {
          v40 = ne_log_obj();
          if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
LABEL_84:
            NEIPSecDBRemoveSAIDFromSAs(a1, *(*(&v69 + 1) + 24));
            *(*(&v69 + 1) + 24) = 0;
            goto LABEL_85;
          }

          *buf = 138412290;
          v64 = a1;
          v42 = "%@ add SA, pfkey add SA failed";
        }

        _os_log_error_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_ERROR, v42, buf, 0xCu);
        goto LABEL_84;
      }

      v9 = 13;
    }

    v8 = 1024;
    goto LABEL_20;
  }

LABEL_85:
  if (v62)
  {
    free(v62);
  }

  if (v61)
  {
    free(v61);
  }

  v43 = v51[3];
  if (v43)
  {
    NEIPSecDBRemoveQueuedRequest(v43);
    free(v51[3]);
  }

  v44 = *(*(&v69 + 1) + 24);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v69, 8);
  return v44;
}

_OWORD *__NEIPSecDBAddSA_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = *(v2 + 72);
  if ((v4 + 1) > 1)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 1;
  }

  *(v2 + 72) = v5;
  *(*(a1[4] + 8) + 24) = v4;
  if (v3)
  {
    NEAddValueToIntKeyedDictionary(*(v2 + 80), *(*(a1[4] + 8) + 24), v3);
    v2 = a1[6];
  }

  result = NEIPSecDBCreateQueuedRequest(v2, 3, *(*(a1[4] + 8) + 24));
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

uint64_t NEIPSecDBUpdateSA(uint64_t a1, int a2, CFTypeRef cf)
{
  v79[3] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v49 = ne_log_obj();
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    LODWORD(v76) = 136315138;
    *(&v76 + 4) = "NEIPSecDBUpdateSA";
    v50 = "%s called with null session";
LABEL_108:
    _os_log_fault_impl(&dword_1BA83C000, v49, OS_LOG_TYPE_FAULT, v50, &v76, 0xCu);
    return 0;
  }

  if (!*(a1 + 80))
  {
    v49 = ne_log_obj();
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    LODWORD(v76) = 136315138;
    *(&v76 + 4) = "NEIPSecDBUpdateSA";
    v50 = "%s called with null session->sas";
    goto LABEL_108;
  }

  v68 = 0;
  v69 = 0;
  v67 = 0;
  v66 = 0;
  memset(v79, 0, 24);
  v65 = 1;
  v64 = 0;
  v63 = 0;
  v61 = 0;
  valuePtr = 0;
  *&v76 = 0;
  *(&v76 + 1) = &v76;
  v77 = 0x2000000000;
  v78 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2000000000;
  v60 = 0;
  if (!NEIPSecDBValidateSADictionary(cf, 0, 0))
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_83;
    }

    *buf = 138412290;
    v71 = a1;
    v15 = "%@ update SA dictionary validation failed";
    goto LABEL_80;
  }

  v6 = _NEIPSecDBGetQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __NEIPSecDBUpdateSA_block_invoke;
  block[3] = &unk_1E7F08EE0;
  block[4] = &v76;
  block[5] = a1;
  v56 = a2;
  dispatch_sync(v6, block);
  v7 = *(*(&v76 + 1) + 24);
  if (!v7)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_83;
    }

    *buf = 138412290;
    v71 = a1;
    v15 = "%@ update SA, failed to find existing SA";
    goto LABEL_80;
  }

  if (!NEIPSecDBFilloutBasicSAInfo(v7, &v66 + 1, &v66, &v67, &v69, &v68, v79))
  {
    goto LABEL_83;
  }

  Value = CFDictionaryGetValue(cf, @"UniqueID");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  }

  v9 = CFDictionaryGetValue(cf, @"ReplayWindowSize");
  if (v9)
  {
    CFNumberGetValue(v9, kCFNumberCharType, &v65);
  }

  v10 = CFDictionaryGetValue(cf, @"EncryptionAlgorithm");
  if (!v10)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_23;
  }

  v11 = v10;
  if (CFEqual(v10, @"DES"))
  {
    v12 = 0;
    v13 = 1;
    goto LABEL_23;
  }

  if (CFEqual(v11, @"3DES"))
  {
    v12 = 0;
    v13 = 2;
    goto LABEL_23;
  }

  if (CFEqual(v11, @"AES-128") || CFEqual(v11, @"AES-256"))
  {
    v12 = 0;
    v13 = 12;
    goto LABEL_23;
  }

  if (CFEqual(v11, @"AES-128-GCM") || CFEqual(v11, @"AES-256-GCM"))
  {
    v12 = 0;
    v13 = 13;
    goto LABEL_23;
  }

  if (CFEqual(v11, @"ChaCha20-Poly1305"))
  {
    v12 = 0;
    v13 = 14;
    goto LABEL_23;
  }

  if (CFEqual(v11, @"ChaCha20-Poly1305-IIV"))
  {
    v13 = 14;
LABEL_106:
    v12 = 1024;
    goto LABEL_23;
  }

  if (CFEqual(v11, @"AES-128-GCM-IIV") || CFEqual(v11, @"AES-256-GCM-IIV"))
  {
    v13 = 13;
    goto LABEL_106;
  }

  if (CFEqual(v11, @"NULL-With-AES-128-GMAC") || CFEqual(v11, @"NULL-With-AES-256-GMAC"))
  {
    v12 = 0;
    v13 = 15;
  }

  else
  {
    v12 = 0;
    if (CFEqual(v11, @"NULL"))
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }
  }

LABEL_23:
  v16 = CFDictionaryGetValue(cf, @"AuthAlgorithm");
  if (v16)
  {
    v17 = v16;
    if (CFEqual(v16, @"MD5-96"))
    {
      v18 = 1;
    }

    else if (CFEqual(v17, @"SHA1-96"))
    {
      v18 = 2;
    }

    else if (CFEqual(v17, @"SHA2-256"))
    {
      v18 = 6;
    }

    else if (CFEqual(v17, @"SHA2-384"))
    {
      v18 = 7;
    }

    else
    {
      v18 = 8 * (CFEqual(v17, @"SHA2-512") != 0);
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = CFDictionaryGetValue(cf, @"EncryptionKey");
  BytePtr = v19;
  if (v19)
  {
    Length = CFDataGetLength(v19);
    v22 = Length;
    if (Length < 1)
    {
      BytePtr = 0;
    }

    else
    {
      BytePtr = CFDataGetBytePtr(BytePtr);
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = CFDictionaryGetValue(cf, @"AuthKey");
  v24 = v23;
  if (v23)
  {
    v25 = CFDataGetLength(v23);
    v26 = v25;
    if (v25 < 1)
    {
      v24 = 0;
    }

    else
    {
      v24 = CFDataGetBytePtr(v24);
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = CFDictionaryGetValue(cf, @"NATTraversal");
  if (v27 && CFBooleanGetValue(v27))
  {
    v12 |= 2u;
  }

  v28 = CFDictionaryGetValue(cf, @"NATTKeepAlive");
  if (v28 && CFBooleanGetValue(v28))
  {
    v12 |= 4u;
  }

  v29 = CFDictionaryGetValue(cf, @"NATTKeepAliveOffload");
  if (v29 && CFBooleanGetValue(v29))
  {
    v12 |= 0x8000u;
  }

  v30 = CFDictionaryGetValue(cf, @"NATTKeepAliveOffloadInterval");
  if (v30)
  {
    CFNumberGetValue(v30, kCFNumberShortType, &v61);
  }

  v31 = CFDictionaryGetValue(cf, @"NATTKeepAliveInterval");
  if (v31)
  {
    CFNumberGetValue(v31, kCFNumberShortType, &v61 + 2);
  }

  v32 = CFDictionaryGetValue(cf, @"NATTDetectedPeer");
  if (v32 && CFBooleanGetValue(v32))
  {
    v12 |= 0x1000u;
  }

  v33 = CFDictionaryGetValue(cf, @"LifeTimeinSeconds");
  if (v33)
  {
    CFNumberGetValue(v33, kCFNumberLongLongType, &v64);
  }

  v34 = CFDictionaryGetValue(cf, @"NATTPort");
  if (v34)
  {
    CFNumberGetValue(v34, kCFNumberShortType, &v63);
  }

  v35 = CFDictionaryGetValue(cf, @"NATTSourcePort");
  if (v35)
  {
    CFNumberGetValue(v35, kCFNumberShortType, &v63 + 2);
  }

  v36 = CFDictionaryGetValue(cf, @"sequencePerTrafficClass");
  if (v36)
  {
    v37 = 2 * (CFBooleanGetValue(v36) != 0);
  }

  else
  {
    v37 = 0;
  }

  v38 = _NEIPSecDBGetQueue();
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 0x40000000;
  v53[2] = __NEIPSecDBUpdateSA_block_invoke_117;
  v53[3] = &unk_1E7F08F08;
  v53[4] = &v57;
  v53[5] = a1;
  v54 = a2;
  dispatch_sync(v38, v53);
  v39 = v79;
  if (!LOBYTE(v79[0]))
  {
    v39 = 0;
  }

  LOWORD(v52) = HIWORD(v61);
  HIWORD(v52) = v61;
  WORD2(v51) = HIWORD(v63);
  HIWORD(v51) = v63;
  LODWORD(v51) = 0;
  if (!NEPFKeySendUpdate(*(a1 + 64), HIBYTE(v66), v66, v68, v69, v67, valuePtr, v65, BytePtr, v13, v22, v24, v18, v26, v12, v37, 0, 0, v64, 0, v51, v52, 1, v39))
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_83;
    }

    *buf = 138412290;
    v71 = a1;
    v15 = "%@ pfkey send update SA failed";
LABEL_80:
    v44 = v14;
LABEL_81:
    _os_log_error_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
    goto LABEL_83;
  }

  v40 = NEIPSecDBCopyResponseForQueuedRequest(v58[3], 0);
  v41 = ne_log_obj();
  v42 = v41;
  if (v40)
  {
    v43 = 1;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v71 = a1;
      v72 = 1024;
      v73 = a2;
      v74 = 1024;
      v75 = bswap32(v67);
      _os_log_impl(&dword_1BA83C000, v42, OS_LOG_TYPE_INFO, "%@ updated SAID %u SPI %08X", buf, 0x18u);
    }

    goto LABEL_84;
  }

  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v71 = a1;
    v15 = "%@ failed to receive response for pfkey update SA";
    v44 = v42;
    goto LABEL_81;
  }

LABEL_83:
  v43 = 0;
LABEL_84:
  v45 = *(&v76 + 1);
  v46 = *(*(&v76 + 1) + 24);
  if (v46)
  {
    CFRelease(v46);
    *(v45 + 24) = 0;
  }

  if (v69)
  {
    free(v69);
  }

  if (v68)
  {
    free(v68);
  }

  v47 = v58[3];
  if (v47)
  {
    NEIPSecDBRemoveQueuedRequest(v47);
    free(v58[3]);
  }

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v76, 8);
  return v43;
}

const void *__NEIPSecDBUpdateSA_block_invoke(uint64_t a1)
{
  result = NEGetValueFromIntKeyedDictionary(*(*(a1 + 40) + 80), *(a1 + 48));
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

_OWORD *__NEIPSecDBUpdateSA_block_invoke_117(uint64_t a1)
{
  result = NEIPSecDBCreateQueuedRequest(*(a1 + 40), 2, *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t NEIPSecDBMigrateSA(uint64_t a1, int a2, CFTypeRef cf)
{
  v72[3] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v40 = ne_log_obj();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    LODWORD(v65) = 136315138;
    *(&v65 + 4) = "NEIPSecDBMigrateSA";
    v41 = "%s called with null session";
LABEL_89:
    _os_log_fault_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_FAULT, v41, &v65, 0xCu);
    return 0;
  }

  if (!*(a1 + 80))
  {
    v40 = ne_log_obj();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    LODWORD(v65) = 136315138;
    *(&v65 + 4) = "NEIPSecDBMigrateSA";
    v41 = "%s called with null session->sas";
    goto LABEL_89;
  }

  v58 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v53 = 0;
  v54 = 0;
  valuePtr = 0;
  v51 = 0;
  memset(v72, 0, 24);
  memset(v71, 0, sizeof(v71));
  *buffer = 0;
  v69 = 0;
  v70 = 0;
  *&v65 = 0;
  *(&v65 + 1) = &v65;
  v66 = 0x2000000000;
  v67 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2000000000;
  v50 = 0;
  if (!NEIPSecDBValidateSADictionary(cf, 0, 1))
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    *buf = 138412290;
    v60 = a1;
    v11 = "%@ migrate SA dictionary validation failed";
    goto LABEL_11;
  }

  v6 = _NEIPSecDBGetQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __NEIPSecDBMigrateSA_block_invoke;
  block[3] = &unk_1E7F08F30;
  block[4] = &v65;
  block[5] = a1;
  v46 = a2;
  dispatch_sync(v6, block);
  v7 = *(*(&v65 + 1) + 24);
  if (!v7)
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    *buf = 138412290;
    v60 = a1;
    v11 = "%@ migrate SA, failed to find existing SA";
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(v7, @"Direction");
  if (Value)
  {
    v9 = CFEqual(Value, @"In") == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!NEIPSecDBFilloutBasicSAInfo(*(*(&v65 + 1) + 24), &v51, 0, &v54, &v58, &v57, v72) || !NEIPSecDBFilloutBasicSAInfo(cf, 0, 0, 0, &v56, &v55, v71))
  {
    goto LABEL_67;
  }

  if (CFDictionaryContainsKey(cf, @"OutgoingInterface"))
  {
    v13 = CFDictionaryGetValue(cf, @"OutgoingInterface");
    CFStringGetCString(v13, buffer, 24, 0x600u);
  }

  v14 = CFDictionaryGetValue(cf, @"EncryptionAlgorithm");
  v15 = v14;
  if (v14)
  {
    if (CFEqual(v14, @"ChaCha20-Poly1305-IIV") || CFEqual(v15, @"AES-128-GCM-IIV") || CFEqual(v15, @"AES-256-GCM-IIV"))
    {
      LODWORD(v15) = 1024;
    }

    else
    {
      LODWORD(v15) = 0;
    }
  }

  v16 = CFDictionaryGetValue(cf, @"NATTraversal");
  if (v16 && CFBooleanGetValue(v16))
  {
    LODWORD(v15) = v15 | 2;
  }

  v17 = CFDictionaryGetValue(cf, @"NATTKeepAlive");
  if (v17 && CFBooleanGetValue(v17))
  {
    LODWORD(v15) = v15 | 4;
  }

  v18 = CFDictionaryGetValue(cf, @"NATTKeepAliveOffload");
  if (v18 && CFBooleanGetValue(v18))
  {
    LODWORD(v15) = v15 | 0x8000;
  }

  v19 = CFDictionaryGetValue(cf, @"NATTKeepAliveOffloadInterval");
  if (v19)
  {
    CFNumberGetValue(v19, kCFNumberShortType, &valuePtr);
  }

  v20 = CFDictionaryGetValue(cf, @"NATTKeepAliveInterval");
  if (v20)
  {
    CFNumberGetValue(v20, kCFNumberShortType, &valuePtr + 2);
  }

  v21 = CFDictionaryGetValue(cf, @"NATTDetectedPeer");
  if (v21 && CFBooleanGetValue(v21))
  {
    LODWORD(v15) = v15 | 0x1000;
  }

  v22 = CFDictionaryGetValue(cf, @"NATTPort");
  if (v22)
  {
    CFNumberGetValue(v22, kCFNumberShortType, &v53);
  }

  v23 = CFDictionaryGetValue(cf, @"NATTSourcePort");
  if (v23)
  {
    CFNumberGetValue(v23, kCFNumberShortType, &v53 + 2);
  }

  v24 = _NEIPSecDBGetQueue();
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 0x40000000;
  v43[2] = __NEIPSecDBMigrateSA_block_invoke_123;
  v43[3] = &unk_1E7F08F58;
  v43[4] = &v47;
  v43[5] = a1;
  v44 = a2;
  dispatch_sync(v24, v43);
  if (!v48[3])
  {
    goto LABEL_67;
  }

  v25 = v57;
  v26 = v72;
  if (!LOBYTE(v72[0]))
  {
    v26 = 0;
  }

  if (v9)
  {
    v27 = v58;
  }

  else
  {
    v27 = v57;
  }

  if (!v9)
  {
    v25 = v58;
  }

  v28 = v55;
  if (v9)
  {
    v29 = v56;
  }

  else
  {
    v29 = v55;
  }

  if (!v9)
  {
    v28 = v56;
  }

  v30 = v71;
  if (!LOBYTE(v71[0]))
  {
    v30 = 0;
  }

  v31 = buffer;
  if (!buffer[0])
  {
    v31 = 0;
  }

  *&v42 = v30;
  *(&v42 + 1) = v31;
  if (!NEPFKeySendMigrate(*(a1 + 64), v51, v54, v15, HIWORD(v53), v53, SHIWORD(valuePtr), valuePtr, v27, v25, v26, v29, v28, v42))
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    *buf = 138412290;
    v60 = a1;
    v11 = "%@ pfkey send migrate SA failed";
LABEL_11:
    v12 = v10;
LABEL_12:
    _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
    goto LABEL_67;
  }

  v32 = NEIPSecDBCopyResponseForQueuedRequest(v48[3], 0);
  v33 = ne_log_obj();
  v34 = v33;
  if (v32)
  {
    v35 = 1;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v60 = a1;
      v61 = 1024;
      v62 = a2;
      v63 = 1024;
      v64 = bswap32(v54);
      _os_log_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_INFO, "%@ migrated SAID %u SPI %08X", buf, 0x18u);
    }

    goto LABEL_68;
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v60 = a1;
    v11 = "%@ failed to receive response for pfkey migrate SA";
    v12 = v34;
    goto LABEL_12;
  }

LABEL_67:
  v35 = 0;
LABEL_68:
  v36 = *(&v65 + 1);
  v37 = *(*(&v65 + 1) + 24);
  if (v37)
  {
    CFRelease(v37);
    *(v36 + 24) = 0;
  }

  if (v58)
  {
    free(v58);
  }

  if (v57)
  {
    free(v57);
  }

  if (v56)
  {
    free(v56);
  }

  if (v55)
  {
    free(v55);
  }

  v38 = v48[3];
  if (v38)
  {
    NEIPSecDBRemoveQueuedRequest(v38);
    free(v48[3]);
  }

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v65, 8);
  return v35;
}

const void *__NEIPSecDBMigrateSA_block_invoke(uint64_t a1)
{
  result = NEGetValueFromIntKeyedDictionary(*(*(a1 + 40) + 80), *(a1 + 48));
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

_OWORD *__NEIPSecDBMigrateSA_block_invoke_123(uint64_t a1)
{
  result = NEIPSecDBCreateQueuedRequest(*(a1 + 40), 26, *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t NEIPSecDBDeleteSA(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  v5 = v4;
  if (a1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = a1;
      *&buf[12] = 1024;
      *&buf[14] = a2;
      _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@ deleting SAID %u", buf, 0x12u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v27 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    v6 = _NEIPSecDBGetQueue();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = __NEIPSecDBDeleteSA_block_invoke;
    v16[3] = &unk_1E7F08F80;
    v16[5] = &v18;
    v16[6] = a1;
    v17 = a2;
    v16[4] = buf;
    dispatch_sync(v6, v16);
    v7 = *(*&buf[8] + 24);
    if (v7)
    {
      if (!_NEIPSecDBDeleteSA(a1, v7) || (NEIPSecDBCopyResponseForQueuedRequest(v19[3], 0) & 1) == 0)
      {
        v11 = ne_log_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *v22 = 138412546;
          v23 = a1;
          v24 = 1024;
          v25 = a2;
          _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "%@ failed to receive response for pfkey delete SAID %u", v22, 0x12u);
        }

        v9 = 0;
        goto LABEL_15;
      }

      v8 = ne_log_obj();
      v9 = 1;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v22 = 138412546;
        v23 = a1;
        v24 = 1024;
        v25 = a2;
        v10 = "%@ deleted SAID %u";
LABEL_14:
        _os_log_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_INFO, v10, v22, 0x12u);
      }
    }

    else
    {
      v8 = ne_log_obj();
      v9 = 1;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v22 = 138412546;
        v23 = a1;
        v24 = 1024;
        v25 = a2;
        v10 = "%@ delete SA, saData is NULL for SAID %u, may already be removed";
        goto LABEL_14;
      }
    }

LABEL_15:
    v12 = *&buf[8];
    v13 = *(*&buf[8] + 24);
    if (v13)
    {
      CFRelease(v13);
      *(v12 + 24) = 0;
    }

    v14 = v19[3];
    if (v14)
    {
      NEIPSecDBRemoveQueuedRequest(v14);
      free(v19[3]);
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(buf, 8);
    return v9;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "NEIPSecDBDeleteSA";
    _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "%s called with null session", buf, 0xCu);
  }

  return 0;
}

void __NEIPSecDBDeleteSA_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 80))
  {
    v3 = NEGetValueFromIntKeyedDictionary(*(v2 + 80), *(a1 + 56));
    if (v3)
    {
      v3 = CFRetain(v3);
    }

    *(*(*(a1 + 32) + 8) + 24) = v3;
    v2 = *(a1 + 48);
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      *(*(*(a1 + 40) + 8) + 24) = NEIPSecDBCreateQueuedRequest(v2, 4, *(a1 + 56));
      v2 = *(a1 + 48);
    }
  }

  v4 = *(v2 + 104);
  if (v4)
  {
    v5 = *(a1 + 56);
    do
    {
      v6 = *v4;
      v7 = *(v4 + 4);
      if (v7)
      {
        v8 = v7 == v5;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        *(v4 + 4) = 0;
        if (!*(v4 + 5))
        {
          goto LABEL_24;
        }
      }

      else
      {
        v9 = *(v4 + 5);
        if (v9)
        {
          v10 = v9 == v5;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          v9 = 0;
          *(v4 + 5) = 0;
        }

        if (!v7 && !v9)
        {
LABEL_24:
          v11 = *(v4 + 3);
          if (v11)
          {
            if (!dispatch_source_testcancel(*(v4 + 3)))
            {
              dispatch_source_cancel(v11);
              v6 = *v4;
            }

            *(v4 + 3) = 0;
          }

          v12 = *(v4 + 1);
          if (v6)
          {
            v6[1] = v12;
          }

          *v12 = v6;

          free(v4);
          return;
        }
      }

      v4 = v6;
    }

    while (v6);
  }
}