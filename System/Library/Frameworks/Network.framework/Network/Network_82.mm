void sub_181F8BE74(unsigned __int8 a1, char *a2)
{
  v4 = sub_181F8BDB8(a1);
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    if (!a2)
    {
      swift_beginAccess();
      a2 = *(v2 + 64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 64) = a2;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

LABEL_16:
        if (v6 < *(a2 + 2))
        {
          *&a2[56 * v6 + 40] = 0;
          *(v2 + 64) = a2;
LABEL_18:
          swift_endAccess();
          if ((*(v2 + 58) & 1) == 0)
          {
            sub_181F8A570();
          }

          return;
        }

LABEL_33:
        __break(1u);
        return;
      }

LABEL_31:
      a2 = sub_18208355C(a2);
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      goto LABEL_16;
    }

    swift_beginAccess();
    v7 = *(v2 + 64);
    v8 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 64) = v7;
    if (v8)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v8 = sub_18208355C(v7);
      v7 = v8;
      *(v2 + 64) = v8;
      if ((v6 & 0x8000000000000000) == 0)
      {
LABEL_5:
        if (v6 < *(v7 + 16))
        {
          v8 = mach_continuous_time();
          if (qword_1EA837030 == -1)
          {
            goto LABEL_7;
          }

          goto LABEL_24;
        }

LABEL_23:
        __break(1u);
LABEL_24:
        v15 = v8;
        swift_once();
        v8 = v15;
LABEL_7:
        v9 = qword_1EA8387E8;
        if (is_mul_ok(v8, qword_1EA8387E8))
        {
          if (qword_1EA837038 == -1)
          {
            goto LABEL_9;
          }
        }

        else
        {
          __break(1u);
        }

        v16 = v8;
        swift_once();
        v8 = v16;
LABEL_9:
        v10 = qword_1EA8387F0;
        if (qword_1EA8387F0)
        {
          if (qword_1EA837010 == -1)
          {
LABEL_11:
            if (qword_1EA8431F0)
            {
              v11 = v8 * v9 / v10 / qword_1EA8431F0;
              v12 = __CFADD__(v11, a2);
              v13 = &a2[v11];
              if (!v12)
              {
                *(v7 + 56 * v6 + 40) = v13;
                *(v2 + 64) = v7;
                goto LABEL_18;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_31;
          }
        }

        else
        {
          __break(1u);
        }

        v17 = v8;
        swift_once();
        v8 = v17;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_23;
  }
}

uint64_t sub_181F8C090()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_181F8C11C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_181F8C164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_181F8C1DC(const void *a1, void *aBlock, char a3)
{
  if (a3)
  {
  }

  else
  {
    _Block_copy(a1);
  }
}

void sub_181F8C1EC(const void *a1, void *aBlock, char a3)
{
  if (a3)
  {
  }

  else
  {
    _Block_release(a1);
  }
}

void sub_181F8C1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, void *a6, char a7)
{
  if (a4)
  {

    sub_181F8C1EC(a5, a6, a7 & 1);
  }
}

unint64_t sub_181F8C310(unint64_t a1, unint64_t a2)
{
  if (a2 >= a1)
  {
    return a2 - a1;
  }

  v16[10] = v2;
  v16[11] = v3;
  sub_182AD3BA8();

  v16[0] = 0x6974207472617473;
  v16[1] = 0xEB0000000020656DLL;
  v5 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v5);

  MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD6110);
  v6 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v6);

  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v7 = sub_182AD2698();
  __swift_project_value_buffer(v7, qword_1EA843418);

  v8 = sub_182AD2678();
  v9 = sub_182AD38C8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136315650;
    v12 = sub_182AD3BF8();
    v14 = sub_181C64FFC(v12, v13, v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v16);
    *(v10 + 22) = 2080;
    v15 = sub_181C64FFC(0x6974207472617473, 0xEB0000000020656DLL, v16);

    *(v10 + 24) = v15;
    _os_log_impl(&dword_181A37000, v8, v9, "%s %s %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v11, -1, -1);
    MEMORY[0x1865DF520](v10, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_181F8C5C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_181F8C608(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_181F8C66C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_181F8C6B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t NWBrowser.__allocating_init(for:using:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_181F9A300(a1, a2);

  return v4;
}

Swift::Void __swiftcall NWBrowser.cancel()()
{
  if (nw_utilities_minos_atleast(1))
  {
    v1 = *(v0 + 24);
    os_unfair_lock_lock((v1 + 80));
    v2 = *(v1 + 40);
    v3 = *(v1 + 48);
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    sub_181A554F4(v2, v3);
    v4 = *(v1 + 56);
    v5 = *(v1 + 64);
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
    sub_181A554F4(v4, v5);
    os_unfair_lock_unlock((v1 + 80));
  }

  v6 = *(v0 + 16);

  nw_browser_cancel(v6);
}

void NWBrowser.stateUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  os_unfair_lock_lock(v5 + 20);
  sub_181F9A428(&v5[4]);
  os_unfair_lock_unlock(v5 + 20);
  if (a1)
  {
    v6 = *(v2 + 16);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    aBlock[4] = sub_181F9A484;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181F91420;
    aBlock[3] = &block_descriptor_5;
    v8 = _Block_copy(aBlock);

    nw_browser_set_state_changed_handler(v6, v8);
    _Block_release(v8);
    sub_181A554F4(a1, a2);
  }

  else
  {
    nw_browser_set_state_changed_handler(*(v2 + 16), 0);
  }
}

void NWBrowser.browseResultsChangedHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  os_unfair_lock_lock(v6 + 20);
  sub_181F9A4E0(&v6[4], aBlock);
  os_unfair_lock_unlock(v6 + 20);
  if (LOBYTE(aBlock[0]) == 1)
  {
    v7 = *(v2 + 16);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = a1;
    v8[4] = a2;
    aBlock[4] = sub_181F9A550;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181F91E14;
    aBlock[3] = &block_descriptor_6;
    v9 = _Block_copy(aBlock);

    sub_181AA39C0(a1, a2);

    nw_browser_set_browse_results_changed_handler(v7, v9);
    sub_181A554F4(a1, a2);
    _Block_release(v9);
  }

  else
  {
    sub_181A554F4(a1, a2);
  }
}

void NWBrowser.start(queue:)(NSObject *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  os_unfair_lock_lock((v4 + 80));
  sub_181F9A55C(v4 + 16);
  os_unfair_lock_unlock((v4 + 80));
  os_unfair_lock_lock((v4 + 80));
  v5 = *(v4 + 56);
  v6 = *(v4 + 64);
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_181F9A5AC;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_181AA39C0(v5, v6);
  os_unfair_lock_unlock((v4 + 80));
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    v10 = sub_181F9A5A8;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  sub_181AA39C0(v10, v9);
  sub_181AA39C0(v10, v9);
  NWBrowser.browseResultsChangedHandler.setter(v10, v9);
  sub_181A554F4(v10, v9);
  sub_181A554F4(v10, v9);
  v11 = *(v2 + 16);
  nw_browser_set_queue(v11, a1);
  nw_browser_start(v11);
}

uint64_t NWBrowser.debugDescription.getter()
{
  v1 = [*(v0 + 16) description];
  v2 = sub_182AD2F88();

  return v2;
}

uint64_t static NWBrowser.Descriptor.Options.constructPredicate(_:)@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_182AD1F48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_181F7DC14();
  sub_182AD1C48();
  swift_allocObject();
  sub_182AD1C38();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0, &unk_182AE9740);
  sub_181F7F268(&qword_1EA836670, MEMORY[0x1E6969C90]);
  sub_182AD1C08();
  (*(v5 + 8))(v7, v4);

  return (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
}

uint64_t NWBrowser.Descriptor.Options.init(scope:)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0x7F000000FFLL;
  *(a2 + 16) = 0;
  *(a2 + 24) = xmmword_182AE8230;
  *(a2 + 40) = 0;
  v4 = *(type metadata accessor for NWBrowser.Descriptor.Options(0) + 40);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0, &unk_182AE9740);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  *(a2 + 8) = v3;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.init(scope:predicate:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *a3 = MEMORY[0x1E69E7CC0];
  *(a3 + 8) = 0x7F000000FFLL;
  *(a3 + 16) = 0;
  *(a3 + 24) = xmmword_182AE8230;
  *(a3 + 40) = 0;
  v6 = *(type metadata accessor for NWBrowser.Descriptor.Options(0) + 40);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0, &unk_182AE9740);
  v8 = *(v7 - 8);
  v10 = *(v8 + 56);
  v10(a3 + v6, 1, 1, v7);
  *(a3 + 8) = v5;
  sub_181F49A88(a3 + v6, &qword_1EA838D00, &unk_182AE57C0);
  (*(v8 + 32))(a3 + v6, a2, v7);

  return (v10)(a3 + v6, 0, 1, v7);
}

uint64_t NWBrowser.Descriptor.Options.init(scope:deviceFilter:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *(a3 + 8) = 0x7F000000FFLL;
  *(a3 + 16) = 0;
  *(a3 + 24) = xmmword_182AE8230;
  *(a3 + 40) = 0;
  v6 = *(type metadata accessor for NWBrowser.Descriptor.Options(0) + 40);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0, &unk_182AE9740);
  result = (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  *(a3 + 8) = v5;
  *a3 = a2;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.init(scope:deviceFilter:deviceTypes:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a3;
  *(a4 + 8) = 0x7F000000FFLL;
  *(a4 + 16) = 0;
  *(a4 + 24) = xmmword_182AE8230;
  *(a4 + 40) = 0;
  v8 = *(type metadata accessor for NWBrowser.Descriptor.Options(0) + 40);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0, &unk_182AE9740);
  result = (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  *a4 = a2;
  *(a4 + 8) = v6;
  *(a4 + 12) = v7;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.init(scope:deviceFilter:deviceTypes:rssiThreshold:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a3;
  *(a5 + 8) = 0x7F000000FFLL;
  *(a5 + 16) = 0;
  *(a5 + 24) = xmmword_182AE8230;
  v10 = *(type metadata accessor for NWBrowser.Descriptor.Options(0) + 40);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0, &unk_182AE9740);
  result = (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  *a5 = a2;
  *(a5 + 8) = v8;
  *(a5 + 12) = v9;
  *(a5 + 40) = a4;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.deviceFilter.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.customService.getter()
{
  v1 = *(v0 + 24);
  sub_181F49B44(v1, *(v0 + 32));
  return v1;
}

uint64_t NWBrowser.Descriptor.Options.customService.setter(uint64_t a1, uint64_t a2)
{
  result = sub_181D9D680(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t NWBrowser.Descriptor.Options.predicate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NWBrowser.Descriptor.Options(0) + 40);

  return sub_181F9A5FC(a1, v3);
}

double NWBrowser.Descriptor.PairingConfiguration.init(pairingType:)@<D0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF8, &qword_182AE9750);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_182AE9730;
  *a1 = v2;
  return result;
}

uint64_t NWBrowser.Descriptor.PairingConfiguration.preferredPairingTypes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_181F8D608()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x54676E6972696170;
  }
}

uint64_t sub_181F8D650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x54676E6972696170 && a2 == 0xEB00000000657079;
  if (v6 || (sub_182AD4268() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000182BD6290 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_182AD4268();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_181F8D738(uint64_t a1)
{
  v2 = sub_181F9A66C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8D774(uint64_t a1)
{
  v2 = sub_181F9A66C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NWBrowser.Descriptor.PairingConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F00, &qword_182AE9758);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F9A66C();
  sub_182AD4638();
  v12 = 0;
  sub_181F9A6C0();
  sub_182AD4118();
  if (!v2)
  {
    v10[1] = v8;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8399C0, &qword_182AE9760);
    sub_181F9A768(&qword_1EA838F20, sub_181F9A6C0, MEMORY[0x1E69E6300]);
    sub_182AD4118();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t NWBrowser.Descriptor.PairingConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F28, &qword_182AE9768);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F9A66C();
  sub_182AD45E8();
  if (!v2)
  {
    v12 = 0;
    sub_181F9A714();
    sub_182AD3FF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8399C0, &qword_182AE9760);
    v11 = 1;
    sub_181F9A768(&unk_1EA8399E0, sub_181F9A714, MEMORY[0x1E69E6330]);
    sub_182AD3FF8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

nw_browse_descriptor_t sub_181F8DBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_182AD1F48();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D00, &unk_182AE57C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0, &unk_182AE9740);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v14 = sub_182AD3048();
  application_service = nw_browse_descriptor_create_application_service((v14 + 32));

  nw_browse_descriptor_set_browse_scope(application_service, *(a3 + 8));
  nw_browse_descriptor_set_device_types(application_service, *(a3 + 12));
  nw_browse_descriptor_set_rssi_threshold(application_service, *(a3 + 40));
  v16 = *(*a3 + 16);
  if (v16)
  {
    v17 = *a3 + 40;
    do
    {
      v18 = sub_182AD3048();
      nw_browse_descriptor_add_device_filter(application_service, v18 + 32);

      v17 += 16;
      --v16;
    }

    while (v16);
  }

  v19 = type metadata accessor for NWBrowser.Descriptor.Options(0);
  sub_181AB5D28(a3 + *(v19 + 40), v9, &qword_1EA838D00, &unk_182AE57C0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_181F49A88(v9, &qword_1EA838D00, &unk_182AE57C0);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_181F7DC14();
    sub_182AD1C98();
    swift_allocObject();
    sub_182AD1C88();
    sub_181F7F268(&unk_1EA836660, MEMORY[0x1E6969C98]);
    v20 = sub_182AD1C58();
    v22 = v21;

    swift_unknownObjectRetain();
    sub_181F49B58(v20, v22);
    sub_181F9A10C(v20, v22, application_service, v20, v22);
    sub_181C1F2E4(v20, v22);
    sub_181C1F2E4(v20, v22);
    (*(v25 + 8))(v6, v26);
    (*(v11 + 8))(v13, v10);
  }

  nw_browse_descriptor_set_discover_application_service_endpoints_only(application_service, *(a3 + 16));
  return application_service;
}

nw_browse_descriptor_t NWBrowser.Descriptor.nw.getter()
{
  v1 = type metadata accessor for NWBrowser.Descriptor.Options(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for NWBrowser.Descriptor(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_181F9A8DC(v0, v6, type metadata accessor for NWBrowser.Descriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v6 + 1);
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v20 = *v6;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F40, &qword_182AE9770);
      sub_181F9A800(&v6[*(v21 + 48)], v3, type metadata accessor for NWBrowser.Descriptor.Options);
      application_service = sub_181F8DBC0(v20, v8, v3);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v13 = v6[16];
        v14 = sub_182AD3048();

        application_service = nw_browse_descriptor_create_application_service((v14 + 32));

        nw_browse_descriptor_set_invitation_scope(application_service, v13 + 1);
        return application_service;
      }

      v23 = *(v6 + 2);
      v24 = *(v6 + 3);
      v25 = *v6;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F48, &qword_182AE9778);
      sub_181F9A800(&v6[*(v26 + 64)], v3, type metadata accessor for NWBrowser.Descriptor.Options);
      application_service = sub_181F8DBC0(v25, v8, v3);

      swift_unknownObjectRetain_n();
      sub_181F964BC(v23, v24, application_service);
      sub_181C1F2E4(v23, v24);
      swift_unknownObjectRelease();
    }

    sub_181F9A9B8(v3, type metadata accessor for NWBrowser.Descriptor.Options);
    return application_service;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(v6 + 3);
      v10 = sub_182AD3048();

      if (v9)
      {
        v11 = sub_182AD3048();

        v12 = (v11 + 32);
      }

      else
      {
        v12 = 0;
      }

      application_service = nw_browse_descriptor_create_bonjour_service((v10 + 32), v12);

      swift_unknownObjectRelease();
      nw_browse_descriptor_set_include_txt_record(application_service, 1);
    }

    else
    {
      v22 = sub_182AD3048();

      application_service = nw_browse_descriptor_create_application_service((v22 + 32));
    }
  }

  else
  {
    v16 = *(v6 + 3);
    v17 = sub_182AD3048();

    if (v16)
    {
      v18 = sub_182AD3048();

      v19 = (v18 + 32);
    }

    else
    {
      v19 = 0;
    }

    application_service = nw_browse_descriptor_create_bonjour_service((v17 + 32), v19);

    swift_unknownObjectRelease();
  }

  return application_service;
}

uint64_t NWBrowser.Descriptor.init(_:)@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v76[1] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for NWBrowser.Descriptor.Options(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v64[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_182AD2088();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for NWBrowser.Descriptor(0);
  v73 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type = nw_browse_descriptor_get_type(a1);
  if (type == 2)
  {
    application_service_name = nw_browse_descriptor_get_application_service_name(a1);
    if (!application_service_name)
    {
      goto LABEL_12;
    }

    v70 = application_service_name;
    v68 = v4;
    invitation_scope = nw_browse_descriptor_get_invitation_scope(a1);
    v23 = invitation_scope > 3;
    v71 = invitation_scope;
    v24 = 0x2010003u >> (8 * invitation_scope);
    if (invitation_scope > 3)
    {
      v24 = 3;
    }

    device_types = v24;
    v76[0] = 0;
    v25 = nw_browse_descriptor_copy_custom_service(a1, v76);
    v26 = v76[0];
    v72 = a2;
    if (v76[0] < 1)
    {
      v32 = 0;
      v33 = 0xF000000000000000;
    }

    else
    {
      v67 = v11;
      v65 = v23;
      v27 = *MEMORY[0x1E6969000];
      v28 = *(v8 + 104);
      v66 = v25;
      v28(v10, v27, v7);
      sub_182AD2078();
      v30 = v29;
      sub_182AD1DB8();
      swift_allocObject();

      v31 = sub_182AD1D38();
      if (v26 < 0xF)
      {
        v66 = v30;
        v36 = sub_182AD1D58();
        if (v36)
        {
          v37 = sub_182AD1D88();
          v11 = v67;
          if (__OFSUB__(0, v37))
          {
            goto LABEL_41;
          }

          v36 -= v37;
        }

        else
        {
          v11 = v67;
        }

        v38 = sub_182AD1D78();
        if (v38 >= v26)
        {
          v39 = v26;
        }

        else
        {
          v39 = v38;
        }

        v40 = &v36[v39];
        if (v36)
        {
          v41 = v40;
        }

        else
        {
          v41 = 0;
        }

        v42 = sub_181E68460(v36, v41);
        v44 = v43;

        (*(v8 + 8))(v10, v7);
        v32 = v42;
        v33 = v44 & 0xFFFFFFFFFFFFFFLL;
        a2 = v72;
        v23 = v65;
      }

      else
      {

        (*(v8 + 8))(v10, v7);
        if (v26 >= 0x7FFFFFFF)
        {
          sub_182AD20C8();
          v32 = swift_allocObject();
          *(v32 + 16) = 0;
          *(v32 + 24) = v26;
          v33 = v31 | 0x8000000000000000;
        }

        else
        {
          v32 = v26 << 32;
          v33 = v31 | 0x4000000000000000;
        }

        a2 = v72;
        v23 = v65;
        v11 = v67;
      }
    }

    if (((v23 | (1u >> (v71 & 0xF))) & 1) == 0)
    {
      v57 = sub_182AD3158();
      v59 = v58;
      sub_181D9D680(v32, v33);
      swift_unknownObjectRelease();
      *v13 = v57;
      *(v13 + 1) = v59;
      v13[16] = device_types;
LABEL_36:
      swift_storeEnumTagMultiPayload();
      v60 = 0;
      v45 = 0;
LABEL_37:
      sub_181F9A800(v13, a2, type metadata accessor for NWBrowser.Descriptor);
      (*(v73 + 56))(a2, 0, 1, v11);
      return sub_181A554F4(v60, v45);
    }

    v66 = v32;
    LODWORD(v71) = nw_browse_descriptor_get_browse_scope(a1);
    device_types = nw_browse_descriptor_get_device_types(a1);
    LODWORD(v67) = nw_browse_descriptor_get_rssi_threshold(a1);
    v75 = MEMORY[0x1E69E7CC0];
    v45 = swift_allocObject();
    *(v45 + 16) = &v75;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_181F4D2B4;
    *(v46 + 24) = v45;
    aBlock[4] = sub_181B77470;
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181B7749C;
    aBlock[3] = &block_descriptor_21;
    v47 = _Block_copy(aBlock);

    nw_browse_descriptor_enumerate_device_filters(a1, v47);
    _Block_release(v47);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v49 = v75;
      *(v6 + 1) = 0x7F000000FFLL;
      v6[16] = 0;
      *(v6 + 24) = xmmword_182AE8230;
      v50 = *(v68 + 40);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0, &unk_182AE9740);
      (*(*(v51 - 8) + 56))(&v6[v50], 1, 1, v51);
      *v6 = v49;
      v52 = device_types;
      *(v6 + 2) = v71;
      *(v6 + 3) = v52;
      *(v6 + 10) = v67;
      if (v33 >> 60 == 15)
      {
        v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F40, &qword_182AE9770) + 48);

        v54 = sub_182AD3158();
        v56 = v55;
        swift_unknownObjectRelease();
        *v13 = v54;
        *(v13 + 1) = v56;
      }

      else
      {
        v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F48, &qword_182AE9778) + 64);

        v61 = sub_182AD3158();
        v63 = v62;
        swift_unknownObjectRelease();
        *v13 = v61;
        *(v13 + 1) = v63;
        *(v13 + 2) = v66;
        *(v13 + 3) = v33;
      }

      a2 = v72;
      sub_181F9A800(v6, &v13[v53], type metadata accessor for NWBrowser.Descriptor.Options);
      swift_storeEnumTagMultiPayload();

      v60 = sub_181F4D2B4;
      goto LABEL_37;
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  if (type == 1)
  {
    nw_browse_descriptor_get_bonjour_service_type(a1);
    v15 = sub_182AD3158();
    v17 = v16;
    if (nw_browse_descriptor_get_bonjour_service_domain(a1))
    {
      v18 = sub_182AD3158();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    nw_browse_descriptor_get_include_txt_record(a1);
    swift_unknownObjectRelease();
    *v13 = v15;
    *(v13 + 1) = v17;
    *(v13 + 2) = v18;
    *(v13 + 3) = v20;
    goto LABEL_36;
  }

LABEL_12:
  swift_unknownObjectRelease();
  v34 = *(v73 + 56);

  return v34(a2, 1, 1, v11);
}

