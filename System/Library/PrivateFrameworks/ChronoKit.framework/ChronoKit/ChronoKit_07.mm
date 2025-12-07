id sub_1BF439298(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24[3] = type metadata accessor for _WidgetExtensionFactory();
  v24[4] = &off_1F3DF0578;
  v24[0] = a2;
  v23[3] = type metadata accessor for _SystemEXExtensionIdentityDiscoverer();
  v23[4] = &off_1F3DF0558;
  v23[0] = a3;
  v8 = type metadata accessor for ExtensionManager();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_requireValidExtensions] = 1;
  v10 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__extensionsPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  swift_allocObject();
  *&v9[v10] = sub_1BF4E7C34();
  v11 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__addedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9128, &qword_1BF4F06F8);
  swift_allocObject();
  *&v9[v11] = sub_1BF4E7C34();
  v12 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__updatedPublisher;
  swift_allocObject();
  *&v9[v12] = sub_1BF4E7C34();
  v13 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__removedPublisher;
  swift_allocObject();
  *&v9[v13] = sub_1BF4E7C34();
  v14 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9148, &qword_1BF4F0700);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC8];
  *(v15 + 24) = 0;
  *(v15 + 16) = v16;
  *&v9[v14] = v15;
  v17 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_lookupLock;
  type metadata accessor for UnfairLock();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *v19 = 0;
  *(v18 + 16) = v19;
  *&v9[v17] = v18;
  *&v9[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscovererSubscription] = 0;
  *&v9[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionSubscription] = 0;
  *&v9[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_queue] = a1;
  sub_1BF38E49C(v24, &v9[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionFactory]);
  sub_1BF38E49C(v23, &v9[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscoverer]);
  sub_1BF38E49C(a4, &v9[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionProvider]);
  v22.receiver = v9;
  v22.super_class = v8;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return v20;
}

id sub_1BF4394E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33[3] = a6;
  v33[4] = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a2, a6);
  v32[3] = a7;
  v32[4] = a9;
  v16 = __swift_allocate_boxed_opaque_existential_0(v32);
  (*(*(a7 - 8) + 32))(v16, a3, a7);
  v17 = type metadata accessor for ExtensionManager();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_requireValidExtensions] = 1;
  v19 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__extensionsPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  swift_allocObject();
  *&v18[v19] = sub_1BF4E7C34();
  v20 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__addedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9128, &qword_1BF4F06F8);
  swift_allocObject();
  *&v18[v20] = sub_1BF4E7C34();
  v21 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__updatedPublisher;
  swift_allocObject();
  *&v18[v21] = sub_1BF4E7C34();
  v22 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__removedPublisher;
  swift_allocObject();
  *&v18[v22] = sub_1BF4E7C34();
  v23 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9148, &qword_1BF4F0700);
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E7CC8];
  *(v24 + 24) = 0;
  *(v24 + 16) = v25;
  *&v18[v23] = v24;
  v26 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_lookupLock;
  type metadata accessor for UnfairLock();
  v27 = swift_allocObject();
  v28 = swift_slowAlloc();
  *v28 = 0;
  *(v27 + 16) = v28;
  *&v18[v26] = v27;
  *&v18[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscovererSubscription] = 0;
  *&v18[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionSubscription] = 0;
  *&v18[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_queue] = a1;
  sub_1BF38E49C(v33, &v18[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionFactory]);
  sub_1BF38E49C(v32, &v18[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscoverer]);
  sub_1BF38E49C(a4, &v18[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionProvider]);
  v31.receiver = v18;
  v31.super_class = v17;
  v29 = objc_msgSendSuper2(&v31, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  return v29;
}

void sub_1BF4397C0(uint64_t a1)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
    return;
  }

  v1 = objc_opt_self();
  v2 = 0;
  v3 = 0x1E6966000;
  v4 = &off_1E80BD000;
  v5 = &off_1E80BD000;
  v23 = v1;
  while (1)
  {
    v25 = v2;
    v6 = objc_allocWithZone(*(v3 + 3296));

    v7 = sub_1BF4E88E4();

    v8 = [v6 v4[87]];

    v26 = v8;
    v9 = [v1 v5[88]];
    sub_1BF3901C0(0, &qword_1EDC96340, 0x1E6966CB0);
    v10 = sub_1BF4E8BA4();

    if (v10 >> 62)
    {
      break;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_3:
    v2 = v25 + 1;

    v1 = v23;
    v3 = 0x1E6966000uLL;
    v4 = &off_1E80BD000;
    v5 = &off_1E80BD000;
    if (v25 + 1 == v24)
    {
      return;
    }
  }

  v11 = sub_1BF4E9204();
  if (!v11)
  {
    goto LABEL_3;
  }

LABEL_6:
  v12 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1BFB59570](v12, v10);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v16 = [v13 bundleIdentifier];
    v17 = sub_1BF4E8914();
    v19 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    if (v17 == sub_1BF4E76B4() && v19 == v20)
    {

      return;
    }

    v22 = sub_1BF4E9734();

    if (v22)
    {

      return;
    }

    ++v12;
    if (v15 == v11)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1BF439A9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994140]);
  result = MEMORY[0x1BFB58FA0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v12 = v14;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v16 = *(v13 + 56);
    do
    {
      v12(v5, v15, v2);
      sub_1BF4ACCF8(v8, v5);
      (*(v13 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

void *sub_1BF439C40(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BF4E9204())
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB59570](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v21 = v8;
      sub_1BF434EE8(&v21, a2, a3, &v19);
      if (v3)
      {

        return v7;
      }

      if (v20[24] == 255)
      {
        sub_1BF38C9B4(&v19, &qword_1EBDD92D8, &qword_1BF4F08C8);
      }

      else
      {
        v17 = v19;
        *v18 = *v20;
        *&v18[9] = *&v20[9];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1BF432528(0, v7[2] + 1, 1, v7);
        }

        v12 = v7[2];
        v11 = v7[3];
        if (v12 >= v11 >> 1)
        {
          v7 = sub_1BF432528((v11 > 1), v12 + 1, 1, v7);
        }

        v7[2] = v12 + 1;
        v13 = &v7[6 * v12];
        *(v13 + 57) = *&v18[9];
        v13[2] = v17;
        v13[3] = *v18;
      }

      ++v6;
      if (v10 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t dispatch thunk of ExtensionManager.extensions(for:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1A8))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0))();
}

uint64_t sub_1BF43A1BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF43A204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteWidgetExtension(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF43A2F0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BF43A354(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1BF43A460(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_1BF43A624(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_1BF38E610(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_1BF3D6C04(v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1BF38C9B4(a2, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    *v2 = v7;
  }

  else
  {
    sub_1BF38C9B4(a1, &qword_1EBDD9330, qword_1BF4F09C0);
    sub_1BF47AEE4(a2, v8, v6);
    sub_1BF38C9B4(a2, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    return sub_1BF38C9B4(v8, &qword_1EBDD9330, qword_1BF4F09C0);
  }

  return result;
}

uint64_t sub_1BF43A700(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1BF3D6DBC(a1, a2, a3, isUniquelyReferenced_nonNull_native, v10);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1BF3CD5D0(a2, a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1BF4A3058();
        v16 = v18;
      }

      result = sub_1BF47C170(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1BF43A7F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1BF38E610(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_1BF3D7110(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_1BF38C9B4(a1, &unk_1EBDD91B0, &unk_1BF4F0720);
    sub_1BF47B158(a2, v9);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_1BF38C9B4(v9, &unk_1EBDD91B0, &unk_1BF4F0720);
  }

  return result;
}

uint64_t sub_1BF43A92C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9308, &unk_1BF4F0918);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for RemoteActivityArchiveBudget(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1BF38C9B4(a1, &qword_1EBDD9308, &unk_1BF4F0918);
    sub_1BF47B248(a2, a3, v9, v15);

    return sub_1BF38C9B4(v9, &qword_1EBDD9308, &unk_1BF4F0918);
  }

  else
  {
    sub_1BF43C744(a1, v13, type metadata accessor for RemoteActivityArchiveBudget);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1BF3D72F4(v13, a2, a3, isUniquelyReferenced_nonNull_native, v18);

    *v3 = v20;
  }

  return result;
}

void sub_1BF43AB00(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_1BF38E610(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_1BF3D7460(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    sub_1BF38C9B4(a1, &qword_1EBDD9320, &qword_1BF4F09B0);
    sub_1BF47B3C8(a2, v6);

    sub_1BF38C9B4(v6, &qword_1EBDD9320, &qword_1BF4F09B0);
  }
}

void sub_1BF43ABB4(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for ExtensionMetadata(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_1BF38C9B4(a1, &qword_1EBDD9318, &qword_1BF4F09A8);
    sub_1BF47B470(a2, v7);

    sub_1BF38C9B4(v7, &qword_1EBDD9318, &qword_1BF4F09A8);
  }

  else
  {
    sub_1BF43C744(a1, v11, type metadata accessor for ExtensionMetadata);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1BF3D7C70(v11, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }
}

uint64_t RemoteActivityArchiveBudgetStore.__allocating_init(backingStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RemoteActivityArchiveBudgetStore.init(backingStore:)(a1);
  return v2;
}

uint64_t RemoteActivityArchiveBudgetStore.init(backingStore:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9300, &qword_1BF4F0910);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  v4 = (v3 + 24);
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  v5 = (v3 + 16);
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;

  os_unfair_lock_lock(v4);
  sub_1BF43BDC4(v5);
  os_unfair_lock_unlock(v4);

  v6 = *(v1 + 24);

  os_unfair_lock_lock((v6 + 24));
  sub_1BF43C284((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));

  return v1;
}

uint64_t sub_1BF43AE90()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));

  return v2;
}

double sub_1BF43AEE0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);

  os_unfair_lock_lock((v3 + 24));
  sub_1BF43C2A0((v3 + 16), a1, v4);
  os_unfair_lock_unlock((v3 + 24));

  return result;
}

uint64_t sub_1BF43AF4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v6 = *a1;
  if (*(*a1 + 16) && (v7 = sub_1BF3CD5D0(a2, a3, a5), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for RemoteActivityArchiveBudget(0);
    v12 = *(v11 - 8);
    sub_1BF3DF4F4(v10 + *(v12 + 72) * v9, a4);
    return (*(v12 + 56))(a4, 0, 1, v11);
  }

  else
  {
    v14 = type metadata accessor for RemoteActivityArchiveBudget(0);
    return (*(*(v14 - 8) + 56))(a4, 1, 1, v14);
  }
}

double sub_1BF43B068()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 6);
  sub_1BF43C2BC(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);

  return result;
}

uint64_t sub_1BF43B0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9308, &unk_1BF4F0918);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41[-v9];
  v11 = type metadata accessor for RemoteActivityArchiveBudget(0);
  v48 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(a2 + 16);
  if (v15)
  {
    v45 = v41;
    v46 = a1;
    MEMORY[0x1EEE9AC00](v12);
    v47 = v16;
    *&v41[-16] = v16;
    v17 = *(v15 + 16);
    type metadata accessor for ChronoMetadataStore.MutableStore();
    swift_allocObject();
    v18 = sub_1BF4A4E98(v17);
    v19 = *(v15 + 136);
    v20 = *(v19 + 16);

    os_unfair_lock_lock(v20);
    v21 = *(v15 + 16);

    sub_1BF3E7904(0xD000000000000021, 0x80000001BF4FB350, v21, sub_1BF43C7AC, &v41[-32], v18);
    if (v4)
    {

      os_unfair_lock_unlock(*(v19 + 16));
      sub_1BF48EBD0();

      if (qword_1EDC9D4E0 != -1)
      {
        swift_once();
      }

      v22 = sub_1BF4E7B54();
      __swift_project_value_buffer(v22, qword_1EDCA6970);
      a3 = v47;
      sub_1BF3DF4F4(v47, v14);
      v23 = v4;
      v24 = sub_1BF4E7B34();
      v25 = sub_1BF4E8E64();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v49 = v45;
        *v26 = 136446466;
        v27 = &v14[*(v11 + 24)];
        v42 = v25;
        v43 = v24;
        v29 = *v27;
        v28 = v27[1];

        sub_1BF3DF558(v14);
        v30 = sub_1BF38D65C(v29, v28, &v49);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2114;
        v31 = v4;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 14) = v32;
        v33 = v43;
        v34 = v44;
        *v44 = v32;
        _os_log_impl(&dword_1BF389000, v33, v42, "Failed to update activity archive budget in store: %{public}s; %{public}@", v26, 0x16u);
        sub_1BF38C9B4(v34, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v34, -1, -1);
        v35 = v45;
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        MEMORY[0x1BFB5A5D0](v35, -1, -1);
        v36 = v26;
        a3 = v47;
        MEMORY[0x1BFB5A5D0](v36, -1, -1);
      }

      else
      {

        sub_1BF3DF558(v14);
      }
    }

    else
    {

      os_unfair_lock_unlock(*(v19 + 16));
      sub_1BF48EBD0();

      a3 = v47;
    }
  }

  v37 = (a3 + *(v11 + 24));
  v38 = *v37;
  v39 = v37[1];
  sub_1BF3DF4F4(a3, v10);
  (*(v48 + 56))(v10, 0, 1, v11);

  return sub_1BF43A92C(v10, v38, v39);
}

double sub_1BF43B554()
{
  type metadata accessor for RemoteActivityArchiveBudget(0);
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 6);
  sub_1BF43C2D8(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);

  return result;
}

double sub_1BF43B5D4()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 6);
  sub_1BF43C7D8(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);

  return result;
}

uint64_t sub_1BF43B63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9308, &unk_1BF4F0918);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v19 - v9;
  v11 = *(v3 + 16);
  if (v11)
  {
    v19[1] = a3;
    MEMORY[0x1EEE9AC00](v8);
    v19[-2] = a1;
    v19[-1] = a2;
    v12 = *(v11 + 16);
    type metadata accessor for ChronoMetadataStore.MutableStore();
    swift_allocObject();
    v13 = sub_1BF4A4E98(v12);
    v14 = *(v11 + 136);
    v15 = *(v14 + 16);

    os_unfair_lock_lock(v15);
    v16 = *(v11 + 16);

    sub_1BF3E7904(0xD000000000000021, 0x80000001BF4FB2D0, v16, sub_1BF43C310, &v19[-4], v13);

    os_unfair_lock_unlock(*(v14 + 16));
    sub_1BF48EBD0();
  }

  v17 = type metadata accessor for RemoteActivityArchiveBudget(0);
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);

  return sub_1BF43A92C(v10, a1, a2);
}

void sub_1BF43B9E4(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    if (qword_1EDC9D4E0 != -1)
    {
      swift_once();
    }

    v13 = sub_1BF4E7B54();
    __swift_project_value_buffer(v13, qword_1EDCA6970);
    v14 = sub_1BF4E7B34();
    v15 = sub_1BF4E8E64();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1BF389000, v14, v15, "Failed to load existing activity archive budgets from store as store is missing", v16, 2u);
      MEMORY[0x1BFB5A5D0](v16, -1, -1);
    }

    goto LABEL_18;
  }

  v4 = sub_1BF4CB8F4();
  if (!v2)
  {
    v17 = v4;

    *a1 = v17;
    if (qword_1EDC9D4E0 != -1)
    {
      swift_once();
    }

    v18 = sub_1BF4E7B54();
    __swift_project_value_buffer(v18, qword_1EDCA6970);

    v14 = sub_1BF4E7B34();
    v19 = sub_1BF4E8E84();
    if (os_log_type_enabled(v14, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136446210;
      type metadata accessor for RemoteActivityArchiveBudget(0);
      v22 = sub_1BF4E8774();
      v24 = v23;

      v25 = sub_1BF38D65C(v22, v24, &v26);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1BF389000, v14, v19, "Fetched activity archive budgets from backing store: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1BFB5A5D0](v21, -1, -1);
      MEMORY[0x1BFB5A5D0](v20, -1, -1);
    }

    else
    {
    }

LABEL_18:

    return;
  }

  if (qword_1EDC9D4E0 != -1)
  {
    swift_once();
  }

  v5 = sub_1BF4E7B54();
  __swift_project_value_buffer(v5, qword_1EDCA6970);
  v6 = v2;
  v7 = sub_1BF4E7B34();
  v8 = sub_1BF4E8E64();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1BF389000, v7, v8, "Failed to load existing activity archive budgets from store: %{public}@", v9, 0xCu);
    sub_1BF38C9B4(v10, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v10, -1, -1);
    MEMORY[0x1BFB5A5D0](v9, -1, -1);
  }

  else
  {
  }
}

