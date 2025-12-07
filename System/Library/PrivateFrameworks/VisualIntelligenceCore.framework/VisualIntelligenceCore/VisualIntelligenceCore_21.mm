uint64_t DictionaryConfigStorage.init()()
{
  v1 = sub_1D893CABC(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

void DictionaryConfigStorage.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  os_unfair_lock_lock((v3 + 16));
  v8 = *(v3 + 24);
  if (*(v8 + 16) && (v9 = sub_1D87EF838(a1, a2), (v10 & 1) != 0))
  {
    sub_1D87D3E4C(*(v8 + 56) + 32 * v9, a3);
  }

  else
  {
    *a3 = 0u;
    a3[1] = 0u;
  }

  os_unfair_lock_unlock(v4 + 4);
}

uint64_t sub_1D895FB64(uint64_t a1, os_unfair_lock_s **a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  sub_1D895E280(a1, v9);
  v6 = *a2;

  os_unfair_lock_lock(v6 + 4);
  sub_1D895E280(v9, v8);
  sub_1D895E64C(v8, v4, v5);
  os_unfair_lock_unlock(v6 + 4);
  return sub_1D87A14E4(v9, &qword_1ECA650C0, &unk_1D8B2D030);
}

uint64_t DictionaryConfigStorage.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(v3 + 4);
  sub_1D895E280(a1, v8);
  sub_1D895E64C(v8, a2, a3);
  os_unfair_lock_unlock(v3 + 4);
  return sub_1D87A14E4(a1, &qword_1ECA650C0, &unk_1D8B2D030);
}

void (*DictionaryConfigStorage.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  *a1 = v7;
  *(v7 + 104) = a3;
  *(v7 + 112) = v3;
  *(v7 + 96) = a2;
  DictionaryConfigStorage.subscript.getter(a2, a3, v7);
  return sub_1D895FD14;
}

void sub_1D895FD14(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 112);
  v5 = *(*a1 + 96);
  if (a2)
  {
    sub_1D895E280(*a1, v2 + 32);
    os_unfair_lock_lock(v4 + 4);
    sub_1D895E280(v2 + 32, v2 + 64);

    sub_1D895E64C(v2 + 64, v5, v3);
    os_unfair_lock_unlock(v4 + 4);
    sub_1D87A14E4(v2 + 32, &qword_1ECA650C0, &unk_1D8B2D030);
  }

  else
  {
    os_unfair_lock_lock(v4 + 4);
    sub_1D895E280(v2, v2 + 32);

    sub_1D895E64C(v2 + 32, v5, v3);
    os_unfair_lock_unlock(v4 + 4);
  }

  sub_1D87A14E4(v2, &qword_1ECA650C0, &unk_1D8B2D030);

  free(v2);
}

uint64_t DictionaryConfigStorage.__deallocating_deinit()
{
  sub_1D87A14E4(v0 + 24, &qword_1ECA65EE0, &qword_1D8B2D268);

  return swift_deallocClassInstance();
}

uint64_t sub_1D895FE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(v3 + 4);
  sub_1D895E280(a1, v8);
  sub_1D895E64C(v8, a2, a3);
  os_unfair_lock_unlock(v3 + 4);
  return sub_1D87A14E4(a1, &qword_1ECA650C0, &unk_1D8B2D030);
}

uint64_t (*sub_1D895FF24(uint64_t **a1, uint64_t a2, uint64_t a3))()
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
  v6[4] = DictionaryConfigStorage.subscript.modify(v6, a2, a3);
  return sub_1D895FFAC;
}

void sub_1D895FFAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1D8960044(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D89600A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double VisionKitConfigStorage.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0xD00000000000001ELL && 0x80000001D8B40140 == a2;
  if (v6 || (sub_1D8B16BA0() & 1) != 0)
  {
    *(a3 + 24) = MEMORY[0x1E69E6370];
    os_unfair_lock_lock((v3 + 16));
    *a3 = *(v3 + 24);

    os_unfair_lock_unlock((v3 + 16));
  }

  else
  {
    if (a1 == 0xD000000000000010 && 0x80000001D8B3FFC0 == a2 || (sub_1D8B16BA0() & 1) != 0 || a1 == 0xD000000000000017 && 0x80000001D8B3FFA0 == a2 || (sub_1D8B16BA0() & 1) != 0)
    {
      v9 = *(v3 + 56);
      v10 = sub_1D8B15940();
      v11 = [v9 objectForKey_];
    }

    else
    {
      v13 = *(v3 + 48);
      v10 = sub_1D8B15940();
      v11 = [v13 objectForKey_];
    }

    v12 = v11;

    if (v12)
    {
      sub_1D8B16540();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    result = *&v14;
    *a3 = v14;
    *(a3 + 16) = v15;
  }

  return result;
}

uint64_t sub_1D89602DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  sub_1D895E280(a1, v6);

  return VisionKitConfigStorage.subscript.setter(v6, v4, v3);
}

uint64_t VisionKitConfigStorage.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a2 == 0xD00000000000001ELL && 0x80000001D8B40140 == a3;
  if (!v7 && (sub_1D8B16BA0() & 1) == 0)
  {
    if (a2 == 0xD000000000000010 && 0x80000001D8B3FFC0 == a3 || (sub_1D8B16BA0() & 1) != 0 || a2 == 0xD000000000000017 && 0x80000001D8B3FFA0 == a3 || (sub_1D8B16BA0() & 1) != 0)
    {
      v12 = *(v3 + 56);
    }

    else
    {
      v12 = *(v3 + 48);
    }

    sub_1D895E280(a1, v21);
    v13 = v22;
    if (v22)
    {
      v14 = __swift_project_boxed_opaque_existential_1(v21, v22);
      v15 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v14);
      v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v17);
      v18 = sub_1D8B16B80();
      (*(v15 + 8))(v17, v13);
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      v18 = 0;
    }

    v19 = sub_1D8B15940();

    [v12 setObject:v18 forKey:v19];
    swift_unknownObjectRelease();

    return sub_1D895E2F0(a1);
  }

  os_unfair_lock_lock((v3 + 16));
  sub_1D8960608(v3 + 24, a1, v21);
  os_unfair_lock_unlock((v3 + 16));
  v8 = v21[0];
  if (!v21[0])
  {
    return sub_1D895E2F0(a1);
  }

  v9 = v21[1];

  (v8)(v10);
  sub_1D888A850(v8, v9);
  sub_1D888A850(v8, v9);

  return sub_1D895E2F0(a1);
}

void sub_1D8960608(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  sub_1D895E280(a2, v14);
  if (!v15)
  {
    sub_1D895E2F0(v14);
    if (qword_1EE0E4440 != -1)
    {
      swift_once();
    }

    v6 = sub_1D8B151E0();
    __swift_project_value_buffer(v6, qword_1EE0E4448);
    v7 = sub_1D8B151C0();
    v8 = sub_1D8B16230();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D8783000, v7, v8, "isVisualLookUpEagerModeEnabled's new value is nil; defaulting to false", v9, 2u);
      MEMORY[0x1DA721330](v9, -1, -1);
    }

    v5 = 0;
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v5 = v13;
LABEL_9:
    *a1 = v5;
    v11 = *(a1 + 8);
    v10 = *(a1 + 16);
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    *(v12 + 32) = v5;
    *a3 = sub_1D8960B74;
    a3[1] = v12;

    return;
  }

  *a3 = 0;
  a3[1] = 0;
}

void (*VisionKitConfigStorage.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x58uLL);
  }

  *a1 = v7;
  v7[9] = a3;
  v7[10] = v3;
  v7[8] = a2;
  VisionKitConfigStorage.subscript.getter(a2, a3, v7);
  return sub_1D8960830;
}

void sub_1D8960830(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 64);
  if (a2)
  {
    sub_1D895E280(*a1, v2 + 32);

    VisionKitConfigStorage.subscript.setter(v2 + 32, v4, v3);
    sub_1D895E2F0(v2);
  }

  else
  {

    VisionKitConfigStorage.subscript.setter(v2, v4, v3);
  }

  free(v2);
}

void VisionKitConfigStorage.setDidChangeIsVisualLookUpEagerModeEnabled(_:)(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((v2 + 16));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  os_unfair_lock_unlock((v2 + 16));
}

uint64_t VisionKitConfigStorage.deinit()
{
  sub_1D8960958(v0 + 24);

  return v0;
}

uint64_t VisionKitConfigStorage.__deallocating_deinit()
{
  sub_1D8960958(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_1D89609D0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = nullsub_3;
  *(v0 + 40) = 0;
  *(v0 + 48) = [objc_opt_self() standardUserDefaults];
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1D8B15940();
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    *(v0 + 56) = v3;
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1D8960A94(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x58uLL);
  }

  *a1 = v7;
  v7[9] = a3;
  v7[10] = v3;
  v7[8] = a2;
  VisionKitConfigStorage.subscript.getter(a2, a3, v7);
  return sub_1D8960830;
}

uint64_t sub_1D8960BA4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64250, &qword_1D8B23B58);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v16 - v6);
  v9 = *v1;
  v8 = v1[1];
  v10 = *(*v1 + 16);
  if (v8 == v10)
  {
    v11 = *(v5 + 56);

    return v11(a1, 1, 1, v3);
  }

  else
  {
    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      v17 = v5;
      v12 = *(type metadata accessor for CVBundle(0) - 8);
      v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8;
      v1[1] = v8 + 1;
      v14 = *(v3 + 48);
      v15 = v1[2];
      *v7 = v15;
      result = sub_1D89798EC(v13, v7 + v14, type metadata accessor for CVBundle);
      if (!__OFADD__(v15, 1))
      {
        v1[2] = v15 + 1;
        sub_1D881F6FC(v7, a1, &qword_1ECA64250, &qword_1D8B23B58);
        return (*(v17 + 56))(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D8960D94(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *a1 = xmmword_1D8B2D3E0;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v1 + 8 * v2 + 32);
    v1[1] = v2 + 1;
    v5 = v1[2];
    if (!__OFADD__(v5, 1))
    {
      v1[2] = v5 + 1;
      *a1 = v5;
      *(a1 + 8) = v4;

      return;
    }
  }

  __break(1u);
}

uint64_t static CVResultPackage.package(for:pixelBuffer:fileBaseName:timestamp:exportGraphicalArtifacts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  *(v7 + 81) = a6;
  *(v7 + 752) = a7;
  *(v7 + 744) = a5;
  *(v7 + 736) = a4;
  *(v7 + 728) = a3;
  *(v7 + 720) = a2;
  *(v7 + 712) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F28, &qword_1D8B2D408);
  *(v7 + 760) = swift_task_alloc();
  *(v7 + 768) = swift_task_alloc();
  v8 = type metadata accessor for BundleClassification.ClassificationType(0);
  *(v7 + 776) = v8;
  *(v7 + 784) = *(v8 - 8);
  *(v7 + 792) = swift_task_alloc();
  *(v7 + 800) = swift_task_alloc();
  *(v7 + 808) = swift_task_alloc();
  *(v7 + 816) = swift_task_alloc();
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8960F44, 0, 0);
}

uint64_t sub_1D8960F44()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECA675B0;
  *(v0 + 840) = qword_1ECA675B0;

  return MEMORY[0x1EEE6DFA0](sub_1D8960FDC, v1, 0);
}

uint64_t sub_1D8960FDC()
{
  v1 = *(v0 + 840);
  swift_beginAccess();
  *(v0 + 848) = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1D8961064, 0, 0);
}