uint64_t NWBrowser.Descriptor.init(name:pairingConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  sub_182AD1C98();
  swift_allocObject();
  sub_182AD1C88();
  sub_181F9A868();
  v7 = sub_182AD1C68();
  v9 = v8;

  v10 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F48, &qword_182AE9778) + 64);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = v7;
  a4[3] = v9;
  *v10 = MEMORY[0x1E69E7CC0];
  *(v10 + 1) = 0x7F000000FFLL;
  v10[16] = 0;
  *(v10 + 24) = xmmword_182AE8230;
  *(v10 + 10) = 0;
  v11 = *(type metadata accessor for NWBrowser.Descriptor.Options(0) + 40);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0, &unk_182AE9740);
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  *(v10 + 2) = 255;
  type metadata accessor for NWBrowser.Descriptor(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_181F8ECC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_182AD4268();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_181F8ED4C(uint64_t a1)
{
  v2 = sub_181F9AFF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8ED88(uint64_t a1)
{
  v2 = sub_181F9AFF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F8EDC4()
{
  if (*v0)
  {
    return 0x6974617469766E69;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_181F8EDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_182AD4268() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974617469766E69 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_182AD4268();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_181F8EEE0(uint64_t a1)
{
  v2 = sub_181F9AEFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8EF1C(uint64_t a1)
{
  v2 = sub_181F9AEFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F8EF58()
{
  if (*v0)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_181F8EF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_182AD4268() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_182AD4268();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_181F8F068(uint64_t a1)
{
  v2 = sub_181F9AFA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8F0A4(uint64_t a1)
{
  v2 = sub_181F9AFA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F8F0E0(uint64_t a1)
{
  v2 = sub_181F9B0A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8F11C(uint64_t a1)
{
  v2 = sub_181F9B0A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F8F158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_182AD4268() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_182AD4268();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_181F8F230(uint64_t a1)
{
  v2 = sub_181F9B04C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8F26C(uint64_t a1)
{
  v2 = sub_181F9B04C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_181F8F2A8()
{
  v1 = *v0;
  v2 = 0x72756F6A6E6F62;
  v3 = 0xD00000000000001DLL;
  v4 = 0xD000000000000020;
  if (v1 != 4)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
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

uint64_t sub_181F8F370@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_181F9D478(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_181F8F3A4(uint64_t a1)
{
  v2 = sub_181F9AE54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8F3E0(uint64_t a1)
{
  v2 = sub_181F9AE54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F8F41C()
{
  v1 = 0x65536D6F74737563;
  if (*v0 != 1)
  {
    v1 = 0x736E6F6974706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_181F8F47C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_181F9D674(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_181F8F4A4(uint64_t a1)
{
  v2 = sub_181F9AEA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8F4E0(uint64_t a1)
{
  v2 = sub_181F9AEA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F8F51C@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360, &unk_182AEB460);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for NWBrowser.Result(0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v27 = v8;
    *v11 = a1;
    v12 = swift_unknownObjectRetain();
    endpoint = nw_browse_result_get_endpoint(v12);
    sub_181B80998(endpoint, v6);
    v14 = type metadata accessor for NWEndpoint(0);
    result = (*(*(v14 - 8) + 48))(v6, 1, v14);
    if (result != 1)
    {
      sub_181F9A800(v6, v11 + v7[5], type metadata accessor for NWEndpoint);
      v34 = MEMORY[0x1E69E7CC0];
      v16 = swift_allocObject();
      *(v16 + 16) = &v34;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_181B80034;
      *(v17 + 24) = v16;
      v32 = sub_181B80068;
      v33 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v30 = sub_181B7FFE4;
      v31 = &block_descriptor_232;
      v18 = _Block_copy(&aBlock);

      nw_browse_result_enumerate_interfaces(a1, v18);
      _Block_release(v18);
      LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

      if ((v18 & 1) == 0)
      {
        *(v11 + v7[6]) = v34;

        v19 = nw_browse_result_copy_txt_record_object(a1);
        swift_unknownObjectRelease();
        if (v19)
        {
          v20 = swift_allocObject();
          *(v20 + 16) = MEMORY[0x1E69E7CC8];
          v21 = (v20 + 16);
          v32 = sub_181E63B60;
          v33 = v20;
          aBlock = MEMORY[0x1E69E9820];
          v29 = 1107296256;
          v30 = sub_181E63AEC;
          v31 = &block_descriptor_238;
          v22 = _Block_copy(&aBlock);

          nw_txt_record_apply(v19, v22);
          _Block_release(v22);
          swift_beginAccess();
          v23 = *v21;

          v24 = (v11 + v7[7]);
          *v24 = v23;
          v24[1] = v19;
        }

        else
        {
          v26 = (v11 + v7[7]);
          *v26 = 0;
          v26[1] = 0;
        }

        sub_181F9A800(v11, a2, type metadata accessor for NWBrowser.Result);
        (*(v27 + 56))(a2, 0, 1, v7);
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v25 = *(v8 + 56);

  return v25(a2, 1, 1, v7, v9);
}

double NWBrowser.Result.interfaces.getter()
{
  type metadata accessor for NWBrowser.Result(0);

  return result;
}

uint64_t NWBrowser.Result.metadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NWBrowser.Result(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_181E6550C(v4, v5);
}

uint64_t NWBrowser.Result.Metadata.debugDescription.getter()
{
  if (!*v0)
  {
    return 0x3E656E6F6E3CLL;
  }

  sub_181F9A944();
  return sub_182AD2E88();
}

uint64_t sub_181F8FAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_182AD4268();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_181F8FB44(uint64_t a1)
{
  v2 = sub_181F9B1E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8FB80(uint64_t a1)
{
  v2 = sub_181F9B1E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F8FBBC()
{
  if (*v0)
  {
    return 0x72756F6A6E6F62;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_181F8FBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (sub_182AD4268() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72756F6A6E6F62 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_182AD4268();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_181F8FCCC(uint64_t a1)
{
  v2 = sub_181F9B190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8FD08(uint64_t a1)
{
  v2 = sub_181F9B190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F8FD50(uint64_t a1)
{
  v2 = sub_181F9B28C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F8FD8C(uint64_t a1)
{
  v2 = sub_181F9B28C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F8FDCC()
{
  if (!*v0)
  {
    return 0x3E656E6F6E3CLL;
  }

  sub_181F9A944();
  return sub_182AD2E88();
}

uint64_t NWBrowser.Result.Change.init(between:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v54 = a3;
  v53 = type metadata accessor for NWBrowser.Result.Change(0);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838F60, &unk_182AE9780);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v49 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v49 - v26);
  v55 = a1;
  sub_181AB5D28(a1, &v49 - v26, &unk_1EA838F60, &unk_182AE9780);
  v28 = type metadata accessor for NWBrowser.Result(0);
  v29 = *(*(v28 - 8) + 48);
  if (v29(v27, 1, v28) == 1)
  {
    sub_181F49A88(v27, &unk_1EA838F60, &unk_182AE9780);
    v30 = 0;
  }

  else
  {
    v30 = *v27;
    swift_unknownObjectRetain();
    sub_181F9A9B8(v27, type metadata accessor for NWBrowser.Result);
  }

  sub_181AB5D28(v56, v24, &unk_1EA838F60, &unk_182AE9780);
  if (v29(v24, 1, v28) == 1)
  {
    sub_181F49A88(v24, &unk_1EA838F60, &unk_182AE9780);
    v31 = 0;
  }

  else
  {
    v31 = *v24;
    swift_unknownObjectRetain();
    sub_181F9A9B8(v24, type metadata accessor for NWBrowser.Result);
  }

  changes = nw_browse_result_get_changes(v30, v31);
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  if (changes < 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (changes > 1)
  {
    if (changes == 2)
    {
      v48 = v56;
      sub_181AB5D28(v56, v21, &unk_1EA838F60, &unk_182AE9780);
      result = (v29)(v21, 1, v28);
      if (result == 1)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      sub_181F49A88(v48, &unk_1EA838F60, &unk_182AE9780);
      sub_181F49A88(v55, &unk_1EA838F60, &unk_182AE9780);
      v39 = v50;
      sub_181F9A800(v21, v50, type metadata accessor for NWBrowser.Result);
    }

    else
    {
      v35 = v12;
      v36 = v55;
      v34 = v52;
      if (changes != 4)
      {
        goto LABEL_16;
      }

      sub_181AB5D28(v55, v18, &unk_1EA838F60, &unk_182AE9780);
      result = (v29)(v18, 1, v28);
      if (result == 1)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      sub_181F49A88(v56, &unk_1EA838F60, &unk_182AE9780);
      sub_181F49A88(v36, &unk_1EA838F60, &unk_182AE9780);
      v38 = v18;
      v39 = v51;
      sub_181F9A800(v38, v51, type metadata accessor for NWBrowser.Result);
    }

    swift_storeEnumTagMultiPayload();
    v47 = v39;
    return sub_181F9A800(v47, v54, type metadata accessor for NWBrowser.Result.Change);
  }

  v34 = v52;
  if (!changes)
  {
    sub_181F49A88(v56, &unk_1EA838F60, &unk_182AE9780);
    v37 = v55;
    goto LABEL_23;
  }

  v35 = v12;
  v36 = v55;
  if (changes == 1)
  {
    sub_181F49A88(v56, &unk_1EA838F60, &unk_182AE9780);
    v37 = v36;
LABEL_23:
    sub_181F49A88(v37, &unk_1EA838F60, &unk_182AE9780);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_16:
  v40 = (changes >> 2) & 0xE;
  if (v40)
  {
    v41 = v40;
  }

  else
  {
    v41 = 1;
  }

  sub_181AB5D28(v36, v15, &unk_1EA838F60, &unk_182AE9780);
  result = (v29)(v15, 1, v28);
  if (result == 1)
  {
    goto LABEL_30;
  }

  sub_181F9A800(v15, v34, type metadata accessor for NWBrowser.Result);
  v42 = v56;
  sub_181AB5D28(v56, v35, &unk_1EA838F60, &unk_182AE9780);
  result = (v29)(v35, 1, v28);
  if (result == 1)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v43 = v35;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A18, &qword_182AE61B0);
  v45 = *(v44 + 48);
  v46 = *(v44 + 64);
  sub_181F49A88(v42, &unk_1EA838F60, &unk_182AE9780);
  sub_181F49A88(v36, &unk_1EA838F60, &unk_182AE9780);
  sub_181F9A800(v43, v34 + v45, type metadata accessor for NWBrowser.Result);
  *(v34 + v46) = v41;
  swift_storeEnumTagMultiPayload();
  v47 = v34;
  return sub_181F9A800(v47, v54, type metadata accessor for NWBrowser.Result.Change);
}

uint64_t NWBrowser.Result.Change.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWBrowser.Result(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for NWBrowser.Result.Change(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_181F9A8DC(v2, v12, type metadata accessor for NWBrowser.Result.Change);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_181F9A800(v12, v9, type metadata accessor for NWBrowser.Result);
      v14 = 2;
    }

    else
    {
      sub_181F9A800(v12, v9, type metadata accessor for NWBrowser.Result);
      v14 = 1;
    }

    MEMORY[0x1865DB070](v14);
    NWEndpoint.hash(into:)(a1);
    v16 = v9;
    return sub_181F9A9B8(v16, type metadata accessor for NWBrowser.Result);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A18, &qword_182AE61B0) + 48);
    sub_181F9A800(v12, v9, type metadata accessor for NWBrowser.Result);
    sub_181F9A800(&v12[v15], v6, type metadata accessor for NWBrowser.Result);
    MEMORY[0x1865DB070](3);
    NWEndpoint.hash(into:)(a1);
    NWEndpoint.hash(into:)(a1);
    sub_182AD4518();
    sub_181F9A9B8(v6, type metadata accessor for NWBrowser.Result);
    v16 = v9;
    return sub_181F9A9B8(v16, type metadata accessor for NWBrowser.Result);
  }

  return MEMORY[0x1865DB070](0);
}

uint64_t NWBrowser.Result.Change.hashValue.getter()
{
  sub_182AD44E8();
  NWBrowser.Result.Change.hash(into:)(v1);
  return sub_182AD4558();
}

uint64_t sub_181F90804()
{
  sub_182AD44E8();
  NWBrowser.Result.Change.hash(into:)(v1);
  return sub_182AD4558();
}

uint64_t sub_181F90848(uint64_t a1)
{
  sub_182AD44E8();
  NWBrowser.Result.Change.hash(into:)(v2);
  return sub_182AD4558();
}

uint64_t NWBrowser.Result.hashValue.getter()
{
  sub_182AD44E8();
  type metadata accessor for NWBrowser.Result(0);
  NWEndpoint.hash(into:)(v1);
  return sub_182AD4558();
}

uint64_t sub_181F908D8()
{
  sub_182AD44E8();
  NWEndpoint.hash(into:)(v1);
  return sub_182AD4558();
}

uint64_t sub_181F9094C(uint64_t a1)
{
  sub_182AD44E8();
  NWEndpoint.hash(into:)(v2);
  return sub_182AD4558();
}

uint64_t sub_181F90998@<X0>(uint64_t result@<X0>, NSObject *a2@<X1>, uint64_t a3@<X8>)
{
  if (result <= 1)
  {
    if (!result)
    {
      result = swift_unknownObjectRelease();
      v4 = 0x8000000000;
      goto LABEL_13;
    }

    if (result == 1)
    {
      result = swift_unknownObjectRelease();
      v4 = 0x8000000001;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (result == 2)
  {
    if (a2)
    {
      result = NWError.init(_:)(a2, &v5);
      v4 = v5 | (v6 << 32);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (result != 4)
  {
LABEL_9:
    v4 = 0x8000000002;
    result = swift_unknownObjectRelease();
    goto LABEL_13;
  }

  if (a2)
  {
    result = NWError.init(_:)(a2, &v7);
    v4 = v7 | (v8 << 32) | 0x4000000000;
LABEL_13:
    *a3 = v4;
    *(a3 + 4) = BYTE4(v4);
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

Network::NWBrowser::Invitation::Scope_optional __swiftcall NWBrowser.Invitation.Scope.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_182AD3F48();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NWBrowser.Invitation.Scope.rawValue.getter()
{
  v1 = 0x73646E65697266;
  if (*v0 != 1)
  {
    v1 = 0x656E6F7972657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74696D69786F7270;
  }
}

uint64_t sub_181F90B3C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x73646E65697266;
  if (v2 != 1)
  {
    v4 = 0x656E6F7972657665;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x74696D69786F7270;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000079;
  }

  v7 = 0xE700000000000000;
  v8 = 0x73646E65697266;
  if (*a2 != 1)
  {
    v8 = 0x656E6F7972657665;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74696D69786F7270;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000079;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_182AD4268();
  }

  return v11 & 1;
}

uint64_t sub_181F90C40()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_181F90CE8(uint64_t a1, __n128 a2)
{
  sub_182AD30E8();
}

uint64_t sub_181F90D7C(uint64_t a1)
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

void sub_181F90E2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0xE700000000000000;
  v5 = 0x73646E65697266;
  if (v2 != 1)
  {
    v5 = 0x656E6F7972657665;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74696D69786F7270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_181F90EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_182AD4268();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_181F90F40(uint64_t a1)
{
  v2 = sub_181F9AD58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F90F7C(uint64_t a1)
{
  v2 = sub_181F9AD58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NWBrowser.state.getter@<X0>(uint64_t a1@<X8>)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  state = nw_browser_get_state(*(v1 + 16), v12);
  v4 = state;
  if (state <= 1)
  {
    if (!state)
    {
      v7 = 0x8000000000;
      goto LABEL_14;
    }

    if (state == 1)
    {
      v8 = 1;
LABEL_10:
      v7 = v8 & 0xFFFF0000FFFFFFFFLL | 0x8000000000;
      goto LABEL_14;
    }

LABEL_9:
    v8 = 2;
    goto LABEL_10;
  }

  result = v12[0];
  if (v4 == 2)
  {
    if (v12[0])
    {
      v9 = swift_unknownObjectRetain();
      NWError.init(_:)(v9, &v10);
      v7 = v10 | (v11 << 32);
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v4 != 4)
  {
    goto LABEL_9;
  }

  if (v12[0])
  {
    v6 = swift_unknownObjectRetain();
    NWError.init(_:)(v6, &v10);
    v7 = v10 | (v11 << 32) | 0x4000000000;
LABEL_14:
    *a1 = v7;
    *(a1 + 4) = BYTE4(v7);
    return swift_unknownObjectRelease();
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t NWBrowser.browseResults.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 80));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 80));
  return v2;
}

void *NWBrowser.queue.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 80));
  v2 = *(v1 + 72);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 80));
  return v2;
}

uint64_t (*NWBrowser.stateUpdateHandler.getter())()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 80));
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_181C571A4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2, v3);
  os_unfair_lock_unlock((v1 + 80));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_181C4DBD0;
}

uint64_t (*sub_181F91260@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = NWBrowser.stateUpdateHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_181F9DBE4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_181F912D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_181F9DC70;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_181AA39C0(v1, v2);
  NWBrowser.stateUpdateHandler.setter(v4, v3);
}

uint64_t sub_181F91360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_181AA39C0(a2, a3);
  result = sub_181A554F4(v6, v7);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  return result;
}

uint64_t sub_181F913C0(uint64_t a1, NSObject *a2, uint64_t (*a3)(_BYTE *))
{
  swift_unknownObjectRetain();
  sub_181F90998(a1, a2, v7);
  return a3(v7);
}

uint64_t sub_181F91420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t (*NWBrowser.stateUpdateHandler.modify(uint64_t (**a1)()))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 80));
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_181F9DBE4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_181AA39C0(v4, v5);
  os_unfair_lock_unlock((v3 + 80));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_181F9DC70;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_181F91580;
}

uint64_t (*NWBrowser.browseResultsChangedHandler.getter())()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 80));
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_181F9DC24;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2, v3);
  os_unfair_lock_unlock((v1 + 80));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_181F9DC50;
}

uint64_t (*sub_181F91690@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = NWBrowser.browseResultsChangedHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_181F9DC24;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_181F91700(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_181F9DC50;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_181AA39C0(v1, v2);
  NWBrowser.browseResultsChangedHandler.setter(v4, v3);
}

uint64_t sub_181F91790(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, double a7)
{
  v29[1] = a6;
  v30 = a5;
  v31 = a3;
  v8 = type metadata accessor for NWBrowser.Result.Change(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838F60, &unk_182AE9780);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v29 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v29 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v29 - v21;
  v23 = swift_unknownObjectRetain();
  sub_181F8F51C(v23, v22);
  v24 = swift_unknownObjectRetain();
  sub_181F8F51C(v24, v19);
  sub_181AB5D28(v22, v16, &unk_1EA838F60, &unk_182AE9780);
  sub_181AB5D28(v19, v13, &unk_1EA838F60, &unk_182AE9780);
  NWBrowser.Result.Change.init(between:_:)(v16, v13, v10);
  v25 = *(a4 + 24);
  v32 = v10;
  os_unfair_lock_lock((v25 + 80));
  sub_181F9DBB8(v25 + 16);
  os_unfair_lock_unlock((v25 + 80));
  if (v31)
  {
    os_unfair_lock_lock((v25 + 80));
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);
    *(v25 + 24) = MEMORY[0x1E69E7CD0];

    os_unfair_lock_unlock((v25 + 80));
    if (v30)
    {
      v30(v26, v27);
    }
  }

  sub_181F49A88(v19, &unk_1EA838F60, &unk_182AE9780);
  sub_181F49A88(v22, &unk_1EA838F60, &unk_182AE9780);
  return sub_181F9A9B8(v10, type metadata accessor for NWBrowser.Result.Change);
}

uint64_t sub_181F91A0C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838F60, &unk_182AE9780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v32 - v4;
  v5 = type metadata accessor for NWBrowser.Result(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v32 - v15);
  v17 = type metadata accessor for NWBrowser.Result.Change(0);
  MEMORY[0x1EEE9AC00](v17);
  v34 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v32 - v23;
  v35 = a2;
  sub_181F9A8DC(a2, &v32 - v23, type metadata accessor for NWBrowser.Result.Change);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      sub_181F9A800(v24, v16, type metadata accessor for NWBrowser.Result);
      v29 = v33;
      sub_181F96E00(v16, v33);
      sub_181F49A88(v29, &unk_1EA838F60, &unk_182AE9780);
      goto LABEL_8;
    }

    sub_181F9A800(v24, v16, type metadata accessor for NWBrowser.Result);
    sub_181F9A8DC(v16, v10, type metadata accessor for NWBrowser.Result);
    sub_181F968F8(v13, v10);
    v26 = v13;
LABEL_6:
    sub_181F9A9B8(v26, type metadata accessor for NWBrowser.Result);
LABEL_8:
    sub_181F9A9B8(v16, type metadata accessor for NWBrowser.Result);
    v30 = v34;
    sub_181F9A8DC(v35, v34, type metadata accessor for NWBrowser.Result.Change);
    sub_181F966B8(v21, v30, v31);
    return sub_181F9A9B8(v21, type metadata accessor for NWBrowser.Result.Change);
  }

  if (result == 2)
  {
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A18, &qword_182AE61B0) + 48);
    sub_181F9A800(v24, v16, type metadata accessor for NWBrowser.Result);
    sub_181F9A800(&v24[v27], v13, type metadata accessor for NWBrowser.Result);
    v28 = v33;
    sub_181F96E00(v16, v33);
    sub_181F49A88(v28, &unk_1EA838F60, &unk_182AE9780);
    sub_181F9A8DC(v13, v7, type metadata accessor for NWBrowser.Result);
    sub_181F968F8(v10, v7);
    sub_181F9A9B8(v10, type metadata accessor for NWBrowser.Result);
    v26 = v13;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_181F91E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t (*NWBrowser.browseResultsChangedHandler.modify(uint64_t (**a1)()))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 80));
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_181F9DC24;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_181AA39C0(v4, v5);
  os_unfair_lock_unlock((v3 + 80));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_181F9DC50;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_181F91F90;
}

uint64_t sub_181F91FD0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  if ((a2 & 1) == 0)
  {
    return (a3)(*a1, v7, a3, a4, a5);
  }

  a4(*a1, v7);
  a3(v6, v7);

  return a5(v6, v7);
}

uint64_t NWBrowser.init(for:using:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = sub_181F9A300(a1, a2);

  return v3;
}

uint64_t static NWBrowser.browseIterator(on:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F70, &qword_182AE9790);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v9[-v4];
  v6 = *a1;
  v10 = 64;
  v11 = v6;
  (*(v7 + 104))(v5, *MEMORY[0x1E69E8790], v3);
  return sub_182AD3738();
}

uint64_t NWBrowser.deinit()
{
  swift_unknownObjectRelease();

  sub_181F9A9B8(v0 + OBJC_IVAR____TtC7Network9NWBrowser_descriptor, type metadata accessor for NWBrowser.Descriptor);

  return v0;
}

uint64_t NWBrowser.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  sub_181F9A9B8(v0 + OBJC_IVAR____TtC7Network9NWBrowser_descriptor, type metadata accessor for NWBrowser.Descriptor);

  return swift_deallocClassInstance();
}

uint64_t NWBrowser.Descriptor.Options.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v43 = sub_182AD1F48();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v4 = &v29[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D00, &unk_182AE57C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F78, &unk_182AE9798);
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29[-v9];
  v11 = type metadata accessor for NWBrowser.Descriptor.Options(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_181F9AA24();
  v15 = v44;
  sub_182AD45E8();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v38 = v11;
  v39 = v4;
  v44 = v13;
  v17 = v42;
  v16 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B530, &unk_182AE5750);
  v49 = 0;
  sub_181F9AB20(&qword_1EA838F90, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_182AD3FF8();
  v18 = v46;
  v49 = 1;
  sub_181F9AA78();
  sub_182AD3FF8();
  v19 = v46;
  v49 = 2;
  sub_181F9AACC();
  sub_182AD3FF8();
  v48 = v19;
  v20 = v46;
  LOBYTE(v46) = 3;
  v33 = sub_182AD3FD8();
  v36 = v18;
  v49 = 4;
  sub_181C67934();
  v37 = v10;
  sub_182AD3FF8();
  v32 = v7;
  v35 = v46;
  v34 = v47;
  v21 = v44;
  LOBYTE(v46) = 5;
  v22 = sub_182AD4018();
  v30 = v20;
  LODWORD(v44) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0, &unk_182AE9740);
  LOBYTE(v46) = 6;
  sub_181F7DC14();
  sub_181F7F268(&qword_1EA836670, MEMORY[0x1E6969C90]);
  sub_182AD3F68();
  v31 = v8;
  (*(v41 + 8))(v39, v16);
  v24 = *(*(v23 - 8) + 56);
  v24(v7, 0, 1, v23);
  *(v21 + 8) = 255;
  (*(v17 + 8))(v37, v31);
  *(v21 + 12) = 127;
  *(v21 + 24) = xmmword_182AE8230;
  v25 = *(v38 + 40);
  v24((v21 + v25), 1, 1, v23);
  *v21 = v36;
  v26 = v30;
  *(v21 + 8) = v48;
  *(v21 + 12) = v26;
  *(v21 + 40) = v44;
  *(v21 + 16) = v33 & 1;
  sub_181D9D680(*(v21 + 24), *(v21 + 32));
  v27 = v34;
  *(v21 + 24) = v35;
  *(v21 + 32) = v27;
  sub_181F9A5FC(v7, v21 + v25);
  sub_181F9A8DC(v21, v40, type metadata accessor for NWBrowser.Descriptor.Options);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_181F9A9B8(v21, type metadata accessor for NWBrowser.Descriptor.Options);
}

uint64_t NWBrowser.Descriptor.Options.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_182AD1F48();
  v14 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838FB0, &qword_182AE97A8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F9AA24();
  sub_182AD4638();
  v16 = *v2;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B530, &unk_182AE5750);
  sub_181F9AB20(&qword_1EA838FB8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  v11 = v15;
  sub_182AD4118();
  if (!v11)
  {
    v15 = v4;
    LODWORD(v16) = *(v2 + 8);
    v18 = 1;
    sub_181F9AB8C();
    sub_182AD4118();
    LODWORD(v16) = *(v2 + 12);
    v18 = 2;
    sub_181F9ABE0();
    sub_182AD4118();
    LOBYTE(v16) = 3;
    sub_182AD40F8();
    v12 = *(v2 + 32);
    v16 = *(v2 + 24);
    v17 = v12;
    v18 = 4;
    sub_181F49B44(v16, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838FD0, &qword_182AE97B0);
    sub_181F9AC34();
    sub_182AD4118();
    sub_181D9D680(v16, v17);
    LOBYTE(v16) = 5;
    sub_182AD4138();
    type metadata accessor for NWBrowser.Descriptor.Options(0);
    LOBYTE(v16) = 6;
    sub_181F7DC14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D00, &unk_182AE57C0);
    sub_181F9ACB8();
    sub_182AD40A8();
    (*(v14 + 8))(v6, v15);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_181F92E24()
{
  v1 = *v0;
  v2 = 0x6946656369766564;
  v3 = 0x6572685469737372;
  if (v1 != 5)
  {
    v3 = 0x7461636964657270;
  }

  v4 = 0xD00000000000001FLL;
  if (v1 != 3)
  {
    v4 = 0x65536D6F74737563;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x65706F6373;
  if (v1 != 1)
  {
    v5 = 0x7954656369766564;
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

uint64_t sub_181F92F2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_181F9D794(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_181F92F60(uint64_t a1)
{
  v2 = sub_181F9AA24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F92F9C(uint64_t a1)
{
  v2 = sub_181F9AA24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NWBrowser.Invitation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838FF8, &qword_182AE97B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F9AD58();
  sub_182AD4638();
  v10 = v7;
  sub_181F9ADAC();
  sub_182AD4118();
  return (*(v4 + 8))(v6, v3);
}

uint64_t NWBrowser.Invitation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839010, &qword_182AE97C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F9AD58();
  sub_182AD45E8();
  if (!v2)
  {
    sub_181F9AE00();
    sub_182AD3FF8();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t NWBrowser.Descriptor.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839020, &qword_182AE97C8);
  v75 = *(v2 - 8);
  v76 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v74 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839028, &qword_182AE97D0);
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839030, &qword_182AE97D8);
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v58 - v7;
  v58 = type metadata accessor for NWBrowser.Descriptor.Options(0);
  MEMORY[0x1EEE9AC00](v58);
  v77 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839038, &qword_182AE97E0);
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839040, &qword_182AE97E8);
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v58 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839048, &qword_182AE97F0);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v16 = &v58 - v15;
  v17 = type metadata accessor for NWBrowser.Descriptor(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839050, &qword_182AE97F8);
  v79 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F9AE54();
  v23 = v22;
  sub_182AD4638();
  sub_181F9A8DC(v80, v19, type metadata accessor for NWBrowser.Descriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F40, &qword_182AE9770);
      v41 = v67;
      sub_181F9A800(&v19[*(v40 + 48)], v67, type metadata accessor for NWBrowser.Descriptor.Options);
      LOBYTE(v81) = 3;
      sub_181F9AFA4();
      v42 = v68;
      v43 = v22;
      sub_182AD4098();
      LOBYTE(v81) = 0;
      v44 = v71;
      v45 = v78;
      sub_182AD40E8();

      if (!v45)
      {
        LOBYTE(v81) = 1;
        sub_181F9B0F4(&qword_1EA839068, type metadata accessor for NWBrowser.Descriptor.Options, &protocol conformance descriptor for NWBrowser.Descriptor.Options);
        sub_182AD4118();
      }

      (*(v70 + 8))(v42, v44);
      sub_181F9A9B8(v41, type metadata accessor for NWBrowser.Descriptor.Options);
      return (*(v79 + 8))(v43, v20);
    }

    else
    {
      v30 = v20;
      if (EnumCaseMultiPayload == 4)
      {
        v31 = v19[16];
        LOBYTE(v81) = 4;
        sub_181F9AEFC();
        v32 = v69;
        sub_182AD4098();
        LOBYTE(v81) = 0;
        v33 = v73;
        v34 = v78;
        sub_182AD40E8();

        if (!v34)
        {
          LOBYTE(v81) = v31;
          v83 = 1;
          sub_181F9AF50();
          sub_182AD4118();
        }

        (*(v72 + 8))(v32, v33);
        return (*(v79 + 8))(v23, v20);
      }

      else
      {
        v48 = *(v19 + 2);
        v80 = *(v19 + 3);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F48, &qword_182AE9778);
        v50 = v77;
        sub_181F9A800(&v19[*(v49 + 64)], v77, type metadata accessor for NWBrowser.Descriptor.Options);
        LOBYTE(v81) = 5;
        sub_181F9AEA8();
        v51 = v74;
        sub_182AD4098();
        LOBYTE(v81) = 0;
        v52 = v76;
        v53 = v78;
        sub_182AD40E8();

        if (v53)
        {
          v54 = v48;
          v55 = v80;
        }

        else
        {
          v56 = v48;
          v81 = v48;
          v57 = v80;
          v82 = v80;
          v83 = 1;
          sub_181C675F8();
          sub_182AD4118();
          LOBYTE(v81) = 2;
          sub_181F9B0F4(&qword_1EA839068, type metadata accessor for NWBrowser.Descriptor.Options, &protocol conformance descriptor for NWBrowser.Descriptor.Options);
          v50 = v77;
          sub_182AD4118();
          v54 = v56;
          v55 = v57;
        }

        sub_181C1F2E4(v54, v55);
        (*(v75 + 8))(v51, v52);
        sub_181F9A9B8(v50, type metadata accessor for NWBrowser.Descriptor.Options);
        return (*(v79 + 8))(v22, v30);
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v25 = v20;
    if (EnumCaseMultiPayload == 1)
    {
      LOBYTE(v81) = 1;
      sub_181F9B04C();
      v26 = v64;
      v27 = v22;
      sub_182AD4098();
      LOBYTE(v81) = 0;
      v28 = v66;
      v29 = v78;
      sub_182AD40E8();

      if (!v29)
      {
        LOBYTE(v81) = 1;
        sub_182AD40B8();
      }

      (*(v65 + 8))(v26, v28);
    }

    else
    {
      LOBYTE(v81) = 2;
      sub_181F9AFF8();
      v46 = v61;
      v27 = v22;
      sub_182AD4098();
      v47 = v63;
      sub_182AD40E8();

      (*(v62 + 8))(v46, v47);
    }

    return (*(v79 + 8))(v27, v25);
  }

  else
  {
    LOBYTE(v81) = 0;
    sub_181F9B0A0();
    v35 = v20;
    v36 = v22;
    sub_182AD4098();
    LOBYTE(v81) = 0;
    v37 = v60;
    v38 = v78;
    sub_182AD40E8();

    if (!v38)
    {
      LOBYTE(v81) = 1;
      sub_182AD40B8();
    }

    (*(v59 + 8))(v16, v37);
    return (*(v79 + 8))(v36, v35);
  }
}

uint64_t NWBrowser.Descriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8390A0, &qword_182AE9800);
  v130 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v133 = &v110 - v3;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8390A8, &qword_182AE9808);
  v129 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v138 = &v110 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8390B0, &qword_182AE9810);
  v6 = *(v5 - 8);
  v126 = v5;
  v127 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v137 = &v110 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8390B8, &qword_182AE9818);
  v123 = *(v8 - 8);
  v124 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v132 = &v110 - v9;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8390C0, &qword_182AE9820);
  v122 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v131 = &v110 - v10;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8390C8, &qword_182AE9828);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v136 = &v110 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8390D0, &unk_182AE9830);
  v139 = *(v12 - 8);
  v140 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v110 - v13;
  v135 = type metadata accessor for NWBrowser.Descriptor(0);
  MEMORY[0x1EEE9AC00](v135);
  v118 = (&v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v117 = (&v110 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v110 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v110 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v110 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v110 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v110 - v31;
  v33 = a1[3];
  v142 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_181F9AE54();
  v34 = v141;
  sub_182AD45E8();
  if (!v34)
  {
    v113 = v23;
    v111 = v29;
    v112 = v26;
    v114 = v20;
    v36 = v136;
    v35 = v137;
    v37 = v138;
    v116 = 0;
    v115 = v32;
    v141 = v14;
    v38 = sub_182AD4078();
    v39 = v38;
    if (*(v38 + 16) != 1 || (v40 = *(v38 + 32), v40 == 6))
    {
      v48 = sub_182AD3C98();
      swift_allocError();
      v50 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A40, &qword_182AEE9A0);
      *v50 = v135;
      v52 = v140;
      v51 = v141;
      sub_182AD3F78();
      sub_182AD3C88();
      (*(*(v48 - 8) + 104))(v50, *MEMORY[0x1E69E6AF8], v48);
      swift_willThrow();
      (*(v139 + 8))(v51, v52);
      goto LABEL_10;
    }

    if (*(v38 + 32) <= 2u)
    {
      if (!*(v38 + 32))
      {
        v145 = 0;
        sub_181F9B0A0();
        v57 = v140;
        v58 = v141;
        v59 = v116;
        sub_182AD3F58();
        if (v59)
        {
          (*(v139 + 8))(v58, v57);
          goto LABEL_10;
        }

        v145 = 0;
        v68 = v121;
        v69 = sub_182AD3FC8();
        v81 = v80;
        v138 = v69;
        v145 = 1;
        v82 = sub_182AD3F88();
        v83 = (v139 + 8);
        v98 = v82;
        v100 = v99;
        (*(v120 + 8))(v36, v68);
        (*v83)(v141, v140);
        swift_unknownObjectRelease();
        v101 = v111;
        *v111 = v138;
        v101[1] = v81;
        v101[2] = v98;
        v101[3] = v100;
LABEL_30:
        swift_storeEnumTagMultiPayload();
        v108 = v115;
        sub_181F9A800(v101, v115, type metadata accessor for NWBrowser.Descriptor);
        v41 = v134;
        goto LABEL_32;
      }

      v41 = v134;
      v42 = v141;
      v43 = v116;
      if (v40 == 1)
      {
        v145 = 1;
        sub_181F9B04C();
        v44 = v131;
        v45 = v140;
        v46 = v43;
        sub_182AD3F58();
        v47 = v139;
        if (v46)
        {
          (*(v139 + 8))(v42, v45);
LABEL_10:
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v142);
        }

        v138 = v39;
        v145 = 0;
        v71 = v119;
        v72 = sub_182AD3FC8();
        v89 = v88;
        v137 = v72;
        v145 = 1;
        v103 = sub_182AD3F88();
        v105 = v104;
        (*(v122 + 8))(v44, v71);
        (*(v47 + 8))(v141, v140);
        swift_unknownObjectRelease();
        v101 = v112;
        *v112 = v137;
        v101[1] = v89;
        v101[2] = v103;
        v101[3] = v105;
        goto LABEL_30;
      }

      v145 = 2;
      sub_181F9AFF8();
      v63 = v132;
      v64 = v140;
      sub_182AD3F58();
      v65 = v139;
      if (v43)
      {
        (*(v139 + 8))(v42, v64);
        goto LABEL_10;
      }

      v75 = v124;
      v76 = sub_182AD3FC8();
      v94 = v93;
      (*(v123 + 8))(v63, v75);
      (*(v65 + 8))(v42, v64);
      swift_unknownObjectRelease();
      v95 = v113;
      *v113 = v76;
      *(v95 + 8) = v94;
      swift_storeEnumTagMultiPayload();
      v108 = v115;
      sub_181F9A800(v95, v115, type metadata accessor for NWBrowser.Descriptor);
LABEL_32:
      sub_181F9A800(v108, v41, type metadata accessor for NWBrowser.Descriptor);
      return __swift_destroy_boxed_opaque_existential_1(v142);
    }

    if (v40 == 3)
    {
      v145 = 3;
      sub_181F9AFA4();
      v61 = v140;
      v60 = v141;
      v62 = v116;
      sub_182AD3F58();
      if (v62)
      {
        (*(v139 + 8))(v60, v61);
        goto LABEL_10;
      }

      v138 = v39;
      v145 = 0;
      v70 = v126;
      v84 = sub_182AD3FC8();
      v86 = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F40, &qword_182AE9770);
      v87 = v114;
      *v114 = v84;
      v87[1] = v86;
      type metadata accessor for NWBrowser.Descriptor.Options(0);
      v144 = 1;
      sub_181F9B0F4(&qword_1EA8390E0, type metadata accessor for NWBrowser.Descriptor.Options, &protocol conformance descriptor for NWBrowser.Descriptor.Options);
      sub_182AD3FF8();
      (*(v127 + 8))(v35, v70);
      (*(v139 + 8))(v60, v61);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v102 = v87;
    }

    else
    {
      v54 = v140;
      if (v40 == 4)
      {
        v145 = 4;
        sub_181F9AEFC();
        v55 = v141;
        v56 = v116;
        sub_182AD3F58();
        if (v56)
        {
          (*(v139 + 8))(v55, v54);
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v142);
        }

        v145 = 0;
        v73 = v125;
        v74 = sub_182AD3FC8();
        v91 = v90;
        v92 = v74;
        v144 = 1;
        sub_181F9B13C();
        sub_182AD3FF8();
        (*(v129 + 8))(v37, v73);
        (*(v139 + 8))(v141, v54);
        swift_unknownObjectRelease();
        v106 = v145;
        v107 = v117;
        *v117 = v92;
        *(v107 + 8) = v91;
        *(v107 + 16) = v106;
        swift_storeEnumTagMultiPayload();
        v108 = v115;
        sub_181F9A800(v107, v115, type metadata accessor for NWBrowser.Descriptor);
        v41 = v134;
        goto LABEL_32;
      }

      v145 = 5;
      sub_181F9AEA8();
      v66 = v141;
      v67 = v116;
      sub_182AD3F58();
      if (v67)
      {
        (*(v139 + 8))(v66, v54);
        goto LABEL_10;
      }

      v145 = 0;
      v77 = v128;
      v78 = sub_182AD3FC8();
      v79 = v139;
      v138 = v39;
      v96 = v118;
      *v118 = v78;
      v96[1] = v97;
      v144 = 1;
      sub_181C67934();
      sub_182AD3FF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F48, &qword_182AE9778);
      type metadata accessor for NWBrowser.Descriptor.Options(0);
      v143 = 2;
      sub_181F9B0F4(&qword_1EA8390E0, type metadata accessor for NWBrowser.Descriptor.Options, &protocol conformance descriptor for NWBrowser.Descriptor.Options);
      v109 = v133;
      sub_182AD3FF8();
      (*(v130 + 8))(v109, v77);
      (*(v79 + 8))(v66, v54);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v102 = v96;
    }

    v108 = v115;
    sub_181F9A800(v102, v115, type metadata accessor for NWBrowser.Descriptor);
    v41 = v134;
    goto LABEL_32;
  }

  return __swift_destroy_boxed_opaque_existential_1(v142);
}