void sub_1BF43BDE0(uint64_t *a1, uint64_t a2)
{
  v43 = a2;
  v3 = type metadata accessor for RemoteActivityArchiveBudget(0);
  v53 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1BF4E7334();
  v5 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v40 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9328, &qword_1BF4F09B8);
  MEMORY[0x1EEE9AC00](v49);
  v10 = (&v40 - v9);
  v42 = a1;
  v11 = *a1;
  v12 = *a1 + 64;
  v13 = 1 << *(*a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(*a1 + 64);
  v16 = (v13 + 63) >> 6;
  v47 = (v5 + 8);
  v54 = v11;
  swift_bridgeObjectRetain_n();
  v17 = 0;
  *&v18 = 136446210;
  v41 = v18;
  v45 = v16;
  v46 = v12;
  v44 = v3;
  v48 = v10;
  while (v15)
  {
LABEL_12:
    v20 = __clz(__rbit64(v15)) | (v17 << 6);
    v21 = (*(v54 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = v10 + *(v49 + 48);
    sub_1BF3DF4F4(*(v54 + 56) + *(v53 + 72) * v20, v24);
    v56 = v23;
    v57 = v22;
    *v10 = v22;
    v10[1] = v23;

    v25 = v50;
    _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
    v26 = v51;
    sub_1BF4E7284();
    LOBYTE(v23) = sub_1BF4E7264();
    v27 = *v47;
    v28 = v26;
    v29 = v52;
    (*v47)(v28, v52);
    v27(v25, v29);
    v30 = v55;
    v12 = v46;
    if (v23)
    {
      if (qword_1EDC9D4E0 != -1)
      {
        swift_once();
      }

      v31 = sub_1BF4E7B54();
      __swift_project_value_buffer(v31, qword_1EDCA6970);
      sub_1BF3DF4F4(v24, v30);
      v32 = sub_1BF4E7B34();
      v33 = sub_1BF4E8E64();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v58 = v35;
        *v34 = v41;
        v36 = sub_1BF3DF058();
        v38 = v37;
        sub_1BF3DF558(v55);
        v39 = sub_1BF38D65C(v36, v38, &v58);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_1BF389000, v32, v33, "Removing expired activity archive budget from store: %{public}s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        MEMORY[0x1BFB5A5D0](v35, -1, -1);
        MEMORY[0x1BFB5A5D0](v34, -1, -1);
      }

      else
      {

        sub_1BF3DF558(v30);
      }

      sub_1BF43B63C(v57, v56, v42);
    }

    v15 &= v15 - 1;
    v10 = v48;
    sub_1BF38C9B4(v48, &qword_1EBDD9328, &qword_1BF4F09B8);
    v16 = v45;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      return;
    }

    v15 = *(v12 + 8 * v19);
    ++v17;
    if (v15)
    {
      v17 = v19;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t RemoteActivityArchiveBudgetStore.deinit()
{

  return v0;
}

uint64_t RemoteActivityArchiveBudgetStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BF43C3A4()
{
  v1 = *(*v0 + 24);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));

  return v2;
}

double sub_1BF43C3F8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 24);

  os_unfair_lock_lock((v3 + 24));
  sub_1BF43C808((v3 + 16), a1, v4);
  os_unfair_lock_unlock((v3 + 24));

  return result;
}

double sub_1BF43C468()
{
  v1 = *(*v0 + 24);

  os_unfair_lock_lock(v1 + 6);
  sub_1BF43C7F0(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);

  return result;
}

double sub_1BF43C4D0()
{
  v1 = *v0;
  type metadata accessor for RemoteActivityArchiveBudget(0);
  v2 = *(v1 + 24);

  os_unfair_lock_lock(v2 + 6);
  sub_1BF43C7D8(&v2[4]);
  os_unfair_lock_unlock(v2 + 6);

  return result;
}

double sub_1BF43C554()
{
  v1 = *(*v0 + 24);

  os_unfair_lock_lock(v1 + 6);
  sub_1BF43C7D8(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);

  return result;
}

unint64_t sub_1BF43C5C4()
{
  result = qword_1EBDD9310;
  if (!qword_1EBDD9310)
  {
    type metadata accessor for RemoteActivityArchiveBudget(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9310);
  }

  return result;
}

uint64_t sub_1BF43C744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF43C820(uint64_t a1)
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

uint64_t sub_1BF43C8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char *a7, uint64_t a8, double a9, char *a10)
{
  v19 = swift_allocObject();
  sub_1BF43C9B0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v19;
}

char *sub_1BF43C9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char *a7, uint64_t a8, double a9, char *a10)
{
  v15 = *v10;
  v16 = *a6;
  v17 = *a7;
  v18 = *a10;
  *(v10 + 2) = a1;
  *(v10 + 3) = a2;
  (*(*(*(v15 + 80) - 8) + 32))(&v10[*(v15 + 104)], a3);
  v19 = &v10[*(*v10 + 112)];
  *v19 = a4;
  *(v19 + 1) = a5;
  v10[*(*v10 + 120)] = v16;
  v10[*(*v10 + 128)] = v17;
  *&v10[*(*v10 + 136)] = a8;
  *&v10[*(*v10 + 144)] = a9;
  v10[*(*v10 + 152)] = v18;
  return v10;
}

uint64_t sub_1BF43CB08()
{
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD000000000000024, 0x80000001BF4FB3E0);
  MEMORY[0x1BFB58C90](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1BFB58C90](0x7469746E65646920, 0xEA00000000003D79);
  sub_1BF4E96E4();
  MEMORY[0x1BFB58C90](0x3D74736F6320, 0xE600000000000000);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0x3D6E6F7361657220, 0xE800000000000000);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FB410);
  v1 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v1);

  MEMORY[0x1BFB58C90](0x6974756365786520, 0xEF3D656D69546E6FLL);
  sub_1BF4E8D14();
  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

void sub_1BF43CD64(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  updated = type metadata accessor for PowerlogUpdateEntry(0, v5, *(v4 + 88), v9);
  v12 = *(v2 + 2);
  v11 = *(v2 + 3);
  (*(v6 + 16))(v8, &v2[*(v4 + 104)], v5);
  v13 = *v2;
  v14 = &v2[*(*v2 + 112)];
  v15 = *v14;
  v16 = v14[1];
  v23 = v2[*(*v2 + 120)];
  v22 = v2[v13[16]];
  v17 = *&v2[v13[17]];
  v18 = *&v2[v13[18]];
  v21 = v2[v13[19]];
  v19 = swift_allocObject();
  sub_1BF43C9B0(v12, v11, v8, v15, v16, &v23, &v22, v17, v18, &v21);
  a2[3] = updated;
  *a2 = v19;
}

uint64_t sub_1BF43CF90(uint64_t a1)
{
  sub_1BF43CD64(a1, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1 = sub_1BF4E9714();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return v1;
}

uint64_t sub_1BF43CFE8(uint64_t a1)
{
  sub_1BF4E89F4();
  sub_1BF4E8884();
  if (*(v1 + *(*v1 + 112) + 8))
  {
    sub_1BF4E9824();
    sub_1BF4E89F4();
  }

  else
  {
    sub_1BF4E9824();
  }

  sub_1BF4E89F4();

  PowerlogWakeReason.rawValue.getter();
  sub_1BF4E89F4();

  MEMORY[0x1BFB59A70](*(v1 + *(*v1 + 136)));
  v2 = *(v1 + *(*v1 + 144));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x1BFB59A90](*&v2);
}

BOOL sub_1BF43D1B4(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_1BF4E9734() & 1) == 0 || (sub_1BF4E88C4() & 1) == 0)
  {
    return 0;
  }

  v5 = *a1;
  v6 = (a1 + *(*a1 + 112));
  v7 = *v6;
  v8 = v6[1];
  v9 = (a2 + *(*a2 + 112));
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    if (v7 != *v9 || v8 != v10)
    {
      if ((sub_1BF4E9734() & 1) == 0)
      {
        return 0;
      }

      v5 = *a1;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (*(a1 + *(v5 + 120)))
  {
    v12 = 1701147238;
  }

  else
  {
    v12 = 0x6465746567647562;
  }

  if (*(a1 + *(v5 + 120)))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  if (*(a2 + *(*a2 + 120)))
  {
    v14 = 1701147238;
  }

  else
  {
    v14 = 0x6465746567647562;
  }

  if (*(a2 + *(*a2 + 120)))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE800000000000000;
  }

  if (v12 == v14 && v13 == v15)
  {
  }

  else
  {
    v17 = sub_1BF4E9734();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = PowerlogWakeReason.rawValue.getter();
  v20 = v19;
  if (v18 == PowerlogWakeReason.rawValue.getter() && v20 == v21)
  {
  }

  else
  {
    v22 = sub_1BF4E9734();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + *(*a1 + 136)) == *(a2 + *(*a2 + 136)))
  {
    return *(a1 + *(*a1 + 144)) == *(a2 + *(*a2 + 144));
  }

  return 0;
}

char *sub_1BF43D4D0()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_1BF43D570()
{
  sub_1BF43D4D0();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF43D5E0(double a1)
{
  sub_1BF4E9804();
  sub_1BF43CFE8(v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF43D668(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF43CFE8(v3);
  return sub_1BF4E9844();
}

void sub_1BF43D6F4(unint64_t a1)
{
  v3 = sub_1BF4E7FF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BF4E8064();
  isa = v7[-1].isa;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BF43E83C(a1);
  if (v11)
  {
    v12 = v11;
    v22[0] = v7;
    v13 = *(v1 + 24);
    v14 = swift_allocObject();
    v14[2] = v12;
    v14[3] = v1;
    v14[4] = a1;
    aBlock[4] = sub_1BF43EBF0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF38E868;
    aBlock[3] = &block_descriptor_24;
    v15 = _Block_copy(aBlock);
    v16 = v13;
    v17 = v12;

    sub_1BF4E8014();
    v22[1] = MEMORY[0x1E69E7CC0];
    sub_1BF43E42C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF43E484();
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v10, v6, v15);
    _Block_release(v15);

    (*(v4 + 8))(v6, v3);
    (*(isa + 1))(v10, v22[0]);
  }

  else
  {
    if (qword_1EDC9D4A8 != -1)
    {
      swift_once();
    }

    v18 = sub_1BF4E7B54();
    __swift_project_value_buffer(v18, qword_1EDCA6910);
    v22[0] = sub_1BF4E7B34();
    v19 = sub_1BF4E8E84();
    if (os_log_type_enabled(v22[0], v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BF389000, v22[0], v19, "No powerlog update entries to flush.", v20, 2u);
      MEMORY[0x1BFB5A5D0](v20, -1, -1);
    }

    v21 = v22[0];
  }
}

void sub_1BF43DA80(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EDC9D4A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1BF4E7B54();
  __swift_project_value_buffer(v5, qword_1EDCA6910);
  v6 = a1;
  v7 = sub_1BF4E7B34();
  v8 = sub_1BF4E8E54();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_1BF389000, v7, v8, "Flushing updates to powerlog: %{public}@", v9, 0xCu);
    sub_1BF43E4E8(v10);
    MEMORY[0x1BFB5A5D0](v10, -1, -1);
    MEMORY[0x1BFB5A5D0](v9, -1, -1);
  }

  v12 = sub_1BF4E88E4();
  PLLogRegisteredEvent();

  oslog = sub_1BF4E7B34();
  v13 = sub_1BF4E8E84();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134349056;
    if (a3 >> 62)
    {
      v15 = sub_1BF4E9204();
    }

    else
    {
      v15 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v15;

    _os_log_impl(&dword_1BF389000, oslog, v13, "Flushed %{public}ld powerlog update entries.", v14, 0xCu);
    MEMORY[0x1BFB5A5D0](v14, -1, -1);
  }

  else
  {
  }
}

void sub_1BF43DD00(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EDC9D4A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1BF4E7B54();
  __swift_project_value_buffer(v5, qword_1EDCA6910);
  v6 = a1;
  v7 = sub_1BF4E7B34();
  v8 = sub_1BF4E8E54();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_1BF389000, v7, v8, "Flushing views to powerlog: %{public}@", v9, 0xCu);
    sub_1BF43E4E8(v10);
    MEMORY[0x1BFB5A5D0](v10, -1, -1);
    MEMORY[0x1BFB5A5D0](v9, -1, -1);
  }

  v12 = sub_1BF4E88E4();
  PLLogRegisteredEvent();

  oslog = sub_1BF4E7B34();
  v13 = sub_1BF4E8E84();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134349056;
    if (a3 >> 62)
    {
      v15 = sub_1BF4E9204();
    }

    else
    {
      v15 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v15;

    _os_log_impl(&dword_1BF389000, oslog, v13, "Flushed %{public}ld powerlog view entries.", v14, 0xCu);
    MEMORY[0x1BFB5A5D0](v14, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1BF43DF80()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1BF43DFE0()
{
  result = qword_1EBDD9338;
  if (!qword_1EBDD9338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9338);
  }

  return result;
}

unint64_t sub_1BF43E038()
{
  result = qword_1EBDD9340;
  if (!qword_1EBDD9340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9340);
  }

  return result;
}

uint64_t sub_1BF43E0B0(uint64_t a1)
{
  v2 = [*(a1 + 16) extensionIdentity];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v3 = sub_1BF4E76B4();
  v4 = MEMORY[0x1E69E6158];
  v39 = MEMORY[0x1E69E6158];
  *&v38 = v3;
  *(&v38 + 1) = v5;
  swift_endAccess();

  sub_1BF38EB2C(&v38, v37);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v37, 0x4449656C646E7562, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v7);
  v8 = [*(a1 + 16) kind];
  v9 = sub_1BF4E8914();
  v11 = v10;

  v39 = MEMORY[0x1E69E67B0];
  v12 = swift_allocObject();
  *&v38 = v12;
  v13 = sub_1BF39DC9C(6uLL, v9, v11);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v12[2] = v13;
  v12[3] = v15;
  v12[4] = v17;
  v12[5] = v19;
  sub_1BF38EB2C(&v38, v37);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v37, 1684957547, 0xE400000000000000, v20, v21);
  if (*(a1 + 48) == 1)
  {
    v22 = qword_1BF4F0C10[*(a1 + 40)];
  }

  else
  {
    v22 = 3;
  }

  v39 = MEMORY[0x1E69E6530];
  *&v38 = v22;
  sub_1BF38EB2C(&v38, v37);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v37, 0x6E6F697461636F6CLL, 0xE800000000000000, v23, v24);
  v25 = *(a1 + 24);
  v26 = *(a1 + 32);
  v39 = v4;
  *&v38 = v25;
  *(&v38 + 1) = v26;
  sub_1BF38EB2C(&v38, v37);

  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v37, 0x696669746E656469, 0xEA00000000007265, v27, v28);
  v29 = *(a1 + 88);
  v39 = MEMORY[0x1E69E63B0];
  *&v38 = v29;
  sub_1BF38EB2C(&v38, v37);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v37, 0xD000000000000016, 0x80000001BF4FB490, v30, v31);
  v32 = *(a1 + 49);
  v39 = MEMORY[0x1E69E6370];
  LOBYTE(v38) = v32;
  sub_1BF38EB2C(&v38, v37);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v37, 0x7361426574617473, 0xEA00000000006465, v33, v34);
  v35 = sub_1BF4E8744();

  return v35;
}

unint64_t sub_1BF43E42C()
{
  result = qword_1EDC9F980;
  if (!qword_1EDC9F980)
  {
    sub_1BF4E7FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F980);
  }

  return result;
}