uint64_t sub_1D8961064()
{
  if (*(v0 + 81))
  {
    v1 = *(v0 + 840);
    v2 = sub_1D8961D30;
    goto LABEL_96;
  }

  v3 = *(v0 + 848);
  *(v0 + 880) = v3;
  *(v0 + 872) = 0;
  *(v0 + 864) = v3;
  v4 = sub_1D893E70C(MEMORY[0x1E69E7CC0]);
  v2 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0();
  *(v0 + 888) = v2;
  v6 = *(v2 + 16);
  *(v0 + 896) = v6;
  if (v6)
  {
    v7 = *(v0 + 784);
    *(v0 + 920) = 0;
    *(v0 + 912) = v4;
    *(v0 + 904) = 0;
    if (*(v2 + 16))
    {
      v8 = *(v0 + 840);
      v9 = *(v0 + 832);
      v10 = *(v0 + 824);
      v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      *(v0 + 928) = *(v7 + 72);
      sub_1D89798EC(v2 + v11, v9, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D89798EC(v9, v10, type metadata accessor for BundleClassification.ClassificationType);
      v2 = sub_1D89633E4;
      v1 = v8;
      goto LABEL_96;
    }

LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  *(v0 + 944) = v4;
  v99 = *(v0 + 784);

  v100 = v4;
  v101 = v4 + 64;
  v12 = -1;
  v13 = -1 << *(v4 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v4 + 64);
  v98 = (63 - v13) >> 6;
  v103 = *(v0 + 880);
  v15 = *(v0 + 864);
  v2 = swift_bridgeObjectRetain_n();
  v16 = 0;
  v17 = 0;
  v112 = v0;
  while (1)
  {
    *(v0 + 952) = v16;
    v108 = v16;
    v110 = v15;
    if (!v14)
    {
      if (v98 <= v17 + 1)
      {
        v19 = v17 + 1;
      }

      else
      {
        v19 = v98;
      }

      v20 = v19 - 1;
      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= v98)
        {
          v47 = *(v0 + 760);
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F30, &qword_1D8B2D410);
          (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
          v14 = 0;
          v17 = v20;
          goto LABEL_20;
        }

        v14 = *(v101 + 8 * v18);
        ++v17;
        if (v14)
        {
          v17 = v18;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v18 = v17;
LABEL_19:
    v21 = *(v0 + 816);
    v22 = *(v0 + 760);
    v23 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v24 = v23 | (v18 << 6);
    sub_1D89798EC(*(v100 + 48) + *(v99 + 72) * v24, v21, type metadata accessor for BundleClassification.ClassificationType);
    v25 = *(v100 + 56) + 48 * v24;
    v26 = *v25;
    v107 = *(v25 + 8);
    v105 = *(v25 + 16);
    v28 = *(v25 + 24);
    v27 = *(v25 + 32);
    v29 = *(v25 + 40);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F30, &qword_1D8B2D410);
    v31 = v22 + *(v30 + 48);
    sub_1D897999C(v21, v22, type metadata accessor for BundleClassification.ClassificationType);
    *v31 = v26;
    *(v31 + 8) = v107;
    *(v31 + 16) = v105;
    *(v31 + 24) = v28;
    *(v31 + 32) = v27;
    *(v31 + 40) = v29;
    v0 = v112;
    (*(*(v30 - 8) + 56))(v22, 0, 1, v30);

LABEL_20:
    v32 = *(v0 + 768);
    sub_1D881F6FC(*(v0 + 760), v32, &qword_1ECA65F28, &qword_1D8B2D408);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F30, &qword_1D8B2D410);
    if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
    {
      break;
    }

    v34 = *(v0 + 808);
    v35 = *(v0 + 800);
    v36 = *(v0 + 768);
    v37 = v36 + *(v33 + 48);
    v38 = *v37;
    v39 = *(v37 + 8);
    v40 = *(v37 + 16);
    v41 = *(v37 + 24);
    v102 = *(v37 + 40);
    v104 = *(v37 + 32);
    sub_1D897999C(v36, v34, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D89798EC(v34, v35, type metadata accessor for BundleClassification.ClassificationType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v106 = v41;
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload == 5)
        {
          sub_1D897988C(*(v0 + 800), type metadata accessor for BundleClassification.ClassificationType);
          v44 = 0x6974634174786574;
          v43 = 0xEB00000000736E6FLL;
        }

        else
        {
          v43 = 0xE500000000000000;
          v44 = 0x746E657665;
        }
      }

      else
      {
        v45 = 0x7A6972616D6D7573;
        if (EnumCaseMultiPayload == 8)
        {
          v45 = 0x74616C736E617274;
        }

        v46 = EnumCaseMultiPayload == 7;
        if (EnumCaseMultiPayload == 7)
        {
          v44 = 0x756F6C4164616572;
        }

        else
        {
          v44 = v45;
        }

        if (v46)
        {
          v43 = 0xE900000000000064;
        }

        else
        {
          v43 = 0xE900000000000065;
        }
      }
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_1D897988C(*(v0 + 800), type metadata accessor for BundleClassification.ClassificationType);
        v43 = 0xE800000000000000;
        v44 = 0x796669746E656469;
      }

      else
      {
        sub_1D897988C(*(v0 + 800), type metadata accessor for BundleClassification.ClassificationType);
        v43 = 0xE400000000000000;
        v44 = 1936744813;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_1D897988C(*(v0 + 800), type metadata accessor for BundleClassification.ClassificationType);
      v43 = 0xE700000000000000;
      v44 = 0x65646F63726162;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v43 = 0xE600000000000000;
      v44 = 0x686372616573;
    }

    else
    {
      sub_1D897988C(*(v0 + 800), type metadata accessor for BundleClassification.ClassificationType);
      v43 = 0xE400000000000000;
      v44 = 1667459446;
    }

    v49 = *(v0 + 808);
    v50 = *(v0 + 792);
    v51 = *(v0 + 752);
    MEMORY[0x1DA71EFA0](v44, v43);

    MEMORY[0x1DA71EFA0](0x7972616D6D75732DLL, 0xE800000000000000);
    *(v112 + 64) = &type metadata for BundleClassificationResultSummary;
    *(v112 + 72) = sub_1D8978EF0();
    v52 = swift_allocObject();
    *(v112 + 40) = v52;
    *(v52 + 16) = v38;
    *(v52 + 24) = v39;
    *(v52 + 32) = v40;
    *(v52 + 40) = v106;
    *(v52 + 48) = v104;
    *(v52 + 56) = v102;
    *(v112 + 80) = 3;
    *(v112 + 16) = 0;
    *(v112 + 24) = 0xE000000000000000;
    v0 = v112;
    *(v112 + 32) = v51;
    sub_1D89798EC(v49, v50, type metadata accessor for BundleClassification.ClassificationType);
    v53 = swift_getEnumCaseMultiPayload();
    if (v53 > 4)
    {
      v54 = v108;
      v15 = v110;
      if (v53 <= 6)
      {
        if (v53 == 5)
        {
          sub_1D897988C(*(v112 + 792), type metadata accessor for BundleClassification.ClassificationType);
          v56 = 0x6974634174786574;
          v55 = 0xEB00000000736E6FLL;
        }

        else
        {
          v55 = 0xE500000000000000;
          v56 = 0x746E657665;
        }
      }

      else if (v53 == 7)
      {
        v55 = 0xE900000000000064;
        v56 = 0x756F6C4164616572;
      }

      else
      {
        if (v53 == 8)
        {
          v56 = 0x74616C736E617274;
        }

        else
        {
          v56 = 0x7A6972616D6D7573;
        }

        v55 = 0xE900000000000065;
      }
    }

    else
    {
      v54 = v108;
      v15 = v110;
      if (v53 <= 1)
      {
        if (v53)
        {
          sub_1D897988C(*(v112 + 792), type metadata accessor for BundleClassification.ClassificationType);
          v55 = 0xE800000000000000;
          v56 = 0x796669746E656469;
        }

        else
        {
          sub_1D897988C(*(v112 + 792), type metadata accessor for BundleClassification.ClassificationType);
          v55 = 0xE400000000000000;
          v56 = 1936744813;
        }
      }

      else if (v53 == 2)
      {
        sub_1D897988C(*(v112 + 792), type metadata accessor for BundleClassification.ClassificationType);
        v55 = 0xE700000000000000;
        v56 = 0x65646F63726162;
      }

      else if (v53 == 3)
      {
        v55 = 0xE600000000000000;
        v56 = 0x686372616573;
      }

      else
      {
        sub_1D897988C(*(v112 + 792), type metadata accessor for BundleClassification.ClassificationType);
        v55 = 0xE400000000000000;
        v56 = 1667459446;
      }
    }

    sub_1D88C4BD0(v112 + 16, v112 + 88);
    sub_1D878BBCC(v54, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = sub_1D87EF838(v56, v55);
    v59 = v15[2];
    v60 = (v1 & 1) == 0;
    v2 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      goto LABEL_103;
    }

    v61 = v1;
    if (v15[3] >= v2)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v1)
        {
          goto LABEL_72;
        }
      }

      else
      {
        sub_1D896B350(&qword_1ECA65C68, &qword_1D8B2C088);
        if (v61)
        {
          goto LABEL_72;
        }
      }
    }

    else
    {
      sub_1D8974F38(v2, isUniquelyReferenced_nonNull_native, &qword_1ECA65C68, &qword_1D8B2C088);
      v2 = sub_1D87EF838(v56, v55);
      if ((v61 & 1) != (v1 & 1))
      {

        return sub_1D8B16C30();
      }

      v58 = v2;
      if (v61)
      {
LABEL_72:

        goto LABEL_73;
      }
    }

    v15[(v58 >> 6) + 8] |= 1 << v58;
    v62 = (v15[6] + 16 * v58);
    *v62 = v56;
    v62[1] = v55;
    *(v15[7] + 8 * v58) = MEMORY[0x1E69E7CC0];
    v63 = v15[2];
    v64 = __OFADD__(v63, 1);
    v65 = v63 + 1;
    if (v64)
    {
      goto LABEL_105;
    }

    v15[2] = v65;