uint64_t sub_181F95208()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_181F9523C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t NWBrowser.Result.Metadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8390F0, &qword_182AE9840);
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8390F8, &qword_182AE9848);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839100, &qword_182AE9850);
  v9 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v17 - v10;
  v12 = *v1;
  v19 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F9B190();
  sub_182AD4638();
  if (v12)
  {
    LOBYTE(v23) = 1;
    sub_181F9B1E4();
    v13 = v22;
    sub_182AD4098();
    v23 = v12;
    v24 = v19;
    sub_181F9B238();
    v14 = v21;
    sub_182AD4118();
    (*(v20 + 8))(v5, v14);
    return (*(v9 + 8))(v11, v13);
  }

  else
  {
    LOBYTE(v23) = 0;
    sub_181F9B28C();
    v16 = v22;
    sub_182AD4098();
    (*(v17 + 8))(v8, v18);
    return (*(v9 + 8))(v11, v16);
  }
}

uint64_t NWBrowser.Result.Metadata.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v26 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839128, &qword_182AE9858);
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839130, &qword_182AE9860);
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839138, &qword_182AE9868);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_181F9B190();
  v13 = v27;
  sub_182AD45E8();
  if (!v13)
  {
    v27 = v5;
    v14 = v9;
    v15 = v26;
    v16 = sub_182AD4078();
    if (*(v16 + 16) == 1)
    {
      if (*(v16 + 32))
      {
        LOBYTE(v28) = 1;
        sub_181F9B1E4();
        sub_182AD3F58();
        sub_181F9B2E0();
        v21 = v23;
        sub_182AD3FF8();
        (*(v25 + 8))(v4, v21);
        (*(v14 + 8))(v11, v8);
        swift_unknownObjectRelease();
        *v15 = v28;
      }

      else
      {
        LOBYTE(v28) = 0;
        sub_181F9B28C();
        sub_182AD3F58();
        (*(v24 + 8))(v7, v27);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        *v15 = 0u;
      }
    }

    else
    {
      v17 = sub_182AD3C98();
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A40, &qword_182AEE9A0);
      *v19 = &type metadata for NWBrowser.Result.Metadata;
      sub_182AD3F78();
      sub_182AD3C88();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
      swift_willThrow();
      (*(v14 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t NWBrowser.Result.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838F60, &unk_182AE9780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v36 - v4;
  v6 = type metadata accessor for NWEndpoint(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839148, &qword_182AE9870);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v36 - v11;
  v13 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_181F9B334();
  v14 = v45;
  sub_182AD45E8();
  if (v14)
  {
    goto LABEL_2;
  }

  v45 = v5;
  LOBYTE(v48) = 0;
  sub_181F9B0F4(&qword_1EA839158, type metadata accessor for NWEndpoint, &protocol conformance descriptor for NWEndpoint);
  sub_182AD3FF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839160, &qword_182AE9878);
  v50 = 1;
  sub_181F9B388();
  sub_182AD3FF8();
  v17 = v48;
  v50 = 2;
  sub_181F9B2E0();
  sub_182AD3FF8();
  v43 = 0;
  v41 = v12;
  v42 = v9;
  v19 = v48;
  v18 = v49;
  v20 = NWEndpoint.nw.getter();
  if (!v20)
  {

    v45 = sub_182AD3C98();
    v43 = swift_allocError();
    v34 = v33;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A40, &qword_182AEE9A0) + 48);
    *v34 = v6;
    v35 = v46;
    __swift_project_boxed_opaque_existential_1(v46, v46[3]);
    sub_182AD45A8();
    sub_182AD3C88();
    (*(*(v45 - 8) + 104))(v34, *MEMORY[0x1E69E6B08]);
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_181F9A9B8(v8, type metadata accessor for NWEndpoint);
    (*(v10 + 8))(v41, v42);
    v15 = v35;
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  v38 = v10;
  v39 = v18;
  v36[1] = v19;
  v37 = v8;
  v36[0] = v20;
  v21 = nw_browse_result_create(v20);
  v40 = v17;
  v22 = *(v17 + 16);
  v23 = v45;
  if (v22)
  {
    v24 = (v40 + 32);
    v25 = type metadata accessor for __NWInterface();
    do
    {
      v26 = *v24;
      v27 = objc_allocWithZone(v25);
      v28 = OBJC_IVAR____TtC7Network13__NWInterface_lock;
      swift_retain_n();
      v29 = swift_slowAlloc();
      *&v27[v28] = v29;
      *&v27[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
      *&v27[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v26;
      *v29 = 0;
      v47.receiver = v27;
      v47.super_class = v25;
      objc_msgSendSuper2(&v47, sel_init);
      nw_interface_bridge();
      if (v30)
      {
        nw_browse_result_insert_interface(v21, v30);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      ++v24;
      --v22;
    }

    while (v22);
  }

  nw_browse_result_set_txt_record_object(v21, v39);
  v31 = swift_unknownObjectRetain();
  sub_181F8F51C(v31, v23);
  v32 = type metadata accessor for NWBrowser.Result(0);
  result = (*(*(v32 - 8) + 48))(v23, 1, v32);
  if (result != 1)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    sub_181F9A9B8(v37, type metadata accessor for NWEndpoint);
    (*(v38 + 8))(v41, v42);
    sub_181F9A800(v23, v44, type metadata accessor for NWBrowser.Result);
LABEL_2:
    v15 = v46;
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  __break(1u);
  return result;
}

uint64_t NWBrowser.Result.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839178, &qword_182AE9880);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F9B334();
  sub_182AD4638();
  v9 = type metadata accessor for NWBrowser.Result(0);
  LOBYTE(v15) = 0;
  type metadata accessor for NWEndpoint(0);
  sub_181F9B0F4(&qword_1EA839180, type metadata accessor for NWEndpoint, &protocol conformance descriptor for NWEndpoint);
  sub_182AD4118();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v15 = *(v3 + *(v9 + 24));
  v17 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839160, &qword_182AE9878);
  sub_181F9B460();
  sub_182AD4118();
  v11 = (v3 + *(v9 + 28));
  v12 = *v11;
  if (!*v11)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v13 = v11[1];
  v15 = *v11;
  v16 = v13;
  v17 = 2;
  sub_181F9B238();

  swift_unknownObjectRetain();
  sub_182AD4118();
  (*(v6 + 8))(v8, v5);
  return sub_181AB612C(v12, v13);
}