unint64_t sub_1BF43E484()
{
  result = qword_1EDC9F190;
  if (!qword_1EDC9F190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F190);
  }

  return result;
}

uint64_t sub_1BF43E4E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9260, &qword_1BF4EC380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF43E550()
{
  result = qword_1EDC9D730;
  if (!qword_1EDC9D730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC9D730);
  }

  return result;
}

uint64_t sub_1BF43E59C(uint64_t a1)
{
  v2 = [*(a1 + 32) extensionIdentity];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v3 = sub_1BF4E76B4();
  v4 = MEMORY[0x1E69E6158];
  v26 = MEMORY[0x1E69E6158];
  *&v25 = v3;
  *(&v25 + 1) = v5;
  swift_endAccess();

  sub_1BF38EB2C(&v25, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v24, 0x4449656C646E7562, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v7);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v26 = v4;
  *&v25 = v8;
  *(&v25 + 1) = v9;
  sub_1BF38EB2C(&v25, v24);

  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v24, 0x696669746E656469, 0xEA00000000007265, v10, v11);
  v12 = qword_1BF4F0BA0[*(a1 + 89)];
  v13 = MEMORY[0x1E69E6530];
  v26 = MEMORY[0x1E69E6530];
  *&v25 = v12;
  sub_1BF38EB2C(&v25, v24);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v24, 0x6E6F73616572, 0xE600000000000000, v14, v15);
  if (*(a1 + 64) == 1)
  {
    v16 = qword_1BF4F0C10[*(a1 + 56)];
  }

  else
  {
    v16 = 3;
  }

  v26 = v13;
  *&v25 = v16;
  sub_1BF38EB2C(&v25, v24);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v24, 0x6E6F697461636F6CLL, 0xE800000000000000, v17, v18);
  v19 = *(a1 + 104);
  v26 = MEMORY[0x1E69E63B0];
  *&v25 = v19;
  sub_1BF38EB2C(&v25, v24);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v24, 0x6F69747563657865, 0xED0000656D69546ELL, v20, v21);
  v22 = sub_1BF4E8744();

  return v22;
}

id sub_1BF43E83C(unint64_t a1)
{
  result = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v4 = result;
  if (a1 >> 62)
  {
    result = sub_1BF4E9204();
    v5 = result;
    if (!result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = a1 & 0xC000000000000001;
  v8 = &off_1E80BD000;
  *&v3 = 136446210;
  v29 = v3;
  v30 = v4;
  v31 = v5;
  do
  {
    if (v7)
    {
      v9 = MEMORY[0x1BFB59570](v6, a1);
    }

    else
    {
      v9 = *(a1 + 8 * v6 + 32);
    }

    v10 = sub_1BF43E59C(v9);
    [v4 v8[99]];

    if (qword_1EDC9D4A8 != -1)
    {
      swift_once();
    }

    v11 = sub_1BF4E7B54();
    __swift_project_value_buffer(v11, qword_1EDCA6910);

    v12 = sub_1BF4E7B34();
    v13 = sub_1BF4E8E54();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v14 = v29;
      v16 = sub_1BF479270();
      v18 = v7;
      v19 = a1;
      v20 = sub_1BF38D65C(v16, v17, &v32);

      *(v14 + 4) = v20;
      a1 = v19;
      v7 = v18;
      _os_log_impl(&dword_1BF389000, v12, v13, "Flushing powerlog update entry: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v21 = v15;
      v4 = v30;
      v5 = v31;
      MEMORY[0x1BFB5A5D0](v21, -1, -1);
      v22 = v14;
      v8 = &off_1E80BD000;
      MEMORY[0x1BFB5A5D0](v22, -1, -1);
    }

    ++v6;
  }

  while (v5 != v6);
LABEL_14:
  if ([v4 count])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9348, &qword_1BF4F0B98);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BF4ECFE0;
    v24 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 32) = 0x7374617473;
    *(v23 + 40) = 0xE500000000000000;
    [v4 copy];
    sub_1BF4E9164();
    swift_unknownObjectRelease();
    *(v23 + 120) = v24;
    *(v23 + 96) = 0x6D617473656D6974;
    *(v23 + 104) = 0xE900000000000070;
    v25 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    [v25 timeIntervalSince1970];
    v27 = v26;

    *(v23 + 152) = MEMORY[0x1E69E63B0];
    *(v23 + 128) = v27;
    sub_1BF43E550();
    v28 = sub_1BF4E8E14();
  }

  else
  {

    return 0;
  }

  return v28;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF43EC04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000010;
  v3 = "skips-local-sysdiagnose-only";
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = "supportedDisplayProperties";
    v12 = 0xD000000000000014;
    if (a1 != 6)
    {
      v12 = 0xD000000000000017;
      v11 = "supportedProximities";
    }

    v13 = "wantsLowLuminanceContent";
    v14 = 0xD00000000000001ALL;
    if (a1 == 4)
    {
      v14 = 0xD000000000000010;
    }

    else
    {
      v13 = "showsWidgetLabel";
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0xD00000000000001CLL;
    v6 = "supportedColorSchemes";
    v7 = 0xD000000000000016;
    if (a1 != 2)
    {
      v7 = 0xD000000000000018;
      v6 = "supportedRenderSchemes";
    }

    v8 = "canAppearInSecureEnvironment";
    if (a1)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v8 = "skips-local-sysdiagnose-only";
    }

    if (a1 <= 1u)
    {
      v9 = v5;
    }

    else
    {
      v9 = v7;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "supportedDisplayProperties";
        v2 = 0xD000000000000014;
      }

      else
      {
        v3 = "supportedProximities";
        v2 = 0xD000000000000017;
      }
    }

    else if (a2 == 4)
    {
      v3 = "wantsLowLuminanceContent";
    }

    else
    {
      v3 = "showsWidgetLabel";
      v2 = 0xD00000000000001ALL;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "supportedColorSchemes";
      v2 = 0xD000000000000016;
    }

    else
    {
      v3 = "supportedRenderSchemes";
      v2 = 0xD000000000000018;
    }
  }

  else if (a2)
  {
    v3 = "canAppearInSecureEnvironment";
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD00000000000001CLL;
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1BF4E9734();
  }

  return v15 & 1;
}

uint64_t sub_1BF43EE10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_1BF4E9734();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1BF43F014(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x80000001BF4F83B0;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x80000001BF4F83D0;
    }

    v5 = 0x80000001BF4F8370;
    if (a1 != 3)
    {
      v5 = 0x80000001BF4F8390;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_1BF4E9734();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x80000001BF4F83B0;
    }

    else
    {
      v10 = 0x80000001BF4F83D0;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x80000001BF4F8370;
    }

    else
    {
      v10 = 0x80000001BF4F8390;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_1BF43F1EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x2065727574616546;
    v12 = 0xED00002977654E28;
    v13 = 0x6D65636E61686E45;
    v14 = 0xEB00000000746E65;
    if (a1 != 8)
    {
      v13 = 1802723668;
      v14 = 0xE400000000000000;
    }

    if (a1 != 7)
    {
      v11 = v13;
      v12 = v14;
    }

    v15 = 0x2073756F69726553;
    v16 = 0xEB00000000677542;
    if (a1 != 5)
    {
      v15 = 0x754220726568744FLL;
      v16 = 0xE900000000000067;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE500000000000000;
    v5 = 0x7265776F50;
    v6 = 0x616D726F66726550;
    v7 = 0xEB0000000065636ELL;
    if (a1 != 3)
    {
      v6 = 0x69626173552F4955;
      v7 = 0xEC0000007974696CLL;
    }

    if (a1 != 2)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0xD000000000000014;
    if (a1)
    {
      v3 = 0x80000001BF4F8290;
    }

    else
    {
      v8 = 0x7974697275636553;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 != 5)
      {
        v19 = 0xE900000000000067;
        if (v9 != 0x754220726568744FLL)
        {
LABEL_56:
          v20 = sub_1BF4E9734();
          goto LABEL_57;
        }

        goto LABEL_54;
      }

      v17 = 0x2073756F69726553;
      v18 = 6780226;
    }

    else
    {
      if (a2 == 7)
      {
        v19 = 0xED00002977654E28;
        if (v9 != 0x2065727574616546)
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

      if (a2 != 8)
      {
        v19 = 0xE400000000000000;
        if (v9 != 1802723668)
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

      v17 = 0x6D65636E61686E45;
      v18 = 7630437;
    }

LABEL_41:
    v19 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v9 != v17)
    {
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v19 = 0xE500000000000000;
      if (v9 != 0x7265776F50)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    if (a2 != 3)
    {
      v19 = 0xEC0000007974696CLL;
      if (v9 != 0x69626173552F4955)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    v17 = 0x616D726F66726550;
    v18 = 6644590;
    goto LABEL_41;
  }

  if (a2)
  {
    v19 = 0x80000001BF4F8290;
    if (v9 != 0xD000000000000014)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v19 = 0xE800000000000000;
    if (v9 != 0x7974697275636553)
    {
      goto LABEL_56;
    }
  }

LABEL_54:
  if (v10 != v19)
  {
    goto LABEL_56;
  }

  v20 = 1;
LABEL_57:

  return v20 & 1;
}

uint64_t sub_1BF43F52C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x5654656C707041;
  v6 = 0xE700000000000000;
  v7 = 0x646F50656D6F48;
  if (a1 != 4)
  {
    v7 = 6512973;
    v6 = 0xE300000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (a1 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x5654656C707041)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x646F50656D6F48)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 6512973)
      {
LABEL_34:
        v13 = sub_1BF4E9734();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1684099177)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6863746157)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x656E6F685069)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1BF43F6E8(unsigned __int8 a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF43F7FC(unsigned __int8 a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t TapToRadarDraft.bundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TapToRadarDraft.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

double TapToRadarDraft.$bundleID.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;

  return result;
}

double TapToRadarDraft.$classification.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

double TapToRadarDraft.$reproducibility.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

uint64_t TapToRadarDraft.title.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t TapToRadarDraft.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

double TapToRadarDraft.$title.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[16];
  v4 = v1[17];
  v3 = v1[18];
  *a1 = v1[15];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;

  return result;
}

uint64_t TapToRadarDraft.problemDescription.getter()
{
  v1 = *(v0 + 168);

  return v1;
}

uint64_t TapToRadarDraft.problemDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
  return result;
}

double TapToRadarDraft.$problemDescription.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[20];
  v4 = v1[21];
  v3 = v1[22];
  *a1 = v1[19];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;

  return result;
}

uint64_t TapToRadarDraft.keywords.setter(uint64_t a1)
{

  *(v1 + 200) = a1;
  return result;
}

double TapToRadarDraft.$keywords.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[24];
  v3 = v1[25];
  *a1 = v1[23];
  a1[1] = v2;
  a1[2] = v3;

  return result;
}

uint64_t TapToRadarDraft.timeOfIssue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft(0) + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80);
  return sub_1BF38C94C(v3 + *(v4 + 36), a1, &qword_1EBDD9B00, &qword_1BF4F1E50);
}

uint64_t type metadata accessor for TapToRadarDraft(uint64_t a1)
{
  result = qword_1EBDD93B8;
  if (!qword_1EBDD93B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF43FD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TapToRadarDraft(0) + 44);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80);
  return sub_1BF38C94C(v3 + *(v4 + 36), a2, &qword_1EBDD9B00, &qword_1BF4F1E50);
}

uint64_t sub_1BF43FDCC(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for TapToRadarDraft(0) + 44);
  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80) + 36);

  return sub_1BF448728(a1, v4);
}

uint64_t TapToRadarDraft.timeOfIssue.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft(0) + 44);
  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80) + 36);

  return sub_1BF3AC398(a1, v4);
}

void (*TapToRadarDraft.timeOfIssue.modify())()
{
  type metadata accessor for TapToRadarDraft(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80);
  return nullsub_1;
}

double TapToRadarDraft.attachments.getter()
{
  type metadata accessor for TapToRadarDraft(0);

  return result;
}

uint64_t sub_1BF43FF74(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for TapToRadarDraft(0) + 48);

  *(v3 + 16) = v2;
  return result;
}

uint64_t TapToRadarDraft.attachments.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft(0) + 48);

  *(v3 + 16) = a1;
  return result;
}

double TapToRadarDraft.$attachments.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft(0) + 48));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;

  return result;
}

double TapToRadarDraft.remoteAttachments.getter()
{
  type metadata accessor for TapToRadarDraft(0);

  return result;
}

uint64_t sub_1BF4400E0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for TapToRadarDraft(0) + 52);

  *(v3 + 16) = v2;
  return result;
}

uint64_t TapToRadarDraft.remoteAttachments.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft(0) + 52);

  *(v3 + 16) = a1;
  return result;
}

double TapToRadarDraft.$remoteAttachments.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft(0) + 52));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;

  return result;
}

double TapToRadarDraft.extensionIdentifiers.getter()
{
  type metadata accessor for TapToRadarDraft(0);

  return result;
}

uint64_t sub_1BF44024C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for TapToRadarDraft(0) + 56);

  *(v3 + 16) = v2;
  return result;
}

uint64_t TapToRadarDraft.extensionIdentifiers.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft(0) + 56);

  *(v3 + 16) = a1;
  return result;
}

double TapToRadarDraft.$extensionIdentifiers.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft(0) + 56));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;

  return result;
}

uint64_t TapToRadarDraft.deleteOnAttach.setter(char a1)
{
  result = type metadata accessor for TapToRadarDraft(0);
  *(v1 + *(result + 60) + 16) = a1;
  return result;
}

double TapToRadarDraft.$deleteOnAttach.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft(0) + 60));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;

  return result;
}

double TapToRadarDraft.deviceIDs.getter()
{
  type metadata accessor for TapToRadarDraft(0);

  return result;
}

uint64_t sub_1BF4404B0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for TapToRadarDraft(0) + 64);

  *(v3 + 16) = v2;
  return result;
}

uint64_t TapToRadarDraft.deviceIDs.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft(0) + 64);

  *(v3 + 16) = a1;
  return result;
}

double TapToRadarDraft.$deviceIDs.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft(0) + 64));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;

  return result;
}

double TapToRadarDraft.deviceClasses.getter()
{
  type metadata accessor for TapToRadarDraft(0);

  return result;
}

uint64_t sub_1BF44061C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for TapToRadarDraft(0) + 68);

  *(v3 + 16) = v2;
  return result;
}

uint64_t TapToRadarDraft.deviceClasses.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft(0) + 68);

  *(v3 + 16) = a1;
  return result;
}

double TapToRadarDraft.$deviceClasses.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft(0) + 68));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;

  return result;
}

double TapToRadarDraft.deviceModels.getter()
{
  type metadata accessor for TapToRadarDraft(0);

  return result;
}

uint64_t sub_1BF440788(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for TapToRadarDraft(0) + 72);

  *(v3 + 16) = v2;
  return result;
}

uint64_t TapToRadarDraft.deviceModels.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft(0) + 72);

  *(v3 + 16) = a1;
  return result;
}

double TapToRadarDraft.$deviceModels.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft(0) + 72));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;

  return result;
}

uint64_t TapToRadarDraft.remoteDeviceSelections.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for TapToRadarDraft(0);
  *a1 = *(v1 + *(result + 76) + 16);
  return result;
}

uint64_t TapToRadarDraft.remoteDeviceSelections.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for TapToRadarDraft(0);
  *(v1 + *(result + 76) + 16) = v2;
  return result;
}

double TapToRadarDraft.$remoteDeviceSelections.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft(0) + 76));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  *a1 = v5;
  a1[1] = v4;
  a1[2] = v6;

  return result;
}

uint64_t TapToRadarDraft.includeDevicePrefixInTitle.setter(char a1)
{
  result = type metadata accessor for TapToRadarDraft(0);
  *(v1 + *(result + 80) + 16) = a1;
  return result;
}

double TapToRadarDraft.$includeDevicePrefixInTitle.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft(0) + 80));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;

  return result;
}