LABEL_73:
    v66 = v15[7];
    v67 = *(v66 + 8 * v58);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    *(v66 + 8 * v58) = v67;
    if ((v68 & 1) == 0)
    {
      v67 = sub_1D87C7B24(0, *(v67 + 2) + 1, 1, v67);
      *(v66 + 8 * v58) = v67;
    }

    v70 = *(v67 + 2);
    v69 = *(v67 + 3);
    if (v70 >= v69 >> 1)
    {
      *(v66 + 8 * v58) = sub_1D87C7B24((v69 > 1), v70 + 1, 1, v67);
    }

    sub_1D897988C(*(v112 + 808), type metadata accessor for BundleClassification.ClassificationType);
    v2 = sub_1D87DC9A0(v112 + 16);
    v71 = *(v66 + 8 * v58);
    *(v71 + 16) = v70 + 1;
    v72 = v71 + 72 * v70;
    v73 = *(v112 + 104);
    v74 = *(v112 + 120);
    v75 = *(v112 + 136);
    *(v72 + 96) = *(v112 + 152);
    *(v72 + 64) = v74;
    *(v72 + 80) = v75;
    *(v72 + 48) = v73;
    *(v72 + 32) = *(v112 + 88);
    v16 = sub_1D8979B40;
    v103 = v15;
  }

  v76 = *(v0 + 81);

  if ((v76 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C68, &qword_1D8B2C088);
    v2 = sub_1D8B168F0();
    v78 = 0;
    v79 = v103[8];
    v80 = 1 << *(v103 + 32);
    v81 = -1;
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    v82 = v81 & v79;
    v83 = (v80 + 63) >> 6;
    v109 = v2 + 64;
    v111 = v2;
    if ((v81 & v79) != 0)
    {
      while (1)
      {
        v84 = __clz(__rbit64(v82));
        v82 &= v82 - 1;
LABEL_91:
        v87 = v84 | (v78 << 6);
        v88 = (v103[6] + 16 * v87);
        v90 = *v88;
        v89 = v88[1];

        v92 = sub_1D8966B38(v91);

        *(v109 + ((v87 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v87;
        v93 = (v111[6] + 16 * v87);
        *v93 = v90;
        v93[1] = v89;
        *(v111[7] + 8 * v87) = v92;
        v94 = v111[2];
        v64 = __OFADD__(v94, 1);
        v95 = v94 + 1;
        if (v64)
        {
          break;
        }

        v111[2] = v95;
        v0 = v112;
        if (!v82)
        {
          goto LABEL_86;
        }
      }

LABEL_107:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v2, v1, v5);
    }

LABEL_86:
    v85 = v78;
    while (1)
    {
      v78 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v78 >= v83)
      {

        v77 = v111;
        goto LABEL_95;
      }

      v86 = v103[v78 + 8];
      ++v85;
      if (v86)
      {
        v84 = __clz(__rbit64(v86));
        v82 = (v86 - 1) & v86;
        goto LABEL_91;
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v77 = v103;
LABEL_95:
  *(v0 + 960) = v77;
  v96 = *(v0 + 840);

  v2 = sub_1D896437C;
  v1 = v96;
LABEL_96:
  v5 = 0;

  return MEMORY[0x1EEE6DFA0](v2, v1, v5);
}

uint64_t sub_1D8961D30()
{
  v1 = *(v0 + 840);
  swift_beginAccess();
  *(v0 + 856) = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D8961DB8, 0, 0);
}

uint64_t sub_1D8961DB8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v172 = 0;
  v6 = 0;
  v203 = (v3 + 232);
  v171 = (v3 + 376);
  v7 = *(v3 + 856);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v177 = *(v3 + 856);
  v11 = -1 << *(v177 + 32);
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v8;
  v14 = (63 - v11) >> 6;
  v15 = *(v3 + 848);
  v175 = v14;
  v176 = v9;
LABEL_6:
  if (v13)
  {
    v200 = v15;
    v16 = v6;
LABEL_12:
    v178 = v16;
    v179 = (v13 - 1) & v13;
    v17 = (*(v177 + 48) + 16 * (__clz(__rbit64(v13)) | (v16 << 6)));
    v183 = *v17;
    v192 = v17[1];

    v19 = sub_1D8978F44(v18);

    v20 = 0;
    v22 = v19 + 8;
    v21 = v19[8];
    v194 = v19;
    v23 = -1 << *(v19 + 32);
    if (-v23 < 64)
    {
      v24 = ~(-1 << -v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (63 - v23) >> 6;
    v180 = v5;
    v187 = v26;
    v189 = v19 + 8;
    if ((v24 & v21) == 0)
    {
LABEL_16:
      v15 = v200;
      while (1)
      {
        v27 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v27 >= v26)
        {

          v6 = v178;
          v13 = v179;
          v14 = v175;
          v9 = v176;
          v5 = v180;
          goto LABEL_6;
        }

        v25 = v22[v27];
        ++v20;
        if (v25)
        {
          v20 = v27;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);

LABEL_165:

      sub_1D878BBCC(v172, 0);

      v170 = *(v3 + 8);

      return v170();
    }

LABEL_21:
    while (1)
    {
      v28 = *(v3 + 744);
      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v30 = v29 | (v20 << 6);
      v31 = *(v194 + 48) + 24 * v30;
      v32 = *(v31 + 16);
      v34 = *v31;
      v33 = *(v31 + 8);
      v35 = *(*(v194 + 56) + 8 * v30);
      *(v3 + 592) = *(v3 + 736);
      *(v3 + 600) = v28;
      *(v3 + 608) = 46;
      *(v3 + 616) = 0xE100000000000000;
      *(v3 + 624) = 95;
      *(v3 + 632) = 0xE100000000000000;
      v4 = sub_1D87C12C0();
      v196 = v35;

      *(v3 + 640) = sub_1D8B164D0();
      *(v3 + 648) = v36;
      *(v3 + 656) = 32;
      *(v3 + 664) = 0xE100000000000000;
      *(v3 + 672) = 95;
      *(v3 + 680) = 0xE100000000000000;
      v37 = sub_1D8B164D0();
      v39 = v38;

      if (!v33)
      {
        break;
      }

      if (v200[2])
      {
        v40 = sub_1D87EF838(v183, v192);
        if (v41)
        {
          v42 = *(v200[7] + 8 * v40);
          v4 = *(v42 + 16);
          if (v4)
          {
            v173 = v37;
            v43 = v42 + 32;

            v44 = 0;
            while (v44 < *(v42 + 16))
            {
              sub_1D88C4BD0(v43, v203);
              v45 = *(v3 + 232) == v34 && v33 == *(v3 + 240);
              if (v45 || (sub_1D8B16BA0()) && *(v3 + 248) == v32)
              {

                v49 = *(v3 + 280);
                *(v3 + 192) = *(v3 + 264);
                *(v3 + 208) = v49;
                *(v3 + 224) = *(v3 + 296);
                v50 = *(v3 + 248);
                *(v3 + 160) = *v203;
                *(v3 + 176) = v50;
                sub_1D89791F0(v3 + 184, v3 + 496);
                if (*(v3 + 536))
                {
                  sub_1D87DC9A0(v3 + 160);

                  sub_1D897924C(v3 + 496);
                  goto LABEL_38;
                }

                v77 = *(v3 + 496);

                v52 = v77;
                MEMORY[0x1DA71EFA0](95, 0xE100000000000000);
                MEMORY[0x1DA71EFA0](v173, v39);

                v51 = v34;
                v174 = v33;
                sub_1D87DC9A0(v3 + 160);
                goto LABEL_44;
              }

              ++v44;
              sub_1D87DC9A0(v203);
              v43 += 72;
              if (v4 == v44)
              {
                goto LABEL_36;
              }
            }

            goto LABEL_162;
          }

LABEL_36:
        }
      }

LABEL_38:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EA0, &qword_1D8B2CF90);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1D8B1AB90;
      sub_1D8B16720();
      *(v3 + 688) = 0;
      *(v3 + 696) = 0xE000000000000000;
      MEMORY[0x1DA71EFA0](0xD000000000000031, 0x80000001D8B44D90);
      MEMORY[0x1DA71EFA0](v34, v33);
      MEMORY[0x1DA71EFA0](544497952, 0xE400000000000000);
      sub_1D8B16020();
      v47 = *(v3 + 688);
      v48 = *(v3 + 696);
      *(v46 + 56) = MEMORY[0x1E69E6158];
      *(v46 + 32) = v47;
      *(v46 + 40) = v48;
      sub_1D8B16CF0();

LABEL_39:
      v26 = v187;
      v22 = v189;
      if (!v25)
      {
        goto LABEL_16;
      }
    }

    v51 = v37;
    v174 = v39;
    v52 = *(v3 + 728);
LABEL_44:
    v53 = sub_1D89792A0(v52, v196);

    v54 = CGImageRef.toPNG()();
    if (v55 >> 60 == 15)
    {

      sub_1D89797D4();
      swift_allocError();
      *v169 = 3;
      swift_willThrow();

      goto LABEL_165;
    }

    v56 = v54;
    v57 = v55;
    v181 = v53;
    v197 = v52;
    v58 = *(v3 + 752);

    MEMORY[0x1DA71EFA0](0x7461746F6E6E612DLL, 0xEB000000002D6465);
    MEMORY[0x1DA71EFA0](v51, v174);

    *(v3 + 328) = v56;
    *(v3 + 336) = v57;
    *(v3 + 344) = 4673104;
    *(v3 + 352) = 0xE300000000000000;
    *(v3 + 368) = 1;
    *(v3 + 304) = v183;
    *(v3 + 312) = v192;
    *(v3 + 320) = v58;
    sub_1D88C4BD0(v3 + 304, v171);
    sub_1D87A1544(v56, v57);
    sub_1D878BBCC(v172, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = sub_1D87EF838(v183, v192);
    v60 = v200[2];
    v61 = (a2 & 1) == 0;
    a1 = (v60 + v61);
    if (__OFADD__(v60, v61))
    {
      goto LABEL_173;
    }

    v62 = a2;
    if (v200[3] < a1)
    {
      sub_1D8974F38(a1, isUniquelyReferenced_nonNull_native, &qword_1ECA65C68, &qword_1D8B2C088);
      a1 = sub_1D87EF838(v183, v192);
      if ((v62 & 1) != (a2 & 1))
      {
        goto LABEL_141;
      }

      v4 = a1;
      if (v62)
      {
        goto LABEL_54;
      }

LABEL_52:
      v200[(v4 >> 6) + 8] |= 1 << v4;
      v63 = (v200[6] + 16 * v4);
      *v63 = v183;
      v63[1] = v192;
      *(v200[7] + 8 * v4) = MEMORY[0x1E69E7CC0];
      v64 = v200[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_175;
      }

      v200[2] = v66;

      goto LABEL_54;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      sub_1D896B350(&qword_1ECA65C68, &qword_1D8B2C088);
      if ((v62 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

LABEL_54:
    v67 = v200[7];
    v68 = *(v67 + 8 * v4);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    *(v67 + 8 * v4) = v68;
    if ((v69 & 1) == 0)
    {
      v68 = sub_1D87C7B24(0, *(v68 + 2) + 1, 1, v68);
      *(v67 + 8 * v4) = v68;
    }

    v71 = *(v68 + 2);
    v70 = *(v68 + 3);
    if (v71 >= v70 >> 1)
    {
      *(v67 + 8 * v4) = sub_1D87C7B24((v70 > 1), v71 + 1, 1, v68);
    }

    sub_1D87C12A4(v56, v57);
    sub_1D87DC9A0(v3 + 304);
    v180 = 0;
    v72 = *(v67 + 8 * v4);
    *(v72 + 16) = v71 + 1;
    v73 = v72 + 72 * v71;
    v74 = *(v3 + 392);
    v75 = *(v3 + 408);
    v76 = *(v3 + 424);
    *(v73 + 96) = *(v3 + 440);
    *(v73 + 64) = v75;
    *(v73 + 80) = v76;
    *(v73 + 48) = v74;
    *(v73 + 32) = *v171;
    v172 = sub_1D8979B40;
    goto LABEL_39;
  }

  while (1)
  {
    v16 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v9 + 8 * v16);
    ++v6;
    if (v13)
    {
      v200 = v15;
      goto LABEL_12;
    }
  }

  *(v3 + 880) = v15;
  *(v3 + 872) = v172;
  *(v3 + 864) = v15;
  v78 = sub_1D893E70C(MEMORY[0x1E69E7CC0]);
  a1 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0();
  *(v3 + 888) = a1;
  v79 = *(a1 + 2);
  *(v3 + 896) = v79;
  if (v79)
  {
    v80 = *(v3 + 784);
    *(v3 + 920) = 0;
    *(v3 + 912) = v78;
    *(v3 + 904) = v5;
    if (*(a1 + 2))
    {
      v81 = *(v3 + 840);
      v82 = *(v3 + 832);
      v83 = *(v3 + 824);
      v84 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      *(v3 + 928) = *(v80 + 72);
      sub_1D89798EC(a1 + v84, v82, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D89798EC(v82, v83, type metadata accessor for BundleClassification.ClassificationType);
      a1 = sub_1D89633E4;
      a2 = v81;
LABEL_158:
      a3 = 0;

      return MEMORY[0x1EEE6DFA0](a1, a2, a3);
    }

LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  *(v3 + 944) = v78;
  v184 = *(v3 + 784);

  v85 = v78 + 64;
  v86 = -1;
  v87 = -1 << *(v78 + 32);
  if (-v87 < 64)
  {
    v86 = ~(-1 << -v87);
  }

  v88 = v86 & *(v78 + 64);
  v182 = (63 - v87) >> 6;
  v190 = *(v3 + 880);
  v4 = *(v3 + 864);
  v185 = v78;
  swift_bridgeObjectRetain_n();
  v89 = 0;
  v90 = 0;
  v186 = v78 + 64;
  while (1)
  {
    *(v3 + 952) = v89;
    v201 = v89;
    v204 = v4;
    if (!v88)
    {
      if (v182 <= v90 + 1)
      {
        v92 = v90 + 1;
      }

      else
      {
        v92 = v182;
      }

      v93 = v92 - 1;
      while (1)
      {
        v91 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          goto LABEL_163;
        }

        if (v91 >= v182)
        {
          v119 = *(v3 + 760);
          v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F30, &qword_1D8B2D410);
          (*(*(v120 - 8) + 56))(v119, 1, 1, v120);
          v198 = 0;
          v90 = v93;
          goto LABEL_79;
        }

        v88 = *(v85 + 8 * v91);
        ++v90;
        if (v88)
        {
          v90 = v91;
          goto LABEL_78;
        }
      }
    }

    v91 = v90;
LABEL_78:
    v94 = *(v3 + 816);
    v95 = *(v3 + 760);
    v198 = (v88 - 1) & v88;
    v96 = __clz(__rbit64(v88)) | (v91 << 6);
    sub_1D89798EC(*(v185 + 48) + *(v184 + 72) * v96, v94, type metadata accessor for BundleClassification.ClassificationType);
    v97 = *(v185 + 56) + 48 * v96;
    LOBYTE(v96) = *v97;
    v195 = *(v97 + 8);
    v193 = *(v97 + 16);
    v99 = *(v97 + 24);
    v98 = *(v97 + 32);
    v100 = *(v97 + 40);
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F30, &qword_1D8B2D410);
    v102 = v95 + *(v101 + 48);
    sub_1D897999C(v94, v95, type metadata accessor for BundleClassification.ClassificationType);
    *v102 = v96;
    *(v102 + 8) = v195;
    *(v102 + 16) = v193;
    *(v102 + 24) = v99;
    *(v102 + 32) = v98;
    *(v102 + 40) = v100;
    (*(*(v101 - 8) + 56))(v95, 0, 1, v101);

LABEL_79:
    v103 = *(v3 + 768);
    sub_1D881F6FC(*(v3 + 760), v103, &qword_1ECA65F28, &qword_1D8B2D408);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F30, &qword_1D8B2D410);
    if ((*(*(v104 - 8) + 48))(v103, 1, v104) == 1)
    {
      break;
    }

    v105 = *(v3 + 808);
    v106 = *(v3 + 800);
    v107 = *(v3 + 768);
    v108 = v107 + *(v104 + 48);
    v109 = *v108;
    v110 = *(v108 + 8);
    v111 = *(v108 + 16);
    v112 = *(v108 + 24);
    v113 = *(v108 + 32);
    v188 = *(v108 + 40);
    sub_1D897999C(v107, v105, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D89798EC(v105, v106, type metadata accessor for BundleClassification.ClassificationType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v191 = v113;
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload == 5)
        {
          sub_1D897988C(*(v3 + 800), type metadata accessor for BundleClassification.ClassificationType);
          v116 = 0x6974634174786574;
          v115 = 0xEB00000000736E6FLL;
        }

        else
        {
          v115 = 0xE500000000000000;
          v116 = 0x746E657665;
        }
      }

      else
      {
        v117 = 0x7A6972616D6D7573;
        if (EnumCaseMultiPayload == 8)
        {
          v117 = 0x74616C736E617274;
        }

        v118 = EnumCaseMultiPayload == 7;
        if (EnumCaseMultiPayload == 7)
        {
          v116 = 0x756F6C4164616572;
        }

        else
        {
          v116 = v117;
        }

        if (v118)
        {
          v115 = 0xE900000000000064;
        }

        else
        {
          v115 = 0xE900000000000065;
        }
      }
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_1D897988C(*(v3 + 800), type metadata accessor for BundleClassification.ClassificationType);
        v115 = 0xE800000000000000;
        v116 = 0x796669746E656469;
      }

      else
      {
        sub_1D897988C(*(v3 + 800), type metadata accessor for BundleClassification.ClassificationType);
        v115 = 0xE400000000000000;
        v116 = 1936744813;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_1D897988C(*(v3 + 800), type metadata accessor for BundleClassification.ClassificationType);
      v115 = 0xE700000000000000;
      v116 = 0x65646F63726162;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v115 = 0xE600000000000000;
      v116 = 0x686372616573;
    }

    else
    {
      sub_1D897988C(*(v3 + 800), type metadata accessor for BundleClassification.ClassificationType);
      v115 = 0xE400000000000000;
      v116 = 1667459446;
    }

    v121 = *(v3 + 808);
    v122 = *(v3 + 792);
    v123 = *(v3 + 752);
    MEMORY[0x1DA71EFA0](v116, v115);

    MEMORY[0x1DA71EFA0](0x7972616D6D75732DLL, 0xE800000000000000);
    *(v3 + 64) = &type metadata for BundleClassificationResultSummary;
    *(v3 + 72) = sub_1D8978EF0();
    v124 = swift_allocObject();
    *(v3 + 40) = v124;
    *(v124 + 16) = v109;
    *(v124 + 24) = v110;
    *(v124 + 32) = v111;
    *(v124 + 40) = v112;
    *(v124 + 48) = v191;
    *(v124 + 56) = v188;
    *(v3 + 80) = 3;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0xE000000000000000;
    *(v3 + 32) = v123;
    sub_1D89798EC(v121, v122, type metadata accessor for BundleClassification.ClassificationType);
    v125 = swift_getEnumCaseMultiPayload();
    if (v125 > 4)
    {
      v127 = v201;
      v126 = v204;
      if (v125 <= 6)
      {
        if (v125 == 5)
        {
          sub_1D897988C(*(v3 + 792), type metadata accessor for BundleClassification.ClassificationType);
          v129 = 0x6974634174786574;
          v128 = 0xEB00000000736E6FLL;
        }

        else
        {
          v128 = 0xE500000000000000;
          v129 = 0x746E657665;
        }
      }

      else if (v125 == 7)
      {
        v128 = 0xE900000000000064;
        v129 = 0x756F6C4164616572;
      }

      else
      {
        if (v125 == 8)
        {
          v129 = 0x74616C736E617274;
        }

        else
        {
          v129 = 0x7A6972616D6D7573;
        }

        v128 = 0xE900000000000065;
      }
    }

    else
    {
      v127 = v201;
      v126 = v204;
      if (v125 <= 1)
      {
        if (v125)
        {
          sub_1D897988C(*(v3 + 792), type metadata accessor for BundleClassification.ClassificationType);
          v128 = 0xE800000000000000;
          v129 = 0x796669746E656469;
        }

        else
        {
          sub_1D897988C(*(v3 + 792), type metadata accessor for BundleClassification.ClassificationType);
          v128 = 0xE400000000000000;
          v129 = 1936744813;
        }
      }

      else if (v125 == 2)
      {
        sub_1D897988C(*(v3 + 792), type metadata accessor for BundleClassification.ClassificationType);
        v128 = 0xE700000000000000;
        v129 = 0x65646F63726162;
      }

      else if (v125 == 3)
      {
        v128 = 0xE600000000000000;
        v129 = 0x686372616573;
      }

      else
      {
        sub_1D897988C(*(v3 + 792), type metadata accessor for BundleClassification.ClassificationType);
        v128 = 0xE400000000000000;
        v129 = 1667459446;
      }
    }

    sub_1D88C4BD0(v3 + 16, v3 + 88);
    sub_1D878BBCC(v127, 0);
    v130 = swift_isUniquelyReferenced_nonNull_native();
    v131 = sub_1D87EF838(v129, v128);
    v132 = *(v126 + 2);
    v133 = (a2 & 1) == 0;
    a1 = (v132 + v133);
    if (__OFADD__(v132, v133))
    {
      goto LABEL_169;
    }

    v134 = a2;
    if (*(v126 + 3) >= a1)
    {
      if (v130)
      {
        if (a2)
        {
          goto LABEL_131;
        }
      }

      else
      {
        sub_1D896B350(&qword_1ECA65C68, &qword_1D8B2C088);
        if (v134)
        {
          goto LABEL_131;
        }
      }
    }

    else
    {
      sub_1D8974F38(a1, v130, &qword_1ECA65C68, &qword_1D8B2C088);
      a1 = sub_1D87EF838(v129, v128);
      if ((v134 & 1) != (a2 & 1))
      {
LABEL_141:

        return sub_1D8B16C30();
      }

      v131 = a1;
      if (v134)
      {
LABEL_131:

        goto LABEL_132;
      }
    }

    *(v126 + (v131 >> 6) + 8) |= 1 << v131;
    v135 = (*(v126 + 6) + 16 * v131);
    *v135 = v129;
    v135[1] = v128;
    *(*(v126 + 7) + 8 * v131) = MEMORY[0x1E69E7CC0];
    v136 = *(v126 + 2);
    v65 = __OFADD__(v136, 1);
    v137 = v136 + 1;
    if (v65)
    {
      goto LABEL_171;
    }

    *(v126 + 2) = v137;
LABEL_132:
    v138 = *(v126 + 7);
    v139 = *(v138 + 8 * v131);
    v140 = swift_isUniquelyReferenced_nonNull_native();
    *(v138 + 8 * v131) = v139;
    if ((v140 & 1) == 0)
    {
      v139 = sub_1D87C7B24(0, *(v139 + 2) + 1, 1, v139);
      *(v138 + 8 * v131) = v139;
    }

    v142 = *(v139 + 2);
    v141 = *(v139 + 3);
    if (v142 >= v141 >> 1)
    {
      *(v138 + 8 * v131) = sub_1D87C7B24((v141 > 1), v142 + 1, 1, v139);
    }

    sub_1D897988C(*(v3 + 808), type metadata accessor for BundleClassification.ClassificationType);
    sub_1D87DC9A0(v3 + 16);
    v143 = *(v138 + 8 * v131);
    *(v143 + 16) = v142 + 1;
    v144 = v143 + 72 * v142;
    v145 = *(v3 + 104);
    v146 = *(v3 + 120);
    v147 = *(v3 + 136);
    *(v144 + 96) = *(v3 + 152);
    *(v144 + 64) = v146;
    *(v144 + 80) = v147;
    *(v144 + 48) = v145;
    *(v144 + 32) = *(v3 + 88);
    v89 = sub_1D8979B40;
    v4 = v126;
    v190 = v126;
    v85 = v186;
    v88 = v198;
  }

  v148 = *(v3 + 81);

  if (v148)
  {
    v149 = v190;
LABEL_157:
    *(v3 + 960) = v149;
    v168 = *(v3 + 840);

    a1 = sub_1D896437C;
    a2 = v168;
    goto LABEL_158;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C68, &qword_1D8B2C088);
  a1 = sub_1D8B168F0();
  v151 = 0;
  v152 = *(v190 + 8);
  v153 = 1 << *(v190 + 32);
  v154 = -1;
  if (v153 < 64)
  {
    v154 = ~(-1 << v153);
  }

  v155 = v154 & v152;
  v156 = (v153 + 63) >> 6;
  v199 = a1 + 64;
  v202 = a1;
  if ((v154 & v152) == 0)
  {
LABEL_148:
    v158 = v151;
    while (1)
    {
      v151 = v158 + 1;
      if (__OFADD__(v158, 1))
      {
        goto LABEL_170;
      }

      if (v151 >= v156)
      {

        v149 = v202;
        goto LABEL_157;
      }

      v159 = *(v190 + v151 + 8);
      ++v158;
      if (v159)
      {
        v157 = __clz(__rbit64(v159));
        v155 = (v159 - 1) & v159;
        goto LABEL_153;
      }
    }
  }

  while (1)
  {
    v157 = __clz(__rbit64(v155));
    v155 &= v155 - 1;
LABEL_153:
    v160 = v157 | (v151 << 6);
    v161 = (*(v190 + 6) + 16 * v160);
    v162 = v161[1];
    v205 = *v161;

    v164 = sub_1D8966B38(v163);

    *&v199[(v160 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v160;
    v165 = (*(v202 + 6) + 16 * v160);
    *v165 = v205;
    v165[1] = v162;
    *(*(v202 + 7) + 8 * v160) = v164;
    v166 = *(v202 + 2);
    v65 = __OFADD__(v166, 1);
    v167 = v166 + 1;
    if (v65)
    {
      break;
    }

    *(v202 + 2) = v167;
    if (!v155)
    {
      goto LABEL_148;
    }
  }

LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1D89633E4()
{
  v1 = v0[113];
  CVDebugArtifactManager.summary(for:)((v0 + 56));
  v0[117] = v1;
  if (v1)
  {
    v2 = v0[104];
    v3 = v0[103];

    sub_1D897988C(v2, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D897988C(v3, type metadata accessor for BundleClassification.ClassificationType);

    v4 = sub_1D896450C;
  }

  else
  {
    sub_1D897988C(v0[104], type metadata accessor for BundleClassification.ClassificationType);
    v4 = sub_1D89634E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D89634E4()
{
  v2 = *(v1 + 912);
  v3 = *(v1 + 824);
  v143 = *(v1 + 448);
  v4 = *(v1 + 456);
  v5 = *(v1 + 464);
  v6 = *(v1 + 472);
  v7 = *(v1 + 480);
  v8 = *(v1 + 488);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 704) = v2;
  v10 = sub_1D87EF6AC(v3);
  v12 = *(v2 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v0 = v11;
  v3 = (v1 + 704);
  v140 = v4;
  if (*(*(v1 + 912) + 24) >= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_9:
    v24 = v10;
    sub_1D8969B2C();
    v10 = v24;
    v18 = *v3;
    if (v0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v16 = *(v1 + 824);
  sub_1D8972614(v15, isUniquelyReferenced_nonNull_native);
  v10 = sub_1D87EF6AC(v16);
  if ((v0 & 1) != (v17 & 1))
  {
LABEL_108:

    return sub_1D8B16C30();
  }

LABEL_6:
  v18 = *v3;
  if (v0)
  {
LABEL_7:
    v19 = *(v1 + 824);
    v20 = *(v18 + 56) + 48 * v10;
    *v20 = v143;
    *(v20 + 8) = v140;
    *(v20 + 16) = v5;
    *(v20 + 24) = v6;
    *(v20 + 32) = v7;
    *(v20 + 40) = v8;

    v21 = sub_1D897988C(v19, type metadata accessor for BundleClassification.ClassificationType);
    goto LABEL_12;
  }

LABEL_10:
  v25 = *(v1 + 928);
  v26 = *(v1 + 824);
  *(v18 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v27 = v10;
  sub_1D89798EC(v26, *(v18 + 48) + v25 * v10, type metadata accessor for BundleClassification.ClassificationType);
  v28 = *(v18 + 56) + 48 * v27;
  *v28 = v143;
  *(v28 + 8) = v140;
  *(v28 + 16) = v5;
  *(v28 + 24) = v6;
  *(v28 + 32) = v7;
  *(v28 + 40) = v8;
  v21 = sub_1D897988C(v26, type metadata accessor for BundleClassification.ClassificationType);
  v29 = *(v18 + 16);
  v14 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v14)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v21, v22, v23);
  }

  *(v18 + 16) = v30;
LABEL_12:
  v31 = *(v1 + 920) + 1;
  if (v31 != *(v1 + 896))
  {
    v98 = *(v1 + 936);
    *(v1 + 920) = v31;
    *(v1 + 912) = v18;
    *(v1 + 904) = v98;
    v99 = *(v1 + 888);
    if (v31 < *(v99 + 16))
    {
      v100 = *(v1 + 840);
      v101 = *(v1 + 832);
      v102 = *(v1 + 824);
      v103 = *(v1 + 784);
      v104 = v99 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
      v105 = *(v103 + 72);
      *(v1 + 928) = v105;
      sub_1D89798EC(v104 + v105 * v31, v101, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D89798EC(v101, v102, type metadata accessor for BundleClassification.ClassificationType);
      v21 = sub_1D89633E4;
      v22 = v100;
      goto LABEL_105;
    }

    goto LABEL_117;
  }

  *(v1 + 944) = v18;
  v129 = *(v1 + 784);

  v32 = v18 + 64;
  v33 = -1;
  v34 = -1 << *(v18 + 32);
  if (-v34 < 64)
  {
    v33 = ~(-1 << -v34);
  }

  v35 = v33 & *(v18 + 64);
  v128 = (63 - v34) >> 6;
  v134 = *(v1 + 880);
  v36 = *(v1 + 864);
  v130 = v18;
  v21 = swift_bridgeObjectRetain_n();
  v37 = 0;
  v38 = 0;
  v144 = v1;
  for (i = v32; ; v32 = i)
  {
    *(v1 + 952) = v37;
    v138 = v37;
    v141 = v36;
    if (!v35)
    {
      if (v128 <= v38 + 1)
      {
        v40 = v38 + 1;
      }

      else
      {
        v40 = v128;
      }

      v41 = v40 - 1;
      while (1)
      {
        v39 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v39 >= v128)
        {
          v69 = *(v1 + 760);
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F30, &qword_1D8B2D410);
          (*(*(v70 - 8) + 56))(v69, 1, 1, v70);
          v35 = 0;
          v38 = v41;
          goto LABEL_27;
        }

        v35 = *(v32 + 8 * v39);
        ++v38;
        if (v35)
        {
          v38 = v39;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v39 = v38;
LABEL_26:
    v42 = *(v1 + 816);
    v43 = *(v1 + 760);
    v44 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v45 = v44 | (v39 << 6);
    sub_1D89798EC(*(v130 + 48) + *(v129 + 72) * v45, v42, type metadata accessor for BundleClassification.ClassificationType);
    v46 = *(v130 + 56) + 48 * v45;
    v47 = *v46;
    v137 = *(v46 + 8);
    v136 = *(v46 + 16);
    v49 = *(v46 + 24);
    v48 = *(v46 + 32);
    v50 = *(v46 + 40);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F30, &qword_1D8B2D410);
    v52 = v43 + *(v51 + 48);
    sub_1D897999C(v42, v43, type metadata accessor for BundleClassification.ClassificationType);
    *v52 = v47;
    *(v52 + 8) = v137;
    *(v52 + 16) = v136;
    *(v52 + 24) = v49;
    *(v52 + 32) = v48;
    *(v52 + 40) = v50;
    v1 = v144;
    (*(*(v51 - 8) + 56))(v43, 0, 1, v51);

LABEL_27:
    v53 = *(v1 + 768);
    sub_1D881F6FC(*(v1 + 760), v53, &qword_1ECA65F28, &qword_1D8B2D408);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F30, &qword_1D8B2D410);
    if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
    {
      break;
    }

    v55 = *(v1 + 808);
    v56 = *(v1 + 800);
    v57 = *(v1 + 768);
    v58 = v57 + *(v54 + 48);
    v59 = *v58;
    v60 = *(v58 + 8);
    v61 = *(v58 + 16);
    v62 = *(v58 + 24);
    v132 = *(v58 + 40);
    v133 = *(v58 + 32);
    sub_1D897999C(v57, v55, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D89798EC(v55, v56, type metadata accessor for BundleClassification.ClassificationType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v135 = v62;
    if (EnumCaseMultiPayload > 4)
    {
      v64 = v141;
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload == 5)
        {
          sub_1D897988C(*(v1 + 800), type metadata accessor for BundleClassification.ClassificationType);
          v66 = 0x6974634174786574;
          v65 = 0xEB00000000736E6FLL;
        }

        else
        {
          v65 = 0xE500000000000000;
          v66 = 0x746E657665;
        }
      }

      else
      {
        v67 = 0x7A6972616D6D7573;
        if (EnumCaseMultiPayload == 8)
        {
          v67 = 0x74616C736E617274;
        }

        v68 = EnumCaseMultiPayload == 7;
        if (EnumCaseMultiPayload == 7)
        {
          v66 = 0x756F6C4164616572;
        }

        else
        {
          v66 = v67;
        }

        if (v68)
        {
          v65 = 0xE900000000000064;
        }

        else
        {
          v65 = 0xE900000000000065;
        }
      }
    }

    else
    {
      v64 = v141;
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_1D897988C(*(v1 + 800), type metadata accessor for BundleClassification.ClassificationType);
          v65 = 0xE800000000000000;
          v66 = 0x796669746E656469;
        }

        else
        {
          sub_1D897988C(*(v1 + 800), type metadata accessor for BundleClassification.ClassificationType);
          v65 = 0xE400000000000000;
          v66 = 1936744813;
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_1D897988C(*(v1 + 800), type metadata accessor for BundleClassification.ClassificationType);
        v65 = 0xE700000000000000;
        v66 = 0x65646F63726162;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v65 = 0xE600000000000000;
        v66 = 0x686372616573;
      }

      else
      {
        sub_1D897988C(*(v1 + 800), type metadata accessor for BundleClassification.ClassificationType);
        v65 = 0xE400000000000000;
        v66 = 1667459446;
      }
    }

    v71 = *(v1 + 808);
    v72 = *(v1 + 792);
    v73 = *(v1 + 752);
    MEMORY[0x1DA71EFA0](v66, v65);

    MEMORY[0x1DA71EFA0](0x7972616D6D75732DLL, 0xE800000000000000);
    *(v144 + 64) = &type metadata for BundleClassificationResultSummary;
    *(v144 + 72) = sub_1D8978EF0();
    v74 = swift_allocObject();
    *(v144 + 40) = v74;
    *(v74 + 16) = v59;
    *(v74 + 24) = v60;
    *(v74 + 32) = v61;
    *(v74 + 40) = v135;
    *(v74 + 48) = v133;
    *(v74 + 56) = v132;
    *(v144 + 80) = 3;
    *(v144 + 16) = 0;
    *(v144 + 24) = 0xE000000000000000;
    v1 = v144;
    *(v144 + 32) = v73;
    sub_1D89798EC(v71, v72, type metadata accessor for BundleClassification.ClassificationType);
    v75 = swift_getEnumCaseMultiPayload();
    if (v75 > 4)
    {
      v76 = v138;
      if (v75 <= 6)
      {
        if (v75 == 5)
        {
          sub_1D897988C(*(v144 + 792), type metadata accessor for BundleClassification.ClassificationType);
          v78 = 0x6974634174786574;
          v77 = 0xEB00000000736E6FLL;
        }

        else
        {
          v77 = 0xE500000000000000;
          v78 = 0x746E657665;
        }
      }

      else if (v75 == 7)
      {
        v77 = 0xE900000000000064;
        v78 = 0x756F6C4164616572;
      }

      else
      {
        if (v75 == 8)
        {
          v78 = 0x74616C736E617274;
        }

        else
        {
          v78 = 0x7A6972616D6D7573;
        }

        v77 = 0xE900000000000065;
      }
    }

    else
    {
      v76 = v138;
      if (v75 <= 1)
      {
        if (v75)
        {
          sub_1D897988C(*(v144 + 792), type metadata accessor for BundleClassification.ClassificationType);
          v77 = 0xE800000000000000;
          v78 = 0x796669746E656469;
        }

        else
        {
          sub_1D897988C(*(v144 + 792), type metadata accessor for BundleClassification.ClassificationType);
          v77 = 0xE400000000000000;
          v78 = 1936744813;
        }
      }

      else if (v75 == 2)
      {
        sub_1D897988C(*(v144 + 792), type metadata accessor for BundleClassification.ClassificationType);
        v77 = 0xE700000000000000;
        v78 = 0x65646F63726162;
      }

      else if (v75 == 3)
      {
        v77 = 0xE600000000000000;
        v78 = 0x686372616573;
      }

      else
      {
        sub_1D897988C(*(v144 + 792), type metadata accessor for BundleClassification.ClassificationType);
        v77 = 0xE400000000000000;
        v78 = 1667459446;
      }
    }

    sub_1D88C4BD0(v144 + 16, v144 + 88);
    sub_1D878BBCC(v76, 0);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v80 = sub_1D87EF838(v78, v77);
    v81 = v64[2];
    v82 = (v22 & 1) == 0;
    v21 = (v81 + v82);
    if (__OFADD__(v81, v82))
    {
      goto LABEL_112;
    }

    v83 = v22;
    if (v64[3] >= v21)
    {
      if (v79)
      {
        if (v22)
        {
          goto LABEL_79;
        }
      }

      else
      {
        sub_1D896B350(&qword_1ECA65C68, &qword_1D8B2C088);
        if (v83)
        {
          goto LABEL_79;
        }
      }
    }

    else
    {
      sub_1D8974F38(v21, v79, &qword_1ECA65C68, &qword_1D8B2C088);
      v21 = sub_1D87EF838(v78, v77);
      if ((v83 & 1) != (v22 & 1))
      {
        goto LABEL_108;
      }

      v80 = v21;
      if (v83)
      {
LABEL_79:

        goto LABEL_80;
      }
    }

    v64[(v80 >> 6) + 8] |= 1 << v80;
    v84 = (v64[6] + 16 * v80);
    *v84 = v78;
    v84[1] = v77;
    *(v64[7] + 8 * v80) = MEMORY[0x1E69E7CC0];
    v85 = v64[2];
    v14 = __OFADD__(v85, 1);
    v86 = v85 + 1;
    if (v14)
    {
      goto LABEL_114;
    }

    v64[2] = v86;
LABEL_80:
    v87 = v64[7];
    v88 = *(v87 + 8 * v80);
    v89 = swift_isUniquelyReferenced_nonNull_native();
    *(v87 + 8 * v80) = v88;
    v90 = v64;
    if ((v89 & 1) == 0)
    {
      v88 = sub_1D87C7B24(0, *(v88 + 2) + 1, 1, v88);
      *(v87 + 8 * v80) = v88;
    }

    v92 = *(v88 + 2);
    v91 = *(v88 + 3);
    if (v92 >= v91 >> 1)
    {
      *(v87 + 8 * v80) = sub_1D87C7B24((v91 > 1), v92 + 1, 1, v88);
    }

    sub_1D897988C(*(v144 + 808), type metadata accessor for BundleClassification.ClassificationType);
    v21 = sub_1D87DC9A0(v144 + 16);
    v93 = *(v87 + 8 * v80);
    *(v93 + 16) = v92 + 1;
    v94 = v93 + 72 * v92;
    v95 = *(v144 + 104);
    v96 = *(v144 + 120);
    v97 = *(v144 + 136);
    *(v94 + 96) = *(v144 + 152);
    *(v94 + 64) = v96;
    *(v94 + 80) = v97;
    *(v94 + 48) = v95;
    *(v94 + 32) = *(v144 + 88);
    v37 = sub_1D8979B40;
    v36 = v90;
    v134 = v90;
  }

  v106 = *(v1 + 81);

  if ((v106 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C68, &qword_1D8B2C088);
    v21 = sub_1D8B168F0();
    v107 = v21;
    v108 = 0;
    v109 = v134[8];
    v110 = 1 << *(v134 + 32);
    v111 = -1;
    if (v110 < 64)
    {
      v111 = ~(-1 << v110);
    }

    v112 = v111 & v109;
    v113 = (v110 + 63) >> 6;
    v139 = v21 + 8;
    v142 = v21;
    if ((v111 & v109) != 0)
    {
      do
      {
        v114 = __clz(__rbit64(v112));
        v112 &= v112 - 1;
LABEL_100:
        v117 = v114 | (v108 << 6);
        v118 = (v134[6] + 16 * v117);
        v120 = *v118;
        v119 = v118[1];

        v122 = sub_1D8966B38(v121);

        v107 = v142;
        *(v139 + ((v117 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v117;
        v123 = (v142[6] + 16 * v117);
        *v123 = v120;
        v123[1] = v119;
        *(v142[7] + 8 * v117) = v122;
        v124 = v142[2];
        v14 = __OFADD__(v124, 1);
        v125 = v124 + 1;
        if (v14)
        {
          goto LABEL_115;
        }

        v142[2] = v125;
        v1 = v144;
      }

      while (v112);
    }

    v115 = v108;
    while (1)
    {
      v108 = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        break;
      }

      if (v108 >= v113)
      {

        goto LABEL_104;
      }

      v116 = v134[v108 + 8];
      ++v115;
      if (v116)
      {
        v114 = __clz(__rbit64(v116));
        v112 = (v116 - 1) & v116;
        goto LABEL_100;
      }
    }

LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v107 = v134;
LABEL_104:
  *(v1 + 960) = v107;
  v126 = *(v1 + 840);

  v21 = sub_1D896437C;
  v22 = v126;
LABEL_105:
  v23 = 0;

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1D896437C()
{
  sub_1D8A3CD18();

  return MEMORY[0x1EEE6DFA0](sub_1D89643E4, 0, 0);
}

uint64_t sub_1D89643E4()
{
  v1 = v0[120];
  v2 = v0[119];
  v3 = v0[118];
  v4 = v0[109];
  v5 = v0[90];
  v6 = v0[89];

  sub_1D878BBCC(v4, 0);
  sub_1D878BBCC(v2, 0);
  *v6 = v5;
  v6[1] = v1;
  v6[2] = v3;

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D896450C()
{
  v1 = *(v0 + 872);

  sub_1D878BBCC(v1, 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t CVResultPackage.export(url:)(uint64_t a1)
{
  *(v2 + 96) = a1;
  v3 = sub_1D8B16790();
  *(v2 + 104) = v3;
  *(v2 + 112) = *(v3 - 8);
  *(v2 + 120) = swift_task_alloc();
  v4 = sub_1D8B167A0();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = type metadata accessor for BundleClassification.ClassificationType(0);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = *(type metadata accessor for BundleClassification(0) - 8);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = type metadata accessor for CVBundle(0);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F48, &qword_1D8B2D420);
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  v5 = sub_1D8B13000();
  *(v2 + 240) = v5;
  *(v2 + 248) = *(v5 - 8);
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  sub_1D8B12BC0();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = *v1;
  *(v2 + 304) = *(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D8964914, 0, 0);
}

uint64_t sub_1D8964914()
{
  sub_1D8B12C00();
  swift_allocObject();
  v1 = sub_1D8B12BF0();
  sub_1D8B12BB0();
  sub_1D8B12BD0();
  sub_1D8B12F70();
  sub_1D8965D0C();
  v2 = *(v0 + 248);
  v69 = *(v0 + 184);
  *(v0 + 64) = sub_1D893E91C(MEMORY[0x1E69E7CC0]);
  v71 = (v2 + 8);

  v70 = v1;
  while (1)
  {
    v4 = *(v0 + 224);
    v3 = *(v0 + 232);
    sub_1D8960BA4(v4);
    sub_1D881F6FC(v4, v3, &qword_1ECA65F48, &qword_1D8B2D420);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64250, &qword_1D8B23B58);
    if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
    {
      break;
    }

    v6 = *(v0 + 232);
    v7 = *(v0 + 208);
    v8 = *v6;
    sub_1D897999C(v6 + *(v5 + 48), *(v0 + 216), type metadata accessor for CVBundle);
    CVBundle.sanitizeForJSON()(v7);
    sub_1D8979954(&qword_1ECA64370, type metadata accessor for CVBundle, &protocol conformance descriptor for CVBundle);
    v9 = sub_1D8B12BE0();
    v11 = v10;
    sub_1D897988C(*(v0 + 208), type metadata accessor for CVBundle);
    v73 = v8;
    *(v0 + 88) = v8;
    v12 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v12);

    MEMORY[0x1DA71EFA0](0x6E6F736A2ELL, 0xE500000000000000);
    sub_1D8B12F70();

    v74 = v9;
    sub_1D8B13070();
    v72 = v11;
    v13 = *(v0 + 216);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EA0, &qword_1D8B2CF90);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D8B1AB90;
    sub_1D8B16720();

    sub_1D8979954(&qword_1ECA64730, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v15 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v15);

    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 32) = 0xD000000000000010;
    *(v14 + 40) = 0x80000001D8B44DD0;
    sub_1D8B16CF0();

    v16 = CVBundle.classifications.getter();
    v17 = swift_task_alloc();
    *(v17 + 16) = v13;
    v18 = sub_1D87C6A38(sub_1D8979828, v17, v16);

    v19 = *(v18 + 16);
    if (v19)
    {
      v76 = MEMORY[0x1E69E7CC0];
      sub_1D87F3F54(0, v19, 0);
      v20 = v76;
      v21 = v18 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
      v22 = *(v69 + 72);
      do
      {
        v23 = *(v0 + 192);
        v24 = *(v0 + 176);
        sub_1D89798EC(v21, v23, type metadata accessor for BundleClassification);
        sub_1D89798EC(v23, v24, type metadata accessor for BundleClassification.ClassificationType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v26 = *(v0 + 192);
        if (EnumCaseMultiPayload > 4)
        {
          if (EnumCaseMultiPayload <= 6)
          {
            if (EnumCaseMultiPayload == 5)
            {
              sub_1D897988C(*(v0 + 176), type metadata accessor for BundleClassification.ClassificationType);
              sub_1D897988C(v26, type metadata accessor for BundleClassification);
              v28 = 0x6974634174786574;
              v27 = 0xEB00000000736E6FLL;
            }

            else
            {
              sub_1D897988C(*(v0 + 192), type metadata accessor for BundleClassification);
              v27 = 0xE500000000000000;
              v28 = 0x746E657665;
            }
          }

          else if (EnumCaseMultiPayload == 7)
          {
            sub_1D897988C(*(v0 + 192), type metadata accessor for BundleClassification);
            v27 = 0xE900000000000064;
            v28 = 0x756F6C4164616572;
          }

          else
          {
            if (EnumCaseMultiPayload == 8)
            {
              sub_1D897988C(*(v0 + 192), type metadata accessor for BundleClassification);
              v28 = 0x74616C736E617274;
            }

            else
            {
              sub_1D897988C(*(v0 + 192), type metadata accessor for BundleClassification);
              v28 = 0x7A6972616D6D7573;
            }

            v27 = 0xE900000000000065;
          }
        }

        else if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v30 = *(v0 + 176);
            sub_1D897988C(*(v0 + 192), type metadata accessor for BundleClassification);
            sub_1D897988C(v30, type metadata accessor for BundleClassification.ClassificationType);
            v27 = 0xE800000000000000;
            v28 = 0x796669746E656469;
          }

          else
          {
            sub_1D897988C(*(v0 + 176), type metadata accessor for BundleClassification.ClassificationType);
            sub_1D897988C(v26, type metadata accessor for BundleClassification);
            v27 = 0xE400000000000000;
            v28 = 1936744813;
          }
        }

        else if (EnumCaseMultiPayload == 2)
        {
          sub_1D897988C(*(v0 + 176), type metadata accessor for BundleClassification.ClassificationType);
          sub_1D897988C(v26, type metadata accessor for BundleClassification);
          v27 = 0xE700000000000000;
          v28 = 0x65646F63726162;
        }

        else if (EnumCaseMultiPayload == 3)
        {
          sub_1D897988C(*(v0 + 192), type metadata accessor for BundleClassification);
          v27 = 0xE600000000000000;
          v28 = 0x686372616573;
        }

        else
        {
          v29 = *(v0 + 176);
          sub_1D897988C(*(v0 + 192), type metadata accessor for BundleClassification);
          sub_1D897988C(v29, type metadata accessor for BundleClassification.ClassificationType);
          v27 = 0xE400000000000000;
          v28 = 1667459446;
        }

        v32 = *(v76 + 16);
        v31 = *(v76 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1D87F3F54((v31 > 1), v32 + 1, 1);
        }

        *(v76 + 16) = v32 + 1;
        v33 = v76 + 16 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v27;
        v21 += v22;
        --v19;
      }

      while (v19);
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    v34 = *(v0 + 304);
    v35 = *(v0 + 96);
    v36 = swift_task_alloc();
    v37 = *(v0 + 288);
    *(v36 + 16) = v73;
    *(v36 + 24) = v35;
    *(v36 + 32) = v37;
    *(v36 + 48) = v34;
    *(v36 + 56) = v74;
    *(v36 + 64) = v72;
    *(v36 + 72) = v0 + 64;
    sub_1D8965B54(sub_1D8979848, v36, v20);
    v38 = *(v0 + 216);
    (*v71)(*(v0 + 264), *(v0 + 240));
    sub_1D87A1598(v74, v72);

    sub_1D897988C(v38, type metadata accessor for CVBundle);
  }

  v39 = *(v0 + 296);

  v40 = v39 + 64;
  v41 = -1;
  v42 = -1 << *(v39 + 32);
  if (-v42 < 64)
  {
    v41 = ~(-1 << -v42);
  }

  v43 = v41 & *(v39 + 64);
  v44 = (63 - v42) >> 6;

  v45 = 0;
  v75 = v39;
  while (v43)
  {
LABEL_39:
    v47 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v48 = v47 | (v45 << 6);
    if (*(*(*(v39 + 56) + 8 * v48) + 16))
    {
      v49 = *(*(v39 + 56) + 8 * v48);

      sub_1D8B12F70();

      v50 = objc_opt_self();
      v51 = [v50 defaultManager];
      sub_1D8B12FC0();
      v52 = sub_1D8B15940();

      v53 = [v51 fileExistsAtPath_];

      if ((v53 & 1) == 0)
      {
        v54 = [v50 defaultManager];
        v55 = sub_1D8B12F50();
        *(v0 + 72) = 0;
        v56 = [v54 createDirectoryAtURL:v55 withIntermediateDirectories:1 attributes:0 error:v0 + 72];

        v57 = *(v0 + 72);
        if ((v56 & 1) == 0)
        {
          v64 = *(v0 + 272);
          v65 = *(v0 + 256);
          v66 = *(v0 + 240);
          v67 = v57;

          sub_1D8B12EB0();

          swift_willThrow();

          v68 = *v71;
          (*v71)(v65, v66);
          v68(v64, v66);

          v63 = *(v0 + 8);

          return v63();
        }

        v58 = v57;
      }

      v59 = *(v0 + 256);

      sub_1D896663C(v49, v59, v70);
      (*v71)(*(v0 + 256), *(v0 + 240));

      v39 = v75;
    }
  }

  while (1)
  {
    v46 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
    }

    if (v46 >= v44)
    {
      break;
    }

    v43 = *(v40 + 8 * v46);
    ++v45;
    if (v43)
    {
      v45 = v46;
      goto LABEL_39;
    }
  }

  (*v71)(*(v0 + 272), *(v0 + 240));

  v60 = *(v0 + 64);

  v61 = *(v0 + 8);

  return v61(v60);
}

void sub_1D8965B54(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      (a1)(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

void sub_1D8965BE8(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D8B16610())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA71FC20](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

VisualIntelligenceCore::CVResultPackage __swiftcall CVResultPackage.init(bundles:debugArtifactsByCategory:summaryByBundleType:)(Swift::OpaquePointer bundles, Swift::OpaquePointer debugArtifactsByCategory, Swift::OpaquePointer summaryByBundleType)
{
  v3->_rawValue = bundles._rawValue;
  v3[1]._rawValue = debugArtifactsByCategory._rawValue;
  v3[2]._rawValue = summaryByBundleType._rawValue;
  result.summaryByBundleType = summaryByBundleType;
  result.debugArtifactsByCategory = debugArtifactsByCategory;
  result.bundles = bundles;
  return result;
}

void sub_1D8965D0C()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_1D8B12FC0();
  v2 = sub_1D8B15940();

  v3 = [v1 fileExistsAtPath_];

  if ((v3 & 1) == 0)
  {
    v4 = [v0 defaultManager];
    v5 = sub_1D8B12F50();
    v9[0] = 0;
    v6 = [v4 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:v9];

    if (v6)
    {
      v7 = v9[0];
    }

    else
    {
      v8 = v9[0];
      sub_1D8B12EB0();

      swift_willThrow();
    }
  }
}

uint64_t sub_1D8965E68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B8, &qword_1D8B2D5D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v13 - v1;
  v3 = type metadata accessor for BundleClassification(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  CVBundle.refinementState(of:)(v2);
  v6 = type metadata accessor for RefinementState(0);
  if ((*(*(v6 - 8) + 48))(v2, 1, v6) == 1)
  {
    sub_1D87A14E4(v2, &qword_1ECA657B8, &qword_1D8B2D5D0);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1D897999C(v2, v5, type metadata accessor for BundleClassification);
    v7 = &v5[*(v3 + 20)];
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = v7[3];
    sub_1D8912A48(*v7, v9, v10, v11);
    sub_1D897988C(v5, type metadata accessor for BundleClassification);
    if (v8 == 2)
    {
      return 1;
    }

    sub_1D88E0FE4(v8, v9, v10, v11);
  }

  else
  {
    sub_1D897988C(v2, type metadata accessor for RefinementState);
  }

  return 0;
}

void sub_1D8966084(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, unint64_t *a9)
{
  v59 = a8;
  v58 = a7;
  v61 = sub_1D8B13000();
  v11 = *(v61 - 8);
  v12 = MEMORY[0x1EEE9AC00](v61);
  v57 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v54 - v17;
  v19 = *a1;
  v20 = a1[1];
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_1D8B16720();

  v62 = v19;
  v63 = v20;
  MEMORY[0x1DA71EFA0](0x2D656C646E75622DLL, 0xE800000000000000);
  v64 = a2;
  v21 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v21);

  MEMORY[0x1DA71EFA0](0x6E6F736A2ELL, 0xE500000000000000);
  sub_1D8B12F70();
  v22 = v60;
  sub_1D8965D0C();
  if (v22)
  {
    (*(v11 + 8))(v18, v61);

    return;
  }

  v55 = v19;
  v56 = v20;
  v60 = v11;
  sub_1D8B12F70();

  sub_1D8B13070();
  v59 = 0;
  v58 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EA0, &qword_1D8B2CF90);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D8B1AB90;
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_1D8B16720();

  v62 = 0xD000000000000010;
  v63 = 0x80000001D8B44DD0;
  sub_1D8979954(&qword_1ECA64730, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v24 = v61;
  v25 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v25);

  v26 = v62;
  v27 = v63;
  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 32) = v26;
  *(v23 + 40) = v27;
  sub_1D8B16CF0();

  v28 = v60;
  v29 = v16;
  (*(v60 + 16))(v57, v16, v24);
  v30 = v56;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = *a9;
  v32 = v62;
  *a9 = 0x8000000000000000;
  v33 = v55;
  v35 = sub_1D87EF838(v55, v30);
  v36 = *(v32 + 16);
  v37 = (v34 & 1) == 0;
  v38 = v36 + v37;
  if (__OFADD__(v36, v37))
  {
    __break(1u);
    goto LABEL_18;
  }

  v39 = v34;
  if (*(v32 + 24) >= v38)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D896B350(&qword_1ECA65C18, &qword_1D8B2C038);
      v32 = v62;
    }
  }

  else
  {
    sub_1D8974F38(v38, isUniquelyReferenced_nonNull_native, &qword_1ECA65C18, &qword_1D8B2C038);
    v32 = v62;
    v40 = sub_1D87EF838(v33, v30);
    if ((v39 & 1) != (v41 & 1))
    {
LABEL_20:
      sub_1D8B16C30();
      __break(1u);
      return;
    }

    v35 = v40;
  }

  *a9 = v32;

  v42 = *a9;
  if (v39)
  {

    goto LABEL_13;
  }

  v42[(v35 >> 6) + 8] |= 1 << v35;
  v43 = (v42[6] + 16 * v35);
  *v43 = v33;
  v43[1] = v30;
  *(v42[7] + 8 * v35) = MEMORY[0x1E69E7CC0];
  v44 = v42[2];
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (v45)
  {
    __break(1u);
    goto LABEL_20;
  }

  v42[2] = v46;
LABEL_13:
  isUniquelyReferenced_nonNull_native = v42[7];
  v23 = *(isUniquelyReferenced_nonNull_native + 8 * v35);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *(isUniquelyReferenced_nonNull_native + 8 * v35) = v23;
  if ((v47 & 1) == 0)
  {
LABEL_18:
    v23 = sub_1D87C8798(0, *(v23 + 16) + 1, 1, v23);
    *(isUniquelyReferenced_nonNull_native + 8 * v35) = v23;
  }

  v49 = *(v23 + 16);
  v48 = *(v23 + 24);
  v50 = v61;
  if (v49 >= v48 >> 1)
  {
    v53 = sub_1D87C8798((v48 > 1), v49 + 1, 1, v23);
    v50 = v61;
    *(isUniquelyReferenced_nonNull_native + 8 * v35) = v53;
  }

  v51 = *(v28 + 8);
  v51(v29, v50);
  v51(v58, v50);
  v52 = *(isUniquelyReferenced_nonNull_native + 8 * v35);
  *(v52 + 16) = v49 + 1;
  (*(v28 + 32))(v52 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v49, v57, v50);
}

uint64_t sub_1D896663C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[1] = a3;
  v34 = a2;
  v4 = sub_1D8B13000();
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + 32;
    v29 = 0x80000001D8B44E10;
    v30 = 0x80000001D8B44DF0;
    v32 = (v6 + 8);
    v31 = xmmword_1D8B1AB90;
    v33 = result;
    do
    {
      sub_1D88C4BD0(v10, &v40);
      sub_1D89791F0(&v41, &v36);
      if (v39 - 1 >= 2)
      {
        if (v39)
        {
          sub_1D8788F40(&v36, v35);
          __swift_project_boxed_opaque_existential_1(v35, v35[3]);
          v21 = v42;
          v22 = sub_1D8B12BE0();
          v42 = v21;
          if (v21)
          {
            sub_1D87DC9A0(&v40);
            return __swift_destroy_boxed_opaque_existential_1(v35);
          }

          v18 = v22;
          v17 = v23;
          __swift_destroy_boxed_opaque_existential_1(v35);
          v15 = 0xE400000000000000;
          v16 = 1852797802;
        }

        else
        {
          v19 = v36;
          v18 = CVBufferRef.pngData.getter();
          v17 = v20;

          v15 = 0xE300000000000000;
          v16 = 4673104;
        }
      }

      else
      {
        v16 = v37;
        v15 = v38;
        v17 = *(&v36 + 1);
        v18 = v36;
      }

      v36 = v40;

      MEMORY[0x1DA71EFA0](46, 0xE100000000000000);
      MEMORY[0x1DA71EFA0](v16, v15);

      sub_1D8B12F70();

      if (v17 >> 60 == 15)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EA0, &qword_1D8B2CF90);
        v11 = swift_allocObject();
        *(v11 + 16) = v31;
        *&v36 = 0;
        *(&v36 + 1) = 0xE000000000000000;
        sub_1D8B16720();

        *&v36 = 0xD00000000000001ALL;
        *(&v36 + 1) = v30;
        sub_1D8979954(&qword_1ECA64730, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v12 = v33;
        v13 = sub_1D8B16B50();
        MEMORY[0x1DA71EFA0](v13);

        v14 = v36;
        *(v11 + 56) = MEMORY[0x1E69E6158];
        *(v11 + 32) = v14;
        sub_1D8B16CF0();
      }

      else
      {
        v24 = v42;
        sub_1D8B13070();
        v42 = v24;
        if (v24)
        {
          sub_1D87C12A4(v18, v17);
          (*v32)(v8, v33);
          return sub_1D87DC9A0(&v40);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EA0, &qword_1D8B2CF90);
        v25 = swift_allocObject();
        *(v25 + 16) = v31;
        *&v36 = 0;
        *(&v36 + 1) = 0xE000000000000000;
        sub_1D8B16720();

        *&v36 = 0xD000000000000012;
        *(&v36 + 1) = v29;
        sub_1D8979954(&qword_1ECA64730, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v12 = v33;
        v26 = sub_1D8B16B50();
        MEMORY[0x1DA71EFA0](v26);

        v27 = v36;
        *(v25 + 56) = MEMORY[0x1E69E6158];
        *(v25 + 32) = v27;
        sub_1D8B16CF0();

        sub_1D87C12A4(v18, v17);
      }

      (*v32)(v8, v12);
      result = sub_1D87DC9A0(&v40);
      v10 += 72;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_1D8966B38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D88C4BD0(v2, &v18);
    sub_1D89791F0(v19 + 8, &v13);
    v4 = BYTE8(v15);
    sub_1D897924C(&v13);
    if (v4 < 2)
    {
      sub_1D87DC9A0(&v18);
    }

    else
    {
      v15 = v19[1];
      v16 = v19[2];
      v17 = v20;
      v13 = v18;
      v14 = v19[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D87F466C(0, *(v3 + 16) + 1, 1);
        v3 = v21;
      }

      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D87F466C((v6 > 1), v7 + 1, 1);
        v3 = v21;
      }

      *(v3 + 16) = v7 + 1;
      v8 = v3 + 72 * v7;
      *(v8 + 32) = v13;
      v9 = v14;
      v10 = v15;
      v11 = v16;
      *(v8 + 96) = v17;
      *(v8 + 64) = v10;
      *(v8 + 80) = v11;
      *(v8 + 48) = v9;
    }

    v2 += 72;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t Collection<>.withoutGraphicalArtifacts.getter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  return sub_1D8B15BF0();
}

uint64_t sub_1D8966D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8B16D20();
  if (a2)
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B15A60();
    if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = a3;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1DA720250](v5);
  }

  else
  {
    MEMORY[0x1DA720210](0);
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D8966DFC(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x1DA720210](0);
  }

  v2 = *(v1 + 16);
  MEMORY[0x1DA720210](1);
  sub_1D8B15A60();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x1DA720250](v3);
}