uint64_t sub_181F96388()
{
  v1 = 0x6361667265746E69;
  if (*v0 != 1)
  {
    v1 = 0x726F636552747874;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E696F70646E65;
  }
}

uint64_t sub_181F963EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_181F9DA00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_181F96414(uint64_t a1)
{
  v2 = sub_181F9B334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F96450(uint64_t a1)
{
  v2 = sub_181F9B334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F964BC(uint64_t a1, unint64_t a2, void *a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v7 = a3;
      v6 = 0;
      goto LABEL_9;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a1;
      LOWORD(v11[1]) = a2;
      BYTE2(v11[1]) = BYTE2(a2);
      BYTE3(v11[1]) = BYTE3(a2);
      BYTE4(v11[1]) = BYTE4(a2);
      v6 = BYTE6(a2);
      BYTE5(v11[1]) = BYTE5(a2);
      v7 = a3;
LABEL_9:
      nw_browse_descriptor_set_custom_service(v7, v11, v6);
      return swift_unknownObjectRelease();
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  swift_unknownObjectRetain();
  sub_181F96624(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  return swift_unknownObjectRelease();
}

char *sub_181F96624(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_182AD1D58();
  v8 = result;
  if (result)
  {
    result = sub_182AD1D88();
    if (__OFSUB__(a1, result))
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = sub_182AD1D78();
  if (v8)
  {
    if (v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    nw_browse_descriptor_set_custom_service(a4, v8, v12);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_181F966B8(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v22 = a1;
  v6 = type metadata accessor for NWBrowser.Result.Change(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  sub_182AD44E8();
  NWBrowser.Result.Change.hash(into:)(v23);
  v11 = sub_182AD4558();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v7 + 72);
    while (1)
    {
      sub_181F9A8DC(*(v10 + 48) + v15 * v13, v9, type metadata accessor for NWBrowser.Result.Change);
      v17 = _s7Network9NWBrowserC6ResultV6ChangeO2eeoiySbAG_AGtFZ_0(v9, a2, v16);
      sub_181F9A9B8(v9, type metadata accessor for NWBrowser.Result.Change);
      if (v17)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_181F9A9B8(a2, type metadata accessor for NWBrowser.Result.Change);
    sub_181F9A8DC(*(v10 + 48) + v15 * v13, v22, type metadata accessor for NWBrowser.Result.Change);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_181F9A8DC(a2, v9, type metadata accessor for NWBrowser.Result.Change);
    v23[0] = *v4;
    sub_181F98D8C(v9, v13, isUniquelyReferenced_nonNull_native, v19);
    v20 = v22;
    *v4 = v23[0];
    sub_181F9A800(a2, v20, type metadata accessor for NWBrowser.Result.Change);
    return 1;
  }
}

uint64_t sub_181F968F8(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v4 = type metadata accessor for NWBrowser.Result(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v43 - v9;
  v45 = v2;
  v10 = *v2;
  sub_182AD44E8();
  v50 = v4[5];
  NWEndpoint.hash(into:)(v52);
  v11 = sub_182AD4558();
  v51 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  v49 = v10 + 56;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v47 = ~v12;
    v48 = *(v5 + 72);
    do
    {
      v14 = v48 * v13;
      sub_181F9A8DC(*(v51 + 48) + v48 * v13, v7, type metadata accessor for NWBrowser.Result);
      result = _s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(&v7[v4[5]], a2 + v50);
      if (result)
      {
        v16 = v4[6];
        v17 = *&v7[v16];
        v18 = *(a2 + v16);
        v19 = *(v17 + 16);
        if (v19 == *(v18 + 16))
        {
          if (v19)
          {
            v20 = v17 == v18;
          }

          else
          {
            v20 = 1;
          }

          if (!v20)
          {
            v28 = (v17 + 32);
            v29 = (v18 + 32);
            do
            {
              if (!v19)
              {
                __break(1u);
                return result;
              }

              v32 = *v28;
              v33 = *v29;
              result = *(*v28 + 40);
              if (result != *(*v29 + 40) || *(*v28 + 48) != *(*v29 + 48))
              {
                result = sub_182AD4268();
                if ((result & 1) == 0)
                {
                  goto LABEL_52;
                }
              }

              if (*(v32 + 16) != *(v33 + 16))
              {
                goto LABEL_52;
              }

              v35 = *(v33 + 184);
              if (v35 <= 1)
              {
                if (!*(v33 + 184))
                {
                  goto LABEL_41;
                }

                v36 = 2;
              }

              else if (v35 == 2)
              {
                v36 = 3;
              }

              else if (v35 == 3)
              {
                v36 = 4;
              }

              else
              {
                v36 = 1;
              }

              if (*(v32 + 184))
              {
                v37 = qword_182AEB498[*(v32 + 184)] == v36;
              }

              else
              {
                v37 = 1;
              }

              if (!v37)
              {
                goto LABEL_52;
              }

LABEL_41:
              v38 = *(v33 + 185);
              if (v38 <= 1)
              {
                if (!*(v33 + 185))
                {
                  goto LABEL_20;
                }

                v30 = 3;
              }

              else if (v38 == 2)
              {
                v30 = 4;
              }

              else if (v38 == 3)
              {
                v30 = 6;
              }

              else
              {
                v30 = 7;
              }

              if (*(v32 + 185))
              {
                v31 = qword_182AEB4C0[*(v32 + 185)] == v30;
              }

              else
              {
                v31 = 1;
              }

              if (!v31)
              {
                goto LABEL_52;
              }

LABEL_20:
              ++v28;
              ++v29;
              --v19;
            }

            while (v19);
          }

          v21 = v4[7];
          v23 = *&v7[v21];
          v22 = *&v7[v21 + 8];
          v24 = (a2 + v21);
          v25 = *v24;
          v26 = v24[1];
          if (v23)
          {
            if (v25)
            {
              sub_181E6550C(*v24, v24[1]);
              sub_181E6550C(v23, v22);
              sub_181E6550C(v25, v26);
              sub_181E6550C(v23, v22);
              is_equal = nw_txt_record_is_equal(v22, v26);
              sub_181AB612C(v23, v22);
              sub_181AB612C(v25, v26);
              sub_181AB612C(v25, v26);
              sub_181AB612C(v23, v22);
              sub_181F9A9B8(v7, type metadata accessor for NWBrowser.Result);
              if (is_equal)
              {
                goto LABEL_57;
              }

              goto LABEL_53;
            }

            v39 = v23;
          }

          else
          {
            if (!v25)
            {
              sub_181AB612C(0, v22);
              sub_181AB612C(0, v26);
              sub_181F9A9B8(v7, type metadata accessor for NWBrowser.Result);
LABEL_57:
              sub_181F9A9B8(a2, type metadata accessor for NWBrowser.Result);
              sub_181F9A8DC(*(v51 + 48) + v14, v46, type metadata accessor for NWBrowser.Result);
              return 0;
            }

            v39 = 0;
          }

          swift_unknownObjectRetain();
          sub_181AB612C(v39, v22);
          sub_181AB612C(v25, v26);
        }
      }

LABEL_52:
      sub_181F9A9B8(v7, type metadata accessor for NWBrowser.Result);
LABEL_53:
      v13 = (v13 + 1) & v47;
    }

    while (((*(v49 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  v40 = v45;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v44;
  sub_181F9A8DC(a2, v44, type metadata accessor for NWBrowser.Result);
  v52[0] = *v40;
  sub_181F98FD0(v42, v13, isUniquelyReferenced_nonNull_native);
  *v40 = v52[0];
  sub_181F9A800(a2, v46, type metadata accessor for NWBrowser.Result);
  return 1;
}

uint64_t sub_181F96E00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = type metadata accessor for NWBrowser.Result(0);
  v43 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v2;
  v7 = *v2;
  sub_182AD44E8();
  v47 = v4[5];
  NWEndpoint.hash(into:)(v49);
  v8 = sub_182AD4558();
  v48 = v7;
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  v46 = v7 + 56;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return (*(v43 + 56))(v42, 1, 1, v4);
  }

  v44 = ~v9;
  v45 = *(v43 + 72);
  while (1)
  {
    v11 = v45 * v10;
    sub_181F9A8DC(*(v48 + 48) + v45 * v10, v6, type metadata accessor for NWBrowser.Result);
    if ((_s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(&v6[v4[5]], a1 + v47) & 1) == 0)
    {
      goto LABEL_52;
    }

    v12 = v4[6];
    v13 = *&v6[v12];
    v14 = *(a1 + v12);
    v15 = *(v13 + 16);
    if (v15 != *(v14 + 16))
    {
      goto LABEL_52;
    }

    if (v15 && v13 != v14)
    {
      break;
    }

LABEL_10:
    v17 = v4[7];
    v19 = *&v6[v17];
    v18 = *&v6[v17 + 8];
    v20 = (a1 + v17);
    v22 = *v20;
    v21 = v20[1];
    if (v19)
    {
      if (v22)
      {
        sub_181E6550C(*v20, v20[1]);
        sub_181E6550C(v19, v18);
        sub_181E6550C(v22, v21);
        sub_181E6550C(v19, v18);
        is_equal = nw_txt_record_is_equal(v18, v21);
        sub_181AB612C(v19, v18);
        sub_181AB612C(v22, v21);
        sub_181AB612C(v22, v21);
        sub_181AB612C(v19, v18);
        sub_181F9A9B8(v6, type metadata accessor for NWBrowser.Result);
        if (is_equal)
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      }

      v35 = v19;
    }

    else
    {
      if (!v22)
      {
        sub_181AB612C(0, v18);
        sub_181AB612C(0, v21);
        sub_181F9A9B8(v6, type metadata accessor for NWBrowser.Result);
LABEL_57:
        a1 = v41;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = *a1;
        v49[0] = *a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_58;
      }

      v35 = 0;
    }

    swift_unknownObjectRetain();
    sub_181AB612C(v35, v18);
    sub_181AB612C(v22, v21);
LABEL_52:
    sub_181F9A9B8(v6, type metadata accessor for NWBrowser.Result);
LABEL_53:
    v10 = (v10 + 1) & v44;
    if (((*(v46 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return (*(v43 + 56))(v42, 1, 1, v4);
    }
  }

  v24 = (v13 + 32);
  v25 = (v14 + 32);
  while (v15)
  {
    v28 = *v24;
    v29 = *v25;
    v30 = *(*v24 + 40) == *(*v25 + 40) && *(*v24 + 48) == *(*v25 + 48);
    if (!v30 && (sub_182AD4268() & 1) == 0 || *(v28 + 16) != *(v29 + 16))
    {
      goto LABEL_52;
    }

    v31 = *(v29 + 184);
    if (v31 <= 1)
    {
      if (!*(v29 + 184))
      {
        goto LABEL_41;
      }

      v32 = 2;
    }

    else if (v31 == 2)
    {
      v32 = 3;
    }

    else if (v31 == 3)
    {
      v32 = 4;
    }

    else
    {
      v32 = 1;
    }

    if (*(v28 + 184))
    {
      v33 = qword_182AEB498[*(v28 + 184)] == v32;
    }

    else
    {
      v33 = 1;
    }

    if (!v33)
    {
      goto LABEL_52;
    }

LABEL_41:
    v34 = *(v29 + 185);
    if (v34 <= 1)
    {
      if (!*(v29 + 185))
      {
        goto LABEL_20;
      }

      v26 = 3;
    }

    else if (v34 == 2)
    {
      v26 = 4;
    }

    else if (v34 == 3)
    {
      v26 = 6;
    }

    else
    {
      v26 = 7;
    }

    if (*(v28 + 185))
    {
      v27 = qword_182AEB4C0[*(v28 + 185)] == v26;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      goto LABEL_52;
    }

LABEL_20:
    ++v24;
    ++v25;
    if (!--v15)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_60:
  sub_181F974C8();
  v38 = v49[0];
LABEL_58:
  v39 = v42;
  sub_181F9A800(*(v38 + 48) + v11, v42, type metadata accessor for NWBrowser.Result);
  sub_181F98734(v10);
  *a1 = v49[0];
  return (*(v43 + 56))(v39, 0, 1, v4);
}

void *sub_181F972BC(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for NWBrowser.Result.Change(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839370, &qword_182AEB478);
  v7 = *v1;
  v8 = sub_182AD3B38();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v4 + 72) * (v19 | (v13 << 6));
        sub_181F9A8DC(*(v7 + 48) + v22, v6, type metadata accessor for NWBrowser.Result.Change);
        result = sub_181F9A800(v6, *(v9 + 48) + v22, type metadata accessor for NWBrowser.Result.Change);
      }

      while (v17);
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
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
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
LABEL_16:

    *v2 = v9;
  }

  return result;
}

void *sub_181F974C8()
{
  v1 = v0;
  v2 = type metadata accessor for NWBrowser.Result(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839378, &qword_182AEB480);
  v6 = *v0;
  v7 = sub_182AD3B38();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_181F9A8DC(*(v6 + 48) + v21, v5, type metadata accessor for NWBrowser.Result);
        result = sub_181F9A800(v5, *(v8 + 48) + v21, type metadata accessor for NWBrowser.Result);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_181F976D4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for NWBrowser.Result(0);
  MEMORY[0x1EEE9AC00](v3);
  v45 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v43 - v6;
  v8 = type metadata accessor for NWBrowser.Result.Change(0);
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v50 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v51 = v43 - v11;
  v12 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839370, &qword_182AEB478);
  result = sub_182AD3B48();
  v14 = result;
  if (!*(v12 + 16))
  {

LABEL_35:
    *v2 = v14;
    return result;
  }

  v43[0] = v1;
  v43[1] = v3;
  v15 = 0;
  v16 = v12 + 56;
  v17 = 1 << *(v12 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v12 + 56);
  v20 = (v17 + 63) >> 6;
  v21 = result + 56;
  v46 = v12;
  while (v19)
  {
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
LABEL_15:
    v26 = *(v12 + 48);
    v49 = *(v47 + 72);
    v27 = v51;
    sub_181F9A8DC(v26 + v49 * (v23 | (v15 << 6)), v51, type metadata accessor for NWBrowser.Result.Change);
    sub_182AD44E8();
    sub_181F9A8DC(v27, v50, type metadata accessor for NWBrowser.Result.Change);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_181F9A800(v50, v7, type metadata accessor for NWBrowser.Result);
        v29 = 2;
      }

      else
      {
        sub_181F9A800(v50, v7, type metadata accessor for NWBrowser.Result);
        v29 = 1;
      }

      MEMORY[0x1865DB070](v29);
      NWEndpoint.hash(into:)(v52);
      v35 = v7;
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A18, &qword_182AE61B0);
      v31 = *(v30 + 48);
      v32 = v50;
      v44 = *(v50 + *(v30 + 64));
      sub_181F9A800(v50, v7, type metadata accessor for NWBrowser.Result);
      v33 = v32 + v31;
      v34 = v45;
      sub_181F9A800(v33, v45, type metadata accessor for NWBrowser.Result);
      MEMORY[0x1865DB070](3);
      NWEndpoint.hash(into:)(v52);
      NWEndpoint.hash(into:)(v52);
      sub_182AD4518();
      sub_181F9A9B8(v34, type metadata accessor for NWBrowser.Result);
      v35 = v7;
LABEL_22:
      sub_181F9A9B8(v35, type metadata accessor for NWBrowser.Result);
      goto LABEL_24;
    }

    MEMORY[0x1865DB070](0);
LABEL_24:
    v12 = v46;
    result = sub_182AD4558();
    v36 = -1 << *(v14 + 32);
    v37 = result & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v36) >> 6;
      while (++v38 != v40 || (v39 & 1) == 0)
      {
        v41 = v38 == v40;
        if (v38 == v40)
        {
          v38 = 0;
        }

        v39 |= v41;
        v42 = *(v21 + 8 * v38);
        if (v42 != -1)
        {
          v22 = __clz(__rbit64(~v42)) + (v38 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_37;
    }

    v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = sub_181F9A800(v51, *(v14 + 48) + v22 * v49, type metadata accessor for NWBrowser.Result.Change);
    ++*(v14 + 16);
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v20)
    {

      v2 = v43[0];
      goto LABEL_35;
    }

    v25 = *(v16 + 8 * v15);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v19 = (v25 - 1) & v25;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_181F97BE0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for NWBrowser.Result(0);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839378, &qword_182AEB480);
  result = sub_182AD3B48();
  v8 = result;
  if (*(v6 + 16))
  {
    v27 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v28 + 72);
      sub_181F9A8DC(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for NWBrowser.Result);
      sub_182AD44E8();
      NWEndpoint.hash(into:)(v30);
      result = sub_182AD4558();
      v20 = -1 << *(v8 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_181F9A800(v5, *(v8 + 48) + v15 * v19, type metadata accessor for NWBrowser.Result);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_181F97EC4(uint64_t a1)
{
  v2 = v1;
  v52 = type metadata accessor for NWBrowser.Result(0);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v45 - v5;
  v6 = type metadata accessor for NWBrowser.Result.Change(0);
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v45 - v9;
  v10 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839370, &qword_182AEB478);
  result = sub_182AD3B48();
  v12 = result;
  if (*(v10 + 16))
  {
    v46 = v1;
    v47 = v10;
    v13 = 0;
    v14 = (v10 + 56);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = result + 56;
    while (1)
    {
      if (!v17)
      {
        v22 = v13;
        while (1)
        {
          v13 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
            goto LABEL_39;
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

        v44 = 1 << *(v10 + 32);
        if (v44 >= 64)
        {
          bzero(v14, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v14 = -1 << v44;
        }

        v2 = v46;
        *(v10 + 16) = 0;
        goto LABEL_37;
      }

      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = *(v53 + 72);
      v25 = v56;
      sub_181F9A800(*(v10 + 48) + v24 * (v21 | (v13 << 6)), v56, type metadata accessor for NWBrowser.Result.Change);
      sub_182AD44E8();
      sub_181F9A8DC(v25, v55, type metadata accessor for NWBrowser.Result.Change);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A18, &qword_182AE61B0);
        v30 = *(v29 + 48);
        v31 = *(v29 + 64);
        v49 = v24;
        v32 = v55;
        v48 = *(v55 + v31);
        v33 = v51;
        sub_181F9A800(v55, v51, type metadata accessor for NWBrowser.Result);
        v34 = v32 + v30;
        v35 = v50;
        sub_181F9A800(v34, v50, type metadata accessor for NWBrowser.Result);
        MEMORY[0x1865DB070](3);
        NWEndpoint.hash(into:)(v57);
        v24 = v49;
        NWEndpoint.hash(into:)(v57);
        sub_182AD4518();
        sub_181F9A9B8(v35, type metadata accessor for NWBrowser.Result);
        v36 = v33;
        v10 = v47;
LABEL_22:
        sub_181F9A9B8(v36, type metadata accessor for NWBrowser.Result);
        goto LABEL_24;
      }

      MEMORY[0x1865DB070](0);
LABEL_24:
      result = sub_182AD4558();
      v37 = -1 << *(v12 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v19 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v19 + 8 * v39);
          if (v43 != -1)
          {
            v20 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v38) & ~*(v19 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_181F9A800(v56, *(v12 + 48) + v20 * v24, type metadata accessor for NWBrowser.Result.Change);
      ++*(v12 + 16);
    }

    v27 = v51;
    if (EnumCaseMultiPayload)
    {
      sub_181F9A800(v55, v51, type metadata accessor for NWBrowser.Result);
      v28 = 2;
    }

    else
    {
      sub_181F9A800(v55, v51, type metadata accessor for NWBrowser.Result);
      v28 = 1;
    }

    MEMORY[0x1865DB070](v28);
    NWEndpoint.hash(into:)(v57);
    v36 = v27;
    goto LABEL_22;
  }

LABEL_37:

  *v2 = v12;
  return result;
}

uint64_t sub_181F98420(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for NWBrowser.Result(0);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839378, &qword_182AEB480);
  result = sub_182AD3B48();
  v8 = result;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v30 + 72);
      sub_181F9A800(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for NWBrowser.Result);
      sub_182AD44E8();
      NWEndpoint.hash(into:)(v32);
      result = sub_182AD4558();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_181F9A800(v5, *(v8 + 48) + v16 * v20, type metadata accessor for NWBrowser.Result);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v29;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

void sub_181F98734(int64_t a1)
{
  v42 = sub_182AD2058();
  v52 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NWEndpoint(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for NWBrowser.Result(0);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = *v1 + 56;
  v12 = -1 << *(*v1 + 32);
  v13 = (a1 + 1) & ~v12;
  if (((1 << v13) & *(v11 + 8 * (v13 >> 6))) != 0)
  {
    v49 = v7;
    v14 = ~v12;

    v51 = v14;
    v15 = sub_182AD3AE8();
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) != 0)
    {
      v50 = (v15 + 1) & v51;
      v16 = *(v49 + 72);
      v40 = (v52 + 32);
      v39 = (v52 + 8);
      v17 = v47;
      v48 = v9;
      v49 = v16;
      v45 = v4;
      v46 = v10;
      v44 = v11;
      while (1)
      {
        v18 = *(v10 + 48);
        v52 = v16 * v13;
        sub_181F9A8DC(v18 + v16 * v13, v9, type metadata accessor for NWBrowser.Result);
        sub_182AD44E8();
        sub_181F9A8DC(&v9[*(v17 + 20)], v6, type metadata accessor for NWEndpoint);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v43 = a1;
            v29 = *(v6 + 6);
            MEMORY[0x1865DB070](1);
            sub_182AD30E8();

            sub_182AD30E8();

            sub_182AD30E8();

            sub_182AD4518();
            if (v29)
            {
              v30 = *(v29 + 184);
              v31 = *(v29 + 185);
              MEMORY[0x1865DB070](*(v29 + 16));
              sub_182AD30E8();
              MEMORY[0x1865DB070](qword_182AEB498[v30]);
              MEMORY[0x1865DB070](qword_182AEB4C0[v31]);
            }

            a1 = v43;
            v10 = v46;
            v11 = v44;
            v17 = v47;
            v9 = v48;
          }

          else
          {
            v23 = *v6;
            v24 = *(v6 + 1);
            v25 = *(v6 + 2);
            v26 = v6[24];
            MEMORY[0x1865DB070](0);
            v53 = v23;
            v54 = v24;
            v55 = v25;
            v56 = v26;
            NWEndpoint.Host.hash(into:)(v57);
            sub_182AD4528();
            sub_181E605C8(v23, v24, v25, v26);
            v10 = v46;
            v11 = v44;
            v17 = v47;
          }
        }

        else if (EnumCaseMultiPayload == 2)
        {
          MEMORY[0x1865DB070](2);
          sub_182AD30E8();
          v9 = v48;
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v20 = v41;
          v21 = v42;
          (*v40)(v41, v6, v42);
          MEMORY[0x1865DB070](3);
          sub_181F9B0F4(&qword_1EA8366A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
          sub_182AD2EB8();
          v22 = v20;
          v9 = v48;
          (*v39)(v22, v21);
        }

        else
        {
          v27 = *v6;
          MEMORY[0x1865DB070](4);
          hash = nw_endpoint_get_hash(v27);
          MEMORY[0x1865DB070](hash);
          swift_unknownObjectRelease();
        }

        v32 = sub_182AD4558();
        sub_181F9A9B8(v9, type metadata accessor for NWBrowser.Result);
        v33 = v32 & v51;
        v34 = v51;
        if (a1 >= v50)
        {
          break;
        }

        v16 = v49;
        if (v33 < v50)
        {
          goto LABEL_22;
        }

LABEL_23:
        v35 = v16 * a1;
        if (v16 * a1 < v52 || *(v10 + 48) + v16 * a1 >= (*(v10 + 48) + v52 + v16))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v13;
          if (v35 == v52)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v13;
LABEL_6:
        v13 = (v13 + 1) & v34;
        if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v16 = v49;
      if (v33 < v50)
      {
        goto LABEL_6;
      }

LABEL_22:
      if (a1 < v33)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_27:

    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v36 = *(v10 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v38;
    ++*(v10 + 36);
  }
}

uint64_t sub_181F98D8C(uint64_t a1, unint64_t a2, char a3, double a4)
{
  v5 = v4;
  v9 = type metadata accessor for NWBrowser.Result.Change(0);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v30[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*v5 + 16);
  v16 = *(*v5 + 24);
  if (v16 > v15 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v29 = v11;
    sub_181F97EC4(v15 + 1);
  }

  else
  {
    if (v16 > v15)
    {
      sub_181F972BC(v12);
      goto LABEL_12;
    }

    v29 = v11;
    sub_181F976D4(v15 + 1);
  }

  v17 = *v5;
  sub_182AD44E8();
  NWBrowser.Result.Change.hash(into:)(v30);
  v18 = sub_182AD4558();
  v19 = -1 << *(v17 + 32);
  a2 = v18 & ~v19;
  if ((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v10 + 72);
    do
    {
      sub_181F9A8DC(*(v17 + 48) + v21 * a2, v14, type metadata accessor for NWBrowser.Result.Change);
      v23 = _s7Network9NWBrowserC6ResultV6ChangeO2eeoiySbAG_AGtFZ_0(v14, a1, v22);
      sub_181F9A9B8(v14, type metadata accessor for NWBrowser.Result.Change);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_181F9A800(a1, *(v24 + 48) + *(v10 + 72) * a2, type metadata accessor for NWBrowser.Result.Change);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_182AD43F8();
  __break(1u);
  return result;
}

uint64_t sub_181F98FD0(uint64_t a1, unint64_t a2, char a3)
{
  v8 = type metadata accessor for NWBrowser.Result(0);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = (*v3)[2].isa;
  v13 = (*v3)[3].isa;
  v43 = v9;
  v44 = v3;
  if (v13 > isa && (a3 & 1) != 0)
  {
    goto LABEL_61;
  }

  if (a3)
  {
    sub_181F98420(isa + 1);
  }

  else
  {
    if (v13 > isa)
    {
      sub_181F974C8();
LABEL_61:
      v20 = *v44;
      (*v44)[(a2 >> 6) + 7].isa = ((*v44)[(a2 >> 6) + 7].isa | (1 << a2));
      result = sub_181F9A800(a1, v20[6].isa + *(v43 + 72) * a2, type metadata accessor for NWBrowser.Result);
      v39 = v20[2].isa;
      v40 = __OFADD__(v39, 1);
      v41 = (v39 + 1);
      if (v40)
      {
        goto LABEL_64;
      }

      v20[2].isa = v41;
      return result;
    }

    sub_181F97BE0(isa + 1);
  }

  v14 = *v3;
  sub_182AD44E8();
  v48 = v8[5];
  NWEndpoint.hash(into:)(v49);
  v15 = sub_182AD4558();
  v16 = -1 << LOBYTE(v14[4].isa);
  a2 = v15 & ~v16;
  v47 = v14 + 7;
  if (((*(&v14[7].isa + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_61;
  }

  v45 = ~v16;
  v46 = *(v9 + 72);
  v42 = v14;
  while (1)
  {
    sub_181F9A8DC(v14[6].isa + v46 * a2, v11, type metadata accessor for NWBrowser.Result);
    if ((_s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(&v11[v8[5]], a1 + v48) & 1) == 0)
    {
      goto LABEL_59;
    }

    v17 = v8[6];
    v18 = *&v11[v17];
    v19 = *(a1 + v17);
    v20 = *(v18 + 16);
    if (v20 != *(v19 + 16))
    {
      goto LABEL_59;
    }

    if (v20 && v18 != v19)
    {
      break;
    }

LABEL_17:
    v22 = v8[7];
    v23 = *&v11[v22];
    v4 = *&v11[v22 + 8];
    v24 = (a1 + v22);
    v25 = *v24;
    v20 = v24[1];
    if (v23)
    {
      if (v25)
      {
        sub_181E6550C(*v24, v24[1]);
        sub_181E6550C(v23, v4);
        sub_181E6550C(v25, v20);
        sub_181E6550C(v23, v4);
        is_equal = nw_txt_record_is_equal(v4, v20);
        sub_181AB612C(v23, v4);
        sub_181AB612C(v25, v20);
        sub_181AB612C(v25, v20);
        sub_181AB612C(v23, v4);
        sub_181F9A9B8(v11, type metadata accessor for NWBrowser.Result);
        v14 = v42;
        if (is_equal)
        {
          goto LABEL_66;
        }

        goto LABEL_60;
      }

      v37 = v23;
    }

    else
    {
      if (!v25)
      {
        goto LABEL_65;
      }

      v37 = 0;
    }

    swift_unknownObjectRetain();
    sub_181AB612C(v37, v4);
    sub_181AB612C(v25, v20);
    v14 = v42;
LABEL_59:
    sub_181F9A9B8(v11, type metadata accessor for NWBrowser.Result);
LABEL_60:
    a2 = (a2 + 1) & v45;
    if (((*(&v47->isa + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  v27 = (v18 + 32);
  v28 = (v19 + 32);
  while (v20)
  {
    v4 = *v27;
    v31 = *v28;
    v32 = *(*v27 + 40) == *(*v28 + 40) && *(*v27 + 48) == *(*v28 + 48);
    if (!v32 && (sub_182AD4268() & 1) == 0 || *(v4 + 16) != *(v31 + 16))
    {
      goto LABEL_59;
    }

    v33 = *(v31 + 184);
    if (v33 <= 1)
    {
      if (!*(v31 + 184))
      {
        goto LABEL_48;
      }

      v34 = 2;
    }

    else if (v33 == 2)
    {
      v34 = 3;
    }

    else if (v33 == 3)
    {
      v34 = 4;
    }

    else
    {
      v34 = 1;
    }

    if (*(v4 + 184))
    {
      v35 = qword_182AEB498[*(v4 + 184)] == v34;
    }

    else
    {
      v35 = 1;
    }

    if (!v35)
    {
      goto LABEL_59;
    }

LABEL_48:
    v36 = *(v31 + 185);
    if (v36 <= 1)
    {
      if (!*(v31 + 185))
      {
        goto LABEL_27;
      }

      v29 = 3;
    }

    else if (v36 == 2)
    {
      v29 = 4;
    }

    else if (v36 == 3)
    {
      v29 = 6;
    }

    else
    {
      v29 = 7;
    }

    if (*(v4 + 185))
    {
      v30 = qword_182AEB4C0[*(v4 + 185)] == v29;
    }

    else
    {
      v30 = 1;
    }

    if (!v30)
    {
      goto LABEL_59;
    }

LABEL_27:
    ++v27;
    ++v28;
    v20 = (v20 - 1);
    if (!v20)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  sub_181AB612C(0, v4);
  sub_181AB612C(0, v20);
  sub_181F9A9B8(v11, type metadata accessor for NWBrowser.Result);
LABEL_66:
  result = sub_182AD43F8();
  __break(1u);
  return result;
}

BOOL _s7Network9NWBrowserC6ResultV6ChangeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for NWBrowser.Result.Change(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v73 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v73 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839368, &qword_182AEB470);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v73 - v16;
  v78 = type metadata accessor for NWBrowser.Result(0);
  MEMORY[0x1EEE9AC00](v78);
  v74 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v73 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v75 = &v73 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v76 = &v73 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v77 = &v73 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v73 - v28;
  v30 = &v17[*(v15 + 56)];
  sub_181F9A8DC(a1, v17, type metadata accessor for NWBrowser.Result.Change);
  sub_181F9A8DC(a2, v30, type metadata accessor for NWBrowser.Result.Change);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_181F9A8DC(v17, v10, type metadata accessor for NWBrowser.Result.Change);
      v13 = v10;
      v7 = v10;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_15:
        sub_181F9A800(v13, v29, type metadata accessor for NWBrowser.Result);
        v53 = v77;
        sub_181F9A800(v30, v77, type metadata accessor for NWBrowser.Result);
        sub_181F9A9B8(v17, type metadata accessor for NWBrowser.Result.Change);
        v54 = v78;
        if (_s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(&v29[*(v78 + 20)], v53 + *(v78 + 20)) & 1) != 0 && (sub_182080F1C(*&v29[*(v54 + 24)], *(v53 + *(v54 + 24))))
        {
          v55 = *(v54 + 28);
          v57 = *&v29[v55];
          v56 = *&v29[v55 + 8];
          v58 = (v53 + v55);
          v60 = *v58;
          v59 = v58[1];
          if (v57)
          {
            if (v60)
            {
              sub_181E6550C(v57, v56);
              sub_181E6550C(v60, v59);
              sub_181E6550C(v57, v56);
              sub_181E6550C(v60, v59);
              sub_181E6550C(v57, v56);
              sub_181E6550C(v60, v59);
              is_equal = nw_txt_record_is_equal(v56, v59);
              sub_181AB612C(v57, v56);
              sub_181AB612C(v60, v59);
              sub_181AB612C(v60, v59);
              sub_181AB612C(v57, v56);
              sub_181AB612C(v60, v59);
              sub_181AB612C(v57, v56);
LABEL_26:
              sub_181F9A9B8(v53, type metadata accessor for NWBrowser.Result);
              sub_181F9A9B8(v29, type metadata accessor for NWBrowser.Result);
              return is_equal;
            }
          }

          else if (!v60)
          {
            sub_181AB612C(0, v56);
            sub_181AB612C(0, v59);
            is_equal = 1;
            goto LABEL_26;
          }

          sub_181E6550C(v57, v56);
          sub_181E6550C(v60, v59);
          sub_181AB612C(v57, v56);
          sub_181AB612C(v60, v59);
        }

        is_equal = 0;
        goto LABEL_26;
      }
    }

    else
    {
      sub_181F9A8DC(v17, v13, type metadata accessor for NWBrowser.Result.Change);
      v7 = v13;
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_15;
      }
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_22:
    sub_181F49A88(v17, &qword_1EA839368, &qword_182AEB470);
    return 0;
  }

  sub_181F9A8DC(v17, v7, type metadata accessor for NWBrowser.Result.Change);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838A18, &qword_182AE61B0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 64);
  v35 = v7[v34];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_181F9A9B8(&v7[v33], type metadata accessor for NWBrowser.Result);
LABEL_21:
    sub_181F9A9B8(v7, type metadata accessor for NWBrowser.Result);
    goto LABEL_22;
  }

  v36 = *(v30 + v34);
  v37 = v76;
  sub_181F9A800(v7, v76, type metadata accessor for NWBrowser.Result);
  v38 = v75;
  sub_181F9A800(v30, v75, type metadata accessor for NWBrowser.Result);
  v39 = &v7[v33];
  v40 = v37;
  v41 = v73;
  sub_181F9A800(v39, v73, type metadata accessor for NWBrowser.Result);
  v42 = v74;
  sub_181F9A800(v30 + v33, v74, type metadata accessor for NWBrowser.Result);
  v43 = v78;
  if ((_s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(v40 + *(v78 + 20), v38 + *(v78 + 20)) & 1) == 0 || (sub_182080F1C(*(v40 + *(v43 + 24)), *(v38 + *(v43 + 24))) & 1) == 0)
  {
    goto LABEL_38;
  }

  v44 = *(v43 + 28);
  v45 = v40 + v44;
  v47 = *(v40 + v44);
  v46 = *(v45 + 8);
  v48 = (v38 + v44);
  v50 = *v48;
  v49 = v48[1];
  if (!v47)
  {
    if (!v50)
    {
      sub_181AB612C(0, *(v45 + 8));
      sub_181AB612C(0, v49);
LABEL_32:
      v63 = v78;
      v64 = _s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(v41 + *(v78 + 20), v42 + *(v78 + 20));
      v40 = v76;
      if ((v64 & 1) == 0)
      {
        v52 = 0;
        v38 = v75;
        goto LABEL_39;
      }

      v65 = sub_182080F1C(*(v41 + *(v63 + 24)), *(v42 + *(v63 + 24)));
      v38 = v75;
      if (v65)
      {
        v66 = *(v63 + 28);
        v68 = *(v41 + v66);
        v67 = *(v41 + v66 + 8);
        v69 = (v42 + v66);
        v71 = *v69;
        v70 = v69[1];
        if (v68)
        {
          if (v71)
          {
            sub_181E6550C(v68, v67);
            sub_181E6550C(v71, v70);
            sub_181E6550C(v68, v67);
            sub_181E6550C(v71, v70);
            sub_181E6550C(v68, v67);
            sub_181E6550C(v71, v70);
            v72 = nw_txt_record_is_equal(v67, v70);
            sub_181AB612C(v68, v67);
            sub_181AB612C(v71, v70);
            sub_181AB612C(v71, v70);
            sub_181AB612C(v68, v67);
            sub_181AB612C(v71, v70);
            sub_181AB612C(v68, v67);
            if (!v72)
            {
              goto LABEL_12;
            }

LABEL_44:
            v52 = v35 == v36;
            goto LABEL_13;
          }
        }

        else if (!v71)
        {
          sub_181AB612C(0, v67);
          sub_181AB612C(0, v70);
          goto LABEL_44;
        }

        sub_181E6550C(v68, v67);
        sub_181E6550C(v71, v70);
        sub_181AB612C(v68, v67);
        sub_181AB612C(v71, v70);
        goto LABEL_12;
      }

LABEL_38:
      v52 = 0;
      goto LABEL_39;
    }

LABEL_28:
    sub_181E6550C(v47, *(v45 + 8));
    sub_181E6550C(v50, v49);
    sub_181AB612C(v47, v46);
    sub_181AB612C(v50, v49);
    v52 = 0;
    goto LABEL_29;
  }

  if (!v50)
  {
    goto LABEL_28;
  }

  sub_181E6550C(v47, *(v45 + 8));
  sub_181E6550C(v50, v49);
  sub_181E6550C(v47, v46);
  sub_181E6550C(v50, v49);
  sub_181E6550C(v47, v46);
  sub_181E6550C(v50, v49);
  v51 = nw_txt_record_is_equal(v46, v49);
  sub_181AB612C(v47, v46);
  sub_181AB612C(v50, v49);
  sub_181AB612C(v50, v49);
  sub_181AB612C(v47, v46);
  sub_181AB612C(v50, v49);
  sub_181AB612C(v47, v46);
  if (v51)
  {
    goto LABEL_32;
  }

LABEL_12:
  v52 = 0;
LABEL_13:
  v38 = v75;
LABEL_29:
  v40 = v76;
LABEL_39:
  sub_181F9A9B8(v42, type metadata accessor for NWBrowser.Result);
  sub_181F9A9B8(v41, type metadata accessor for NWBrowser.Result);
  sub_181F9A9B8(v38, type metadata accessor for NWBrowser.Result);
  sub_181F9A9B8(v40, type metadata accessor for NWBrowser.Result);
  sub_181F9A9B8(v17, type metadata accessor for NWBrowser.Result.Change);
  return v52;
}

BOOL _s7Network9NWBrowserC6ResultV8MetadataO2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (*a1)
  {
    if (v5)
    {
      sub_181E6550C(*a2, a2[1]);
      sub_181E6550C(v3, v2);
      sub_181E6550C(v5, v4);
      sub_181E6550C(v3, v2);
      is_equal = nw_txt_record_is_equal(v2, v4);
      sub_181AB612C(v3, v2);
      sub_181AB612C(v5, v4);
      sub_181AB612C(v5, v4);
      sub_181AB612C(v3, v2);
      return is_equal;
    }

    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    sub_181E6550C(*a2, a2[1]);
    sub_181E6550C(v3, v2);
    sub_181AB612C(v3, v2);
    sub_181AB612C(v5, v4);
    return 0;
  }

  sub_181AB612C(0, v2);
  sub_181AB612C(0, v4);
  return 1;
}

BOOL _s7Network9NWBrowserC6ResultV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWBrowser.Result(0);
  if ((_s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(a1 + v4[5], a2 + v4[5]) & 1) == 0 || (sub_182080F1C(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[7];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v7)
  {
    if (v10)
    {
      sub_181E6550C(v7, v6);
      sub_181E6550C(v10, v9);
      sub_181E6550C(v7, v6);
      sub_181E6550C(v10, v9);
      sub_181E6550C(v7, v6);
      sub_181E6550C(v10, v9);
      is_equal = nw_txt_record_is_equal(v6, v9);
      sub_181AB612C(v7, v6);
      sub_181AB612C(v10, v9);
      sub_181AB612C(v10, v9);
      sub_181AB612C(v7, v6);
      sub_181AB612C(v10, v9);
      sub_181AB612C(v7, v6);
      return is_equal;
    }

    goto LABEL_7;
  }

  if (v10)
  {
LABEL_7:
    sub_181E6550C(v7, v6);
    sub_181E6550C(v10, v9);
    sub_181AB612C(v7, v6);
    sub_181AB612C(v10, v9);
    return 0;
  }

  sub_181AB612C(0, v6);
  sub_181AB612C(0, v9);
  return 1;
}

char *sub_181F9A028(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  result = sub_182AD1D58();
  v12 = result;
  if (result)
  {
    result = sub_182AD1D88();
    if (__OFSUB__(a1, result))
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v12 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_18;
  }

  result = sub_182AD1D78();
  if (v12)
  {
    v13 = a6 >> 62;
    if ((a6 >> 62) > 1)
    {
      if (v13 != 2)
      {
        v14 = 0;
        return nw_browse_descriptor_set_predicate(a4, v12, v14);
      }

      v16 = *(a5 + 16);
      v15 = *(a5 + 24);
      v14 = v15 - v16;
      if (!__OFSUB__(v15, v16))
      {
        return nw_browse_descriptor_set_predicate(a4, v12, v14);
      }

      __break(1u);
    }

    else if (!v13)
    {
      v14 = BYTE6(a6);
      return nw_browse_descriptor_set_predicate(a4, v12, v14);
    }

    if (!__OFSUB__(HIDWORD(a5), a5))
    {
      v14 = HIDWORD(a5) - a5;
      return nw_browse_descriptor_set_predicate(a4, v12, v14);
    }

    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_181F9A10C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    goto LABEL_8;
  }

  if (v6)
  {
    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 >= a1)
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_28;
  }

  v18[0] = a1;
  LOWORD(v18[1]) = a2;
  BYTE2(v18[1]) = BYTE2(a2);
  BYTE3(v18[1]) = BYTE3(a2);
  BYTE4(v18[1]) = BYTE4(a2);
  v7 = a5 >> 62;
  BYTE5(v18[1]) = BYTE5(a2);
  if ((a5 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v12 = 0;
      goto LABEL_25;
    }

    v14 = *(a4 + 16);
    v13 = *(a4 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      goto LABEL_25;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!v7)
  {
LABEL_14:
    v12 = BYTE6(a5);
LABEL_25:
    v10 = nw_browse_descriptor_set_predicate(a3, v18, v12);
    swift_unknownObjectRelease();
    return v10 & 1;
  }

  LODWORD(v6) = HIDWORD(a4) - a4;
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_8:
  if (v6 != 2)
  {
    v11 = a5 >> 62;
    memset(v18, 0, 14);
    if ((a5 >> 62) > 1)
    {
      v12 = 0;
      if (v11 != 2)
      {
        goto LABEL_25;
      }

      v16 = *(a4 + 16);
      v15 = *(a4 + 24);
      v12 = v15 - v16;
      if (!__OFSUB__(v15, v16))
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    else if (!v11)
    {
      goto LABEL_14;
    }

    LODWORD(v6) = HIDWORD(a4) - a4;
    if (!__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_23:
      v12 = v6;
      goto LABEL_25;
    }

LABEL_29:
    __break(1u);
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
LABEL_11:
  v10 = sub_181F9A028(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4, a5);
  swift_unknownObjectRelease();
  return v10 & 1;
}

uint64_t sub_181F9A300(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839388, &unk_182AEB488);
  v6 = swift_allocObject();
  *(v6 + 80) = 0;
  v7 = MEMORY[0x1E69E7CD0];
  *(v6 + 16) = MEMORY[0x1E69E7CD0];
  *(v6 + 24) = v7;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0;
  *(v3 + 24) = v6;
  sub_181F9A8DC(a1, v3 + OBJC_IVAR____TtC7Network9NWBrowser_descriptor, type metadata accessor for NWBrowser.Descriptor);
  *(v3 + OBJC_IVAR____TtC7Network9NWBrowser_parameters) = a2;

  v8 = NWBrowser.Descriptor.nw.getter();
  v9 = *(a2 + 16);
  os_unfair_lock_lock((v9 + 24));
  v10 = *(v9 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v9 + 24));
  v11 = nw_browser_create(v8, v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_181F9A9B8(a1, type metadata accessor for NWBrowser.Descriptor);
  *(v3 + 16) = v11;
  return v3;
}

uint64_t sub_181F9A428(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  sub_181AA39C0(v4, v3);
  result = sub_181A554F4(v5, v6);
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_181F9A484(uint64_t a1, NSObject *a2)
{
  v5 = *(v2 + 16);
  swift_unknownObjectRetain();
  sub_181F90998(a1, a2, v7);
  return v5(v7);
}

uint64_t sub_181F9A4E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  sub_181AA39C0(v6, v5);
  result = sub_181A554F4(v7, v8);
  *(a1 + 40) = v6;
  *(a1 + 48) = v5;
  *a2 = *(a1 + 16);
  return result;
}

void sub_181F9A55C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + 56);
  v5 = v3;

  *(a1 + 56) = v3;
  *(a1 + 16) = 1;
}

uint64_t sub_181F9A5FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D00, &unk_182AE57C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_181F9A66C()
{
  result = qword_1EA838F08;
  if (!qword_1EA838F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838F08);
  }

  return result;
}

unint64_t sub_181F9A6C0()
{
  result = qword_1EA838F10;
  if (!qword_1EA838F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838F10);
  }

  return result;
}

unint64_t sub_181F9A714()
{
  result = qword_1EA838F30;
  if (!qword_1EA838F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838F30);
  }

  return result;
}

uint64_t sub_181F9A768(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8399C0, &qword_182AE9760);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_181F9A800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_181F9A868()
{
  result = qword_1EA838F50;
  if (!qword_1EA838F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838F50);
  }

  return result;
}

uint64_t sub_181F9A8DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_181F9A944()
{
  result = qword_1EA838F58;
  if (!qword_1EA838F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838F58);
  }

  return result;
}

uint64_t sub_181F9A9B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_181F9AA24()
{
  result = qword_1EA838F80;
  if (!qword_1EA838F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838F80);
  }

  return result;
}

unint64_t sub_181F9AA78()
{
  result = qword_1EA838F98;
  if (!qword_1EA838F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838F98);
  }

  return result;
}

unint64_t sub_181F9AACC()
{
  result = qword_1EA838FA0;
  if (!qword_1EA838FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838FA0);
  }

  return result;
}

uint64_t sub_181F9AB20(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA83B530, &unk_182AE5750);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_181F9AB8C()
{
  result = qword_1EA838FC0;
  if (!qword_1EA838FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838FC0);
  }

  return result;
}

unint64_t sub_181F9ABE0()
{
  result = qword_1EA838FC8;
  if (!qword_1EA838FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838FC8);
  }

  return result;
}

unint64_t sub_181F9AC34()
{
  result = qword_1EA838FD8;
  if (!qword_1EA838FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA838FD0, &qword_182AE97B0);
    sub_181C675F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838FD8);
  }

  return result;
}

unint64_t sub_181F9ACB8()
{
  result = qword_1EA838FE8;
  if (!qword_1EA838FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA838D00, &unk_182AE57C0);
    sub_181F7F268(&unk_1EA836660, MEMORY[0x1E6969C98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838FE8);
  }

  return result;
}

unint64_t sub_181F9AD58()
{
  result = qword_1EA839000;
  if (!qword_1EA839000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839000);
  }

  return result;
}