uint64_t TapToRadarDraft.autoDiagnostics.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TapToRadarDraft(0);
  *a1 = *(v1 + *(result + 84) + 16);
  return result;
}

uint64_t TapToRadarDraft.autoDiagnostics.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TapToRadarDraft(0);
  *(v1 + *(result + 84) + 16) = v2;
  return result;
}

double TapToRadarDraft.$autoDiagnostics.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft(0) + 84));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;

  return result;
}

double TapToRadarDraft.collaborationContactHandles.getter()
{
  type metadata accessor for TapToRadarDraft(0);

  return result;
}

uint64_t sub_1BF440BFC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for TapToRadarDraft(0) + 88);

  *(v3 + 16) = v2;
  return result;
}

uint64_t TapToRadarDraft.collaborationContactHandles.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TapToRadarDraft(0) + 88);

  *(v3 + 16) = a1;
  return result;
}

double TapToRadarDraft.$collaborationContactHandles.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft(0) + 88));
  v4 = v3[1];
  v5 = v3[2];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;

  return result;
}

uint64_t TapToRadarDraft.collaborationGroupChatID.getter()
{
  v1 = *(v0 + *(type metadata accessor for TapToRadarDraft(0) + 92) + 16);

  return v1;
}

uint64_t sub_1BF440D70(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2 + *(type metadata accessor for TapToRadarDraft(0) + 92);

  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  return result;
}

uint64_t TapToRadarDraft.collaborationGroupChatID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for TapToRadarDraft(0) + 92);

  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return result;
}

double TapToRadarDraft.$collaborationGroupChatID.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TapToRadarDraft(0) + 92));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;

  return result;
}

uint64_t TapToRadarDraft.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1BF4E6EB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E6EA4();
  sub_1BF4E6E94();
  MEMORY[0x1BFB570E0](7824750, 0xE300000000000000);
  sub_1BF441100();
  sub_1BF4E6E64();
  sub_1BF4E6E74();
  v9 = sub_1BF4E7194();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_1BF38C9B4(v4, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    sub_1BF443994();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 32))(a1, v4, v9);
  }
}

char *sub_1BF441100()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9510, &unk_1BF4F1540);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v324 = &v290 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v323 = &v290 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v320 = &v290 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v317 = &v290 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v314 = &v290 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v341 = &v290 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v309 = &v290 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v308 = &v290 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v290 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v345 = &v290 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v290 - v24;
  v26 = sub_1BF4E6E54();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v291 = &v290 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v290 = &v290 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v340 = &v290 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v303 = &v290 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v339 = &v290 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v322 = &v290 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v321 = &v290 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v319 = &v290 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v318 = &v290 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v316 = &v290 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v315 = &v290 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v338 = &v290 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v302 = &v290 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v337 = &v290 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v336 = &v290 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v301 = &v290 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v335 = &v290 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v334 = &v290 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v300 = &v290 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v333 = &v290 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v313 = &v290 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v312 = &v290 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v332 = &v290 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v299 = &v290 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v331 = &v290 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v330 = &v290 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v298 = &v290 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v329 = &v290 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v328 = &v290 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v297 = &v290 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v327 = &v290 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v311 = &v290 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v310 = &v290 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v326 = &v290 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v296 = &v290 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v325 = &v290 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v295 = &v290 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v294 = &v290 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v293 = &v290 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v292 = &v290 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v307 = &v290 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v306 = &v290 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v305 = &v290 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v304 = &v290 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v117 = &v290 - v116;
  v119 = MEMORY[0x1EEE9AC00](v118);
  v121 = &v290 - v120;
  v350 = MEMORY[0x1E69E7CC0];
  v122 = *(v1 + 24);
  v342 = v27;
  if (!v122)
  {
    v343 = *(v27 + 56);
    v343(v25, 1, 1, v26, v119);
    goto LABEL_5;
  }

  v344 = v20;
  swift_bridgeObjectRetain_n();

  sub_1BF4E6E44();

  v343 = *(v27 + 56);
  (v343)(v25, 0, 1, v26);

  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v20 = v344;
LABEL_5:
    sub_1BF38C9B4(v25, &qword_1EBDD9510, &unk_1BF4F1540);
    v123 = v341;
    goto LABEL_9;
  }

  v124 = *(v27 + 32);
  v124(v121, v25, v26);
  (*(v27 + 16))(v117, v121, v26);
  v125 = sub_1BF43266C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v127 = *(v125 + 2);
  v126 = *(v125 + 3);
  if (v127 >= v126 >> 1)
  {
    v125 = sub_1BF43266C((v126 > 1), v127 + 1, 1, v125);
  }

  v128 = v342 + 8;
  (*(v342 + 8))(v121, v26);
  *(v125 + 2) = v127 + 1;
  v129 = &v125[(*(v128 + 72) + 32) & ~*(v128 + 72)];
  v130 = *(v128 + 64);
  v27 = v342;
  v124(&v129[v130 * v127], v117, v26);
  v350 = v125;
  v123 = v341;
  v20 = v344;
LABEL_9:
  v131 = v345;
  v132 = *(v1 + 48);
  if (v132)
  {
    v134 = *(v1 + 56);
    v133 = *(v1 + 64);
    v346 = *(v1 + 32);
    v347 = v132;
    v348 = v134;
    v349 = v133;
    v135 = TapToRadarDraft.Component.queryItems.getter();
    sub_1BF44BB78(v135);
  }

  v136 = *(v1 + 88);

  sub_1BF445D98(v136, v131);

  v344 = *(v27 + 48);
  v345 = (v27 + 48);
  if ((v344)(v131, 1, v26) == 1)
  {
    sub_1BF38C9B4(v131, &qword_1EBDD9510, &unk_1BF4F1540);
  }

  else
  {
    v137 = *(v27 + 32);
    v138 = v304;
    v137(v304, v131, v26);
    (*(v27 + 16))(v305, v138, v26);
    v139 = v350;
    v140 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v139 = sub_1BF43266C(0, *(v139 + 2) + 1, 1, v139);
    }

    v142 = *(v139 + 2);
    v141 = *(v139 + 3);
    if (v142 >= v141 >> 1)
    {
      v139 = sub_1BF43266C((v141 > 1), v142 + 1, 1, v139);
    }

    (*(v27 + 8))(v304, v26);
    *(v139 + 2) = v142 + 1;
    v137(&v139[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v142], v305, v26);
    v350 = v139;
    v20 = v140;
    v123 = v341;
  }

  v143 = *(v1 + 112);

  sub_1BF445F8C(v143, v20);

  if ((v344)(v20, 1, v26) == 1)
  {
    sub_1BF38C9B4(v20, &qword_1EBDD9510, &unk_1BF4F1540);
    if (*(v1 + 144))
    {
      goto LABEL_20;
    }

LABEL_32:
    v144 = v308;
    (v343)(v308, 1, 1, v26);
    goto LABEL_33;
  }

  v151 = *(v27 + 32);
  v152 = v306;
  v151(v306, v20, v26);
  (*(v27 + 16))(v307, v152, v26);
  v153 = v350;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v153 = sub_1BF43266C(0, *(v153 + 2) + 1, 1, v153);
  }

  v155 = *(v153 + 2);
  v154 = *(v153 + 3);
  if (v155 >= v154 >> 1)
  {
    v153 = sub_1BF43266C((v154 > 1), v155 + 1, 1, v153);
  }

  (*(v27 + 8))(v306, v26);
  *(v153 + 2) = v155 + 1;
  v151(&v153[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v155], v307, v26);
  v350 = v153;
  if (!*(v1 + 144))
  {
    goto LABEL_32;
  }

LABEL_20:
  swift_bridgeObjectRetain_n();

  v144 = v308;
  sub_1BF4E6E44();

  (v343)(v144, 0, 1, v26);

  if ((v344)(v144, 1, v26) != 1)
  {
    v145 = *(v27 + 32);
    v146 = v292;
    v145(v292, v144, v26);
    (*(v27 + 16))(v293, v146, v26);
    v147 = v350;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v147 = sub_1BF43266C(0, *(v147 + 2) + 1, 1, v147);
    }

    v149 = *(v147 + 2);
    v148 = *(v147 + 3);
    if (v149 >= v148 >> 1)
    {
      v147 = sub_1BF43266C((v148 > 1), v149 + 1, 1, v147);
    }

    (*(v27 + 8))(v292, v26);
    *(v147 + 2) = v149 + 1;
    v145(&v147[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v149], v293, v26);
    v350 = v147;
    if (!*(v1 + 176))
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

LABEL_33:
  sub_1BF38C9B4(v144, &qword_1EBDD9510, &unk_1BF4F1540);
  if (!*(v1 + 176))
  {
LABEL_26:
    v150 = v309;
    (v343)(v309, 1, 1, v26);
LABEL_35:
    sub_1BF38C9B4(v150, &qword_1EBDD9510, &unk_1BF4F1540);
    goto LABEL_41;
  }

LABEL_34:
  swift_bridgeObjectRetain_n();

  v150 = v309;
  sub_1BF4E6E44();

  (v343)(v150, 0, 1, v26);

  if ((v344)(v150, 1, v26) == 1)
  {
    goto LABEL_35;
  }

  v156 = *(v27 + 32);
  v157 = v294;
  v156(v294, v150, v26);
  (*(v27 + 16))(v295, v157, v26);
  v158 = v350;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v158 = sub_1BF43266C(0, *(v158 + 2) + 1, 1, v158);
  }

  v160 = *(v158 + 2);
  v159 = *(v158 + 3);
  if (v160 >= v159 >> 1)
  {
    v158 = sub_1BF43266C((v159 > 1), v160 + 1, 1, v158);
  }

  (*(v27 + 8))(v294, v26);
  *(v158 + 2) = v160 + 1;
  v156(&v158[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v160], v295, v26);
  v350 = v158;