uint64_t sub_1D8966E74(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_1D8B16D20();
  if (v2)
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B15A60();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1DA720250](v4);
  }

  else
  {
    MEMORY[0x1DA720210](0);
  }

  return sub_1D8B16D80();
}

BOOL sub_1D8966EF4(double *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  v4 = *(a2 + 8);
  if (!v3)
  {
    return !v4;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v6 = a1[2];
  if (*a1 == *a2 && v3 == v4)
  {
    return v6 == v5;
  }

  v8 = sub_1D8B16BA0();
  result = 0;
  if (v8)
  {
    return v6 == v5;
  }

  return result;
}

BOOL sub_1D8966F78(uint64_t a1)
{
  sub_1D89791F0(a1 + 24, v3);
  v1 = v3[40] > 1u;
  sub_1D897924C(v3);
  return v1;
}

void sub_1D8966FC8()
{
  v1 = v0;
  v2 = type metadata accessor for GreymatterAvailability.AvailabilityKey(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66050, &qword_1D8B2D668);
  v5 = *v0;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1D89798EC(*(v5 + 48) + v21, v4, type metadata accessor for GreymatterAvailability.AvailabilityKey);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1D897999C(v4, *(v7 + 48) + v21, type metadata accessor for GreymatterAvailability.AvailabilityKey);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_1D896721C()
{
  v1 = v0;
  v2 = sub_1D8B13240();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BuiltInAction(0);
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64008, &qword_1D8B2D660);
  v7 = *v0;
  v8 = sub_1D8B168F0();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v1;
    v10 = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || v10 >= v11 + 8 * v12)
    {
      memmove(v10, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v42 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v41 + 32;
    v35 = v41 + 16;
    v36 = v7;
    v19 = v37;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = *(v38 + 72) * v23;
        sub_1D89798EC(*(v7 + 48) + v24, v19, type metadata accessor for BuiltInAction);
        v26 = v40;
        v25 = v41;
        v27 = *(v41 + 72) * v23;
        v28 = *(v7 + 56) + v27;
        v29 = v39;
        (*(v41 + 16))(v39, v28, v40);
        v30 = v42;
        sub_1D897999C(v19, *(v42 + 48) + v24, type metadata accessor for BuiltInAction);
        v31 = v29;
        v7 = v36;
        (*(v25 + 32))(*(v30 + 56) + v27, v31, v26);
        v17 = v43;
      }

      while (v43);
    }

    v21 = v13;
    v9 = v42;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v22 = *(v11 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v43 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }
}