unint64_t sub_181F9ADAC()
{
  result = qword_1EA839008;
  if (!qword_1EA839008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839008);
  }

  return result;
}

unint64_t sub_181F9AE00()
{
  result = qword_1EA839018;
  if (!qword_1EA839018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839018);
  }

  return result;
}

unint64_t sub_181F9AE54()
{
  result = qword_1EA839058;
  if (!qword_1EA839058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839058);
  }

  return result;
}

unint64_t sub_181F9AEA8()
{
  result = qword_1EA839060;
  if (!qword_1EA839060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839060);
  }

  return result;
}

unint64_t sub_181F9AEFC()
{
  result = qword_1EA839070;
  if (!qword_1EA839070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839070);
  }

  return result;
}

unint64_t sub_181F9AF50()
{
  result = qword_1EA839078;
  if (!qword_1EA839078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839078);
  }

  return result;
}

unint64_t sub_181F9AFA4()
{
  result = qword_1EA839080;
  if (!qword_1EA839080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839080);
  }

  return result;
}

unint64_t sub_181F9AFF8()
{
  result = qword_1EA839088;
  if (!qword_1EA839088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839088);
  }

  return result;
}

unint64_t sub_181F9B04C()
{
  result = qword_1EA839090;
  if (!qword_1EA839090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839090);
  }

  return result;
}