LABEL_41:

  sub_1BF446B44(v161);
  if (v162)
  {
    v163 = v296;
    sub_1BF4E6E44();

    v164 = *(v27 + 32);
    v165 = v325;
    v164(v325, v163, v26);
    (*(v27 + 16))(v326, v165, v26);
    v166 = v350;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v166 = sub_1BF43266C(0, *(v166 + 2) + 1, 1, v166);
    }

    v168 = *(v166 + 2);
    v167 = *(v166 + 3);
    if (v168 >= v167 >> 1)
    {
      v166 = sub_1BF43266C((v167 > 1), v168 + 1, 1, v166);
    }

    (*(v27 + 8))(v325, v26);
    *(v166 + 2) = v168 + 1;
    v164(&v166[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v168], v326, v26);
    v350 = v166;
  }

  else
  {
  }

  v169 = type metadata accessor for TapToRadarDraft(0);
  sub_1BF4460E4(v123);
  if ((v344)(v123, 1, v26) == 1)
  {
    sub_1BF38C9B4(v123, &qword_1EBDD9510, &unk_1BF4F1540);
  }

  else
  {
    v170 = *(v27 + 32);
    v171 = v310;
    v170(v310, v123, v26);
    (*(v27 + 16))(v311, v171, v26);
    v172 = v350;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v172 = sub_1BF43266C(0, *(v172 + 2) + 1, 1, v172);
    }

    v174 = *(v172 + 2);
    v173 = *(v172 + 3);
    if (v174 >= v173 >> 1)
    {
      v172 = sub_1BF43266C((v173 > 1), v174 + 1, 1, v172);
    }

    (*(v27 + 8))(v310, v26);
    *(v172 + 2) = v174 + 1;
    v170(&v172[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v174], v311, v26);
    v350 = v172;
  }

  sub_1BF446930(v175, v176);
  if (v177)
  {
    v178 = v297;
    sub_1BF4E6E44();

    v179 = *(v27 + 32);
    v180 = v327;
    v179(v327, v178, v26);
    (*(v27 + 16))(v328, v180, v26);
    v181 = v350;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v181 = sub_1BF43266C(0, *(v181 + 2) + 1, 1, v181);
    }

    v183 = *(v181 + 2);
    v182 = *(v181 + 3);
    if (v183 >= v182 >> 1)
    {
      v181 = sub_1BF43266C((v182 > 1), v183 + 1, 1, v181);
    }

    (*(v27 + 8))(v327, v26);
    *(v181 + 2) = v183 + 1;
    v179(&v181[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v183], v328, v26);
    v350 = v181;
  }

  else
  {
  }

  sub_1BF446930(v184, v185);
  if (v186)
  {
    v187 = v298;
    sub_1BF4E6E44();

    v188 = *(v27 + 32);
    v189 = v329;
    v188(v329, v187, v26);
    (*(v27 + 16))(v330, v189, v26);
    v190 = v350;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v190 = sub_1BF43266C(0, *(v190 + 2) + 1, 1, v190);
    }

    v192 = *(v190 + 2);
    v191 = *(v190 + 3);
    if (v192 >= v191 >> 1)
    {
      v190 = sub_1BF43266C((v191 > 1), v192 + 1, 1, v190);
    }

    (*(v27 + 8))(v329, v26);
    *(v190 + 2) = v192 + 1;
    v188(&v190[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v192], v330, v26);
    v350 = v190;
  }

  else
  {
  }

  sub_1BF446800(v193);
  if (v194)
  {
    v195 = v299;
    sub_1BF4E6E44();

    v196 = *(v27 + 32);
    v197 = v331;
    v196(v331, v195, v26);
    (*(v27 + 16))(v332, v197, v26);
    v198 = v350;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v198 = sub_1BF43266C(0, *(v198 + 2) + 1, 1, v198);
    }

    v200 = *(v198 + 2);
    v199 = *(v198 + 3);
    if (v200 >= v199 >> 1)
    {
      v198 = sub_1BF43266C((v199 > 1), v200 + 1, 1, v198);
    }

    (*(v27 + 8))(v331, v26);
    *(v198 + 2) = v200 + 1;
    v196(&v198[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v200], v332, v26);
    v350 = v198;
  }

  else
  {
  }

  v201 = v314;
  sub_1BF4E6E44();

  (v343)(v201, 0, 1, v26);
  v202 = v201;

  if ((v344)(v201, 1, v26) == 1)
  {
    sub_1BF38C9B4(v201, &qword_1EBDD9510, &unk_1BF4F1540);
  }

  else
  {
    v203 = *(v27 + 32);
    v204 = v312;
    v203(v312, v202, v26);
    (*(v27 + 16))(v313, v204, v26);
    v205 = v350;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v205 = sub_1BF43266C(0, *(v205 + 2) + 1, 1, v205);
    }

    v207 = *(v205 + 2);
    v206 = *(v205 + 3);
    if (v207 >= v206 >> 1)
    {
      v205 = sub_1BF43266C((v206 > 1), v207 + 1, 1, v205);
    }

    (*(v27 + 8))(v312, v26);
    *(v205 + 2) = v207 + 1;
    v203(&v205[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v207], v313, v26);
    v350 = v205;
  }

  sub_1BF446800(v208);
  if (v209)
  {
    v210 = v300;
    sub_1BF4E6E44();

    v211 = v342;
    v212 = *(v342 + 32);
    v213 = v333;
    v212(v333, v210, v26);
    (*(v211 + 16))(v334, v213, v26);
    v214 = v350;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v214 = sub_1BF43266C(0, *(v214 + 2) + 1, 1, v214);
    }

    v216 = *(v214 + 2);
    v215 = *(v214 + 3);
    if (v216 >= v215 >> 1)
    {
      v214 = sub_1BF43266C((v215 > 1), v216 + 1, 1, v214);
    }

    (*(v211 + 8))(v333, v26);
    *(v214 + 2) = v216 + 1;
    v212(&v214[((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v216], v334, v26);
    v350 = v214;
  }

  else
  {
  }

  sub_1BF446640(v217);
  if (v218)
  {
    v219 = v301;
    sub_1BF4E6E44();

    v220 = v342;
    v221 = *(v342 + 32);
    v222 = v335;
    v221(v335, v219, v26);
    (*(v220 + 16))(v336, v222, v26);
    v223 = v350;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v223 = sub_1BF43266C(0, *(v223 + 2) + 1, 1, v223);
    }

    v225 = *(v223 + 2);
    v224 = *(v223 + 3);
    if (v225 >= v224 >> 1)
    {
      v223 = sub_1BF43266C((v224 > 1), v225 + 1, 1, v223);
    }

    (*(v220 + 8))(v335, v26);
    *(v223 + 2) = v225 + 1;
    v221(&v223[((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v225], v336, v26);
    v350 = v223;
  }

  else
  {
  }

  sub_1BF446800(v226);
  if (v227)
  {
    v228 = v302;
    sub_1BF4E6E44();

    v229 = v342;
    v230 = *(v342 + 32);
    v231 = v337;
    v230(v337, v228, v26);
    (*(v229 + 16))(v338, v231, v26);
    v232 = v350;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v232 = sub_1BF43266C(0, *(v232 + 2) + 1, 1, v232);
    }

    v234 = *(v232 + 2);
    v233 = *(v232 + 3);
    if (v234 >= v233 >> 1)
    {
      v232 = sub_1BF43266C((v233 > 1), v234 + 1, 1, v232);
    }

    (*(v229 + 8))(v337, v26);
    *(v232 + 2) = v234 + 1;
    v230(&v232[((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v234], v338, v26);
    v350 = v232;
  }

  else
  {
  }

  v235 = (v1 + v169[19]);
  v237 = *v235;
  v236 = v235[1];
  v238 = v235[2];
  *&v346 = v237;
  *(&v346 + 1) = v236;
  v347 = v238;

  TapToRadarDraft.RemoteDeviceSelections.urlParameterValue.getter();
  if (v239)
  {
    v240 = v317;
    sub_1BF4E6E44();

    v241 = 0;
    v242 = v342;
  }

  else
  {

    v241 = 1;
    v242 = v342;
    v240 = v317;
  }

  (v343)(v240, v241, 1, v26);
  v243 = (v344)(v240, 1, v26);
  v244 = v240;
  if (v243 == 1)
  {
    sub_1BF38C9B4(v240, &qword_1EBDD9510, &unk_1BF4F1540);
  }

  else
  {
    v245 = *(v242 + 32);
    v246 = v315;
    v245(v315, v244, v26);
    (*(v242 + 16))(v316, v246, v26);
    v247 = v350;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v247 = sub_1BF43266C(0, *(v247 + 2) + 1, 1, v247);
    }

    v249 = *(v247 + 2);
    v248 = *(v247 + 3);
    if (v249 >= v248 >> 1)
    {
      v247 = sub_1BF43266C((v248 > 1), v249 + 1, 1, v247);
    }

    (*(v242 + 8))(v315, v26);
    *(v247 + 2) = v249 + 1;
    v245(&v247[((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v249], v316, v26);
    v350 = v247;
  }

  v250 = v320;
  sub_1BF4E6E44();

  (v343)(v250, 0, 1, v26);
  v251 = v250;

  if ((v344)(v250, 1, v26) == 1)
  {
    sub_1BF38C9B4(v250, &qword_1EBDD9510, &unk_1BF4F1540);
  }

  else
  {
    v252 = v342;
    v253 = *(v342 + 32);
    v254 = v318;
    v253(v318, v251, v26);
    (*(v252 + 16))(v319, v254, v26);
    v255 = v350;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v255 = sub_1BF43266C(0, *(v255 + 2) + 1, 1, v255);
    }

    v257 = *(v255 + 2);
    v256 = *(v255 + 3);
    if (v257 >= v256 >> 1)
    {
      v255 = sub_1BF43266C((v256 > 1), v257 + 1, 1, v255);
    }

    (*(v252 + 8))(v318, v26);
    *(v255 + 2) = v257 + 1;
    v253(&v255[((*(v252 + 80) + 32) & ~*(v252 + 80)) + *(v252 + 72) * v257], v319, v26);
    v350 = v255;
  }

  v258 = (v1 + v169[21]);
  v260 = *v258;
  v259 = v258[1];
  LOBYTE(v258) = *(v258 + 16);
  *&v346 = v260;
  *(&v346 + 1) = v259;
  LOBYTE(v347) = v258;

  TapToRadarDraft.AutoDiagnostics.urlParameterValue.getter();
  if (v261)
  {
    v262 = v323;
    sub_1BF4E6E44();

    v263 = 0;
    v264 = v342;
  }

  else
  {

    v263 = 1;
    v264 = v342;
    v262 = v323;
  }

  (v343)(v262, v263, 1, v26);
  v265 = (v344)(v262, 1, v26);
  v266 = v262;
  if (v265 == 1)
  {
    sub_1BF38C9B4(v262, &qword_1EBDD9510, &unk_1BF4F1540);
  }

  else
  {
    v267 = *(v264 + 32);
    v268 = v321;
    v267(v321, v266, v26);
    (*(v264 + 16))(v322, v268, v26);
    v269 = v350;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v269 = sub_1BF43266C(0, *(v269 + 2) + 1, 1, v269);
    }

    v271 = *(v269 + 2);
    v270 = *(v269 + 3);
    if (v271 >= v270 >> 1)
    {
      v269 = sub_1BF43266C((v270 > 1), v271 + 1, 1, v269);
    }

    (*(v264 + 8))(v321, v26);
    *(v269 + 2) = v271 + 1;
    v267(&v269[((*(v264 + 80) + 32) & ~*(v264 + 80)) + *(v264 + 72) * v271], v322, v26);
    v350 = v269;
  }

  sub_1BF446800(v272);
  if (v273)
  {
    v274 = v303;
    sub_1BF4E6E44();

    v275 = v342;
    v276 = *(v342 + 32);
    v277 = v339;
    v276(v339, v274, v26);
    (*(v275 + 16))(v340, v277, v26);
    v278 = v350;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1BF43266C(0, *(v278 + 2) + 1, 1, v278);
    }

    v280 = *(v278 + 2);
    v279 = *(v278 + 3);
    if (v280 >= v279 >> 1)
    {
      v278 = sub_1BF43266C((v279 > 1), v280 + 1, 1, v278);
    }

    (*(v275 + 8))(v339, v26);
    *(v278 + 2) = v280 + 1;
    v276(&v278[((*(v275 + 80) + 32) & ~*(v275 + 80)) + *(v275 + 72) * v280], v340, v26);
    v350 = v278;
  }

  else
  {
  }

  if (!*(v1 + v169[23] + 24))
  {
    v281 = v324;
    (v343)(v324, 1, 1, v26);
    goto LABEL_146;
  }

  swift_bridgeObjectRetain_n();

  v281 = v324;
  sub_1BF4E6E44();

  (v343)(v281, 0, 1, v26);

  if ((v344)(v281, 1, v26) == 1)
  {
LABEL_146:
    sub_1BF38C9B4(v281, &qword_1EBDD9510, &unk_1BF4F1540);
    return v350;
  }

  v282 = v342;
  v283 = *(v342 + 32);
  v284 = v290;
  v283(v290, v281, v26);
  v285 = v291;
  (*(v282 + 16))(v291, v284, v26);
  v286 = v350;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v286 = sub_1BF43266C(0, *(v286 + 2) + 1, 1, v286);
  }

  v288 = *(v286 + 2);
  v287 = *(v286 + 3);
  if (v288 >= v287 >> 1)
  {
    v286 = sub_1BF43266C((v287 > 1), v288 + 1, 1, v286);
  }

  (*(v282 + 8))(v284, v26);
  *(v286 + 2) = v288 + 1;
  v283(&v286[((*(v282 + 80) + 32) & ~*(v282 + 80)) + *(v282 + 72) * v288], v285, v26);
  return v286;
}

unint64_t sub_1BF443994()
{
  result = qword_1EBDD9358;
  if (!qword_1EBDD9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9358);
  }

  return result;
}

uint64_t TapToRadarDraft.open()(double a1)
{
  v2[19] = v1;
  v3 = sub_1BF4E7194();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF443AA8, 0, 0);
}

uint64_t sub_1BF443AA8()
{
  TapToRadarDraft.url.getter(v0[22]);
  v1 = [objc_opt_self() defaultWorkspace];
  v0[23] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_1BF4E7094();
    v0[24] = v3;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1BF443C64;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9360, &qword_1BF4F0C90);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BF443EC0;
    v0[13] = &block_descriptor_6;
    v0[14] = v4;
    [v2 openURL:v3 configuration:0 completionHandler:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1BF443C64()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1BF443E14;
  }

  else
  {
    v2 = sub_1BF443D74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BF443D74()
{
  v2 = v0[23];
  v1 = v0[24];
  (*(v0[21] + 8))(v0[22], v0[20]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BF443E14(uint64_t a1)
{
  v2 = v1[24];
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[20];
  v6 = v1[21];
  swift_willThrow();
  (*(v6 + 8))(v3, v5);

  v7 = v1[1];

  return v7();
}

uint64_t sub_1BF443EC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_1BF4E8764();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1BF443FBC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = 0x4449656C646E7542;
  *(a1 + 8) = 0xE800000000000000;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 88) = 10;
  *(a1 + 64) = 0;
  strcpy((a1 + 72), "Classification");
  *(a1 + 87) = -18;
  *(a1 + 112) = 6;
  *(a1 + 96) = 0x6375646F72706552;
  *(a1 + 104) = 0xEF7974696C696269;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 120) = 0x656C746954;
  *(a1 + 128) = 0xE500000000000000;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 152) = 0x7470697263736544;
  *(a1 + 160) = 0xEB000000006E6F69;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 192) = 0xE800000000000000;
  *(a1 + 200) = v2;
  *(a1 + 184) = 0x7364726F7779654BLL;
  v3 = type metadata accessor for TapToRadarDraft(0);
  v4 = (a1 + v3[11]);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80) + 36);
  v6 = sub_1BF4E7334();
  result = (*(*(v6 - 8) + 56))(&v4[v5], 1, 1, v6);
  *v4 = 0x7349664F656D6954;
  *(v4 + 1) = 0xEB00000000657573;
  v8 = (a1 + v3[12]);
  *v8 = 0x656D686361747441;
  v8[1] = 0xEB0000000073746ELL;
  v8[2] = v2;
  v9 = (a1 + v3[13]);
  v9[1] = 0x80000001BF4FB5C0;
  v9[2] = v2;
  *v9 = 0xD000000000000011;
  v10 = (a1 + v3[14]);
  v10[1] = 0x80000001BF4FB5E0;
  v10[2] = v2;
  *v10 = 0xD000000000000014;
  v11 = (a1 + v3[15]);
  v11[16] = 0;
  strcpy(v11, "DeleteOnAttach");
  v11[15] = -18;
  v12 = (a1 + v3[16]);
  *v12 = 0x4449656369766544;
  v12[1] = 0xE900000000000073;
  v12[2] = v2;
  v13 = a1 + v3[17];
  strcpy(v13, "DeviceClasses");
  *(v13 + 14) = -4864;
  *(v13 + 16) = v2;
  v14 = a1 + v3[18];
  strcpy(v14, "DeviceModels");
  *(v14 + 13) = 0;
  *(v14 + 14) = -5120;
  *(v14 + 16) = v2;
  v15 = (a1 + v3[19]);
  v15[1] = 0x80000001BF4F1480;
  v15[2] = 0;
  *v15 = 0xD000000000000016;
  v16 = a1 + v3[20];
  *(v16 + 16) = 0;
  *v16 = 0xD00000000000001ALL;
  *(v16 + 8) = 0x80000001BF4FB600;
  v17 = a1 + v3[21];
  *(v17 + 16) = 0;
  *v17 = 0x676169446F747541;
  *(v17 + 8) = 0xEF73636974736F6ELL;
  v18 = (a1 + v3[22]);
  v18[1] = 0x80000001BF4FB620;
  v18[2] = v2;
  *v18 = 0xD00000000000001BLL;
  v19 = (a1 + v3[23]);
  v19[2] = 0;
  v19[3] = 0;
  *v19 = 0xD000000000000018;
  v19[1] = 0x80000001BF4FB640;
  return result;
}

uint64_t TapToRadarDraft.Component.componentName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TapToRadarDraft.Component.componentVersion.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t TapToRadarDraft.Component.queryItems.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90C0, &qword_1BF4F0698);
  sub_1BF4E6E54();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BF4F0C60;
  sub_1BF4E96A4();
  sub_1BF4E6E44();

  sub_1BF4E6E44();
  sub_1BF4E6E44();
  return v0;
}

uint64_t static TapToRadarDraft.Component.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1BF4E9734();
}

uint64_t TapToRadarDraft.Component.hash(into:)(uint64_t a1)
{
  MEMORY[0x1BFB59A70](*v1);
  sub_1BF4E89F4();

  return sub_1BF4E89F4();
}

uint64_t TapToRadarDraft.Component.hashValue.getter(double a1)
{
  v2 = *v1;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v2);
  sub_1BF4E89F4();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4446DC(double a1)
{
  v2 = *v1;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v2);
  sub_1BF4E89F4();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF44475C(uint64_t a1)
{
  MEMORY[0x1BFB59A70](*v1);
  sub_1BF4E89F4();

  return sub_1BF4E89F4();
}

uint64_t sub_1BF4447CC(uint64_t a1, double a2)
{
  v3 = *v2;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v3);
  sub_1BF4E89F4();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF444848(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1BF4E9734();
}