void sub_1D896754C()
{
  v1 = v0;
  v2 = type metadata accessor for CVBundle(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D8B13240();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FC8, &qword_1D8B2D548);
  v5 = *v0;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1D89798EC(*(v5 + 56) + v26, v35, type metadata accessor for CVBundle);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        sub_1D897999C(v25, *(v27 + 56) + v26, type metadata accessor for CVBundle);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_1D8967878()
{
  v1 = v0;
  v2 = type metadata accessor for BundleClassification(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D8B14D80();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66048, &unk_1D8B2D650);
  v5 = *v0;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1D89798EC(*(v5 + 56) + v26, v35, type metadata accessor for BundleClassification);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        sub_1D897999C(v25, *(v27 + 56) + v26, type metadata accessor for BundleClassification);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_1D8967BA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FF8, &qword_1D8B2D598);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D8967D00()
{
  v1 = v0;
  v2 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C80, &qword_1D8B2C0A0);
  v8 = *v0;
  v9 = sub_1D8B168F0();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v12 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_1D89798EC(*(v8 + 48) + v24, v7, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        v25 = *(v29 + 72) * v23;
        sub_1D89798EC(*(v8 + 56) + v25, v4, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        sub_1D897999C(v7, *(v10 + 48) + v24, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        sub_1D897999C(v4, *(v10 + 56) + v25, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }
}

void sub_1D8967FEC()
{
  v1 = v0;
  v2 = type metadata accessor for HighResolutionStillBarrier.ActionExecution(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C90, &unk_1D8B2C0B0);
  v5 = *v0;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1D89798EC(*(v5 + 48) + v21, v4, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1D897999C(v4, *(v7 + 48) + v21, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_1D896822C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CB8, &qword_1D8B2D600);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D8968388()
{
  v1 = v0;
  v2 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D8B13240();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FB8, &qword_1D8B2D530);
  v5 = *v0;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || v8 >= &v9[8 * v10])
    {
      memmove(v8, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1D89798EC(*(v5 + 56) + v26, v35, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        sub_1D897999C(v25, *(v27 + 56) + v26, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_1D89686B4()
{
  v1 = v0;
  v31 = sub_1D8B13240();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FC0, &unk_1D8B2D538);
  v3 = *v0;
  v4 = sub_1D8B168F0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1D8968924()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FD8, &unk_1D8B2D560);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D8968A94()
{
  v1 = v0;
  v2 = type metadata accessor for CVProcessorTaskDescriptor(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FA8, &qword_1D8B2D518);
  v6 = *v0;
  v7 = sub_1D8B168F0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v23 = v1;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_1D89798EC(*(v6 + 48) + v22, v5, type metadata accessor for CVProcessorTaskDescriptor);
        v21 *= 40;
        sub_1D87C1470(*(v6 + 56) + v21, v24);
        sub_1D897999C(v5, *(v8 + 48) + v22, type metadata accessor for CVProcessorTaskDescriptor);
        sub_1D8788F40(v24, *(v8 + 56) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_1D8968CE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CD0, &qword_1D8B2C100);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1D87D3E4C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D8943B68(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

void sub_1D8968E84()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78, &unk_1D8B2D550);
  v34 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v28 - v3;
  v4 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B70, &unk_1D8B2BEF0);
  v6 = *v0;
  v7 = sub_1D8B168F0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    v16 = *(v6 + 64);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v17 = v15 & v16;
    v18 = (v14 + 63) >> 6;
    v30 = v6;
    if ((v15 & v16) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = *(v33 + 72) * v22;
        v24 = v31;
        sub_1D89798EC(*(v6 + 48) + v23, v31, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
        v25 = *(v34 + 72) * v22;
        v26 = v32;
        sub_1D87A0E38(*(v6 + 56) + v25, v32, &qword_1ECA65B78, &unk_1D8B2D550);
        v27 = v35;
        sub_1D897999C(v24, *(v35 + 48) + v23, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
        v6 = v30;
        sub_1D881F6FC(v26, *(v27 + 56) + v25, &qword_1ECA65B78, &unk_1D8B2D550);
      }

      while (v17);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v29;
        v8 = v35;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_1D8969194()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C70, &qword_1D8B2C090);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v19 + 4) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 8 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 4);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v19 = *(v4 + 56) + 8 * v14;
      *v19 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D89692F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0, &qword_1D8B2BEE0);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D8969464()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FE8, &unk_1D8B2D580);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D89695C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FB0, &unk_1D8B2D520);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = (*(v2 + 48) + 88 * v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[4];
      v25 = *(v17 + 10);
      v24[3] = v19;
      v24[4] = v20;
      v21 = v17[1];
      v24[0] = *v17;
      v24[1] = v21;
      v24[2] = v18;
      v22 = *(*(v2 + 56) + 8 * v16);
      memmove((*(v4 + 48) + 88 * v16), v17, 0x58uLL);
      *(*(v4 + 56) + 8 * v16) = v22;
      sub_1D881F59C(v24, v23);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D89697E0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v50 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v36 - v8;
  v45 = sub_1D8B13240();
  v49 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_1D8B168F0();
  v12 = v11;
  if (*(v10 + 16))
  {
    v13 = (v11 + 64);
    v14 = (v10 + 64);
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    v36 = v7;
    v37 = v10 + 64;
    if (v12 != v10 || v13 >= &v14[8 * v15])
    {
      memmove(v13, v14, 8 * v15);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v48 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = v49 + 16;
    v42 = v21;
    v39 = v49 + 32;
    v40 = v50 + 16;
    v38 = v50 + 32;
    v43 = v10;
    v23 = v44;
    v22 = v45;
    if (v20)
    {
      do
      {
        v24 = __clz(__rbit64(v20));
        v51 = (v20 - 1) & v20;
LABEL_14:
        v27 = v24 | (v16 << 6);
        v28 = v49;
        v29 = *(v49 + 72) * v27;
        (*(v49 + 16))(v23, *(v10 + 48) + v29, v22);
        v30 = v50;
        v31 = *(v50 + 72) * v27;
        v32 = v46;
        v33 = v47;
        (*(v50 + 16))(v46, *(v10 + 56) + v31, v47);
        v34 = v48;
        (*(v28 + 32))(*(v48 + 48) + v29, v23, v22);
        v35 = *(v34 + 56);
        v10 = v43;
        (*(v30 + 32))(v35 + v31, v32, v33);
        v21 = v42;
        v20 = v51;
      }

      while (v51);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v36;
        v12 = v48;
        goto LABEL_18;
      }

      v26 = *(v37 + 8 * v16);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v51 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v12;
  }
}

void sub_1D8969B2C()
{
  v1 = v0;
  v2 = type metadata accessor for BundleClassification.ClassificationType(0);
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C38, &qword_1D8B2C058);
  v4 = *v0;
  v5 = sub_1D8B168F0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || v7 >= &v8[8 * v9])
    {
      memmove(v7, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v38 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v33 + 72) * v19;
        sub_1D89798EC(*(v4 + 48) + v21, v32, type metadata accessor for BundleClassification.ClassificationType);
        v22 = 48 * v19;
        v23 = (*(v4 + 56) + 48 * v19);
        v37 = *v23;
        v36 = *(v23 + 1);
        v35 = v23[16];
        v24 = *(v23 + 3);
        v25 = *(v23 + 4);
        v26 = *(v23 + 5);
        v27 = v34;
        sub_1D897999C(v20, *(v34 + 48) + v21, type metadata accessor for BundleClassification.ClassificationType);
        v28 = *(v27 + 56) + v22;
        *v28 = v37;
        *(v28 + 8) = v36;
        *(v28 + 16) = v35;
        *(v28 + 24) = v24;
        *(v28 + 32) = v25;
        *(v28 + 40) = v26;

        v14 = v38;
      }

      while (v38);
    }

    v17 = v10;
    v6 = v34;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1D8969DF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C10, &unk_1D8B2D5C0);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D8969F5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B80, &qword_1D8B2BF08);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D896A0C4()
{
  v1 = v0;
  v2 = type metadata accessor for BundleClassification.ClassificationType(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C58, &qword_1D8B2D4E0);
  v5 = *v0;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1D89798EC(*(v5 + 48) + v21, v4, type metadata accessor for BundleClassification.ClassificationType);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1D897999C(v4, *(v7 + 48) + v21, type metadata accessor for BundleClassification.ClassificationType);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_1D896A2FC()
{
  v1 = v0;
  v2 = type metadata accessor for BundleClassification.ClassificationType(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C48, &qword_1D8B2C068);
  v5 = *v0;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1D89798EC(*(v5 + 48) + v21, v4, type metadata accessor for BundleClassification.ClassificationType);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1D897999C(v4, *(v7 + 48) + v21, type metadata accessor for BundleClassification.ClassificationType);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_1D896A53C()
{
  v1 = v0;
  v2 = type metadata accessor for RefinementState(0);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BundleClassification.ClassificationType(0);
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B0, &qword_1D8B2ABE8);
  v8 = *v0;
  v9 = sub_1D8B168F0();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v12 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_1D89798EC(*(v8 + 48) + v24, v7, type metadata accessor for BundleClassification.ClassificationType);
        v25 = *(v29 + 72) * v23;
        sub_1D89798EC(*(v8 + 56) + v25, v4, type metadata accessor for RefinementState);
        sub_1D897999C(v7, *(v10 + 48) + v24, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D897999C(v4, *(v10 + 56) + v25, type metadata accessor for RefinementState);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }
}

void sub_1D896A828()
{
  v1 = v0;
  v2 = type metadata accessor for CVBundle(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657C8, &qword_1D8B2AC08);
  v5 = *v0;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1D89798EC(*(v5 + 48) + v21, v4, type metadata accessor for CVBundle);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1D897999C(v4, *(v7 + 48) + v21, type metadata accessor for CVBundle);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_1D896AA68()
{
  v1 = v0;
  v2 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BundleClassification.ClassificationType(0);
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F88, &qword_1D8B2D4F8);
  v8 = *v0;
  v9 = sub_1D8B168F0();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v12 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_1D89798EC(*(v8 + 48) + v24, v7, type metadata accessor for BundleClassification.ClassificationType);
        v25 = *(v29 + 72) * v23;
        sub_1D89798EC(*(v8 + 56) + v25, v4, type metadata accessor for BundleClassifier.ClassificationInfo);
        sub_1D897999C(v7, *(v10 + 48) + v24, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D897999C(v4, *(v10 + 56) + v25, type metadata accessor for BundleClassifier.ClassificationInfo);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }
}

void sub_1D896AD68()
{
  v1 = v0;
  v2 = sub_1D8B13240();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B38, &qword_1D8B2BEA0);
  v6 = *v0;
  v7 = sub_1D8B168F0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 64);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 56) + v20, v2);
      (*(v3 + 32))(*(v8 + 56) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_1D896AFA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B40, &unk_1D8B2BEA8);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 56) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 56) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D896B104()
{
  v1 = v0;
  v2 = type metadata accessor for BundleClassification.ClassificationType(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F90, &qword_1D8B2D500);
  v6 = *v0;
  v7 = sub_1D8B168F0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v23 = v1;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_1D89798EC(*(v6 + 48) + v22, v5, type metadata accessor for BundleClassification.ClassificationType);
        v21 *= 40;
        sub_1D87C1470(*(v6 + 56) + v21, v24);
        sub_1D897999C(v5, *(v8 + 48) + v22, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D8788F40(v24, *(v8 + 56) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_1D896B350(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D8B168F0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1D896B4B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BA0, &qword_1D8B2BF28);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v20[1] = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + 16 * v14);
      v18 = v17[1];
      v19 = *v17;
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v20 = (*(v4 + 56) + 16 * v14);
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D896B624(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_1D8B13240();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_1D8B168F0();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }
}

void sub_1D896B89C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F78, &qword_1D8B2D4E8);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D896BA08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66020, &qword_1D8B2D608);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D896BB64()
{
  v1 = v0;
  v2 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66000, &unk_1D8B2D5A0);
  v6 = *v0;
  v7 = sub_1D8B168F0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v25 = v1;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v3 + 72) * v21;
        sub_1D89798EC(*(v6 + 56) + v23, v5, type metadata accessor for CVDebugArtifactManager.BoresightState);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_1D897999C(v5, *(v8 + 56) + v23, type metadata accessor for CVDebugArtifactManager.BoresightState);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v25;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_1D896BD9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64968, &qword_1D8B25E78);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + v16);
      v18 = *(v2 + 56) + 88 * v16;
      v19 = *(v18 + 32);
      v20 = *(v18 + 48);
      v21 = *(v18 + 64);
      v34 = *(v18 + 80);
      v32 = v20;
      v33 = v21;
      v22 = *(v18 + 16);
      v29 = *v18;
      v30 = v22;
      v31 = v19;
      *(*(v4 + 48) + v16) = v17;
      v23 = *(v4 + 56) + 88 * v16;
      v24 = v30;
      *v23 = v29;
      *(v23 + 16) = v24;
      v25 = v31;
      v26 = v32;
      v27 = v33;
      *(v23 + 80) = v34;
      *(v23 + 48) = v26;
      *(v23 + 64) = v27;
      *(v23 + 32) = v25;
      sub_1D881F59C(&v29, v28);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D896BF5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FF0, &qword_1D8B2D590);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        sub_1D87C1470(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        sub_1D8788F40(v19, *(v4 + 56) + 40 * v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D896C0DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AF0, &qword_1D8B2BE50);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D896C254()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AB8, &unk_1D8B2BE20);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D896C3B4(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = sub_1D8B13240();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = sub_1D8B168F0();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }
}