unint64_t sub_181F9B0A0()
{
  result = qword_1EA839098;
  if (!qword_1EA839098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839098);
  }

  return result;
}

uint64_t sub_181F9B0F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_181F9B13C()
{
  result = qword_1EA8390E8;
  if (!qword_1EA8390E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8390E8);
  }

  return result;
}

unint64_t sub_181F9B190()
{
  result = qword_1EA839108;
  if (!qword_1EA839108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839108);
  }

  return result;
}

unint64_t sub_181F9B1E4()
{
  result = qword_1EA839110;
  if (!qword_1EA839110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839110);
  }

  return result;
}

unint64_t sub_181F9B238()
{
  result = qword_1EA839118;
  if (!qword_1EA839118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839118);
  }

  return result;
}

unint64_t sub_181F9B28C()
{
  result = qword_1EA839120;
  if (!qword_1EA839120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839120);
  }

  return result;
}

unint64_t sub_181F9B2E0()
{
  result = qword_1EA839140;
  if (!qword_1EA839140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839140);
  }

  return result;
}

unint64_t sub_181F9B334()
{
  result = qword_1EA839150;
  if (!qword_1EA839150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839150);
  }

  return result;
}

unint64_t sub_181F9B388()
{
  result = qword_1EA839168;
  if (!qword_1EA839168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA839160, &qword_182AE9878);
    sub_181F9B40C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839168);
  }

  return result;
}