unint64_t TapToRadarDraft.Classification.urlParameterValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x2065727574616546;
    v7 = 0x6D65636E61686E45;
    if (v1 != 8)
    {
      v7 = 1802723668;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x2073756F69726553;
    if (v1 != 5)
    {
      v8 = 0x754220726568744FLL;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7974697275636553;
    v3 = 0x7265776F50;
    v4 = 0x616D726F66726550;
    if (v1 != 3)
    {
      v4 = 0x69626173552F4955;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t TapToRadarDraft.Classification.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x2065727574616546;
    v7 = 0x6D65636E61686E45;
    if (v1 != 8)
    {
      v7 = 1802723668;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x2073756F69726553;
    if (v1 != 5)
    {
      v8 = 0x754220726568744FLL;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7974697275636553;
    v3 = 0x7265776F50;
    v4 = 0x616D726F66726550;
    if (v1 != 3)
    {
      v4 = 0x69626173552F4955;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

ChronoKit::TapToRadarDraft::Classification_optional __swiftcall TapToRadarDraft.Classification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF4E9514();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BF444C2C(double a1)
{
  v2 = *v1;
  sub_1BF4E9804();
  sub_1BF4490F0(v4, v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF444C7C(uint64_t a1, double a2)
{
  v3 = *v2;
  sub_1BF4E9804();
  sub_1BF4490F0(v5, v3);
  return sub_1BF4E9844();
}

unint64_t sub_1BF444CCC@<X0>(unint64_t *a1@<X8>)
{
  result = TapToRadarDraft.Classification.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TapToRadarDraft.Reproducibility.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x737961776C41;
  v3 = 0x656C62616E55;
  v4 = 0x74276E6469442049;
  if (v1 != 4)
  {
    v4 = 0x6C70704120746F4ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D6974656D6F53;
  if (v1 != 1)
  {
    v5 = 0x796C65726152;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

ChronoKit::TapToRadarDraft::Reproducibility_optional __swiftcall TapToRadarDraft.Reproducibility.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF4E9514();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BF444E50(uint64_t a1)
{
  sub_1BF4E89F4();
}

void sub_1BF444F60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t TapToRadarDraft.DeviceClass.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656E6F685069;
  v3 = 0x5654656C707041;
  v4 = 0x646F50656D6F48;
  if (v1 != 4)
  {
    v4 = 6512973;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1684099177;
  if (v1 != 1)
  {
    v5 = 0x6863746157;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

ChronoKit::TapToRadarDraft::DeviceClass_optional __swiftcall TapToRadarDraft.DeviceClass.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF4E9514();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BF445180(uint64_t a1)
{
  sub_1BF4E89F4();
}

void sub_1BF44526C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE700000000000000;
  v6 = 0x5654656C707041;
  v7 = 0xE700000000000000;
  v8 = 0x646F50656D6F48;
  if (v2 != 4)
  {
    v8 = 6512973;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1684099177;
  if (v2 != 1)
  {
    v10 = 0x6863746157;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t TapToRadarDraft.RemoteDeviceSelections.urlParameterValue.getter()
{
  v1 = *v0;
  if (*v0)
  {
    if (v1)
    {
      v2 = sub_1BF431F90(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v5 = *(v2 + 2);
      v4 = *(v2 + 3);
      if (v5 >= v4 >> 1)
      {
        v2 = sub_1BF431F90((v4 > 1), v5 + 1, 1, v2);
      }

      *(v2 + 2) = v5 + 1;
      v6 = &v2[16 * v5];
      *(v6 + 4) = 0x79616C50726941;
      *(v6 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_1BF431F90(0, *(v2 + 2) + 1, 1, v2);
          }

          v11 = *(v2 + 2);
          v10 = *(v2 + 3);
          if (v11 >= v10 >> 1)
          {
            v2 = sub_1BF431F90((v10 > 1), v11 + 1, 1, v2);
          }

          *(v2 + 2) = v11 + 1;
          v12 = &v2[16 * v11];
          strcpy(v12 + 32, "MediaSystems");
          v12[45] = 0;
          *(v12 + 23) = -5120;
          if ((v1 & 8) == 0)
          {
LABEL_16:
            if ((v1 & 0x10) == 0)
            {
LABEL_33:
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
              sub_1BF3E4AF0();
              v3 = sub_1BF4E8894();

              return v3;
            }

LABEL_28:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_1BF431F90(0, *(v2 + 2) + 1, 1, v2);
            }

            v17 = *(v2 + 2);
            v16 = *(v2 + 3);
            if (v17 >= v16 >> 1)
            {
              v2 = sub_1BF431F90((v16 > 1), v17 + 1, 1, v2);
            }

            *(v2 + 2) = v17 + 1;
            v18 = &v2[16 * v17];
            *(v18 + 4) = 0x79627261654ELL;
            *(v18 + 5) = 0xE600000000000000;
            goto LABEL_33;
          }
        }

        else if ((v1 & 8) == 0)
        {
          goto LABEL_16;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1BF431F90(0, *(v2 + 2) + 1, 1, v2);
        }

        v14 = *(v2 + 2);
        v13 = *(v2 + 3);
        if (v14 >= v13 >> 1)
        {
          v2 = sub_1BF431F90((v13 > 1), v14 + 1, 1, v2);
        }

        *(v2 + 2) = v14 + 1;
        v15 = &v2[16 * v14];
        *(v15 + 4) = 0x616C506572616853;
        *(v15 + 5) = 0xE900000000000079;
        if ((v1 & 0x10) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1BF431F90(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_1BF431F90((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    v9 = &v2[16 * v8];
    *(v9 + 4) = 0x4874694B656D6F48;
    *(v9 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_1BF4456D4(double a1)
{
  v2 = *v1;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF445748(uint64_t a1, double a2)
{
  v3 = *v2;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v3);
  return sub_1BF4E9844();
}

uint64_t TapToRadarDraft.AutoDiagnostics.urlParameterValue.getter()
{
  v1 = *v0;
  if (v1 <= 2 && !*v0)
  {

    return 0;
  }

  v2 = sub_1BF4E9734();

  if (v2)
  {
    return 0;
  }

  if (v1 > 3)
  {
    if (v1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (v1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (v1 == 1)
  {
    return 48;
  }

  else if (v1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t TapToRadarDraft.AutoDiagnostics.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 48;
    if (v1 != 1)
    {
      v4 = 12589;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 7105633;
    }
  }

  else
  {
    v2 = 0xD000000000000010;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001CLL;
    }

    if (*v0 <= 4u)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v2;
    }
  }
}

ChronoKit::TapToRadarDraft::AutoDiagnostics_optional __swiftcall TapToRadarDraft.AutoDiagnostics.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF4E9514();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BF445A7C(uint64_t a1)
{
  sub_1BF4E89F4();
}

void sub_1BF445B8C(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001BF4F83B0;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x80000001BF4F83D0;
    }

    v5 = 0x80000001BF4F8370;
    if (v2 != 3)
    {
      v5 = 0x80000001BF4F8390;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

unint64_t TapToRadarDraft.TapToRadarError.errorDescription.getter()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t TapToRadarDraft.TapToRadarError.hashValue.getter(double a1)
{
  v2 = *v1;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v2);
  return sub_1BF4E9844();
}

unint64_t sub_1BF445D40()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_1BF445D98@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 9u)
  {
    v6 = 1;
  }

  else
  {
    sub_1BF4E6E44();

    v6 = 0;
  }

  v7 = sub_1BF4E6E54();
  v8 = *(*(v7 - 8) + 56);

  return v8(a4, v6, 1, v7);
}

uint64_t sub_1BF445F8C@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 5u)
  {
    v6 = 1;
  }

  else
  {
    sub_1BF4E6E44();

    v6 = 0;
  }

  v7 = sub_1BF4E6E54();
  v8 = *(*(v7 - 8) + 56);

  return v8(a4, v6, 1, v7);
}

uint64_t sub_1BF4460E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1BF4E7334();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9350, &qword_1BF4F0C80);
  sub_1BF38C94C(v2 + *(v11 + 36), v6, &qword_1EBDD9B00, &qword_1BF4F1E50);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BF38C9B4(v6, &qword_1EBDD9B00, &qword_1BF4F1E50);
    v12 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v14 = sub_1BF4E88E4();
    [v13 setDateFormat_];

    [v13 setDoesRelativeDateFormatting_];
    v15 = sub_1BF4E7254();
    v16 = [v13 stringFromDate_];

    sub_1BF4E8914();
    (*(v8 + 8))(v10, v7);
    sub_1BF4E6E44();

    v12 = 0;
  }

  v17 = sub_1BF4E6E54();
  return (*(*(v17 - 8) + 56))(a1, v12, 1, v17);
}

uint64_t URLParameter.queryItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 + 24) + 8))(*(a1 + 16));
  if (v3)
  {
    sub_1BF4E6E44();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_1BF4E6E54();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t Bool.urlParameterValue.getter(char a1)
{
  if (a1)
  {
    return 49;
  }

  else
  {
    return 48;
  }
}

uint64_t sub_1BF44653C()
{
  if (*v0)
  {
    return 49;
  }

  else
  {
    return 48;
  }
}

uint64_t Date.urlParameterValue.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1BF4E88E4();
  [v0 setDateFormat_];

  [v0 setDoesRelativeDateFormatting_];
  v2 = sub_1BF4E7254();
  v3 = [v0 stringFromDate_];

  v4 = sub_1BF4E8914();
  return v4;
}

uint64_t sub_1BF446640(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = MEMORY[0x1E69E7CC0];
  v3 = (a1 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    v6 = v5 == 4;
    v7 = 0x646F50656D6F48;
    if (v5 != 4)
    {
      v7 = 6512973;
    }

    v8 = 0xE300000000000000;
    if (v6)
    {
      v8 = 0xE700000000000000;
    }

    if (v4 == 3)
    {
      v7 = 0x5654656C707041;
      v8 = 0xE700000000000000;
    }

    v9 = 1684099177;
    if (v4 != 1)
    {
      v9 = 0x6863746157;
    }

    v10 = 0xE400000000000000;
    if (v4 != 1)
    {
      v10 = 0xE500000000000000;
    }

    if (!v4)
    {
      v9 = 0x656E6F685069;
      v10 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1BF431F90(0, *(v2 + 2) + 1, 1, v2);
    }

    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = sub_1BF431F90((v13 > 1), v14 + 1, 1, v2);
    }

    *(v2 + 2) = v14 + 1;
    v15 = &v2[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v12;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3E4AF0();
  v16 = sub_1BF4E8894();

  return v16;
}

uint64_t sub_1BF446800(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1BF431F90(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_1BF431F90((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3E4AF0();
  v9 = sub_1BF4E8894();

  return v9;
}

uint64_t sub_1BF446930(uint64_t a1, double a2)
{
  v25 = sub_1BF4E7194();
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v25);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return 0;
  }

  v9 = *(v3 + 16);
  v8 = v3 + 16;
  v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
  v23 = *(v8 + 56);
  v24 = v9;
  v11 = (v8 - 8);
  v12 = MEMORY[0x1E69E7CC0];
  do
  {
    v13 = v25;
    v14 = v8;
    v24(v6, v10, v25, v4);
    v15 = sub_1BF4E7164();
    v17 = v16;
    (*v11)(v6, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1BF431F90(0, *(v12 + 2) + 1, 1, v12);
    }

    v19 = *(v12 + 2);
    v18 = *(v12 + 3);
    if (v19 >= v18 >> 1)
    {
      v12 = sub_1BF431F90((v18 > 1), v19 + 1, 1, v12);
    }

    *(v12 + 2) = v19 + 1;
    v20 = &v12[16 * v19];
    *(v20 + 4) = v15;
    *(v20 + 5) = v17;
    v10 += v23;
    --v7;
    v8 = v14;
  }

  while (v7);
  v26 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3E4AF0();
  v21 = sub_1BF4E8894();

  return v21;
}

uint64_t sub_1BF446B44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v2 += 8;
    v4 = sub_1BF4E96A4();
    v6 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1BF431F90(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_1BF431F90((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v6;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3E4AF0();
  v10 = sub_1BF4E8894();

  return v10;
}

uint64_t Array<A>.urlParameterValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF4E8CA4();
  swift_getWitnessTable();
  v3 = sub_1BF4E8DE4();
  result = 0;
  if ((v3 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](0);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getWitnessTable();
    sub_1BF4E8AD4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    sub_1BF3E4AF0();
    v6 = sub_1BF4E8894();

    return v6;
  }

  return result;
}

uint64_t Optional<A>.urlParameterValue.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v13, a1, v10);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    (*(v4 + 8))(v6, a1);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v12, v6, v8);
    v15 = (*(a2 + 8))(v8, a2);
    (*(v9 + 8))(v12, v8);
    return v15;
  }
}

uint64_t URLParameter.parameter.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t URLParameter.init(_:defaultValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v9 = type metadata accessor for URLParameter(0, a4, a5, a4);
  v10 = *(*(a4 - 8) + 32);
  v11 = a6 + *(v9 + 36);

  return v10(v11, a3, a4);
}

uint64_t URLParameter<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E96B4();
  *a5 = a1;
  *(a5 + 1) = a2;
  v14 = type metadata accessor for URLParameter(0, a3, a4, v13);
  return (*(v10 + 32))(&a5[*(v14 + 36)], v12, a3);
}

double sub_1BF447298()
{
  *&result = 1495804;
  xmmword_1EBDE1E60 = xmmword_1BF4F0C70;
  qword_1EBDE1E70 = 0xE600000000000000;
  unk_1EBDE1E78 = 0x65746F6D6552;
  qword_1EBDE1E80 = 0xE600000000000000;
  return result;
}

unint64_t sub_1BF447310()
{
  result = qword_1EBDD9368;
  if (!qword_1EBDD9368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9368);
  }

  return result;
}

unint64_t sub_1BF447368()
{
  result = qword_1EBDD9370;
  if (!qword_1EBDD9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9370);
  }

  return result;
}

unint64_t sub_1BF4473C0()
{
  result = qword_1EBDD9378;
  if (!qword_1EBDD9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9378);
  }

  return result;
}

unint64_t sub_1BF447418()
{
  result = qword_1EBDD9380;
  if (!qword_1EBDD9380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9380);
  }

  return result;
}

unint64_t sub_1BF447470()
{
  result = qword_1EBDD9388;
  if (!qword_1EBDD9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9388);
  }

  return result;
}

unint64_t sub_1BF4474C8()
{
  result = qword_1EBDD9390;
  if (!qword_1EBDD9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9390);
  }

  return result;
}

unint64_t sub_1BF44751C()
{
  result = qword_1EBDD9398;
  if (!qword_1EBDD9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9398);
  }

  return result;
}

unint64_t sub_1BF447574()
{
  result = qword_1EBDD93A0;
  if (!qword_1EBDD93A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD93A0);
  }

  return result;
}

unint64_t sub_1BF4475CC()
{
  result = qword_1EBDD93A8;
  if (!qword_1EBDD93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD93A8);
  }

  return result;
}

unint64_t sub_1BF447624()
{
  result = qword_1EBDD93B0;
  if (!qword_1EBDD93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD93B0);
  }

  return result;
}

void sub_1BF4476A4(uint64_t a1)
{
  sub_1BF447ACC(319, &qword_1EBDD93C8, &qword_1EBDD8F68, &unk_1BF4EF420, sub_1BF447A00);
  if (v1 <= 0x3F)
  {
    sub_1BF447A7C();
    if (v2 <= 0x3F)
    {
      sub_1BF447ACC(319, &qword_1EBDD93E0, &qword_1EBDD93E8, &qword_1BF4F13A8, sub_1BF447B3C);
      if (v3 <= 0x3F)
      {
        sub_1BF447ACC(319, &qword_1EBDD93F8, &qword_1EBDD9400, &qword_1BF4F13B0, sub_1BF447BB8);
        if (v4 <= 0x3F)
        {
          sub_1BF447ACC(319, &qword_1EBDD9410, &qword_1EBDD9418, &qword_1BF4F13B8, sub_1BF447C34);
          if (v5 <= 0x3F)
          {
            sub_1BF447ACC(319, &qword_1EBDD9428, &qword_1EBDD9B00, &qword_1BF4F1E50, sub_1BF447CB0);
            if (v6 <= 0x3F)
            {
              sub_1BF447ACC(319, &qword_1EBDD9438, &qword_1EBDD9440, &qword_1BF4F13C0, sub_1BF447D2C);
              if (v7 <= 0x3F)
              {
                sub_1BF447ACC(319, &qword_1EBDD9450, &unk_1EBDD9BB0, &qword_1BF4EC140, sub_1BF447DA8);
                if (v8 <= 0x3F)
                {
                  sub_1BF447EA0(319, &qword_1EBDD9460, MEMORY[0x1E69E6370], &protocol witness table for Bool);
                  if (v9 <= 0x3F)
                  {
                    sub_1BF447ACC(319, &qword_1EBDD9468, &qword_1EBDD9470, &qword_1BF4F13C8, sub_1BF447E24);
                    if (v10 <= 0x3F)
                    {
                      sub_1BF447EA0(319, &qword_1EBDD9480, &type metadata for TapToRadarDraft.RemoteDeviceSelections, &protocol witness table for TapToRadarDraft.RemoteDeviceSelections);
                      if (v11 <= 0x3F)
                      {
                        sub_1BF447EA0(319, qword_1EBDD9488, &type metadata for TapToRadarDraft.AutoDiagnostics, &protocol witness table for TapToRadarDraft.AutoDiagnostics);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1BF447A00()
{
  result = qword_1EBDD93D0;
  if (!qword_1EBDD93D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8F68, &unk_1BF4EF420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD93D0);
  }

  return result;
}

void sub_1BF447A7C()
{
  if (!qword_1EBDD93D8)
  {
    v0 = sub_1BF4E90F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDD93D8);
    }
  }
}

void sub_1BF447ACC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5();
    v11 = type metadata accessor for URLParameter(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_1BF447B3C()
{
  result = qword_1EBDD93F0;
  if (!qword_1EBDD93F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD93E8, &qword_1BF4F13A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD93F0);
  }

  return result;
}

unint64_t sub_1BF447BB8()
{
  result = qword_1EBDD9408;
  if (!qword_1EBDD9408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD9400, &qword_1BF4F13B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9408);
  }

  return result;
}

unint64_t sub_1BF447C34()
{
  result = qword_1EBDD9420;
  if (!qword_1EBDD9420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD9418, &qword_1BF4F13B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9420);
  }

  return result;
}

unint64_t sub_1BF447CB0()
{
  result = qword_1EBDD9430;
  if (!qword_1EBDD9430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9430);
  }

  return result;
}

unint64_t sub_1BF447D2C()
{
  result = qword_1EBDD9448;
  if (!qword_1EBDD9448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD9440, &qword_1BF4F13C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9448);
  }

  return result;
}

unint64_t sub_1BF447DA8()
{
  result = qword_1EBDD9458;
  if (!qword_1EBDD9458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9458);
  }

  return result;
}

unint64_t sub_1BF447E24()
{
  result = qword_1EBDD9478;
  if (!qword_1EBDD9478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD9470, &qword_1BF4F13C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9478);
  }

  return result;
}

void sub_1BF447EA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for URLParameter(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BF447EF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF447F38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BF4480F0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1BF448180(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.RemoteDeviceSelections(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.RemoteDeviceSelections(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1BF4482D4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BF448354(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1BF4484D8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1BF448728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF4487A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  swift_allocObject();
  result = sub_1BF4E7C34();
  qword_1EDC97B90 = result;
  return result;
}

uint64_t (*static StorefrontChangeCoordinator._storefrontDidChangePublisher.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDC97B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1BF4488C0@<X0>(void *a1@<X8>)
{
  if (qword_1EDC97B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EDC97B90;
}

void sub_1BF448940()
{
  if (qword_1EDC97B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF3A4BB0(&unk_1EDC9FD80, MEMORY[0x1E695BF88]);
  v0 = sub_1BF4E7C84();

  qword_1EDC97BA8 = v0;
}

uint64_t sub_1BF448A48(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

double sub_1BF448AC8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;

  return result;
}

uint64_t (*static StorefrontChangeCoordinator.storefrontDidChangePublisher.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDC97BA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1BF448BB8@<X0>(void *a1@<X8>)
{
  if (qword_1EDC97BA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EDC97BA8[0];
}

double sub_1BF448C38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *a5;

  if (v9 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a6 = v8;

  return result;
}

uint64_t StorefrontChangeCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = sub_1BF4E88E4();
  CFNotificationCenterAddObserver(v1, 0, sub_1BF448DE4, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v0;
}

uint64_t StorefrontChangeCoordinator.init()()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = sub_1BF4E88E4();
  CFNotificationCenterAddObserver(v1, 0, sub_1BF448DE4, v2, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v0;
}

double sub_1BF448DE4()
{
  if (qword_1EDC97B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF3A4BB0(&qword_1EDC9FD90, MEMORY[0x1E695BF80]);
  sub_1BF4E7C74();

  return result;
}

double static StorefrontChangeCoordinator._simulateStorefrontChange()()
{
  if (qword_1EDC97B88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF3A4BB0(&qword_1EDC9FD90, MEMORY[0x1E695BF80]);
  sub_1BF4E7C74();

  return result;
}

uint64_t sub_1BF448FDC(uint64_t a1, unsigned __int8 a2)
{
  sub_1BF4E89F4();
}

uint64_t sub_1BF4490F0(uint64_t a1, unsigned __int8 a2)
{
  sub_1BF4E89F4();
}

uint64_t sub_1BF449288(uint64_t a1, unsigned __int8 a2, double a3)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF449374(uint64_t a1, unsigned __int8 a2, double a3)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF449484(uint64_t a1, unsigned __int8 a2, double a3)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF449594(uint64_t a1, unsigned __int8 a2, double a3)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t EnvironmentModifiers.supportedRenderSchemes.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t EnvironmentModifiers.idealizedDateComponents.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for EnvironmentModifiers(0) + 32);

  return sub_1BF44982C(a1, v3);
}

uint64_t sub_1BF44982C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9518, &qword_1BF4F1660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t EnvironmentModifiers.showsWidgetLabel.setter(char a1)
{
  result = type metadata accessor for EnvironmentModifiers(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

double EnvironmentModifiers.supportedDisplayProperties.getter()
{
  type metadata accessor for EnvironmentModifiers(0);

  return result;
}

uint64_t EnvironmentModifiers.supportedDisplayProperties.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EnvironmentModifiers(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t EnvironmentModifiers.supportedProximities.setter(uint64_t a1)
{
  result = type metadata accessor for EnvironmentModifiers(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

void EnvironmentModifiers.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  v2 = MEMORY[0x1E69E7CD0];
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  v3 = type metadata accessor for EnvironmentModifiers(0);
  v4 = v3[8];
  v5 = sub_1BF4E6F14();
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *(a1 + v3[9]) = 0;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BF4E9204())
  {
    sub_1BF44AD60(MEMORY[0x1E69E7CC0]);
    v2 = v6;
  }

  *(a1 + v3[10]) = v2;
  *(a1 + v3[11]) = 0;
}

unint64_t sub_1BF449BD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BF44B52C(*a1, a1[1]);
  *a2 = result;
  return result;
}

const char *sub_1BF449C08@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "supportedDisplayProperties";
  v4 = 0xD000000000000014;
  if (v2 != 6)
  {
    v4 = 0xD000000000000017;
    v3 = "supportedProximities";
  }

  v5 = "wantsLowLuminanceContent";
  v6 = 0xD00000000000001ALL;
  if (v2 == 4)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v5 = "showsWidgetLabel";
  }

  if (*v1 <= 5u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = "supportedColorSchemes";
  v8 = 0xD000000000000016;
  if (v2 != 2)
  {
    v8 = 0xD000000000000018;
  }

  result = "supportedColorSchemes";
  if (v2 != 2)
  {
    v7 = "supportedRenderSchemes";
  }

  v10 = 0xD000000000000015;
  if (*v1)
  {
    v11 = "canAppearInSecureEnvironment";
  }

  else
  {
    v10 = 0xD00000000000001CLL;
    v11 = "skips-local-sysdiagnose-only";
  }

  if (*v1 > 1u)
  {
    v10 = v8;
    v11 = v7;
  }

  if (*v1 <= 3u)
  {
    v12 = v11;
  }

  else
  {
    v10 = v4;
    v12 = v3;
  }

  *a1 = v10;
  a1[1] = v12 | 0x8000000000000000;
  return result;
}

unint64_t sub_1BF449CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF44B52C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF449D24(uint64_t a1)
{
  v2 = sub_1BF3BC35C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF449D60(uint64_t a1)
{
  v2 = sub_1BF3BC35C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EnvironmentModifiers.hash(into:)(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9518, &qword_1BF4F1660);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_1BF4E6F14();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E9824();
  MEMORY[0x1BFB59A70](*(v1 + 8));
  sub_1BF44A31C(a1, *(v1 + 16), MEMORY[0x1E6985750], qword_1EDC9FA00, MEMORY[0x1E6985750], MEMORY[0x1E6985760]);
  sub_1BF4E9824();
  v10 = type metadata accessor for EnvironmentModifiers(0);
  sub_1BF4E9824();
  sub_1BF44A0BC(a1, *(v1 + v10[10]));
  MEMORY[0x1BFB59A70](*(v1 + v10[11]));
  sub_1BF38C94C(v1 + v10[8], v5, &qword_1EBDD9518, &qword_1BF4F1660);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1BF38C9B4(v5, &qword_1EBDD9518, &qword_1BF4F1660);
  }

  (*(v7 + 32))(v9, v5, v6);
  v12 = sub_1BF4E6F04();
  MEMORY[0x1BFB59A70](v12);
  return (*(v7 + 8))(v9, v6);
}

uint64_t EnvironmentModifiers.hashValue.getter(double a1)
{
  sub_1BF4E9804();
  EnvironmentModifiers.hash(into:)(v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF44A038(double a1)
{
  sub_1BF4E9804();
  EnvironmentModifiers.hash(into:)(v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF44A07C(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  EnvironmentModifiers.hash(into:)(v3);
  return sub_1BF4E9844();
}

void sub_1BF44A0BC(__int128 *a1, uint64_t a2)
{
  sub_1BF4E9844();
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_1BF4E91F4();
    sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
    sub_1BF3A443C();
    sub_1BF4E8D64();
    a2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a2 + 32);
    v3 = a2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a2 + 56);

    v5 = 0;
  }

  v10 = 0;
  v11 = (v4 + 64) >> 6;
  while (a2 < 0)
  {
    if (!sub_1BF4E9234())
    {
LABEL_20:
      sub_1BF39A9CC(a2);
      MEMORY[0x1BFB59A70](v10);
      return;
    }

    sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
    swift_dynamicCast();
    v14 = v17;
LABEL_10:
    v15 = sub_1BF4E9094();

    v10 ^= v15;
  }

  if (v6)
  {
    v12 = v5;
LABEL_9:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v17 = *(*(a2 + 48) + ((v12 << 9) | (8 * v13)));
    v14 = v17;
    goto LABEL_10;
  }

  v16 = v5;
  while (1)
  {
    v12 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      goto LABEL_20;
    }

    v6 = *(v3 + 8 * v12);
    ++v16;
    if (v6)
    {
      v5 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1BF44A31C(__int128 *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v27 = a5;
  v28 = a6;
  v26 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - v10;
  v12 = a1[3];
  v31 = a1[2];
  v32 = v12;
  v33 = *(a1 + 8);
  v14 = *a1;
  v13 = a1[1];
  v25[1] = a1;
  v29 = v14;
  v30 = v13;
  v15 = sub_1BF4E9844();
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 56);
  v19 = (v16 + 63) >> 6;
  v25[3] = v9 + 16;
  v25[4] = v15;
  v25[2] = v9 + 8;

  v20 = 0;
  for (i = 0; v18; v20 ^= v24)
  {
    v22 = i;
LABEL_9:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    (*(v9 + 16))(v11, *(a2 + 48) + *(v9 + 72) * (v23 | (v22 << 6)), v8);
    sub_1BF3A43F4(v26, v27, v28);
    v24 = sub_1BF4E8874();
    (*(v9 + 8))(v11, v8);
  }

  while (1)
  {
    v22 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      MEMORY[0x1BFB59A70](v20);
      return;
    }

    v18 = *(a2 + 56 + 8 * v22);
    ++i;
    if (v18)
    {
      i = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
}

BOOL _s9ChronoKit20EnvironmentModifiersV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1BF4E6F14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9518, &qword_1BF4F1660);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9580, &qword_1BF4F1928);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v15 = v12;
  sub_1BF46D340(*(a1 + 2), *(a2 + 2));
  if ((v16 & 1) == 0 || a1[24] != a2[24])
  {
    return 0;
  }

  v26 = type metadata accessor for EnvironmentModifiers(0);
  v17 = v26[8];
  v18 = *(v15 + 48);
  sub_1BF38C94C(&a1[v17], v14, &qword_1EBDD9518, &qword_1BF4F1660);
  v27 = v18;
  sub_1BF38C94C(&a2[v17], &v14[v18], &qword_1EBDD9518, &qword_1BF4F1660);
  v19 = *(v5 + 48);
  if (v19(v14, 1, v4) != 1)
  {
    sub_1BF38C94C(v14, v10, &qword_1EBDD9518, &qword_1BF4F1660);
    v20 = v27;
    if (v19(&v14[v27], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v20], v4);
      sub_1BF3A43F4(&qword_1EBDD9588, MEMORY[0x1E6968278], MEMORY[0x1E6968290]);
      v21 = sub_1BF4E88C4();
      v22 = *(v5 + 8);
      v22(v7, v4);
      v22(v10, v4);
      sub_1BF38C9B4(v14, &qword_1EBDD9518, &qword_1BF4F1660);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_12;
    }

    (*(v5 + 8))(v10, v4);
LABEL_10:
    sub_1BF38C9B4(v14, &qword_1EBDD9580, &qword_1BF4F1928);
    return 0;
  }

  if (v19(&v14[v27], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_1BF38C9B4(v14, &qword_1EBDD9518, &qword_1BF4F1660);
LABEL_12:
  v23 = v26;
  if (a1[v26[9]] == a2[v26[9]])
  {
    sub_1BF46D6F8(*&a1[v26[10]], *&a2[v26[10]]);
    if (v24)
    {
      return *&a1[v23[11]] == *&a2[v23[11]];
    }
  }

  return 0;
}

uint64_t sub_1BF44A8F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9598, &unk_1BF4F1940);
    v9 = sub_1BF4E92B4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1BF44BA20(&qword_1EDC9D588, MEMORY[0x1E69940C0]);
      v16 = sub_1BF4E8874();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1BF44BA20(&qword_1EDC9D580, MEMORY[0x1E69940C8]);
          v23 = sub_1BF4E88C4();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1BF44ABF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9568, &qword_1BF4F1910);
    v3 = sub_1BF4E92B4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1BF4E9804();

      sub_1BF4E89F4();
      result = sub_1BF4E9844();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1BF4E9734();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1BF44AD60(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1BF4E9204())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9590, &unk_1BF4F1930);
      v3 = sub_1BF4E92B4();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1BF4E9204();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1BFB59570](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1BF4E9094();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1BF4E90A4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_1BF4E9094();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1BF4E90A4();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1BF44B050(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentModifiers(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF44B0AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentModifiers(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BF44B158(uint64_t a1)
{
  type metadata accessor for CHSColorSchemes(319);
  if (v1 <= 0x3F)
  {
    sub_1BF44B234(319);
    if (v2 <= 0x3F)
    {
      sub_1BF44B2C8(319);
      if (v3 <= 0x3F)
      {
        sub_1BF44B320(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CHSWidgetProximities(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BF44B234(uint64_t a1)
{
  if (!qword_1EDC9F9F8)
  {
    sub_1BF4E8174();
    sub_1BF3A43F4(qword_1EDC9FA00, MEMORY[0x1E6985750], MEMORY[0x1E6985760]);
    v1 = sub_1BF4E8D84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC9F9F8);
    }
  }
}

void sub_1BF44B2C8(uint64_t a1)
{
  if (!qword_1EDC9FDA0)
  {
    sub_1BF4E6F14();
    v1 = sub_1BF4E90F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC9FDA0);
    }
  }
}

void sub_1BF44B320(uint64_t a1)
{
  if (!qword_1EDC9F9F0)
  {
    sub_1BF3901C0(255, &qword_1EDC9F9C0, 0x1E69943A0);
    sub_1BF3A443C();
    v1 = sub_1BF4E8D84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC9F9F0);
    }
  }
}

uint64_t getEnumTagSinglePayload for EnvironmentModifiers.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EnvironmentModifiers.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BF44B4D8()
{
  result = qword_1EBDD9560;
  if (!qword_1EBDD9560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9560);
  }

  return result;
}

unint64_t sub_1BF44B52C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BF4E9514();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BF44B578(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9570, &qword_1BF4F1918);
    v3 = sub_1BF4E92B4();
    v4 = 0;
    v5 = v3 + 56;
    v30 = v1;
    v31 = a1 + 32;
    while (1)
    {
      v8 = (v31 + 16 * v4);
      v9 = *v8;
      v10 = v8[1];
      sub_1BF4E9804();
      if (v10 > 2)
      {
        switch(v10)
        {
          case 3:
            v11 = 3;
            break;
          case 4:
            v11 = 4;
            break;
          case 5:
            v11 = 6;
            break;
          default:
LABEL_17:
            MEMORY[0x1BFB59A70](5);

            sub_1BF4E89F4();
            goto LABEL_21;
        }
      }

      else if (v10)
      {
        if (v10 == 1)
        {
          v11 = 1;
        }

        else
        {
          if (v10 != 2)
          {
            goto LABEL_17;
          }

          v11 = 2;
        }
      }

      else
      {
        v11 = 0;
      }

      MEMORY[0x1BFB59A70](v11);
LABEL_21:
      result = sub_1BF4E9844();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      if ((v17 & v16) == 0)
      {
LABEL_52:
        *(v5 + 8 * v15) = v16 | v17;
        v26 = (*(v3 + 48) + 16 * v14);
        *v26 = v9;
        v26[1] = v10;
        v27 = *(v3 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (!v28)
        {
          *(v3 + 16) = v29;
          goto LABEL_5;
        }

        __break(1u);
        return result;
      }

      while (1)
      {
        v18 = (*(v3 + 48) + 16 * v14);
        v20 = *v18;
        v19 = v18[1];
        if (v19 > 2)
        {
          switch(v19)
          {
            case 3:
              if (v10 == 3)
              {
                sub_1BF44B9A8(v20, 3uLL);
                v6 = v9;
                v7 = 3;
                goto LABEL_4;
              }

              sub_1BF44B994(v9, v10);
              v21 = 3;
              goto LABEL_43;
            case 4:
              if (v10 == 4)
              {
                sub_1BF44B9A8(v20, 4uLL);
                v6 = v9;
                v7 = 4;
                goto LABEL_4;
              }

              sub_1BF44B994(v9, v10);
              v21 = 4;
              goto LABEL_43;
            case 5:
              if (v10 == 5)
              {
                sub_1BF44B9A8(v20, 5uLL);
                v6 = v9;
                v7 = 5;
                goto LABEL_4;
              }

              sub_1BF44B994(v9, v10);
              v21 = 5;
              goto LABEL_43;
          }
        }

        else
        {
          switch(v19)
          {
            case 0:
              if (!v10)
              {
                sub_1BF44B9A8(v20, 0);
                v6 = v9;
                v7 = 0;
                goto LABEL_4;
              }

              sub_1BF44B994(v9, v10);
              v21 = 0;
              goto LABEL_43;
            case 1:
              if (v10 == 1)
              {
                sub_1BF44B9A8(v20, 1uLL);
                v6 = v9;
                v7 = 1;
                goto LABEL_4;
              }

              sub_1BF44B994(v9, v10);
              v21 = 1;
              goto LABEL_43;
            case 2:
              if (v10 == 2)
              {
                sub_1BF44B9A8(v20, 2uLL);
                v6 = v9;
                v7 = 2;
                goto LABEL_4;
              }

              sub_1BF44B994(v9, v10);
              v21 = 2;
              goto LABEL_43;
          }
        }

        if (v10 < 6)
        {
          v22 = v19;
          sub_1BF44B994(v9, v10);
          sub_1BF44B994(v20, v22);
          v21 = v22;
LABEL_43:
          sub_1BF44B9A8(v20, v21);
          result = sub_1BF44B9A8(v9, v10);
          goto LABEL_44;
        }

        if (v20 == v9 && v19 == v10)
        {
          break;
        }

        v24 = v19;
        v25 = sub_1BF4E9734();
        sub_1BF44B994(v9, v10);
        sub_1BF44B994(v20, v24);
        sub_1BF44B9A8(v20, v24);
        result = sub_1BF44B9A8(v9, v10);
        if (v25)
        {
          goto LABEL_60;
        }

LABEL_44:
        v14 = (v14 + 1) & v13;
        v15 = v14 >> 6;
        v16 = *(v5 + 8 * (v14 >> 6));
        v17 = 1 << v14;
        if ((v16 & (1 << v14)) == 0)
        {
          goto LABEL_52;
        }
      }

      sub_1BF44B9A8(v9, v10);
LABEL_60:
      v6 = v9;
      v7 = v10;
LABEL_4:
      sub_1BF44B9A8(v6, v7);
LABEL_5:
      if (++v4 == v30)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

double sub_1BF44B994(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_1BF44B9A8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_1BF44B9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentModifiers(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF44BA20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1BF44BA70(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1BF38E628(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BF44BBA4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1BF4E9204();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1BF4E9204();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1BF472260();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1BF44CF04(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1BF44BCC0(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1BF44BE04(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_1BF44BE64()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1BF44BEB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1BF44BF54(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_1BF44BFB4()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1BF44C000(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void *ActivityCacheURLProvider.__allocating_init(subdirectory:fileExtension:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[3] = 0;
  v8[2] = 0;
  swift_beginAccess();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  return v8;
}

void *ActivityCacheURLProvider.init(subdirectory:fileExtension:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = 0;
  v4[2] = 0;
  swift_beginAccess();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t sub_1BF44C1A0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90A8, &unk_1BF4F1950);
  v2 = *(sub_1BF4E7194() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BF4EBEF0;
  sub_1BF44C264(a1, v4 + v3);
  return v4;
}

uint64_t sub_1BF44C264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95A0, &unk_1BF4F7670);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for ActivityVariantKey(0);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95A8, &unk_1BF4F1960);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for ActivityKey(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BF4E7194();
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  swift_beginAccess();
  if (*(v2 + 24))
  {

    sub_1BF4E70A4();
  }

  v29 = v2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FF8, &qword_1BF4EFD98);
  sub_1BF38C94C(a1 + *(v18 + 68), v12, &qword_1EBDD95A8, &unk_1BF4F1960);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1BF38C9B4(v12, &qword_1EBDD95A8, &unk_1BF4F1960);
  }

  sub_1BF44C740(v12, v16, type metadata accessor for ActivityKey);
  sub_1BF38C94C(a1 + *(v18 + 72), v7, &qword_1EBDD95A0, &unk_1BF4F7670);
  if ((*(v31 + 48))(v7, 1, v32) == 1)
  {
    sub_1BF44CB98(v16, type metadata accessor for ActivityKey);
    return sub_1BF38C9B4(v7, &qword_1EBDD95A0, &unk_1BF4F7670);
  }

  else
  {
    v20 = v30;
    sub_1BF44C740(v7, v30, type metadata accessor for ActivityVariantKey);
    v21 = &v16[*(v13 + 24)];
    v22 = *(v21 + 1);
    v33 = *v21;
    v34 = v22;

    MEMORY[0x1BFB58C90](45, 0xE100000000000000);
    v35 = sub_1BF4E8664();
    v36 = v23;

    MEMORY[0x1BFB58C90](46, 0xE100000000000000);

    v25 = v35;
    v24 = v36;
    v26 = sub_1BF4E8354();
    v28 = v27;
    v35 = v25;
    v36 = v24;

    MEMORY[0x1BFB58C90](v26, v28);

    MEMORY[0x1BFB58C90](v35, v36);

    sub_1BF4E70A4();

    swift_beginAccess();

    sub_1BF4E70C4();

    sub_1BF44CB98(v20, type metadata accessor for ActivityVariantKey);
    return sub_1BF44CB98(v16, type metadata accessor for ActivityKey);
  }
}

uint64_t sub_1BF44C740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF44C7A8(uint64_t a1, double a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = sub_1BF4E7194();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for WidgetCacheKey(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0];
  v16 = *(a1 + 16);
  swift_beginAccess();
  if (v16)
  {
    v17 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v31 = *(v12 + 72);
    v32 = v2;
    v29 = (v5 + 32);
    v30 = (v5 + 16);
    v18 = (v5 + 8);
    do
    {
      sub_1BF44CB34(v17, v14);
      v22 = [objc_opt_self() defaultManager];
      (*v30)(v7, v14, v4);
      if (*(v32 + 24))
      {

        sub_1BF4E70A4();
      }

      (*v29)(v10, v7, v4);
      v23 = sub_1BF4E7094();
      (*v18)(v10, v4);
      v33 = 0;
      v24 = [v22 contentsOfDirectoryAtURL:v23 includingPropertiesForKeys:0 options:0 error:&v33];

      v25 = v33;
      if (v24)
      {
        v21 = sub_1BF4E8BA4();
        v26 = v25;
      }

      else
      {
        v19 = v33;
        v20 = sub_1BF4E6FF4();

        swift_willThrow();
        v21 = MEMORY[0x1E69E7CC0];
      }

      sub_1BF44CB98(v14, type metadata accessor for WidgetCacheKey);
      sub_1BF44BCC0(v21, sub_1BF4323F4, MEMORY[0x1E6968FB0]);
      v17 += v31;
      --v16;
    }

    while (v16);
    return v34;
  }

  return v15;
}

uint64_t sub_1BF44CB34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetCacheKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF44CB98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ActivityCacheURLProvider.deinit()
{

  return v0;
}

uint64_t ActivityCacheURLProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BF44CC84(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90A8, &unk_1BF4F1950);
  v2 = *(sub_1BF4E7194() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BF4EBEF0;
  sub_1BF44C264(a1, v4 + v3);
  return v4;
}

uint64_t sub_1BF44CF04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BF4E9204();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1BF4E9204();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BF44D084();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95B0, &unk_1BF4F19D0);
            v9 = sub_1BF3E2130(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1BF42DD34();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF44D084()
{
  result = qword_1EBDD95B8;
  if (!qword_1EBDD95B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD95B0, &unk_1BF4F19D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD95B8);
  }

  return result;
}

uint64_t sub_1BF44D0E8(uint64_t a1, uint64_t *a2)
{
  sub_1BF38E49C(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 120));
  sub_1BF38E60C(v5, v3 + 120);
  return swift_endAccess();
}

void *DefaultEnvironmentProvidingFactory.__allocating_init(extensionManager:keybagStateProvider:)(void *a1, void *a2)
{
  type metadata accessor for IOSSystemEnvironmentProvider(0);
  swift_allocObject();
  v4 = sub_1BF467770();
  sub_1BF38E49C(a1, v9);
  sub_1BF38E49C(a2, v8);
  type metadata accessor for DefaultEnvironmentProvidingFactory();
  v5 = swift_allocObject();
  v6 = sub_1BF44D800(v9, v8, v4, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t sub_1BF44D224(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = a4(a1, a2, v14, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v16;
}

double sub_1BF44D334(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + 112);
    v7 = *(v6 + 16);

    os_unfair_lock_lock(v7);
    sub_1BF44D3E4(v2, v5);
    os_unfair_lock_unlock(*(v6 + 16));
  }

  return result;
}

uint64_t sub_1BF44D3E4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 32);
    do
    {
      v5 = v4[3];
      v6 = v4[4];
      __swift_project_boxed_opaque_existential_1(v4, v5);
      v7 = (*(v6 + 40))(v5, v6);
      swift_beginAccess();
      v8 = sub_1BF3916CC(v7);
      if (v9)
      {
        v10 = v8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = *(a2 + 96);
        v15 = v12;
        *(a2 + 96) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1BF4A3F6C();
          v12 = v15;
        }

        sub_1BF38E60C(*(v12 + 56) + 40 * v10, v13);
        sub_1BF47C840(v10, v12);

        *(a2 + 96) = v12;
      }

      else
      {

        v14 = 0;
        memset(v13, 0, sizeof(v13));
      }

      sub_1BF38C9B4(v13, &qword_1EBDD9320, &qword_1BF4F09B0);
      result = swift_endAccess();
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1BF44D550(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[14];
  os_unfair_lock_lock(*(v5 + 16));
  sub_1BF3C09B4(v2, a1, a2);
  v6 = *(v5 + 16);

  os_unfair_lock_unlock(v6);
}

void *DefaultEnvironmentProvidingFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  return v0;
}

uint64_t DefaultEnvironmentProvidingFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);

  return swift_deallocClassInstance();
}

void *sub_1BF44D69C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - v15;
  (*(v10 + 32))(&v22 - v15, v17, v18, v14);
  type metadata accessor for DefaultEnvironmentProvidingFactory();
  v19 = swift_allocObject();
  (*(v10 + 16))(v12, v16, a5);
  v20 = sub_1BF44D9D0(a1, a2, v12, v19, a5, a6);
  (*(v10 + 8))(v16, a5);
  return v20;
}

void *sub_1BF44D800(void *a1, void *a2, uint64_t a3, void *a4)
{
  v13[3] = type metadata accessor for IOSSystemEnvironmentProvider(0);
  v13[4] = &protocol witness table for EnvironmentProvider;
  v13[0] = a3;
  a4[12] = MEMORY[0x1E69E7CC8];
  a4[13] = MEMORY[0x1E69E7CD0];
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v8 + 16) = v9;
  a4[14] = v8;
  sub_1BF38E49C(a1, (a4 + 2));
  sub_1BF38E49C(a2, (a4 + 7));
  sub_1BF38E49C(v13, (a4 + 15));
  v10 = a4[5];
  v11 = a4[6];
  __swift_project_boxed_opaque_existential_1(a4 + 2, v10);
  (*(v11 + 72))(v10, v11);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C0, &unk_1BF4F1A68);
  sub_1BF44DC44();
  sub_1BF4E7D14();

  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return a4;
}

void *sub_1BF44D9D0(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v17[3] = a5;
  v17[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a3, a5);
  a4[12] = MEMORY[0x1E69E7CC8];
  a4[13] = MEMORY[0x1E69E7CD0];
  type metadata accessor for UnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = v13;
  a4[14] = v12;
  sub_1BF38E49C(a1, (a4 + 2));
  sub_1BF38E49C(a2, (a4 + 7));
  sub_1BF38E49C(v17, (a4 + 15));
  v14 = a4[5];
  v15 = a4[6];
  __swift_project_boxed_opaque_existential_1(a4 + 2, v14);
  (*(v15 + 72))(v14, v15);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C0, &unk_1BF4F1A68);
  sub_1BF44DC44();
  sub_1BF4E7D14();

  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return a4;
}

unint64_t sub_1BF44DC44()
{
  result = qword_1EDC9D3F0;
  if (!qword_1EDC9D3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD95C0, &unk_1BF4F1A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9D3F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BackoffPolicy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for BackoffPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

char *StatefulStore.init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:reloadQueue:calloutQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = sub_1BF45C7E0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);

  (*(*(a11 - 8) + 8))(a2, a11);
  (*(*(a10 - 8) + 8))(a1, a10);
  return v16;
}

uint64_t sub_1BF44DE1C()
{
  v1 = *(v0 + qword_1EDC9AF58);
  os_unfair_lock_lock(*(v1 + 16));
  sub_1BF457CD8(v0, &v3);
  os_unfair_lock_unlock(*(v1 + 16));
  return v3;
}

uint64_t StatefulStore.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  v1 = qword_1EDCA6868;
  v2 = sub_1BF4E8424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = qword_1EDC9AF50;
  v4 = sub_1BF4E7B54();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDC9AFC8));

  return v0;
}

uint64_t sub_1BF44E0C4()
{
  if (v0[2])
  {
    v1 = v0[2];
  }

  else
  {
    v1 = sub_1BF457170(v0);
    v0[2] = v1;
  }

  return v1;
}

uint64_t sub_1BF44E124()
{
  if (v0[4])
  {
    v1 = v0[4];
  }

  else
  {
    v2 = v0;
    type metadata accessor for StatefulStoreReloadEvent(255, *(*v0 + 80), *(*v0 + 104), *(*v0 + 112));
    sub_1BF4E7C44();
    swift_getWitnessTable();
    v1 = sub_1BF4E7C84();
    v2[4] = v1;
  }

  return v1;
}

double sub_1BF44E210(uint64_t a1)
{
  *(v1 + 32) = a1;

  return result;
}

uint64_t sub_1BF44E220(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (v5[6])
  {
    v6 = v5[6];
  }

  else
  {
    v7 = v5;
    type metadata accessor for StatefulStoreReloadVariantsEvent(255, *(*v5 + 80), *(*v5 + 88), a5);
    sub_1BF4E7C44();
    swift_getWitnessTable();
    v6 = sub_1BF4E7C84();
    v7[6] = v6;
  }

  return v6;
}

double sub_1BF44E308(uint64_t a1)
{
  *(v1 + 48) = a1;

  return result;
}

uint64_t sub_1BF44E318()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v2 = v0;
    sub_1BF4E7C44();
    swift_getWitnessTable();
    v1 = sub_1BF4E7C84();
    *(v2 + 64) = v1;
  }

  return v1;
}

double sub_1BF44E3F0(uint64_t a1)
{
  *(v1 + 64) = a1;

  return result;
}

uint64_t sub_1BF44E400()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v2 = v0;
    sub_1BF4E7C44();
    swift_getWitnessTable();
    v1 = sub_1BF4E7C84();
    *(v2 + 80) = v1;
  }

  return v1;
}

double sub_1BF44E4D8(uint64_t a1)
{
  *(v1 + 80) = a1;

  return result;
}

uint64_t sub_1BF44E4E8()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v2 = v0;
    sub_1BF4E7C44();
    swift_getWitnessTable();
    v1 = sub_1BF4E7C84();
    *(v2 + 96) = v1;
  }

  return v1;
}