void sub_1D896C62C()
{
  v1 = v0;
  v2 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CA8, &qword_1D8B2C0D0);
  v8 = *v0;
  v9 = sub_1D8B168F0();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v12 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_1D89798EC(*(v8 + 48) + v24, v7, type metadata accessor for TrackManager.TrackedProcessorState.Key);
        v25 = *(v29 + 72) * v23;
        sub_1D89798EC(*(v8 + 56) + v25, v4, type metadata accessor for TrackManager.TrackedProcessorState);
        sub_1D897999C(v7, *(v10 + 48) + v24, type metadata accessor for TrackManager.TrackedProcessorState.Key);
        sub_1D897999C(v4, *(v10 + 56) + v25, type metadata accessor for TrackManager.TrackedProcessorState);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }
}

void sub_1D896C918()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0, &qword_1D8B3E5B0);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D896CA64()
{
  v1 = v0;
  v2 = type metadata accessor for CVTrackSnapshot(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F70, &unk_1D8B2D4D0);
  v5 = *v0;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_1D89798EC(*(v5 + 56) + v22, v4, type metadata accessor for CVTrackSnapshot);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_1D897999C(v4, *(v7 + 56) + v22, type metadata accessor for CVTrackSnapshot);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_1D896CCA0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98, &qword_1D8B2BF20);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v24 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B90, &qword_1D8B2BF18);
  v4 = *v0;
  v5 = sub_1D8B168F0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    v13 = *(v4 + 64);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v14 = v12 & v13;
    v15 = (v11 + 63) >> 6;
    if ((v12 & v13) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = *(*(v4 + 48) + v19);
        v21 = v27;
        v22 = *(v28 + 72) * v19;
        sub_1D87A0E38(*(v4 + 56) + v22, v27, &qword_1ECA65B98, &qword_1D8B2BF20);
        v23 = v29;
        *(*(v29 + 48) + v19) = v20;
        sub_1D881F6FC(v21, *(v23 + 56) + v22, &qword_1ECA65B98, &qword_1D8B2BF20);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_1D896CEEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA8, &qword_1D8B2BE10);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v17) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 8 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 4);
      v20 = *(*(v2 + 56) + v17);
      v21 = *(v4 + 48) + v17;
      *v21 = v19;
      *(v21 + 4) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D896D060(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for GreymatterAvailability.AvailabilityKey(0);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66050, &qword_1D8B2D668);
  v46 = v4;
  v9 = sub_1D8B16900();
  v10 = v8;
  v11 = v9;
  if (*(v8 + 16))
  {
    v36 = v3;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = v9 + 64;
    v41 = "sualIntelligenceCamera";
    v42 = "";
    v39 = "gs.AppleIntelligence";
    v40 = "IntelligenceCamera.ImageSearch";
    v37 = "ucturedExtraction.addToCalendar";
    v38 = "textComposition.OpenEndedSchema";
    v43 = v10;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v10 + 48);
      v48 = *(v44 + 72);
      v25 = v24 + v48 * v23;
      if (v46)
      {
        sub_1D897999C(v25, v7, type metadata accessor for GreymatterAvailability.AvailabilityKey);
        v47 = *(*(v10 + 56) + 8 * v23);
      }

      else
      {
        sub_1D89798EC(v25, v7, type metadata accessor for GreymatterAvailability.AvailabilityKey);
        v47 = *(*(v10 + 56) + 8 * v23);
      }

      sub_1D8B16D20();
      sub_1D8B15A60();

      sub_1D8B14060();
      sub_1D8979954(&qword_1EE0E9CE8, MEMORY[0x1E69A12C8], MEMORY[0x1E69A12D0]);
      sub_1D8B157A0();
      v26 = sub_1D8B16D80();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v10 = v43;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v10 = v43;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_1D897999C(v7, *(v11 + 48) + v48 * v19, type metadata accessor for GreymatterAvailability.AvailabilityKey);
      *(*(v11 + 56) + 8 * v19) = v47;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1D896D538(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v50 = sub_1D8B13240();
  v5 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BuiltInAction(0);
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64008, &qword_1D8B2D660);
  v47 = v4;
  v11 = sub_1D8B16900();
  v12 = v10;
  v13 = v11;
  if (*(v10 + 16))
  {
    v43[0] = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43[1] = v5 + 16;
    v44 = v10;
    v45 = v5;
    v48 = (v5 + 32);
    v20 = v11 + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(v46 + 72);
      v28 = *(v12 + 48) + v27 * v26;
      if (v47)
      {
        sub_1D897999C(v28, v9, type metadata accessor for BuiltInAction);
        v29 = *(v12 + 56);
        v30 = v9;
        v31 = *(v45 + 72);
        (*(v45 + 32))(v49, v29 + v31 * v26, v50);
      }

      else
      {
        sub_1D89798EC(v28, v9, type metadata accessor for BuiltInAction);
        v32 = *(v12 + 56);
        v30 = v9;
        v31 = *(v45 + 72);
        (*(v45 + 16))(v49, v32 + v31 * v26, v50);
      }

      sub_1D8B16D20();
      v33 = v30;
      BuiltInAction.hash(into:)(v51);
      v34 = sub_1D8B16D80();
      v35 = -1 << *(v13 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v20 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v20 + 8 * v37);
          if (v41 != -1)
          {
            v21 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v21 = __clz(__rbit64((-1 << v36) & ~*(v20 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_1D897999C(v33, *(v13 + 48) + v27 * v21, type metadata accessor for BuiltInAction);
      v22 = *(v13 + 56) + v31 * v21;
      v9 = v33;
      (*v48)(v22, v49, v50);
      ++*(v13 + 16);
      v12 = v44;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43[0];
      goto LABEL_34;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v43[0];
    if (v42 >= 64)
    {
      bzero(v15, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v13;
}

void sub_1D896D99C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CVBundle(0);
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B13240();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FC8, &qword_1D8B2D548);
  v44 = v4;
  v11 = sub_1D8B16900();
  v12 = v11;
  if (*(v10 + 16))
  {
    v39 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v8 + 16);
    v41 = v8;
    v45 = (v8 + 32);
    v19 = v11 + 64;
    v42 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v46 = *(v8 + 72);
      v26 = v25 + v46 * v24;
      if (v44)
      {
        (*v45)(v47, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_1D897999C(v27 + v28 * v24, v48, type metadata accessor for CVBundle);
      }

      else
      {
        (*v40)(v47, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_1D89798EC(v29 + v28 * v24, v48, type metadata accessor for CVBundle);
      }

      sub_1D8979954(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v30 = sub_1D8B15790();
      v31 = -1 << *(v12 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v45)((*(v12 + 48) + v46 * v20), v47, v7);
      sub_1D897999C(v48, *(v12 + 56) + v28 * v20, type metadata accessor for CVBundle);
      ++*(v12 + 16);
      v8 = v41;
      v10 = v42;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_1D896DE3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for BundleClassification(0);
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B14D80();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66048, &unk_1D8B2D650);
  v44 = v4;
  v11 = sub_1D8B16900();
  v12 = v11;
  if (*(v10 + 16))
  {
    v39 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v8 + 16);
    v41 = v8;
    v45 = (v8 + 32);
    v19 = v11 + 64;
    v42 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v46 = *(v8 + 72);
      v26 = v25 + v46 * v24;
      if (v44)
      {
        (*v45)(v47, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_1D897999C(v27 + v28 * v24, v48, type metadata accessor for BundleClassification);
      }

      else
      {
        (*v40)(v47, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_1D89798EC(v29 + v28 * v24, v48, type metadata accessor for BundleClassification);
      }

      sub_1D8979954(&qword_1EE0E3AC0, MEMORY[0x1E69DFAC0], MEMORY[0x1E69DFAC8]);
      v30 = sub_1D8B15790();
      v31 = -1 << *(v12 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v45)((*(v12 + 48) + v46 * v20), v47, v7);
      sub_1D897999C(v48, *(v12 + 56) + v28 * v20, type metadata accessor for BundleClassification);
      ++*(v12 + 16);
      v8 = v41;
      v10 = v42;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_1D896E2DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FF8, &qword_1D8B2D598);
  v6 = sub_1D8B16900();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v22 = MEMORY[0x1DA7201E0](*(v7 + 40), v20, 4);
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D896E550(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13E40();
  v147 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v117 = v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B13E30();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v115 = v106 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635B8, &qword_1D8B1F5A0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v116 = v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v118 = v106 - v15;
  v16 = type metadata accessor for ActionPin.PermanentPill(0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v128 = v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v136 = v106 - v19;
  v140 = sub_1D8B14E80();
  v20 = *(v140 - 8);
  v21 = MEMORY[0x1EEE9AC00](v140);
  v135 = v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v126 = v106 - v23;
  v125 = sub_1D8B13240();
  v24 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v123 = v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v143 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v134 = v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v141 = *(v30 - 8);
  v142 = v30;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v148 = v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v139 = v106 - v33;
  v127 = v2;
  v34 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C80, &qword_1D8B2C0A0);
  v35 = sub_1D8B16900();
  v36 = v35;
  if (*(v34 + 16))
  {
    v109 = v10;
    v114 = v6;
    v113 = v4;
    v37 = 0;
    v38 = *(v34 + 64);
    v122 = (v34 + 64);
    v39 = 1 << *(v34 + 32);
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v41 = v40 & v38;
    v121 = (v39 + 63) >> 6;
    v130 = (v20 + 32);
    v129 = (v20 + 8);
    v111 = (v7 + 48);
    v108 = (v7 + 32);
    v42 = (v7 + 8);
    v110 = v7;
    v43 = v7 + 16;
    v120 = (v24 + 32);
    v119 = (v24 + 8);
    v137 = v35 + 64;
    v131 = v34;
    v44 = v134;
    v138 = v35;
    v45 = v139;
    v112 = (v147 + 8);
    v144 = v43;
    while (v41)
    {
      v47 = __clz(__rbit64(v41));
      v48 = (v41 - 1) & v41;
LABEL_15:
      v51 = v47 | (v37 << 6);
      v52 = *(v34 + 48);
      v146 = *(v141 + 72);
      v147 = v48;
      v53 = v52 + v146 * v51;
      if (a2)
      {
        sub_1D897999C(v53, v45, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        v54 = *(v34 + 56);
        v145 = *(v143 + 72);
        sub_1D897999C(v54 + v145 * v51, v44, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      }

      else
      {
        sub_1D89798EC(v53, v45, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        v55 = *(v34 + 56);
        v145 = *(v143 + 72);
        sub_1D89798EC(v55 + v145 * v51, v44, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      }

      sub_1D8B16D20();
      sub_1D89798EC(v45, v148, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v57 = v42;
          v58 = v43;
          v59 = v126;
          v60 = v140;
          (*v130)(v126, v148, v140);
          MEMORY[0x1DA720210](1);
          sub_1D8979954(&qword_1ECA635C8, MEMORY[0x1E69DFB08], MEMORY[0x1E69DFB10]);
          sub_1D8B157A0();
          v61 = v59;
          v43 = v58;
          v42 = v57;
          (*v129)(v61, v60);
        }

        else
        {
          v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635C0, &qword_1D8B1F5A8) + 48);
          v72 = v148;
          (*v130)(v135, v148, v140);
          v73 = v72 + v71;
          v74 = v136;
          sub_1D897999C(v73, v136, type metadata accessor for ActionPin.PermanentPill);
          MEMORY[0x1DA720210](2);
          sub_1D8979954(&qword_1ECA635C8, MEMORY[0x1E69DFB08], MEMORY[0x1E69DFB10]);
          sub_1D8B157A0();
          v75 = v128;
          sub_1D89798EC(v74, v128, type metadata accessor for ActionPin.PermanentPill);
          v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0, &unk_1D8B1F5B0);
          v77 = (*(*(v76 - 8) + 48))(v75, 6, v76);
          if (v77 <= 2)
          {
            if (v77)
            {
              v34 = v131;
              MEMORY[0x1DA720210](v77 != 1);
            }

            else
            {
              v79 = *(v128 + *(v76 + 48));
              v80 = v118;
              sub_1D881F6FC(v128, v118, &qword_1ECA635B8, &qword_1D8B1F5A0);
              MEMORY[0x1DA720210](5);
              v81 = v80;
              v82 = v116;
              sub_1D87A0E38(v81, v116, &qword_1ECA635B8, &qword_1D8B1F5A0);
              v83 = v114;
              if ((*v111)(v82, 1, v114) == 1)
              {
                sub_1D8B16D40();
              }

              else
              {
                v84 = v115;
                (*v108)(v115, v82, v83);
                sub_1D8B16D40();
                v85 = v117;
                sub_1D8B13E10();
                sub_1D8979954(&qword_1ECA635D8, MEMORY[0x1E699C610], MEMORY[0x1E699C618]);
                v86 = v113;
                sub_1D8B157A0();
                (*v112)(v85, v86);
                sub_1D8B13DF0();
                sub_1D8B15A60();

                sub_1D8B13DE0();
                sub_1D8B15A60();

                v87 = v84;
                v44 = v134;
                (*v42)(v87, v83);
              }

              v34 = v131;
              MEMORY[0x1DA720210](*(v79 + 16));
              v88 = *(v79 + 16);
              if (v88)
              {
                v107 = a2;
                v89 = (*(v110 + 80) + 32) & ~*(v110 + 80);
                v106[1] = v79;
                v90 = v79 + v89;
                v133 = *(v110 + 72);
                v132 = *(v110 + 16);
                v91 = v117;
                v92 = v113;
                v93 = v114;
                v94 = v109;
                v95 = v42;
                v96 = v112;
                do
                {
                  v132(v94, v90, v93);
                  sub_1D8B13E10();
                  sub_1D8979954(&qword_1ECA635D8, MEMORY[0x1E699C610], MEMORY[0x1E699C618]);
                  sub_1D8B157A0();
                  (*v96)(v91, v92);
                  sub_1D8B13DF0();
                  sub_1D8B15A60();

                  sub_1D8B13DE0();
                  sub_1D8B15A60();

                  (*v95)(v94, v93);
                  v90 += v133;
                  --v88;
                }

                while (v88);

                a2 = v107;
                v34 = v131;
                v44 = v134;
                v42 = v95;
                v43 = v144;
              }

              else
              {
              }

              sub_1D87A14E4(v118, &qword_1ECA635B8, &qword_1D8B1F5A0);
            }

            sub_1D897988C(v136, type metadata accessor for ActionPin.PermanentPill);
            (*v129)(v135, v140);
            v45 = v139;
          }

          else
          {
            if (v77 > 4)
            {
              v34 = v131;
              v45 = v139;
              if (v77 == 5)
              {
                v78 = 4;
              }

              else
              {
                v78 = 6;
              }
            }

            else
            {
              v34 = v131;
              v45 = v139;
              if (v77 == 3)
              {
                v78 = 2;
              }

              else
              {
                v78 = 3;
              }
            }

            MEMORY[0x1DA720210](v78);
            sub_1D897988C(v136, type metadata accessor for ActionPin.PermanentPill);
            (*v129)(v135, v140);
          }
        }
      }

      else
      {
        v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E0, &qword_1D8B23AA0) + 48);
        v63 = v148;
        v64 = v42;
        v65 = v123;
        sub_1D897999C(v148, v123, type metadata accessor for BundleClassification.ClassificationType);
        v66 = a2;
        v67 = v124;
        v68 = v125;
        (*v120)(v124, v63 + v62, v125);
        MEMORY[0x1DA720210](0);
        BundleClassification.ClassificationType.hash(into:)(&v149);
        sub_1D8979954(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1D8B157A0();
        sub_1D8B15A60();
        v45 = v139;

        v69 = v67;
        a2 = v66;
        v34 = v131;
        v44 = v134;
        (*v119)(v69, v68);
        v70 = v65;
        v42 = v64;
        v43 = v144;
        sub_1D897988C(v70, type metadata accessor for BundleClassification.ClassificationType);
      }

      v97 = sub_1D8B16D80();
      v36 = v138;
      v98 = -1 << *(v138 + 32);
      v99 = v97 & ~v98;
      v100 = v99 >> 6;
      if (((-1 << v99) & ~*(v137 + 8 * (v99 >> 6))) == 0)
      {
        v101 = 0;
        v102 = (63 - v98) >> 6;
        while (++v100 != v102 || (v101 & 1) == 0)
        {
          v103 = v100 == v102;
          if (v100 == v102)
          {
            v100 = 0;
          }

          v101 |= v103;
          v104 = *(v137 + 8 * v100);
          if (v104 != -1)
          {
            v46 = __clz(__rbit64(~v104)) + (v100 << 6);
            goto LABEL_7;
          }
        }

LABEL_59:
        __break(1u);
        return;
      }

      v46 = __clz(__rbit64((-1 << v99) & ~*(v137 + 8 * (v99 >> 6)))) | v99 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v137 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      sub_1D897999C(v45, v36[6] + v146 * v46, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      sub_1D897999C(v44, v36[7] + v145 * v46, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      ++v36[2];
      v41 = v147;
    }

    v49 = v37;
    while (1)
    {
      v37 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_59;
      }

      if (v37 >= v121)
      {
        break;
      }

      v50 = v122[v37];
      ++v49;
      if (v50)
      {
        v47 = __clz(__rbit64(v50));
        v48 = (v50 - 1) & v50;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v105 = 1 << *(v34 + 32);
      if (v105 >= 64)
      {
        bzero(v122, ((v105 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v122 = -1 << v105;
      }

      *(v34 + 16) = 0;
    }
  }

  *v127 = v36;
}

void sub_1D896F65C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for HighResolutionStillBarrier.ActionExecution(0);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C90, &unk_1D8B2C0B0);
  v47 = v4;
  v9 = sub_1D8B16900();
  v10 = v8;
  v11 = v9;
  if (*(v8 + 16))
  {
    v43 = v3;
    v44 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = v9 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v45 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v47)
      {
        sub_1D897999C(v25, v7, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
        v48 = *(*(v10 + 56) + 8 * v23);
      }

      else
      {
        sub_1D89798EC(v25, v7, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
        v48 = *(*(v10 + 56) + 8 * v23);
      }

      sub_1D8B16D20();
      sub_1D8B13240();
      sub_1D8979954(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D8B157A0();
      v26 = type metadata accessor for ActionPin(0);
      v27 = &v7[*(v26 + 20)];
      v28 = v27[2];
      v29 = v27[3];
      v30 = v27[4];
      v31 = v27[5];
      v32 = v27[6];
      v33 = v27[7];
      sub_1D8818B80(*v27, v27[1]);
      sub_1D8818B80(v28, v29);
      sub_1D8818B80(v30, v31);
      sub_1D8818B80(v32, v33);
      sub_1D8B15A60();
      sub_1D87CF3E8(v49, *&v7[*(v26 + 28)]);
      sub_1D8B16D40();
      ActionPin.Pill.hash(into:)(v49);
      v34 = sub_1D8B16D80();
      v35 = -1 << *(v11 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v18 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v10 = v44;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v18 + 8 * v37);
          if (v41 != -1)
          {
            v19 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v36) & ~*(v18 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v10 = v44;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_1D897999C(v7, *(v11 + 48) + v24 * v19, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      *(*(v11 + 56) + 8 * v19) = v48;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_34;
    }

    v42 = 1 << *(v10 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v13, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v42;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1D896FAE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CB8, &qword_1D8B2D600);
  v6 = sub_1D8B16900();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v22 = sub_1D8B16D10();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D896FD58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B13240();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FB8, &qword_1D8B2D530);
  v44 = v4;
  v11 = sub_1D8B16900();
  v12 = v11;
  if (*(v10 + 16))
  {
    v39 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v8 + 16);
    v41 = v8;
    v45 = (v8 + 32);
    v19 = v11 + 64;
    v42 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v46 = *(v8 + 72);
      v26 = v25 + v46 * v24;
      if (v44)
      {
        (*v45)(v47, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_1D897999C(v27 + v28 * v24, v48, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      }

      else
      {
        (*v40)(v47, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v43 + 72);
        sub_1D89798EC(v29 + v28 * v24, v48, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      }

      sub_1D8979954(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v30 = sub_1D8B15790();
      v31 = -1 << *(v12 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v45)((*(v12 + 48) + v46 * v20), v47, v7);
      sub_1D897999C(v48, *(v12 + 56) + v28 * v20, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      ++*(v12 + 16);
      v8 = v41;
      v10 = v42;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_1D89701F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D8B13240();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FC0, &unk_1D8B2D538);
  v41 = v4;
  v10 = sub_1D8B16900();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v37 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v43 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v5);
      }

      else
      {
        (*v38)(v44, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_1D8979954(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v28 = sub_1D8B15790();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v42)((*(v11 + 48) + v25 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1D89705B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FD8, &unk_1D8B2D560);
  v6 = sub_1D8B16900();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v20);
      v22 = sub_1D8B16D80();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

void sub_1D897085C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CVProcessorTaskDescriptor(0);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FA8, &qword_1D8B2D518);
  v43 = v4;
  v9 = sub_1D8B16900();
  v10 = v9;
  if (*(v8 + 16))
  {
    v39 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    v40 = v8;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 48);
      v44 = *(v41 + 72);
      v24 = v23 + v44 * v22;
      if (v43)
      {
        sub_1D897999C(v24, v7, type metadata accessor for CVProcessorTaskDescriptor);
        sub_1D8788F40((*(v8 + 56) + 40 * v22), v46);
      }

      else
      {
        sub_1D89798EC(v24, v7, type metadata accessor for CVProcessorTaskDescriptor);
        sub_1D87C1470(*(v8 + 56) + 40 * v22, v46);
      }

      sub_1D8B16D20();
      sub_1D87CFE70(v45, *v7);
      v25 = v7;
      v26 = v7 + *(v42 + 20);
      MEMORY[0x1DA720210](*v26);
      v27 = type metadata accessor for DetectionRequest(0);
      DetectionRequest.Originator.hash(into:)(v45);
      sub_1D8818BD0(v45, *&v26[v27[6]]);
      sub_1D88911A0(*&v26[v27[7]], *&v26[v27[7] + 8], *&v26[v27[7] + 16], *&v26[v27[7] + 24]);
      v28 = *&v26[v27[8]];
      if (v28 == 0.0)
      {
        v28 = 0.0;
      }

      MEMORY[0x1DA720250](*&v28);
      v29 = sub_1D8B16D80();
      v30 = -1 << *(v10 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v8 = v40;
        v7 = v25;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v8 = v40;
      v7 = v25;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_1D897999C(v7, *(v10 + 48) + v44 * v18, type metadata accessor for CVProcessorTaskDescriptor);
      sub_1D8788F40(v46, *(v10 + 56) + 40 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v3 = v10;
}