unint64_t sub_181F9B40C()
{
  result = qword_1EA839170;
  if (!qword_1EA839170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839170);
  }

  return result;
}

unint64_t sub_181F9B460()
{
  result = qword_1EA839188;
  if (!qword_1EA839188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA839160, &qword_182AE9878);
    sub_181F9B4E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839188);
  }

  return result;
}

unint64_t sub_181F9B4E4()
{
  result = qword_1EA839190;
  if (!qword_1EA839190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839190);
  }

  return result;
}

unint64_t sub_181F9B53C()
{
  result = qword_1EA839198;
  if (!qword_1EA839198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839198);
  }

  return result;
}

unint64_t sub_181F9B594()
{
  result = qword_1EA8391A0;
  if (!qword_1EA8391A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8391A0);
  }

  return result;
}

unint64_t sub_181F9B5EC()
{
  result = qword_1EA836488;
  if (!qword_1EA836488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836488);
  }

  return result;
}

unint64_t sub_181F9B644()
{
  result = qword_1EA836480;
  if (!qword_1EA836480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836480);
  }

  return result;
}

unint64_t sub_181F9B69C()
{
  result = qword_1EA8391A8;
  if (!qword_1EA8391A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8391A8);
  }

  return result;
}

unint64_t sub_181F9B6F4()
{
  result = qword_1EA8391B0;
  if (!qword_1EA8391B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8391B0);
  }

  return result;
}

unint64_t sub_181F9B74C()
{
  result = qword_1EA8367E8;
  if (!qword_1EA8367E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8367E8);
  }

  return result;
}

unint64_t sub_181F9B7A4()
{
  result = qword_1EA8367E0;
  if (!qword_1EA8367E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8367E0);
  }

  return result;
}

unint64_t sub_181F9B7FC()
{
  result = qword_1EA8391B8;
  if (!qword_1EA8391B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8391B8);
  }

  return result;
}

unint64_t sub_181F9B854()
{
  result = qword_1EA8391C0;
  if (!qword_1EA8391C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8391C0);
  }

  return result;
}

unint64_t sub_181F9B8A8()
{
  result = qword_1EA8391C8;
  if (!qword_1EA8391C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8391C8);
  }

  return result;
}

unint64_t sub_181F9B900()
{
  result = qword_1EA8391D0;
  if (!qword_1EA8391D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8391D0);
  }

  return result;
}

unint64_t sub_181F9B9E8()
{
  result = qword_1EA8391D8;
  if (!qword_1EA8391D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8391D8);
  }

  return result;
}

uint64_t sub_181F9BAC8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_181F9BB00(uint64_t a1)
{
  result = type metadata accessor for NWBrowser.Descriptor(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_181F9BBD4(uint64_t a1)
{
  sub_181F9BC84(319);
  if (v1 <= 0x3F)
  {
    sub_181F9BCFC();
    if (v2 <= 0x3F)
    {
      sub_181F9BD2C(319);
      if (v3 <= 0x3F)
      {
        sub_181F9BD98();
        if (v4 <= 0x3F)
        {
          sub_181F9BDFC(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_181F9BC84(uint64_t a1)
{
  if (!qword_1EA836A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8391E0, &qword_182AEA328);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EA836A18);
    }
  }
}

uint64_t sub_181F9BCFC()
{
  result = qword_1EA836A28;
  if (!qword_1EA836A28)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EA836A28);
  }

  return result;
}

void sub_181F9BD2C(uint64_t a1)
{
  if (!qword_1EA836A40)
  {
    type metadata accessor for NWBrowser.Descriptor.Options(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EA836A40);
    }
  }
}

void sub_181F9BD98()
{
  if (!qword_1EA836A38)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EA836A38);
    }
  }
}

void sub_181F9BDFC(uint64_t a1)
{
  if (!qword_1EA836A50)
  {
    type metadata accessor for NWBrowser.Descriptor.Options(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EA836A50);
    }
  }
}

void sub_181F9BE98(uint64_t a1)
{
  sub_181F9C200(319, &unk_1EA836A08, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_181F9C200(319, &unk_1EA836B20, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_181F9C19C(319, &qword_1EA836B18, &qword_1EA838EF0, &unk_182AE9740, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for NWInterface(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for NWInterface(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_181F9C0A8(uint64_t a1)
{
  sub_181F9C19C(319, &qword_1EA8391E8, &unk_1EA8391F0, &qword_182AEA3D0, type metadata accessor for UncheckedSendable);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NWEndpoint(319);
    if (v2 <= 0x3F)
    {
      sub_181F9C200(319, &qword_1EA836F60, &type metadata for NWInterface, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_181F9C19C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_181F9C200(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_181F9C2B0(uint64_t a1)
{
  type metadata accessor for NWBrowser.Result(319);
  if (v1 <= 0x3F)
  {
    sub_181F9C324(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_181F9C324(uint64_t a1)
{
  if (!qword_1EA839200)
  {
    type metadata accessor for NWBrowser.Result(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EA839200);
    }
  }
}

uint64_t getEnumTagSinglePayload for NWBrowser.Result.Change.Flags(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for NWBrowser.Result.Change.Flags(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t sub_181F9C4D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_181F9C520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_181F9C664()
{
  result = qword_1EA839210;
  if (!qword_1EA839210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839210);
  }

  return result;
}

unint64_t sub_181F9C6BC()
{
  result = qword_1EA839218;
  if (!qword_1EA839218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839218);
  }

  return result;
}

unint64_t sub_181F9C714()
{
  result = qword_1EA839220;
  if (!qword_1EA839220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839220);
  }

  return result;
}

unint64_t sub_181F9C76C()
{
  result = qword_1EA839228;
  if (!qword_1EA839228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839228);
  }

  return result;
}

unint64_t sub_181F9C7C4()
{
  result = qword_1EA839230;
  if (!qword_1EA839230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839230);
  }

  return result;
}

unint64_t sub_181F9C81C()
{
  result = qword_1EA839238;
  if (!qword_1EA839238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839238);
  }

  return result;
}

unint64_t sub_181F9C874()
{
  result = qword_1EA839240;
  if (!qword_1EA839240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839240);
  }

  return result;
}

unint64_t sub_181F9C8CC()
{
  result = qword_1EA839248;
  if (!qword_1EA839248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839248);
  }

  return result;
}

unint64_t sub_181F9C924()
{
  result = qword_1EA839250;
  if (!qword_1EA839250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839250);
  }

  return result;
}

unint64_t sub_181F9C97C()
{
  result = qword_1EA839258;
  if (!qword_1EA839258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839258);
  }

  return result;
}

unint64_t sub_181F9C9D4()
{
  result = qword_1EA839260;
  if (!qword_1EA839260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839260);
  }

  return result;
}

unint64_t sub_181F9CA2C()
{
  result = qword_1EA839268;
  if (!qword_1EA839268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839268);
  }

  return result;
}

unint64_t sub_181F9CA84()
{
  result = qword_1EA839270;
  if (!qword_1EA839270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839270);
  }

  return result;
}

unint64_t sub_181F9CADC()
{
  result = qword_1EA839278;
  if (!qword_1EA839278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839278);
  }

  return result;
}

unint64_t sub_181F9CB34()
{
  result = qword_1EA839280;
  if (!qword_1EA839280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839280);
  }

  return result;
}

unint64_t sub_181F9CB8C()
{
  result = qword_1EA839288;
  if (!qword_1EA839288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839288);
  }

  return result;
}

unint64_t sub_181F9CBE4()
{
  result = qword_1EA839290;
  if (!qword_1EA839290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839290);
  }

  return result;
}

unint64_t sub_181F9CC3C()
{
  result = qword_1EA839298;
  if (!qword_1EA839298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839298);
  }

  return result;
}

unint64_t sub_181F9CC94()
{
  result = qword_1EA8392A0;
  if (!qword_1EA8392A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392A0);
  }

  return result;
}

unint64_t sub_181F9CCEC()
{
  result = qword_1EA8392A8;
  if (!qword_1EA8392A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392A8);
  }

  return result;
}

unint64_t sub_181F9CD44()
{
  result = qword_1EA8392B0;
  if (!qword_1EA8392B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392B0);
  }

  return result;
}

unint64_t sub_181F9CD9C()
{
  result = qword_1EA8392B8;
  if (!qword_1EA8392B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392B8);
  }

  return result;
}

unint64_t sub_181F9CDF4()
{
  result = qword_1EA8392C0;
  if (!qword_1EA8392C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392C0);
  }

  return result;
}

unint64_t sub_181F9CE4C()
{
  result = qword_1EA8392C8;
  if (!qword_1EA8392C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392C8);
  }

  return result;
}

unint64_t sub_181F9CEA4()
{
  result = qword_1EA8392D0;
  if (!qword_1EA8392D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392D0);
  }

  return result;
}

unint64_t sub_181F9CEFC()
{
  result = qword_1EA8392D8;
  if (!qword_1EA8392D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392D8);
  }

  return result;
}

unint64_t sub_181F9CF54()
{
  result = qword_1EA8392E0;
  if (!qword_1EA8392E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392E0);
  }

  return result;
}

unint64_t sub_181F9CFAC()
{
  result = qword_1EA8392E8;
  if (!qword_1EA8392E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392E8);
  }

  return result;
}

unint64_t sub_181F9D004()
{
  result = qword_1EA8392F0;
  if (!qword_1EA8392F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392F0);
  }

  return result;
}

unint64_t sub_181F9D05C()
{
  result = qword_1EA8392F8;
  if (!qword_1EA8392F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8392F8);
  }

  return result;
}

unint64_t sub_181F9D0B4()
{
  result = qword_1EA839300;
  if (!qword_1EA839300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839300);
  }

  return result;
}

unint64_t sub_181F9D10C()
{
  result = qword_1EA839308;
  if (!qword_1EA839308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839308);
  }

  return result;
}

unint64_t sub_181F9D164()
{
  result = qword_1EA839310;
  if (!qword_1EA839310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839310);
  }

  return result;
}

unint64_t sub_181F9D1BC()
{
  result = qword_1EA839318;
  if (!qword_1EA839318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839318);
  }

  return result;
}

unint64_t sub_181F9D214()
{
  result = qword_1EA839320;
  if (!qword_1EA839320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839320);
  }

  return result;
}

unint64_t sub_181F9D26C()
{
  result = qword_1EA839328;
  if (!qword_1EA839328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839328);
  }

  return result;
}

unint64_t sub_181F9D2C4()
{
  result = qword_1EA839330;
  if (!qword_1EA839330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839330);
  }

  return result;
}

unint64_t sub_181F9D31C()
{
  result = qword_1EA839338;
  if (!qword_1EA839338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839338);
  }

  return result;
}

unint64_t sub_181F9D374()
{
  result = qword_1EA839340;
  if (!qword_1EA839340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839340);
  }

  return result;
}

unint64_t sub_181F9D3CC()
{
  result = qword_1EA839348;
  if (!qword_1EA839348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839348);
  }

  return result;
}

unint64_t sub_181F9D424()
{
  result = qword_1EA839350;
  if (!qword_1EA839350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839350);
  }

  return result;
}

uint64_t sub_181F9D478(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756F6A6E6F62 && a2 == 0xE700000000000000;
  if (v4 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000182BD62D0 == a2 || (sub_182AD4268() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000182BD62F0 == a2 || (sub_182AD4268() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000182BD6310 == a2 || (sub_182AD4268() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000182BD6330 == a2 || (sub_182AD4268() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000182BD6360 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_182AD4268();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_181F9D674(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65536D6F74737563 && a2 == 0xED00006563697672 || (sub_182AD4268() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_182AD4268();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_181F9D794(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6946656369766564 && a2 == 0xEC0000007265746CLL;
  if (v4 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000 || (sub_182AD4268() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEB00000000736570 || (sub_182AD4268() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000182BD62B0 == a2 || (sub_182AD4268() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65536D6F74737563 && a2 == 0xED00006563697672 || (sub_182AD4268() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6572685469737372 && a2 == 0xED0000646C6F6873 || (sub_182AD4268() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065)
  {

    return 6;
  }

  else
  {
    v6 = sub_182AD4268();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_181F9DA00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000;
  if (v4 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6361667265746E69 && a2 == 0xEA00000000007365 || (sub_182AD4268() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F636552747874 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_182AD4268();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_181F9DB28(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

unint64_t sub_181F9DB64()
{
  result = qword_1EA839358;
  if (!qword_1EA839358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839358);
  }

  return result;
}

uint64_t sub_181F9DC98()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_181F9DD10(uint64_t a1)
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

unsigned __int8 *sub_181F9DD54@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 <= 3)
  {
    v3 = 0x2010003u >> (8 * v2);
  }

  else
  {
    v3 = 3;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_181F9DDDC()
{
  result = qword_1EA839390;
  if (!qword_1EA839390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839390);
  }

  return result;
}

unint64_t sub_181F9DE34()
{
  result = qword_1EA839398;
  if (!qword_1EA839398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839398);
  }

  return result;
}

void *sub_181F9DE88@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = *result - *v2;
  if (*result < *v2)
  {
    __break(1u);
  }

  else if ((v3 & 0x8000000000000000) == 0)
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *sub_181F9DEAC@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  if (*result < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = __CFADD__(*v2, v3);
  v5 = *v2 + v3;
  if (v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!(v5 >> 62))
  {
    *a2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t *sub_181F9DEDC(unint64_t *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6)
{
  v6 = *a6;
  if (*a6 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = __CFADD__(*a4, v6);
  v8 = *a4 + v6;
  if (v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!(v8 >> 62))
  {
    *result = v8;
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_181F9DF5C()
{
  result = qword_1EA8393A0;
  if (!qword_1EA8393A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8393A0);
  }

  return result;
}

unint64_t sub_181F9DFBC(uint64_t a1, uint64_t a2, unint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v7 = 4 * a1;
  if (4 * a1 < 0)
  {
    __break(1u);
LABEL_25:
    v32 = a7;
    v33 = a6;
    swift_once();
    a6 = v33;
    a7 = v32;
LABEL_16:
    if (byte_1EA843430 == 1)
    {
      v22 = a6;
      v23 = a7;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v24 = sub_182AD2698();
      __swift_project_value_buffer(v24, qword_1EA843418);

      v25 = sub_182AD2678();
      v26 = sub_182AD38A8();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v36[0] = v28;
        *v27 = 136315650;
        v29 = sub_182AD3BF8();
        v31 = sub_181C64FFC(v29, v30, v36);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_181C64FFC(v22, v23, v36);
        *(v27 + 22) = 2080;
        *(v27 + 24) = sub_181C64FFC(0xD000000000000017, 0x8000000182BD6460, v36);
        _os_log_impl(&dword_181A37000, v25, v26, "%s %s %s", v27, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v28, -1, -1);
        MEMORY[0x1865DF520](v27, -1, -1);
      }
    }

    return 0;
  }

  if (v7 >> 62)
  {
    return 0;
  }

  if (!a2)
  {
    if (qword_1EA837250 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  result = v7 | a5 & 1;
  if ((a4 & 1) == 0 && result > a3)
  {
    if (qword_1EA837250 != -1)
    {
      v34 = a7;
      v35 = a6;
      swift_once();
      a6 = v35;
      a7 = v34;
    }

    if (byte_1EA843430 == 1)
    {
      v9 = a6;
      v10 = a7;
      v36[0] = 0;
      v36[1] = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0x657274732077656ELL, 0xEE00204449206D61);
      v11 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v11);

      MEMORY[0x1865D9CA0](0xD000000000000022, 0x8000000182BD6430);
      v12 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v12);

      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v13 = sub_182AD2698();
      __swift_project_value_buffer(v13, qword_1EA843418);

      v14 = sub_182AD2678();
      v15 = sub_182AD38A8();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v36[0] = v17;
        *v16 = 136315650;
        v18 = sub_182AD3BF8();
        v20 = sub_181C64FFC(v18, v19, v36);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        *(v16 + 14) = sub_181C64FFC(v9, v10, v36);
        *(v16 + 22) = 2080;
        v21 = sub_181C64FFC(0, 0xE000000000000000, v36);

        *(v16 + 24) = v21;
        _os_log_impl(&dword_181A37000, v14, v15, "%s %s %s", v16, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v17, -1, -1);
        MEMORY[0x1865DF520](v16, -1, -1);
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_181F9E4E8(char a1, uint64_t a2, char a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if ((a3 & 2) == 0)
  {
    if (!v4)
    {
      v8 = 0;
LABEL_18:
      if (a3)
      {
        v12 = v8;
      }

      else
      {
        v12 = v4;
      }

      if ((a3 & 1) == 0)
      {
        v4 = v8;
      }

      if (a1)
      {
        return v4;
      }

      else
      {
        return v12;
      }
    }

    v5 = a3;
    v6 = a1;
    sub_18224F168(5);
    if (v7)
    {
      v8 = sub_1822CDE04();
      v4 = *(a2 + 16);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v8 = 0;
      v4 = *(a2 + 16);
      if (!v4)
      {
LABEL_17:
        a1 = v6;
        a3 = v5;
        goto LABEL_18;
      }
    }

    sub_18224F168(6);
    if (v11)
    {
      v4 = sub_1822CDE04();
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_17;
  }

  if (v4 && (sub_18224F168(9), (v10 & 1) != 0))
  {
    return sub_1822CDE04();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F9E654(char a1, uint64_t a2, char a3)
{
  v4 = *(a2 + 16);
  if ((a3 & 2) == 0)
  {
    if (!v4)
    {
      v8 = 0;
LABEL_16:
      if (a3)
      {
        v12 = v8;
      }

      else
      {
        v12 = v4;
      }

      if ((a3 & 1) == 0)
      {
        v4 = v8;
      }

      if (a1)
      {
        return v12;
      }

      else
      {
        return v4;
      }
    }

    v5 = a3;
    v6 = a1;
    sub_18224F168(5);
    if (v7)
    {
      v8 = sub_1822CDE04();
      v4 = *(a2 + 16);
      if (!v4)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v8 = 0;
      v4 = *(a2 + 16);
      if (!v4)
      {
LABEL_15:
        a1 = v6;
        a3 = v5;
        goto LABEL_16;
      }
    }

    sub_18224F168(6);
    if (v11)
    {
      v4 = sub_1822CDE04();
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_15;
  }

  if (v4 && (sub_18224F168(7), (v9 & 1) != 0))
  {
    return sub_1822CDE04();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_181F9E7C4()
{
  result = qword_1EA8393A8;
  if (!qword_1EA8393A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8393A8);
  }

  return result;
}

uint64_t NWEndpoint.txtRecord.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NWEndpoint(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181D8E180(v2, v6, type metadata accessor for NWEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    result = sub_181D8E388(v6, type metadata accessor for NWEndpoint);
LABEL_5:
    *a1 = 0;
    a1[1] = 0;
    return result;
  }

  if (EnumCaseMultiPayload == 3)
  {
    *a1 = 0;
    a1[1] = 0;
    return sub_181D8E388(v6, type metadata accessor for NWEndpoint);
  }

  v9 = nw_endpoint_copy_txt_record(*v6);
  if (!v9)
  {
    result = swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x1E69E7CC8];
  v12 = (v11 + 16);
  aBlock[4] = sub_181E63B60;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181E63AEC;
  aBlock[3] = &block_descriptor_6;
  v13 = _Block_copy(aBlock);

  nw_txt_record_apply(v10, v13);
  swift_unknownObjectRelease();
  _Block_release(v13);
  swift_beginAccess();
  v14 = *v12;

  *a1 = v14;
  a1[1] = v10;
  return result;
}

unint64_t sub_181F9EA44(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_182AD3258();
  }

  __break(1u);
  return result;
}

uint64_t sub_181F9EA90(unint64_t a1)
{
  v2 = v1[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < a1 >> 14)
  {
    __break(1u);
  }

  return MEMORY[0x1EEE68E00]();
}

double IPv6Address.asIPv4.getter@<D0>(unint64_t *a1@<X8>)
{
  if (!*v1 && ((v4 = v1[1], v3 = v1[2], v4 == -65536) || ((v4 & 0xFEFFFFFF00000000) != 0 ? (v5 = v4 == 0) : (v5 = 0), v5)))
  {
    *a1 = HIDWORD(v4);
    a1[1] = v3;
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_182AEB780;
  }

  return result;
}

double sub_181F9ED08@<D0>(void *a1@<X0>, _DWORD *a2@<X1>, void *a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    v8 = a2;
    v9 = a3;
    v10 = a5;
    swift_once();
    a2 = v8;
    a5 = v10;
    a3 = v9;
  }

  v6 = *a3;
  *a5 = *a2;
  *(a5 + 8) = v6;

  return result;
}

uint64_t IPv4Address.isLoopback.getter()
{
  v1 = *(v0 + 1);
  v7 = *v0;
  v8 = v1;
  if (qword_1EA836AF8 != -1)
  {
    swift_once();
  }

  v5 = dword_1EA836B00;
  v6 = qword_1EA836B08;

  v3 = _s7Network11IPv4AddressV2eeoiySbAC_ACtFZ_0(&v7, &v5, v2);

  return v3 & 1;
}

unint64_t IPv4Address.rawValue.getter()
{
  v8[5] = *MEMORY[0x1E69E9840];
  v7 = *v0;
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = &v7;
  v8[1] = v8;
  v1 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v2 = *v1;
  if (*v1 && (v3 = v1[1], v4 = v3 - v2, v3 != v2))
  {
    if (v4 <= 14)
    {
      v5 = sub_181E68460(v2, v3);
    }

    else if (v4 >= 0x7FFFFFFF)
    {
      v5 = sub_181E3720C(v2, v3);
    }

    else
    {
      v5 = sub_181C1F030(v2, v3);
    }
  }

  else
  {
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t IPv4Address.init(_:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v8)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 4)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v8 != 2)
    {
      if (v8 != 1)
      {
        v22 = a1;
        goto LABEL_23;
      }

      if (a1 > a1 >> 32)
      {
        goto LABEL_27;
      }

      v13 = sub_182AD1D58();
      if (!v13)
      {
        goto LABEL_32;
      }

      v14 = v13;
      v15 = sub_182AD1D88();
      if (__OFSUB__(a1, v15))
      {
        goto LABEL_29;
      }

      v16 = (a1 - v15 + v14);
      sub_182AD1D78();
      if (v16)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_26;
      }

      if (HIDWORD(a1) - a1 != 4)
      {
        goto LABEL_17;
      }
    }

    v18 = *(a1 + 16);
    v19 = sub_182AD1D58();
    if (!v19)
    {
      goto LABEL_30;
    }

    v20 = v19;
    v21 = sub_182AD1D88();
    if (!__OFSUB__(v18, v21))
    {
      v16 = (v18 - v21 + v20);
      sub_182AD1D78();
      if (!v16)
      {
        goto LABEL_31;
      }

LABEL_21:
      v22 = *v16;
LABEL_23:
      result = sub_181C1F2E4(a1, a2);
      *a4 = v22;
      goto LABEL_24;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_182AD1D78();
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_182AD1D78();
    __break(1u);
    return result;
  }

  if (v8 != 2)
  {
    goto LABEL_17;
  }

  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = __OFSUB__(v9, v10);
  v12 = v9 - v10;
  if (v11)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v12 == 4)
  {
    goto LABEL_8;
  }

LABEL_17:

  result = sub_181C1F2E4(a1, a2);
  *a4 = 0;
  v7 = 1;
LABEL_24:
  *(a4 + 8) = v7;
  return result;
}

uint64_t IPv4Address.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 4)
  {
    v3 = *(a1 + 32);

    v5 = 0;
    *a2 = v3;
  }

  else
  {

    *a2 = 0;
    v5 = 1;
  }

  *(a2 + 8) = v5;
  return result;
}

void IPv4Address.init(_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_181E5F9E8(a1, a2, 2, &v5);

  if (v8 == 255)
  {
    goto LABEL_5;
  }

  v4 = v6;
  if (v8 != 1)
  {
    sub_181FADA8C(v5, v6, v7, v8);
LABEL_5:
    *a3 = 0;
    v4 = 1;
    goto LABEL_6;
  }

  *a3 = v5;
LABEL_6:
  a3[1] = v4;
}

double IPv4Address.interface.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

uint64_t IPv4Address.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_182AD4538();
  if (!v2)
  {
    return sub_182AD4518();
  }

  sub_182AD4518();
  v3 = *(v2 + 16);
  v4 = *(v2 + 184);
  v5 = *(v2 + 185);
  MEMORY[0x1865DB070](v3);
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AEC420[v4]);
  return MEMORY[0x1865DB070](qword_182AEC448[v5]);
}

uint64_t IPv4Address.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_182AD44E8();
  sub_182AD4538();
  sub_182AD4518();
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 184);
    v4 = *(v1 + 185);
    MEMORY[0x1865DB070](v2);
    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AEC420[v3]);
    MEMORY[0x1865DB070](qword_182AEC448[v4]);
  }

  return sub_182AD4558();
}

unint64_t sub_181F9F2F0()
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  return sub_181C1F228(&v2, &v3);
}

void sub_181F9F354(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_181E5F9E8(a1, a2, 2, &v5);

  if (v8 == 255)
  {
    goto LABEL_5;
  }

  v4 = v6;
  if (v8 != 1)
  {
    sub_181FADA8C(v5, v6, v7, v8);
LABEL_5:
    *a3 = 0;
    v4 = 1;
    goto LABEL_6;
  }

  *a3 = v5;
LABEL_6:
  a3[1] = v4;
}

double sub_181F9F3C8@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

uint64_t sub_181F9F3D4()
{
  v1 = *(v0 + 1);
  v7 = *v0;
  v8 = v1;
  if (qword_1EA836AF8 != -1)
  {
    swift_once();
  }

  v5 = dword_1EA836B00;
  v6 = qword_1EA836B08;

  v3 = _s7Network11IPv4AddressV2eeoiySbAC_ACtFZ_0(&v7, &v5, v2);

  return v3 & 1;
}

uint64_t sub_181F9F49C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_182AD44E8();
  sub_182AD4538();
  sub_182AD4518();
  if (v2)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 184);
    v5 = *(v2 + 185);
    MEMORY[0x1865DB070](v3);
    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AEC420[v4]);
    MEMORY[0x1865DB070](qword_182AEC448[v5]);
  }

  return sub_182AD4558();
}

void sub_181F9F568()
{
  v0 = *(MEMORY[0x1E69E99B8] + 8);
  *&xmmword_1EA839410 = *MEMORY[0x1E69E99B8];
  *(&xmmword_1EA839410 + 1) = v0;
  off_1EA839420 = 0;
}

void sub_181F9F5B0()
{
  v0 = *(MEMORY[0x1E69E99B8] + 8);
  qword_1EA839428 = *MEMORY[0x1E69E99B8];
  unk_1EA839430 = v0;
  qword_1EA839438 = 0;
}

void sub_181F9F5F8()
{
  v0 = *(MEMORY[0x1E69E99D0] + 8);
  qword_1EA839440 = *MEMORY[0x1E69E99D0];
  *algn_1EA839448 = v0;
  qword_1EA839450 = 0;
}

void sub_181F9F640()
{
  v0 = *(MEMORY[0x1E69E99D8] + 8);
  qword_1EA839458 = *MEMORY[0x1E69E99D8];
  unk_1EA839460 = v0;
  qword_1EA839468 = 0;
}

void sub_181F9F688()
{
  v0 = *(MEMORY[0x1E69E99C0] + 8);
  qword_1EA839470 = *MEMORY[0x1E69E99C0];
  *algn_1EA839478 = v0;
  qword_1EA839480 = 0;
}

void sub_181F9F6D0()
{
  v0 = *(MEMORY[0x1E69E99C8] + 8);
  qword_1EA839488 = *MEMORY[0x1E69E99C8];
  unk_1EA839490 = v0;
  qword_1EA839498 = 0;
}

double sub_181F9F718@<D0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a5@<X8>)
{
  if (*a1 != -1)
  {
    v9 = a2;
    v10 = a5;
    v11 = a3;
    swift_once();
    a2 = v9;
    a3 = v11;
    a5 = v10;
  }

  v6 = a2[1];
  v7 = *a3;
  *a5 = *a2;
  a5[1] = v6;
  a5[2] = v7;

  return result;
}

Network::IPv6Address::Scope_optional __swiftcall IPv6Address.Scope.init(rawValue:)(Network::IPv6Address::Scope_optional rawValue)
{
  if (rawValue.value <= Network_IPv6Address_Scope_global)
  {
    if (rawValue.value == Network_IPv6Address_Scope_linkLocal)
    {
      *v1 = 0;
      return rawValue;
    }

    if (rawValue.value == Network_IPv6Address_Scope_siteLocal)
    {
      *v1 = 1;
      return rawValue;
    }
  }

  else
  {
    switch(rawValue.value)
    {
      case 0xE:
        *v1 = 4;
        return rawValue;
      case 8:
        *v1 = 3;
        return rawValue;
      case 5:
        *v1 = 2;
        return rawValue;
    }
  }

  *v1 = 5;
  return rawValue;
}

uint64_t sub_181F9F858()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_181F9F8F0(uint64_t a1)
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

BOOL sub_181F9F9FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = (v2 - 1) < 2;
  v4 = (v2 & 0xC0) == 128;
  if (v1 != 254)
  {
    v4 = 0;
  }

  if (v1 == 255)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

void IPv6Address.multicastScope.getter(_BYTE *a1@<X8>)
{
  if (*v1 != 255)
  {
    goto LABEL_2;
  }

  v2 = v1[1] & 0xF;
  if (v2 <= 4)
  {
    if (v2 == 1)
    {
      *a1 = 0;
    }

    else
    {
      if (v2 != 2)
      {
        goto LABEL_2;
      }

      *a1 = 1;
    }
  }

  else
  {
    switch(v2)
    {
      case 5u:
        *a1 = 2;
        break;
      case 8u:
        *a1 = 3;
        break;
      case 0xEu:
        *a1 = 4;
        return;
      default:
LABEL_2:
        *a1 = 5;
        return;
    }
  }
}

unint64_t IPv6Address.rawValue.getter()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v9[0] = *v0;
  v9[1] = v1;
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = v9;
  v8[1] = v10;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_181E68460(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_181E3720C(v3, v4);
    }

    else
    {
      v6 = sub_181C1F030(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

BOOL IPv6Address.isUniqueLocal.getter()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v8[0] = *v0;
  v8[1] = v1;
  v2 = sub_181C1F228(v8, v9);
  v4 = v3;
  v5 = sub_182AD2118();
  sub_181C1F2E4(v2, v4);
  return byte_1EEF96EB0 == v5 || v5 == byte_1EEF96EB1;
}

uint64_t IPv6Address.init(_:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a1;
  v7 = *a3;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_17:

      result = sub_181C1F2E4(v5, a2);
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 1;
      return result;
    }

    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v8 != 2)
    {
      if (v8 != 1)
      {
        v25 = vdupq_n_s64(a2);
        v30 = vshlq_u64(v25, xmmword_182AEB790);
        v29 = vshlq_u64(v25, xmmword_182AEB7A0);
        result = sub_181C1F2E4(v5, a2);
        v26.i64[0] = 255;
        v26.i64[1] = 255;
        v27 = vandq_s8(v29, v26);
        v28 = vandq_s8(v30, v26);
        v22 = (v27.i64[0] << 40) | (v27.i64[1] << 32) | (v28.i64[0] << 24) | (v28.i64[1] << 16) | a2 & 0xFF00 | a2;
        goto LABEL_23;
      }

      if (v5 > v5 >> 32)
      {
        goto LABEL_26;
      }

      v13 = sub_182AD1D58();
      if (!v13)
      {
        goto LABEL_31;
      }

      v14 = v13;
      v15 = sub_182AD1D88();
      if (__OFSUB__(v5, v15))
      {
        goto LABEL_28;
      }

      v16 = (v5 - v15 + v14);
      sub_182AD1D78();
      if (v16)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_25;
      }

      if (HIDWORD(v5) - v5 != 16)
      {
        goto LABEL_17;
      }
    }

    v18 = *(v5 + 16);
    v19 = sub_182AD1D58();
    if (!v19)
    {
      goto LABEL_29;
    }

    v20 = v19;
    v21 = sub_182AD1D88();
    if (!__OFSUB__(v18, v21))
    {
      v16 = (v18 - v21 + v20);
      sub_182AD1D78();
      if (!v16)
      {
        goto LABEL_30;
      }

LABEL_21:
      v24 = v16;
      v23 = *v16;
      v22 = v24[1];
      result = sub_181C1F2E4(v5, a2);
      v5 = v23;
LABEL_23:
      *a4 = v5;
      a4[1] = v22;
      a4[2] = v7;
      return result;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_182AD1D78();
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_182AD1D78();
  __break(1u);
  return result;
}

uint64_t IPv6Address.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (a1[2] == 16)
  {
    v3 = a1[4];
    v4 = a1[5];

    v6 = 0;
    *a2 = v3;
    a2[1] = v4;
  }

  else
  {

    *a2 = 0;
    a2[1] = 0;
    v6 = 1;
  }

  a2[2] = v6;
  return result;
}

void IPv6Address.init(_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_181E5F9E8(a1, a2, 30, &v6);

  if (v9 != 255)
  {
    v4 = v7;
    v5 = v8;
    if (v9 == 2)
    {
      *a3 = v6;
      a3[1] = v4;
      a3[2] = v5;
      return;
    }

    sub_181FADA8C(v6, v7, v8, v9);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 1;
}

double IPv6Address.interface.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

uint64_t IPv6Address.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  if (!v2)
  {
    return sub_182AD4518();
  }

  sub_182AD4518();
  v3 = *(v2 + 16);
  v4 = *(v2 + 184);
  v5 = *(v2 + 185);
  MEMORY[0x1865DB070](v3);
  sub_182AD30E8();
  MEMORY[0x1865DB070](qword_182AEC420[v4]);
  return MEMORY[0x1865DB070](qword_182AEC448[v5]);
}

uint64_t IPv6Address.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_182AD44E8();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4518();
  if (v1)
  {
    v2 = *(v1 + 184);
    v3 = *(v1 + 185);
    MEMORY[0x1865DB070](*(v1 + 16));
    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AEC420[v2]);
    MEMORY[0x1865DB070](qword_182AEC448[v3]);
  }

  return sub_182AD4558();
}

unint64_t sub_181FA012C()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = v0[1];
  v3[0] = *v0;
  v3[1] = v1;
  return sub_181C1F228(v3, v4);
}

void sub_181FA0190(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_181E5F9E8(a1, a2, 30, &v6);

  if (v9 != 255)
  {
    v4 = v7;
    v5 = v8;
    if (v9 == 2)
    {
      *a3 = v6;
      a3[1] = v4;
      a3[2] = v5;
      return;
    }

    sub_181FADA8C(v6, v7, v8, v9);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 1;
}