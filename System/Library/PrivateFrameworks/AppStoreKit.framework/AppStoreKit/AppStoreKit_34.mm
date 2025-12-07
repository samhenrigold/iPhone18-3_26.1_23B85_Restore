id sub_1E1655D08()
{
  v1 = *(sub_1E1AEFE6C() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1E1651DE0(v2, v3, v4);
}

uint64_t sub_1E1655D6C()
{
  v1 = *(sub_1E1AEFE6C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  return sub_1E1655688(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1E1655E04(void *a1, void *a2)
{
  v5 = *(sub_1E1AEFE6C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1E165284C(a1, a2, v7, v2 + v6, v8);
}

double sub_1E1655ED4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = [a1 type];
  v4 = [a1 composedMessage];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1E1AF5DFC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v24 = [a1 machContinuousTimestamp];
  v23 = [a1 activityIdentifier];
  v9 = [a1 parentActivityIdentifier];
  v10 = [a1 signpostType];
  v11 = [a1 signpostIdentifier];
  v12 = [a1 signpostName];
  if (!v12)
  {
    v15 = 0;
    v17 = 0;
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    v18 = sub_1E13017E4(MEMORY[0x1E69E7CC0]);

    goto LABEL_9;
  }

  v13 = v6;
  v14 = v12;
  v15 = sub_1E1AF5DFC();
  v17 = v16;

  v6 = v13;
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:

  v18 = sub_1E156BD6C(v6, v8);

  swift_bridgeObjectRelease_n();
LABEL_9:
  *&v27 = v25;
  *(&v27 + 1) = v6;
  *&v28 = v8;
  *(&v28 + 1) = v24;
  *&v29 = v23;
  *(&v29 + 1) = v9;
  *&v30 = v10;
  *(&v30 + 1) = v11;
  *&v31 = v15;
  *(&v31 + 1) = v17;
  v32 = v18;
  v33[0] = v25;
  v33[1] = v6;
  v33[2] = v8;
  v33[3] = v24;
  v33[4] = v23;
  v33[5] = v9;
  v33[6] = v10;
  v33[7] = v11;
  v33[8] = v15;
  v33[9] = v17;
  v33[10] = v18;
  sub_1E141D198(&v27, v26);
  sub_1E1656530(v33);
  v19 = v30;
  v20 = v31;
  *(a2 + 32) = v29;
  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
  *(a2 + 80) = v32;
  result = *&v27;
  v22 = v28;
  *a2 = v27;
  *(a2 + 16) = v22;
  return result;
}

unint64_t sub_1E16560E0(unint64_t a1, unint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = a2 - a1;
  if (a2 > a1)
  {
    v4[0] = 0;
    if (!mach_timebase_info(v4))
    {
      if (is_mul_ok(v2, v4[0].numer))
      {
        if (v4[0].denom)
        {
          return v2 * v4[0].numer / v4[0].denom;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }

  return 0;
}

uint64_t sub_1E1656180(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v10;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
    v16 = (*(a1 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v51[0] = v17;
    v51[1] = v18;
    v51[2] = v20;
    v51[3] = v21;

    (a2)(&v47, v51);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = *v52;
    v28 = sub_1E13018F8(v47, v48);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_25;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((v46 & 1) == 0)
      {
        sub_1E1415E90();
      }
    }

    else
    {
      sub_1E1688F9C(v31, v46 & 1);
      v33 = sub_1E13018F8(v22, v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v52;
    if (v32)
    {

      v12 = (v35[7] + 16 * v28);
      *v12 = v24;
      v12[1] = v25;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v22;
      v36[1] = v23;
      v37 = (v35[7] + 16 * v28);
      *v37 = v24;
      v37[1] = v25;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v35[2] = v40;
    }

    a4 = 1;
    v11 = v13;
    v10 = v42;
    v6 = v43;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_1E1337ECC(a1);
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

unint64_t sub_1E1656488()
{
  result = qword_1ECEB72C8;
  if (!qword_1ECEB72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB72C8);
  }

  return result;
}

unint64_t sub_1E16564DC()
{
  result = qword_1ECEB72D0;
  if (!qword_1ECEB72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB72D0);
  }

  return result;
}

JSValue __swiftcall ShelvesIntent.makeValue(in:)(JSContext in)
{
  v46 = sub_1E1AEFCCC();
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  v38 = objc_opt_self();
  isa = in.super.isa;
  result.super.isa = [v38 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v7 = result.super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3778, &qword_1E1B082B8);
  v8 = sub_1E1AF729C();
  v9 = v8;
  v10 = v5 + 64;
  v11 = 1 << *(v5 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v44 = v3;
  v41 = v3 + 8;
  v42 = v3 + 16;
  v40 = v8 + 64;
  result.super.isa = v7;
  v37 = result.super.isa;
  v15 = 0;
  v43 = v9;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v47 = (v13 - 1) & v13;
LABEL_11:
      v19 = v16 | (v15 << 6);
      sub_1E134E724(*(v5 + 48) + 40 * v19, v49);
      v20 = v5;
      v21 = *(v5 + 56);
      v23 = v44;
      v22 = v45;
      v24 = v46;
      (*(v44 + 16))(v45, v21 + *(v44 + 72) * v19, v46);
      v48 = sub_1E1AEFBDC();
      v26 = v25;
      result.super.isa = (*(v23 + 8))(v22, v24);
      *(v40 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v9 = v43;
      v27 = *(v43 + 48) + 40 * v19;
      v28 = v49[0];
      v29 = v49[1];
      *(v27 + 32) = v50;
      *v27 = v28;
      *(v27 + 16) = v29;
      v30 = (*(v9 + 56) + 16 * v19);
      *v30 = v48;
      v30[1] = v26;
      v31 = *(v9 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      *(v9 + 16) = v33;
      v5 = v20;
      v13 = v47;
      if (!v47)
      {
        goto LABEL_6;
      }
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_6:
  v17 = v15;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v15 >= v14)
    {
      break;
    }

    v18 = *(v10 + 8 * v15);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v47 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  *&v49[0] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB72F0, &qword_1E1B22198);
  v34 = [v38 valueWithObject:sub_1E1AF755C() inContext:isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v34)
  {
    goto LABEL_19;
  }

  v35 = v37;
  sub_1E1AF6C5C();

  return v35;
}

unint64_t sub_1E165692C()
{
  result = qword_1ECEB72F8;
  if (!qword_1ECEB72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB72F8);
  }

  return result;
}

unint64_t sub_1E1656988()
{
  result = qword_1ECEB7300[0];
  if (!qword_1ECEB7300[0])
  {
    type metadata accessor for ShelfBatch();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECEB7300);
  }

  return result;
}

uint64_t sub_1E1656A8C(unsigned __int8 a1)
{
  sub_1E1AF762C();
  MEMORY[0x1E6900360](a1);
  return sub_1E1AF767C();
}

uint64_t sub_1E1656AF0(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1656A64(v3, *v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E1656B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF0F7C();
  v65 = *(v6 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v54 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910, qword_1E1B089E0);
  v10 = sub_1E1AF588C();
  v11 = (a1 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
  v12 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId + 8);
  aBlock = *(a1 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
  v68 = v12;
  AdamId.numberValue.getter();
  if (v13)
  {
    v14 = v13;
    v62 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0, &unk_1E1B1C8F0);
    sub_1E1AF421C();
    v61 = a2;
    sub_1E1AF55EC();
    v15 = v68;
    ObjectType = swift_getObjectType();
    v17 = v11[1];
    v73[0] = *v11;
    v73[1] = v17;
    v18 = *(v15 + 56);

    v19 = v18(v73, ObjectType, v15);
    v21 = v20;
    swift_unknownObjectRelease();

    v22 = swift_getObjectType();
    v23 = *(v21 + 24);
    v60 = v19;
    v24 = v23(v22, v21);
    v25 = "RootActionRunner[ASDAppQuery]:handleOpenAppAction";
    v63 = v10;
    v59 = a1;
    if (v24)
    {
      v26 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_allowBetaApps);
      if (v26)
      {
        v25 = "RootActionRunner[ASDAppQuery.BetaApps]:handleOpenAppAction";
        v27 = 58;
      }

      else
      {
        v27 = 49;
      }
    }

    else
    {
      v26 = 0;
      v27 = 49;
    }

    v54 = v27;
    v55 = v25;
    sub_1E1AF483C();
    sub_1E1AF482C();
    v33 = v66;
    sub_1E1AF0F4C();
    sub_1E1AF6A1C();
    v34 = sub_1E1AF482C();
    sub_1E1AF0F3C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1E1B06D70;
    *(v35 + 32) = v14;
    sub_1E13006E4(0, &qword_1EE1E31F0, 0x1E696AD98);
    v57 = v14;
    v36 = sub_1E1AF620C();

    v37 = objc_opt_self();
    v38 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    v56 = v26 & 1;
    if ((v26 & 1) == 0)
    {
      v38 = &selRef_queryForStoreItemIDs_;
    }

    v58 = [v37 *v38];

    v40 = v64;
    v39 = v65;
    (*(v65 + 16))(v64, v33, v6);
    v41 = (*(v39 + 80) + 41) & ~*(v39 + 80);
    v42 = v41 + v7;
    v43 = (v41 + v7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    v47 = v54;
    v48 = v55;
    *(v46 + 16) = v62;
    *(v46 + 24) = v48;
    *(v46 + 32) = v47;
    *(v46 + 40) = 2;
    (*(v39 + 32))(v46 + v41, v40, v6);
    *(v46 + v42) = v56;
    *(v46 + v43 + 8) = v59;
    *(v46 + v44) = v61;
    v10 = v63;
    *(v46 + v45) = v63;
    v49 = v57;
    *(v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8)) = v57;
    v71 = sub_1E1658B18;
    v72 = v46;
    aBlock = MEMORY[0x1E69E9820];
    v68 = 1107296256;
    v69 = sub_1E16C3118;
    v70 = &block_descriptor_42;
    v50 = _Block_copy(&aBlock);
    v51 = v49;

    v52 = v58;
    [v58 executeQueryWithResultHandler_];
    _Block_release(v50);

    swift_unknownObjectRelease();
    (*(v65 + 8))(v66, v6);
  }

  else
  {
    if (qword_1ECEB12B0 != -1)
    {
      swift_once();
    }

    v28 = sub_1E1AF591C();
    __swift_project_value_buffer(v28, qword_1ECEBA3E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    type metadata accessor for OpenAppActionImplementation.ImplementationError(0, a3, v29, v30);
    swift_getWitnessTable();
    v31 = swift_allocError();
    *v32 = 0;
    sub_1E1AF584C();
  }

  return v10;
}

void sub_1E1657194(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12)
{
  v86 = a8;
  LODWORD(v84) = a7;
  v87 = a12;
  v82 = a11;
  v88 = a10;
  v83 = a9;
  v79 = sub_1E1AEFEAC();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v81 = &v75 - v15;
  v16 = sub_1E1AF3E1C();
  v85 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v75 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v75 - v22;
  sub_1E1AF6A0C();
  sub_1E1AF483C();
  v24 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  if (a1)
  {
    if (a1 >> 62)
    {
      if (sub_1E1AF71CC())
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1E68FFD80](0, a1);
        v25 = v86;
LABEL_7:
        if (*(v25 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_destination))
        {
          if (qword_1ECEB12B0 != -1)
          {
            swift_once();
          }

          v27 = sub_1E1AF591C();
          __swift_project_value_buffer(v27, qword_1ECEBA3E8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
          sub_1E1AF38EC();
          *(swift_allocObject() + 16) = xmmword_1E1B03760;
          sub_1E1AF382C();
          *(&v90 + 1) = sub_1E13006E4(0, &qword_1EE1E31F0, 0x1E696AD98);
          *&aBlock = v82;
          v28 = v82;
          sub_1E1AF383C();
          sub_1E1308058(&aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
          sub_1E1AF382C();
          sub_1E1AF54AC();
        }

        else
        {
          v29 = [v26 bundleID];
          v30 = sub_1E1AF5DFC();
          v32 = v31;

          sub_1E1AF3DFC();
          v33 = sub_1E1584724(MEMORY[0x1E69E7CC0]);
          v34 = type metadata accessor for ArcadeLaunchAttributionAction(0);
          swift_allocObject();
          v35 = ArcadeLaunchAttributionAction.init(bundleIdentifier:additionalMetrics:actionMetrics:)(v30, v32, v33, v23);
          *(&v90 + 1) = v34;
          v91 = sub_1E1658C10(&qword_1ECEB7390, type metadata accessor for ArcadeLaunchAttributionAction, &protocol conformance descriptor for Action);
          *&aBlock = v35;
          v36 = v87;
          type metadata accessor for OpenAppActionImplementation(0, v87, v37, v38);

          swift_getWitnessTable();
          v39 = v83;
          sub_1E1834054(&aBlock, v83);

          __swift_destroy_boxed_opaque_existential_1(&aBlock);
          v40 = objc_opt_self();
          v41 = swift_allocObject();
          v41[2] = v36;
          v41[3] = v25;
          v42 = v88;
          v41[4] = v39;
          v41[5] = v42;
          v91 = sub_1E1658BFC;
          v92 = v41;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v90 = sub_1E1658654;
          *(&v90 + 1) = &block_descriptor_6_1;
          v43 = _Block_copy(&aBlock);

          [v40 launchApp:v26 withResultHandler:v43];

          _Block_release(v43);
        }

        return;
      }

      v25 = v86;
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v26 = *(a1 + 32);
        goto LABEL_7;
      }

      __break(1u);
      goto LABEL_22;
    }
  }

  if ((v84 & 1) == 0)
  {
    if (qword_1ECEB12B0 == -1)
    {
LABEL_17:
      v57 = sub_1E1AF591C();
      __swift_project_value_buffer(v57, qword_1ECEBA3E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B03760;
      sub_1E1AF382C();
      *(&v90 + 1) = sub_1E13006E4(0, &qword_1EE1E31F0, 0x1E696AD98);
      *&aBlock = v82;
      v58 = v82;
      sub_1E1AF383C();
      sub_1E1308058(&aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF382C();
      sub_1E1AF54AC();

      type metadata accessor for OpenAppActionImplementation.ImplementationError(0, v87, v59, v60);
      swift_getWitnessTable();
      v61 = swift_allocError();
      *v62 = 1;
      sub_1E1AF584C();

      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_17;
  }

  v44 = v86[3];
  v84 = v86[2];
  v82 = v44;
  v46 = *(v86 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
  v45 = *(v86 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId + 8);
  v47 = *(v86 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_destination);
  v76 = v86[5];
  v48 = *(v85 + 16);
  v48(v20, v86 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v16);
  v49 = type metadata accessor for OpenAppAction(0);
  v50 = swift_allocObject();
  v51 = (v50 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
  *v51 = v46;
  v51[1] = v45;
  *(v50 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_destination) = v47;
  *(v50 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_allowBetaApps) = 0;
  v91 = 0;
  aBlock = 0u;
  v90 = 0u;
  v52 = v80;
  v48(v80, v20, v16);
  v53 = sub_1E1AF46DC();
  v54 = v81;
  (*(*(v53 - 8) + 56))(v81, 1, 1, v53);
  v55 = (v50 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v55 = 0u;
  v55[1] = 0u;
  sub_1E138853C(&aBlock, &v95);
  if (*(&v96 + 1))
  {
    v98 = v95;
    v99 = v96;
    v100 = v97;
    v56 = v82;
  }

  else
  {
    v56 = v82;

    v63 = v77;
    sub_1E1AEFE9C();
    v64 = sub_1E1AEFE7C();
    v66 = v65;
    (*(v78 + 8))(v63, v79);
    v93 = v64;
    v94 = v66;
    sub_1E1AF6F6C();
    sub_1E1308058(&v95, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(&aBlock, &unk_1ECEB5670, qword_1E1B03EC0);
  v67 = v85;
  (*(v85 + 8))(v20, v16);
  v68 = v50 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v69 = v99;
  *v68 = v98;
  *(v68 + 1) = v69;
  *(v68 + 4) = v100;
  sub_1E134B7C8(v54, v50 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v50[2] = v84;
  v50[3] = v56;
  v70 = v76;
  v50[4] = 0;
  v50[5] = v70;
  (*(v67 + 32))(v50 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v52, v16);
  *(&v90 + 1) = v49;
  v91 = sub_1E1658C10(&qword_1ECEB7388, type metadata accessor for OpenAppAction, &protocol conformance descriptor for Action);
  *&aBlock = v50;
  type metadata accessor for OpenAppActionImplementation(0, v87, v71, v72);

  swift_getWitnessTable();
  sub_1E1834054(&aBlock, v83);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v73 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  swift_retain_n();
  v74 = sub_1E1AF68EC();
  *(&v90 + 1) = v73;
  v91 = MEMORY[0x1E69AB720];
  *&aBlock = v74;
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
}

uint64_t sub_1E1657E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1E1657F0C(a1, a2, a3, a5);
  v5 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
  swift_retain_n();
  v6 = sub_1E1AF68EC();
  v8[3] = v5;
  v8[4] = MEMORY[0x1E69AB720];
  v8[0] = v6;
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1E1657F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v37 = a4;
  v6 = sub_1E1AF3E2C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF320C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF324C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    if (qword_1ECEB12B0 != -1)
    {
      swift_once();
    }

    v30 = sub_1E1AF591C();
    __swift_project_value_buffer(v30, qword_1ECEBA3E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v32 = *(v36 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
    v31 = *(v36 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId + 8);
    v41 = &type metadata for AdamId;
    aBlock = v32;
    v39 = v31;

    sub_1E1AF383C();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54AC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910, qword_1E1B089E0);
    type metadata accessor for OpenAppActionImplementation.ImplementationError(0, v37, v33, v34);
    swift_getWitnessTable();
    swift_allocError();
    v29 = 1;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v19 = v16;
    sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
    v20 = sub_1E1AF68EC();
    v21 = swift_allocObject();
    *(v21 + 16) = v37;
    *(v21 + 24) = a3;
    v42 = sub_1E1658C08;
    v43 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1E1302D64;
    v41 = &block_descriptor_14;
    v22 = _Block_copy(&aBlock);

    sub_1E1AF322C();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1E1658C10(&qword_1EE1E3C80, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
    sub_1E13FE650();
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v18, v13, v22);
    _Block_release(v22);

    (*(v11 + 8))(v13, v10);
    (*(v15 + 8))(v18, v19);
    if (qword_1ECEB12B0 != -1)
    {
      swift_once();
    }

    v23 = sub_1E1AF591C();
    __swift_project_value_buffer(v23, qword_1ECEBA3E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    sub_1E1AF382C();
    v25 = *(v36 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
    v24 = *(v36 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId + 8);
    v41 = &type metadata for AdamId;
    aBlock = v25;
    v39 = v24;

    sub_1E1AF383C();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54AC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910, qword_1E1B089E0);
    type metadata accessor for OpenAppActionImplementation.ImplementationError(0, v37, v26, v27);
    swift_getWitnessTable();
    swift_allocError();
    v29 = 2;
LABEL_9:
    *v28 = v29;
    return sub_1E1AF581C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3910, qword_1E1B089E0);
  (*(v7 + 104))(v9, *MEMORY[0x1E69AB010], v6);
  return sub_1E1AF582C();
}

uint64_t sub_1E1658654(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1E16586A8(uint64_t a1, uint64_t a2, double a3)
{
  v37 = a2;
  v38 = a1;
  v3 = sub_1E1AF3D4C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4158, &qword_1E1B0C020);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v33 - v6;
  v33[1] = v33 - v6;
  v8 = sub_1E1AF3E1C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v33[2] = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF553C();
  v11 = *(v10 - 8);
  v34 = v10;
  v35 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF551C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18._countAndFlagsBits = 0x4F2E6E6F69746341;
  v18._object = 0xE90000000000004BLL;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  localizedString(_:comment:)(v18, v19);
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_1E1AF550C();
  sub_1E1AF3DFC();
  v20 = sub_1E1AF552C();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  v21._object = 0x80000001E1B6C7F0;
  v21._countAndFlagsBits = 0xD00000000000001FLL;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  localizedString(_:comment:)(v21, v22);
  v23._countAndFlagsBits = 0xD000000000000021;
  v23._object = 0x80000001E1B6C810;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  localizedString(_:comment:)(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEB7398, &qword_1E1B22338);
  v25 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1E1B02CC0;
  (*(v15 + 16))(v26 + v25, v17, v14);
  sub_1E1AF3D3C();
  sub_1E1AF54EC();
  v27 = v34;
  *(&v40 + 1) = v34;
  v41 = MEMORY[0x1E69AB558];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v39);
  v29 = v35;
  (*(v35 + 16))(boxed_opaque_existential_0, v13, v27);
  type metadata accessor for OpenAppActionImplementation(0, v37, v30, v31);
  swift_getWitnessTable();
  sub_1E1834054(&v39, v38);

  (*(v29 + 8))(v13, v27);
  (*(v15 + 8))(v17, v14);
  return __swift_destroy_boxed_opaque_existential_1(&v39);
}

void sub_1E1658B18(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(sub_1E1AF0F7C() - 8);
  v7 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  sub_1E1657194(a1, a2, *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v7, *(v2 + v8), *(v2 + (v8 & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + (((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + (((((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + (((((((v8 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v5);
}

uint64_t sub_1E1658C10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E1658CA0()
{
  v0 = *MEMORY[0x1E69DDC70];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 traitCollectionWithPreferredContentSizeCategory_];

  qword_1EE1EE4B8 = v3;
}

void Paragraph.Style.nqmlConfiguration.getter(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E1AEFF8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v2;
  sub_1E1AEFF4C();
  sub_1E1AEFEFC();
  v9 = sub_1E1AF602C();

  if (v9 & 1) != 0 || (sub_1E1AEFEFC(), v10 = sub_1E1AF602C(), , (v10))
  {
    v11 = (*(v5 + 8))(v7, v4);
LABEL_4:
    v20[14] = v8;
    v12 = sub_1E165A360(v11);
    goto LABEL_5;
  }

  sub_1E1AEFEFC();
  v19 = sub_1E1AF602C();

  v11 = (*(v5 + 8))(v7, v4);
  if (v19)
  {
    goto LABEL_4;
  }

  v20[15] = v8;
  v12 = sub_1E165A3E8(v11);
LABEL_5:
  v13 = v12;
  v14 = objc_opt_self();
  v15 = qword_1EE1EE4B0;
  v16 = v13;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = [v14 preferredFontForTextStyle:v16 compatibleWithTraitCollection:qword_1EE1EE4B8];

  *a1 = 10;
  a1[1] = 0xE100000000000000;
  a1[2] = v17;
  v18 = v17;
  a1[3] = _sSo16NSParagraphStyleC11AppStoreKitE4nqmlABvgZ_0();
  a1[4] = 161644770;
  a1[5] = 0xA400000000000000;
  a1[6] = _sSo16NSParagraphStyleC11AppStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
  a1[9] = _sSo16NSParagraphStyleC11AppStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

  a1[7] = 606245;
  a1[8] = 0xE300000000000000;
}

AppStoreKit::Paragraph::Alignment_optional __swiftcall Paragraph.Alignment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Paragraph.Alignment.rawValue.getter()
{
  v1 = *v0;
  v2 = 1952867692;
  v3 = 0x7468676972;
  v4 = 0x656966697473756ALL;
  if (v1 != 3)
  {
    v4 = 0x657A696C61636F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265746E6563;
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

uint64_t sub_1E1659074()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E1659150(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E1659218(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E16592FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1952867692;
  v5 = 0xE500000000000000;
  v6 = 0x7468676972;
  v7 = 0x656966697473756ALL;
  if (v2 != 3)
  {
    v7 = 0x657A696C61636F6CLL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE900000000000064;
  }

  if (*v1)
  {
    v4 = 0x7265746E6563;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

id Paragraph.Style.textStyle.getter(uint64_t a1)
{
  v1 = sub_1E165A3E8(a1);

  return v1;
}

id Paragraph.Style.smallerTextStyle.getter(uint64_t a1)
{
  v1 = sub_1E165A360(a1);

  return v1;
}

AppStoreKit::Paragraph::Style_optional __swiftcall Paragraph.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Paragraph.Style.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x656C6369747261;
    if (v1 != 1)
    {
      v5 = 0x6E6F6974706163;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x647261646E617473;
    }
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    if (v1 != 5)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

double sub_1E165954C(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

void sub_1E1659680(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE800000000000000;
    v9 = 0x656C6369747261;
    if (v2 != 1)
    {
      v9 = 0x6E6F6974706163;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0x647261646E617473;
    }

    if (!v10)
    {
      v8 = 0xE700000000000000;
    }

    *a1 = v11;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000001E1B56E10;
    v4 = 0xD00000000000001BLL;
    if (v2 != 5)
    {
      v4 = 0xD000000000000011;
      v3 = 0x80000001E1B58C10;
    }

    v5 = 0xD000000000000010;
    v6 = 0x80000001E1B58BF0;
    if (v2 != 3)
    {
      v5 = 0xD000000000000012;
      v6 = 0x80000001E1B58AE0;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t Paragraph.__allocating_init(id:text:wantsCollapsedNewlines:alignment:style:isCollapsed:suppressVerticalMargins:impressionMetrics:)(void *a1, void *a2, char a3, unsigned __int8 *a4, char *a5, int a6, int a7, uint64_t a8)
{
  v46 = a6;
  v47 = a7;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v45 = *a4;
  v19 = *a5;
  *(v18 + 24) = 0;
  *(v18 + 40) = 0;
  sub_1E134FD1C(a1, &v50, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v51 + 1))
  {
    v20 = v51;
    *(v18 + 56) = v50;
    *(v18 + 72) = v20;
    *(v18 + 88) = v52;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v44 = a2;
    v22 = a3;
    v23 = a8;
    v24 = a1;
    v25 = v19;
    v27 = v26;
    (*(v15 + 8))(v17, v14);
    v48 = v21;
    v49 = v27;
    v19 = v25;
    a1 = v24;
    a8 = v23;
    a3 = v22;
    a2 = v44;
    sub_1E1AF6F6C();
    sub_1E1308058(&v50, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E134FD1C(a8, v18 + OBJC_IVAR____TtC11AppStoreKit9Paragraph_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  swift_beginAccess();
  v28 = byte_1ECEBBB89;
  v29 = type metadata accessor for LanguageAwareString();
  v30 = objc_allocWithZone(v29);
  v31 = a2;
  v32 = sub_1E1990A0C(v31, 0, v28);

  *(v18 + 16) = v32;
  if (a3)
  {
    v33 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v34 = [v33 length];
    v35 = [v33 mutableString];
    v36 = sub_1E1AF5DBC();
    v44 = a1;
    v37 = v19;
    v38 = v36;
    v39 = sub_1E1AF5DBC();
    [v35 replaceOccurrencesOfString:v38 withString:v39 options:1024 range:{0, v34}];

    v19 = v37;
    LOBYTE(v34) = byte_1ECEBBB89;
    v40 = objc_allocWithZone(v29);
    v41 = sub_1E1990A0C(v33, 0, v34);

    sub_1E1308058(a8, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E1308058(v44, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  else
  {

    sub_1E1308058(a8, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
    v41 = v32;
  }

  *(v18 + 32) = v41;
  v42 = v46;
  *(v18 + 48) = v45;
  *(v18 + 49) = v19;
  *(v18 + 50) = v42 & 1;
  *(v18 + 51) = v47 & 1;
  return v18;
}

uint64_t Paragraph.init(id:text:wantsCollapsedNewlines:alignment:style:isCollapsed:suppressVerticalMargins:impressionMetrics:)(void *a1, void *a2, char a3, unsigned __int8 *a4, char *a5, int a6, int a7, uint64_t a8)
{
  v9 = v8;
  v46 = a6;
  v47 = a7;
  v16 = sub_1E1AEFEAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a4;
  v20 = *a5;
  *(v9 + 24) = 0;
  *(v9 + 40) = 0;
  sub_1E134FD1C(a1, &v50, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v51 + 1))
  {
    v53 = v50;
    v54 = v51;
    v55 = v52;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v44 = a2;
    v22 = a3;
    v23 = a8;
    v24 = a1;
    v25 = v20;
    v27 = v26;
    (*(v17 + 8))(v19, v16);
    v48 = v21;
    v49 = v27;
    v20 = v25;
    a1 = v24;
    a8 = v23;
    a3 = v22;
    a2 = v44;
    sub_1E1AF6F6C();
    sub_1E1308058(&v50, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v28 = v54;
  *(v9 + 56) = v53;
  *(v9 + 72) = v28;
  *(v9 + 88) = v55;
  sub_1E134FD1C(a8, v9 + OBJC_IVAR____TtC11AppStoreKit9Paragraph_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  swift_beginAccess();
  v29 = byte_1ECEBBB89;
  v30 = type metadata accessor for LanguageAwareString();
  objc_allocWithZone(v30);
  v31 = a2;
  v32 = sub_1E1990A0C(v31, 0, v29);

  *(v9 + 16) = v32;
  if (a3)
  {
    v33 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v34 = [v33 length];
    v35 = [v33 mutableString];
    v36 = sub_1E1AF5DBC();
    v44 = a1;
    v37 = v20;
    v38 = v36;
    v39 = sub_1E1AF5DBC();
    [v35 replaceOccurrencesOfString:v38 withString:v39 options:1024 range:{0, v34}];

    v20 = v37;
    LOBYTE(v34) = byte_1ECEBBB89;
    v40 = objc_allocWithZone(v30);
    v41 = sub_1E1990A0C(v33, 0, v34);

    sub_1E1308058(a8, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E1308058(v44, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  else
  {

    sub_1E1308058(a8, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
    v41 = *(v9 + 16);
  }

  *(v9 + 32) = v41;
  v42 = v46;
  *(v9 + 48) = v45;
  *(v9 + 49) = v20;
  *(v9 + 50) = v42 & 1;
  *(v9 + 51) = v47 & 1;
  return v9;
}

id Paragraph.text.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = v0;
    v4 = sub_1E198D200();
    v5 = *(v0 + 24);
    *(v3 + 24) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void Paragraph.text.setter(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void (*Paragraph.text.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = Paragraph.text.getter();
  return sub_1E1659FD0;
}

void sub_1E1659FD0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
}

id Paragraph.collapsedText.getter()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = v0;
    v4 = sub_1E198D200();
    v5 = *(v0 + 40);
    *(v3 + 40) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void Paragraph.collapsedText.setter(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
}

void (*Paragraph.collapsedText.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = Paragraph.collapsedText.getter();
  return sub_1E165A098;
}

void sub_1E165A098(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
}

double Paragraph.clickSender.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

id *Paragraph.deinit()
{
  sub_1E134B88C((v0 + 7));
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit9Paragraph_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  return v0;
}

uint64_t Paragraph.__deallocating_deinit()
{
  sub_1E134B88C((v0 + 7));
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit9Paragraph_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return swift_deallocClassInstance();
}

uint64_t sub_1E165A2F8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E165AA74(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E165A360(uint64_t a1)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    if (!*v1)
    {
      goto LABEL_10;
    }

    if (v2 != 1)
    {
      return sub_1E165A360(a1);
    }

LABEL_9:
    v3 = MEMORY[0x1E69DDCF8];
    return *v3;
  }

  if (*v1 > 4u)
  {
    if (v2 != 5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v2 == 3)
  {
LABEL_10:
    v3 = MEMORY[0x1E69DDD80];
    return *v3;
  }

  v3 = MEMORY[0x1E69DDD28];
  return *v3;
}

uint64_t sub_1E165A3E8(uint64_t a1)
{
  v2 = *v1;
  if (v2 > 2)
  {
    if (*v1 > 4u)
    {
      v3 = MEMORY[0x1E69DDCF8];
      return *v3;
    }

    if (v2 != 3)
    {
      v3 = MEMORY[0x1E69DDD28];
      return *v3;
    }

LABEL_8:
    v3 = MEMORY[0x1E69DDD80];
    return *v3;
  }

  if (!*v1)
  {
    goto LABEL_8;
  }

  if (v2 != 1)
  {
    return sub_1E165A3E8(a1);
  }

  v3 = MEMORY[0x1E69DDDC8];
  return *v3;
}

id _s11AppStoreKit9ParagraphC7prepare4text2of4withSo18NSAttributedStringCSSSg_AA10StyledTextC9MediaTypeOAC5StyleOtFZ_0(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _BYTE *a4)
{
  v8 = sub_1E1AEF81C();
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AEF82C();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AEF84C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - v16;
  if (a2)
  {
    v40 = v10;
    v41 = v8;
    v18 = a1;
    v19 = *a3;
    LOBYTE(v47[0]) = *a4;
    v45 = a2;

    Paragraph.Style.nqmlConfiguration.getter(&v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB9C0, &qword_1E1B0EE60);
    inited = swift_initStackObject();
    v21 = MEMORY[0x1E69DB688];
    *(inited + 16) = xmmword_1E1B02CC0;
    v22 = *v21;
    *(inited + 32) = *v21;
    v23 = *(&v49 + 1);
    *(inited + 64) = sub_1E13006E4(0, &qword_1EE1E3458, 0x1E69DB7D0);
    *(inited + 40) = v23;
    v24 = v22;
    v25 = v23;
    sub_1E159D27C(inited);
    swift_setDeallocating();
    sub_1E1308058(inited + 32, &unk_1ECEBB9D0, &unk_1E1B19D00);
    if (v19)
    {
      if (v19 == 1)
      {

        v47[2] = v50;
        v47[3] = v51;
        v47[4] = v52;
        v47[0] = v48;
        v47[1] = v49;
        v26 = objc_allocWithZone(type metadata accessor for NqmlStringGenerator());
        sub_1E13E3AC8(&v48, &v46);
        v27 = sub_1E1ADBC74(v18, v45, v47);
        [*&v27[OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_parser] parse];
        v28 = OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_accumulator;
        v29 = [*&v27[OBJC_IVAR____TtC11AppStoreKitP33_9642CCE02323FAF22DDBBFD3680E3E9F19NqmlStringGenerator_accumulator] mutableString];
        if (qword_1EE1E3468 != -1)
        {
          swift_once();
        }

        sub_1E16E354C(qword_1EE2160F0);

        v30 = *&v27[v28];
        v31 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v32 = v30;
        v33 = [v31 initWithAttributedString_];
        sub_1E14A7E28(&v48);

        return v33;
      }

      sub_1E13006E4(0, &qword_1EE1E3420, 0x1E696AAB0);
      v37 = sub_1E1AEFCCC();
      (*(*(v37 - 8) + 56))(v17, 1, 1, v37);
      (*(v42 + 104))(v13, *MEMORY[0x1E6968750], v43);
      (*(v44 + 104))(v40, *MEMORY[0x1E6968728], v41);

      sub_1E1AEF83C();
      sub_1E1AF69CC();

      v33 = sub_1E1AF69EC();
    }

    else
    {
      v36 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v38 = sub_1E1AF5DBC();

      type metadata accessor for Key(0);
      sub_1E165B7A4(&qword_1EE1E33D0, type metadata accessor for Key, &unk_1E1B00CE8);
      v39 = sub_1E1AF5C6C();

      v33 = [v36 initWithString:v38 attributes:v39];
    }

    sub_1E14A7E28(&v48);
    return v33;
  }

  v34 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

  return [v34 init];
}

uint64_t sub_1E165AA74(char *a1, uint64_t a2)
{
  v78 = a2;
  v64 = sub_1E1AEFEAC();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF39DC();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v79 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v74 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v62 - v9;
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v62 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  sub_1E1AF381C();
  v66 = sub_1E1AF37CC();
  v69 = v24;
  v27 = *(v12 + 8);
  v25 = v12 + 8;
  v26 = v27;
  v27(v23, v11);
  sub_1E1AF381C();
  sub_1E1423CD4();
  sub_1E1AF369C();
  v27(v23, v11);
  v65 = v84[0];
  sub_1E1AF381C();
  sub_1E165B7EC();
  sub_1E1AF369C();
  v27(v23, v11);
  v85 = v84[0];
  sub_1E1AF46DC();
  sub_1E1AF381C();
  (*(v75 + 16))(v79, v78, v76);
  v77 = v10;
  sub_1E1AF464C();
  v79 = a1;
  sub_1E1AF381C();
  v28 = sub_1E1AF37CC();
  if (v29)
  {
    *&v81 = v28;
    *(&v81 + 1) = v29;
  }

  else
  {
    v30 = v62;
    sub_1E1AEFE9C();
    v31 = sub_1E1AEFE7C();
    v33 = v32;
    (*(v63 + 8))(v30, v64);
    *&v81 = v31;
    *(&v81 + 1) = v33;
  }

  sub_1E1AF6F6C();
  v26(v20, v11);
  LOBYTE(v81) = v65;
  LOBYTE(v80[0]) = v85;
  v66 = _s11AppStoreKit9ParagraphC7prepare4text2of4withSo18NSAttributedStringCSSSg_AA10StyledTextC9MediaTypeOAC5StyleOtFZ_0(v66, v69, &v81, v80);

  v34 = v70;
  sub_1E1AF381C();
  v35 = sub_1E1AF370C();
  v26(v34, v11);
  v36 = (v35 == 2) | v35;
  sub_1E1AF381C();
  sub_1E165B840();
  sub_1E1AF369C();
  v26(v23, v11);
  LODWORD(v70) = v86;
  v37 = v67;
  sub_1E1AF381C();
  LODWORD(v69) = sub_1E1AF370C();
  v26(v37, v11);
  v38 = v68;
  sub_1E1AF381C();
  v39 = sub_1E1AF370C();
  v26(v38, v11);
  v40 = v74;
  sub_1E134FD1C(v77, v74, &unk_1ECEB1770, &unk_1E1AFED20);
  type metadata accessor for Paragraph(0);
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  *(v41 + 40) = 0;
  sub_1E134FD1C(v84, &v81, &unk_1ECEB5670, qword_1E1B03EC0);
  v72 = v26;
  v73 = v11;
  v71 = v25;
  if (*(&v82 + 1))
  {
    v42 = v82;
    *(v41 + 56) = v81;
    *(v41 + 72) = v42;
    *(v41 + 88) = v83;
  }

  else
  {
    v43 = v62;
    sub_1E1AEFE9C();
    v44 = sub_1E1AEFE7C();
    v46 = v45;
    (*(v63 + 8))(v43, v64);
    v80[0] = v44;
    v80[1] = v46;
    sub_1E1AF6F6C();
    sub_1E1308058(&v81, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E134FD1C(v40, v41 + OBJC_IVAR____TtC11AppStoreKit9Paragraph_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  swift_beginAccess();
  v47 = byte_1ECEBBB89;
  v48 = type metadata accessor for LanguageAwareString();
  objc_allocWithZone(v48);
  v49 = v66;
  v50 = sub_1E1990A0C(v49, 0, v47);

  *(v41 + 16) = v50;
  if (v36)
  {
    v51 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v52 = [v51 length];
    v53 = v39;
    v54 = [v51 mutableString];
    v55 = sub_1E1AF5DBC();
    v56 = sub_1E1AF5DBC();
    [v54 replaceOccurrencesOfString:v55 withString:v56 options:1024 range:{0, v52}];

    v39 = v53;
    LOBYTE(v52) = byte_1ECEBBB89;
    v57 = objc_allocWithZone(v48);
    v58 = sub_1E1990A0C(v51, 0, v52);

    (*(v75 + 8))(v78, v76);
    v72(v79, v73);
    sub_1E1308058(v74, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E1308058(v84, &unk_1ECEB5670, qword_1E1B03EC0);
    sub_1E1308058(v77, &unk_1ECEB1770, &unk_1E1AFED20);
  }

  else
  {

    (*(v75 + 8))(v78, v76);
    v72(v79, v73);
    sub_1E1308058(v40, &unk_1ECEB1770, &unk_1E1AFED20);
    sub_1E1308058(v84, &unk_1ECEB5670, qword_1E1B03EC0);
    sub_1E1308058(v77, &unk_1ECEB1770, &unk_1E1AFED20);
    v58 = v50;
  }

  *(v41 + 32) = v58;
  v59 = v69;
  v60 = v69 == 2;
  *(v41 + 48) = v70;
  *(v41 + 49) = v85;
  *(v41 + 50) = (v60 | v59) & 1;
  *(v41 + 51) = v39 & 1;
  return v41;
}

unint64_t sub_1E165B510()
{
  result = qword_1ECEB7420;
  if (!qword_1ECEB7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7420);
  }

  return result;
}

unint64_t sub_1E165B568()
{
  result = qword_1ECEB7428;
  if (!qword_1ECEB7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7428);
  }

  return result;
}

uint64_t type metadata accessor for Paragraph(uint64_t a1)
{
  result = qword_1EE1E4138;
  if (!qword_1EE1E4138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E165B658(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E165B7A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E165B7EC()
{
  result = qword_1EE1E4168;
  if (!qword_1EE1E4168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E4168);
  }

  return result;
}

unint64_t sub_1E165B840()
{
  result = qword_1EE1E4160;
  if (!qword_1EE1E4160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E4160);
  }

  return result;
}

uint64_t PreorderDisclaimer.disclaimer.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PreorderDisclaimer.__allocating_init(id:disclaimer:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  sub_1E134FD1C(a1, &v19, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v20 + 1))
  {
    sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    sub_1E1AEFE9C();
    v13 = sub_1E1AEFE7C();
    v15 = v14;
    (*(v9 + 8))(v11, v8);
    v18[1] = v13;
    v18[2] = v15;
    sub_1E1AF6F6C();
    sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
    sub_1E1308058(&v19, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v16 = v23;
  *(v12 + 32) = v22;
  *(v12 + 48) = v16;
  *(v12 + 64) = v24;
  sub_1E134B7C8(a4, v12 + OBJC_IVAR____TtC11AppStoreKit18PreorderDisclaimer_impressionMetrics);
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  return v12;
}

uint64_t PreorderDisclaimer.init(id:disclaimer:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v20, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v21 + 1))
  {
    sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  else
  {
    sub_1E1AEFE9C();
    v14 = sub_1E1AEFE7C();
    v16 = v15;
    (*(v11 + 8))(v13, v10);
    v19[1] = v14;
    v19[2] = v16;
    sub_1E1AF6F6C();
    sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
    sub_1E1308058(&v20, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  v17 = v24;
  *(v5 + 32) = v23;
  *(v5 + 48) = v17;
  *(v5 + 64) = v25;
  sub_1E134B7C8(a4, v5 + OBJC_IVAR____TtC11AppStoreKit18PreorderDisclaimer_impressionMetrics);
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  return v5;
}

void (*PreorderDisclaimer.__allocating_init(deserializing:using:)(char *a1, uint64_t a2))(char *, uint64_t)
{
  v51 = a2;
  v47 = sub_1E1AF39DC();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v35 - v5;
  v6 = sub_1E1AEFEAC();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = a1;
  sub_1E1AF381C();
  v42 = sub_1E1AF37CC();
  v19 = v18;
  v20 = *(v10 + 8);
  v20(v16, v9);
  v41 = v19;
  if (v19)
  {
    v39 = v20;
    sub_1E1AF381C();
    v21 = sub_1E1AF37CC();
    v40 = v17;
    v38 = v9;
    if (v22)
    {
      v48 = v21;
      v49 = v22;
    }

    else
    {
      sub_1E1AEFE9C();
      v25 = sub_1E1AEFE7C();
      v27 = v26;
      (*(v36 + 8))(v8, v37);
      v48 = v25;
      v49 = v27;
    }

    sub_1E1AF6F6C();
    v28 = v9;
    v29 = v39;
    v39(v13, v28);
    sub_1E1AF46DC();
    sub_1E1AF381C();
    v30 = v45;
    v31 = v51;
    v32 = v47;
    (*(v45 + 16))(v43, v51, v47);
    v33 = v44;
    sub_1E1AF464C();
    v20 = swift_allocObject();
    PreorderDisclaimer.init(id:disclaimer:impressionMetrics:)(v50, v42, v41, v33);
    (*(v30 + 8))(v31, v32);
    v29(v40, v38);
  }

  else
  {
    v23 = sub_1E1AF5A7C();
    sub_1E165C2E4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v24 = 0x6D69616C63736964;
    v24[1] = 0xEA00000000007265;
    v24[2] = v46;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x1E69AB690], v23);
    swift_willThrow();
    (*(v45 + 8))(v51, v47);
    v20(v17, v9);
  }

  return v20;
}

uint64_t PreorderDisclaimer.deinit()
{

  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit18PreorderDisclaimer_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  return v0;
}

uint64_t PreorderDisclaimer.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit18PreorderDisclaimer_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return swift_deallocClassInstance();
}

uint64_t sub_1E165C2E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PreorderDisclaimer(uint64_t a1)
{
  result = qword_1EE1EF8B0;
  if (!qword_1EE1EF8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1E165C378@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, uint64_t)@<X8>))(char *, uint64_t)
{
  result = PreorderDisclaimer.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1E165C3E8(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t InAppPurchaseSearchResult.__allocating_init(id:lockup:condensedBehavior:searchAdOpportunity:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v27 = a4;
  v7 = sub_1E1AEFEAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25[-v12];
  v14 = swift_allocObject();
  v26 = *a3;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit25InAppPurchaseSearchResult_lockup) = a2;
  sub_1E134FD1C(a1, v33, &unk_1ECEB5670, qword_1E1B03EC0);
  v15 = *(a2 + 264);
  if (v15)
  {
    v16 = type metadata accessor for Action(0);
    v17 = sub_1E139136C(qword_1EE1D2F80, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  sub_1E134FD1C(a2 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, v13, &unk_1ECEB1770, &unk_1E1AFED20);
  *(v14 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(v33, &v30, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v31 + 1))
  {
    v18 = v31;
    *(v14 + 24) = v30;
    *(v14 + 40) = v18;
    *(v14 + 56) = v32;
  }

  else
  {

    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v20 = v8;
    v22 = v21;
    (*(v20 + 8))(v10, v7);
    v28 = v19;
    v29 = v22;
    sub_1E1AF6F6C();
    sub_1E1308058(&v30, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v33, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v14 + 64) = v15;
  *(v14 + 72) = 0;
  *(v14 + 80) = 0;
  *(v14 + 88) = v16;
  *(v14 + 96) = v17;
  sub_1E134B7C8(v13, v14 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics);
  *(v14 + 17) = 0;
  *(v14 + 16) = v26;
  v23 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v14 + v23) = v27;
  return v14;
}

uint64_t InAppPurchaseSearchResult.init(id:lockup:condensedBehavior:searchAdOpportunity:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = v4;
  v26 = a4;
  v9 = sub_1E1AEFEAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - v14;
  v25 = *a3;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit25InAppPurchaseSearchResult_lockup) = a2;
  sub_1E134FD1C(a1, v35, &unk_1ECEB5670, qword_1E1B03EC0);
  v16 = *(a2 + 264);
  if (v16)
  {
    v24 = type metadata accessor for Action(0);
    v17 = sub_1E139136C(qword_1EE1D2F80, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v24 = 0;
    v17 = 0;
  }

  sub_1E134FD1C(a2 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, v15, &unk_1ECEB1770, &unk_1E1AFED20);
  *(v5 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(v35, &v29, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {

    sub_1E1AEFE9C();
    v18 = sub_1E1AEFE7C();
    v20 = v19;
    (*(v10 + 8))(v12, v9);
    v27 = v18;
    v28 = v20;
    sub_1E1AF6F6C();
    sub_1E1308058(&v29, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v35, &unk_1ECEB5670, qword_1E1B03EC0);
  v21 = v33;
  *(v5 + 24) = v32;
  *(v5 + 40) = v21;
  *(v5 + 56) = v34;
  *(v5 + 64) = v16;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = v24;
  *(v5 + 96) = v17;
  sub_1E134B7C8(v15, v5 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics);
  *(v5 + 17) = 0;
  *(v5 + 16) = v25;
  v22 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v5 + v22) = v26;

  return v5;
}

uint64_t InAppPurchaseSearchResult.clickSender.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit25InAppPurchaseSearchResult_lockup);
  a1[3] = type metadata accessor for Lockup(0);
  *a1 = v3;
}

void InAppPurchaseSearchResult.itemBackground.getter(char *a1@<X8>)
{
  if (*(v1 + 16) == 2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  *a1 = v2;
}

uint64_t InAppPurchaseSearchResult.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + 64, &unk_1ECEB1780, &qword_1E1B0AD50);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return v0;
}

uint64_t InAppPurchaseSearchResult.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + 64, &unk_1ECEB1780, &qword_1E1B0AD50);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return swift_deallocClassInstance();
}

uint64_t sub_1E165CDD0@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC11AppStoreKit25InAppPurchaseSearchResult_lockup);
  a1[3] = type metadata accessor for Lockup(0);
  *a1 = v3;
}

void sub_1E165CE24(char *a1@<X8>)
{
  if (*(*v1 + 16) == 2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

  *a1 = v2;
}

uint64_t sub_1E165CE40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = v51 - v5;
  v55 = sub_1E1AEFEAC();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v60 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF39DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v58 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v51 - v11;
  v62 = sub_1E1AF380C();
  v13 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v57 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v56 = v51 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v51 - v18;
  v63 = a1;
  sub_1E1AF381C();
  v20 = *(v8 + 16);
  v20(v12, a2, v7);
  type metadata accessor for InAppPurchaseLockup(0);
  swift_allocObject();
  v21 = v61;
  v22 = InAppPurchaseLockup.init(deserializing:using:)(v19, v12);
  if (v21)
  {
    (*(v8 + 8))(a2, v7);
    (*(v13 + 8))(v63, v62);
  }

  else
  {
    v23 = v22;
    v51[0] = v20;
    v51[1] = v8 + 16;
    v51[2] = 0;
    v52 = v8;
    v61 = v7;
    v53 = a2;
    v24 = v56;
    sub_1E1AF381C();
    v25 = sub_1E1AF37CC();
    if (v26)
    {
      v69 = v25;
      v70 = v26;
    }

    else
    {
      v27 = v60;
      sub_1E1AEFE9C();
      v28 = sub_1E1AEFE7C();
      v30 = v29;
      (*(v54 + 8))(v27, v55);
      v69 = v28;
      v70 = v30;
    }

    sub_1E1AF6F6C();
    v31 = *(v13 + 8);
    v32 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33 = v62;
    v31(v24, v62);
    v34 = v58;
    v35 = v57;
    sub_1E1AF381C();
    sub_1E134B92C();
    sub_1E1AF369C();
    v58 = v31;
    v56 = v32;
    v31(v35, v33);
    v73 = v74;
    type metadata accessor for SearchAdOpportunity();
    sub_1E1AF381C();
    v36 = v53;
    (v51[0])(v34, v53, v61);
    sub_1E139136C(&qword_1EE1EE770, type metadata accessor for SearchAdOpportunity, &protocol conformance descriptor for SearchAdOpportunity);
    sub_1E1AF464C();
    v37 = v71;
    type metadata accessor for InAppPurchaseSearchResult(0);
    v7 = swift_allocObject();
    *(v7 + OBJC_IVAR____TtC11AppStoreKit25InAppPurchaseSearchResult_lockup) = v23;
    sub_1E134FD1C(v72, &v69, &unk_1ECEB5670, qword_1E1B03EC0);
    v38 = *(v23 + 264);
    if (v38)
    {
      v57 = type metadata accessor for Action(0);
      v39 = sub_1E139136C(qword_1EE1D2F80, type metadata accessor for Action, &protocol conformance descriptor for Action);
    }

    else
    {
      v57 = 0;
      v39 = 0;
    }

    v40 = v59;
    v41 = v60;
    sub_1E134FD1C(v23 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, v59, &unk_1ECEB1770, &unk_1E1AFED20);
    *(v7 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
    sub_1E134FD1C(&v69, &v66, &unk_1ECEB5670, qword_1E1B03EC0);
    if (*(&v67 + 1))
    {
      v42 = v67;
      *(v7 + 24) = v66;
      *(v7 + 40) = v42;
      *(v7 + 56) = v68;
    }

    else
    {

      sub_1E1AEFE9C();
      v43 = sub_1E1AEFE7C();
      v44 = v41;
      v45 = v43;
      v47 = v46;
      (*(v54 + 8))(v44, v55);
      v64 = v45;
      v65 = v47;
      v36 = v53;
      sub_1E1AF6F6C();
      sub_1E1308058(&v66, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    (*(v52 + 8))(v36, v61);
    (v58)(v63, v62);
    sub_1E1308058(&v69, &unk_1ECEB5670, qword_1E1B03EC0);
    sub_1E1308058(v72, &unk_1ECEB5670, qword_1E1B03EC0);
    *(v7 + 64) = v38;
    *(v7 + 72) = 0;
    v48 = v57;
    *(v7 + 80) = 0;
    *(v7 + 88) = v48;
    *(v7 + 96) = v39;
    sub_1E134B7C8(v40, v7 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics);
    *(v7 + 17) = 0;
    *(v7 + 16) = v73;
    v49 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
    swift_beginAccess();
    *(v7 + v49) = v37;
  }

  return v7;
}

uint64_t type metadata accessor for InAppPurchaseSearchResult(uint64_t a1)
{
  result = qword_1EE1E1BF8;
  if (!qword_1EE1E1BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E165D6E8()
{
  sub_1E1361B18(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_1E165D760()
{
  result = qword_1ECEB7430;
  if (!qword_1ECEB7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7430);
  }

  return result;
}

void (*TodayCardMediaVideo.init(deserializing:using:)(char *a1, uint64_t a2))(uint64_t, uint64_t)
{
  v67 = a1;
  v54 = *v2;
  v69 = sub_1E1AF39DC();
  v4 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v58 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v53 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v53 - v10;
  v66 = sub_1E1AF380C();
  v62 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v57 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v53 - v17;
  v53[1] = OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_artworks;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_artworks) = MEMORY[0x1E69E7CC0];
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v65 = v4;
  v19 = *(v4 + 16);
  v20 = v11;
  v21 = v11;
  v22 = a2;
  v23 = a2;
  v24 = v69;
  v19(v21, v23, v69);
  v63 = v18;
  v25 = v20;
  sub_1E1AF464C();
  v68 = v8;
  v64 = v22;
  v19(v8, v22, v24);
  v26 = v67;
  sub_1E1AF381C();
  v19(v25, v8, v24);
  type metadata accessor for Video(0);
  sub_1E165DF7C(&qword_1EE1E52D0, type metadata accessor for Video, &protocol conformance descriptor for Video);
  v27 = sub_1E1AF630C();
  v28 = OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_videos;
  v29 = v60;
  *(v60 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_videos) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35B0, &unk_1E1B07260);
  sub_1E1AF381C();
  v55 = v4 + 16;
  v56 = v19;
  v19(v25, v68, v69);
  sub_1E13F6220();
  sub_1E1AF464C();
  v53[0] = OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_artworkLayoutsWithMetrics;
  *(v29 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_artworkLayoutsWithMetrics) = v70;
  v30 = v26;
  sub_1E1AF381C();
  v31 = v29;
  v32 = sub_1E1AF37CC();
  v34 = v33;
  v35 = v62;
  v36 = v66;
  v61 = v62[1];
  v61(v15, v66);
  v37 = (v29 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_description);
  *v37 = v32;
  v37[1] = v34;
  v38 = *(v29 + v28);
  if (v38 >> 62)
  {
    v46 = v37;
    v47 = sub_1E1AF71CC();
    v37 = v46;
    if (v47)
    {
      goto LABEL_3;
    }

LABEL_8:
    v62 = v37;
    v48 = sub_1E1AF5A7C();
    sub_1E165DF7C(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v49 = 0x736F65646976;
    v49[1] = 0xE600000000000000;
    v49[2] = v54;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x1E69AB690], v48);
    swift_willThrow();
    v50 = *(v65 + 8);
    v51 = v69;
    v50(v64, v69);
    v61(v30, v66);
    v50(v68, v51);
    sub_1E1308058(v63, &unk_1ECEB1770, &unk_1E1AFED20);

    swift_deallocPartialClassInstance();
    return v31;
  }

  if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  v39 = v57;
  (v35[2])(v57, v30, v36);
  v40 = v58;
  v41 = v64;
  v42 = v69;
  v56(v58, v64, v69);
  v43 = v59;
  v44 = TodayCardMedia.init(deserializing:using:)(v39, v40);
  if (v43)
  {
    v31 = *(v65 + 8);
    (v31)(v41, v42);
    v61(v67, v36);
    (v31)(v68, v42);
  }

  else
  {
    v31 = v44;
    v45 = *(v65 + 8);
    v45(v41, v42);
    v61(v67, v36);
    v45(v68, v42);
  }

  sub_1E1308058(v63, &unk_1ECEB1770, &unk_1E1AFED20);
  return v31;
}

uint64_t sub_1E165DF7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TodayCardMediaVideo.__allocating_init(videos:artworkLayoutsWithMetrics:description:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_artworks) = MEMORY[0x1E69E7CC0];
  *(v14 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_videos) = a1;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_artworkLayoutsWithMetrics) = a2;
  v15 = (v14 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_description);
  *v15 = a3;
  v15[1] = a4;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_1E134FD1C(a5, v14 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E134FD1C(v25, &v22, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v23 + 1))
  {
    v16 = v23;
    *(v14 + 32) = v22;
    *(v14 + 48) = v16;
    *(v14 + 64) = v24;
  }

  else
  {
    sub_1E1AEFE9C();
    v17 = sub_1E1AEFE7C();
    v19 = v18;
    (*(v11 + 8))(v13, v10);
    v21[1] = v17;
    v21[2] = v19;
    sub_1E1AF6F6C();
    sub_1E1308058(&v22, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a5, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v25, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v14 + 16) = 8;
  *(v14 + 24) = 1;
  return v14;
}

uint64_t TodayCardMediaVideo.init(videos:artworkLayoutsWithMetrics:description:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1E1AEFEAC();
  v25 = *(v12 - 8);
  v26 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v24 - v16;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_artworks) = MEMORY[0x1E69E7CC0];
  *(v6 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_videos) = a1;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_artworkLayoutsWithMetrics) = a2;
  v18 = (v6 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_description);
  *v18 = a3;
  v18[1] = a4;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_1E134FD1C(a5, v17, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E134FD1C(v35, &v29, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v21 = v20;
    (*(v25 + 8))(v14, v26);
    v27 = v19;
    v28 = v21;
    sub_1E1AF6F6C();
    sub_1E1308058(&v29, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a5, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v35, &unk_1ECEB5670, qword_1E1B03EC0);
  v22 = v33;
  *(v6 + 32) = v32;
  *(v6 + 48) = v22;
  *(v6 + 64) = v34;
  sub_1E134B7C8(v17, v6 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics);
  *(v6 + 16) = 8;
  *(v6 + 24) = 1;
  return v6;
}

uint64_t TodayCardMediaVideo.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit19TodayCardMediaVideo_description);

  return v1;
}

double sub_1E165E528()
{

  return result;
}

uint64_t TodayCardMediaVideo.deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return v0;
}

uint64_t TodayCardMediaVideo.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 32);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14TodayCardMedia_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaVideo(uint64_t a1)
{
  result = qword_1EE1DC610;
  if (!qword_1EE1DC610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageFacetsFieldsProvider.init(pageFacetsMetricsProvider:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = *(type metadata accessor for PageFacetsFieldsProvider(0) + 20);
  v6 = *MEMORY[0x1E69AB4D8];
  v7 = sub_1E1AF524C();
  (*(*(v7 - 8) + 104))(a3 + v5, v6, v7);
  *(a3 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for PageFacetsFieldsProvider(uint64_t a1)
{
  result = qword_1EE1D9318;
  if (!qword_1EE1D9318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PageFacetsFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PageFacetsFieldsProvider(0) + 20);
  v4 = sub_1E1AF524C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PageFacetsFieldsProvider.addMetricsFields(into:using:)(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v40 = (*(v4 + 8))(ObjectType, v4);
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v6 = sub_1E1AF4A0C();
  v38 = a1;
  if (*(v6 + 16) && (v7 = sub_1E13018F8(0x65446E6F69746361, 0xED0000736C696174), (v8 & 1) != 0))
  {
    sub_1E137A5C4(*(v6 + 56) + 32 * v7, &v42);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
    if (swift_dynamicCast())
    {
      v9 = *&v41[0];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = sub_1E1303A74(MEMORY[0x1E69E7CC0]);
LABEL_8:
  v10 = 0;
  v11 = v40 + 64;
  v12 = 1 << *(v40 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v40 + 64);
  v15 = (v12 + 63) >> 6;
  v39 = v15;
  while (v14)
  {
    v17 = v10;
LABEL_18:
    v18 = __clz(__rbit64(v14)) | (v17 << 6);
    v19 = (*(v40 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    *&v41[0] = *(*(v40 + 56) + 8 * v18);
    swift_bridgeObjectRetain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
    sub_1E130C384();
    v22 = sub_1E1AF5D6C();
    v24 = v23;

    v43 = MEMORY[0x1E69E6158];
    *&v42 = v22;
    *(&v42 + 1) = v24;
    sub_1E1301CF0(&v42, v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v9;
    v27 = sub_1E13018F8(v21, v20);
    v28 = v9[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_30;
    }

    v31 = v26;
    if (v9[3] >= v30)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E14154D8();
      }
    }

    else
    {
      sub_1E168807C(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_1E13018F8(v21, v20);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_32;
      }

      v27 = v32;
    }

    v14 &= v14 - 1;
    if (v31)
    {

      v9 = v44;
      v16 = (v44[7] + 32 * v27);
      __swift_destroy_boxed_opaque_existential_1(v16);
      sub_1E1301CF0(v41, v16);
    }

    else
    {
      v9 = v44;
      v44[(v27 >> 6) + 8] |= 1 << v27;
      v34 = (v9[6] + 16 * v27);
      *v34 = v21;
      v34[1] = v20;
      sub_1E1301CF0(v41, (v9[7] + 32 * v27));
      v35 = v9[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_31;
      }

      v9[2] = v37;
    }

    v10 = v17;
    v15 = v39;
    v11 = v40 + 64;
  }

  while (1)
  {
    v17 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
      *&v42 = v9;
      __swift_mutable_project_boxed_opaque_existential_1(v38, v38[3]);
      sub_1E1AF4A1C();
      return __swift_destroy_boxed_opaque_existential_1(&v42);
    }

    v14 = *(v11 + 8 * v17);
    ++v10;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t static PageFacetsFieldsProvider.metricsPipelineWithPageFacetsProvider(using:currentPipeline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v22 = a1;
  v23 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7438, &unk_1E1B22A50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for PageFacetsFieldsProvider(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF4F3C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  sub_1E1AF42AC();
  *(v6 + 1) = 0;
  swift_unknownObjectWeakInit();
  v14 = *(v4 + 20);
  v15 = *MEMORY[0x1E69AB4D8];
  v16 = sub_1E1AF524C();
  (*(*(v16 - 8) + 104))(&v6[v14], v15, v16);
  *(v6 + 1) = v21;
  swift_unknownObjectWeakAssign();
  v24[3] = v4;
  v24[4] = sub_1E165FF08();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
  sub_1E165FF60(v6, boxed_opaque_existential_0);
  if (qword_1EE1D2870 != -1)
  {
    swift_once();
  }

  v18 = sub_1E1AF523C();
  __swift_project_value_buffer(v18, qword_1EE1D2878);
  sub_1E1AF4EEC();
  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_1E165FFC4();
  (*(v8 + 16))(v10, v13, v7);
  sub_1E1AF433C();
  sub_1E1AF435C();
  sub_1E1AF431C();
  sub_1E1AF42BC();
  sub_1E1660018(v6);
  return (*(v8 + 8))(v13, v7);
}

_OWORD *sub_1E165F11C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1E1301CF0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1E165F188(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 40 * a1;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  v9 = a4[7];
  v10 = sub_1E1AEFCCC();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a3, v10);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

unint64_t sub_1E165F248(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_1E165F2A0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1E1301CF0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1E165F31C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1E1AEFCCC();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1E165F3CC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1E165F45C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_1E1AEFEAC();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a3, v15);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

unint64_t sub_1E165F564(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1E165F5AC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1E165F608(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 136 * result;
  v5 = *(a2 + 112);
  *(v4 + 96) = *(a2 + 96);
  *(v4 + 112) = v5;
  *(v4 + 128) = *(a2 + 128);
  v6 = *(a2 + 48);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = v6;
  v7 = *(a2 + 80);
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 80) = v7;
  v8 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v8;
  *(a4[7] + 8 * result) = a3;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

uint64_t sub_1E165F678(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_1E1AF227C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_1E165F730(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a5[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = a6(a4, a5[7] + 40 * a1);
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_1E165F7A4(unint64_t result, char a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1E165F7E8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1E165F82C(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + (result << 6));
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a4[3];
  v6[2] = a4[2];
  v6[3] = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

uint64_t sub_1E165F884(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1E1AF468C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1E165F93C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = (a8[7] + 32 * result);
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

unint64_t sub_1E165F98C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 40 * result;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  v7 = (a5[7] + 16 * result);
  *v7 = a3;
  v7[1] = a4;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1E165F9E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1E165FA30(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 88 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 80) = *(a3 + 80);
  v6 = *(a3 + 64);
  *(v4 + 48) = *(a3 + 48);
  *(v4 + 64) = v6;
  *(v4 + 32) = *(a3 + 32);
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

unint64_t sub_1E165FA98(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = (a4[7] + 48 * result);
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v4[2] = a3[2];
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1E165FAF0(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1E165FB38(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = a4[6] + 40 * result;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  v7 = a4[7] + 16 * result;
  *v7 = a5;
  *(v7 + 8) = a3;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_1E165FB98(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

unint64_t sub_1E165FBEC(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1E165FC34(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_1E165FC7C(unint64_t a1, uint64_t a2, void *__src, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 152 * a1;
  v6 = *(a2 + 112);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 112) = v6;
  *(v5 + 128) = *(a2 + 128);
  *(v5 + 144) = *(a2 + 144);
  v7 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v7;
  v8 = *(a2 + 80);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v8;
  v9 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v9;
  result = memcpy((a4[7] + 392 * a1), __src, 0x188uLL);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1E165FD20(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = a7[6] + 32 * result;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_1E165FD70(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  v6 = a4[7] + 88 * result;
  v7 = *(a3 + 16);
  *v6 = *a3;
  *(v6 + 16) = v7;
  *(v6 + 80) = *(a3 + 80);
  v8 = *(a3 + 64);
  *(v6 + 48) = *(a3 + 48);
  *(v6 + 64) = v8;
  *(v6 + 32) = *(a3 + 32);
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

unint64_t sub_1E165FDEC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

unint64_t sub_1E165FE3C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 40 * result;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  v8 = (a6[7] + 24 * result);
  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_1E165FEA0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1E1301CF0(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1E165FF08()
{
  result = qword_1EE1D9328;
  if (!qword_1EE1D9328)
  {
    type metadata accessor for PageFacetsFieldsProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D9328);
  }

  return result;
}

uint64_t sub_1E165FF60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacetsFieldsProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E165FFC4()
{
  result = qword_1EE1F8638;
  if (!qword_1EE1F8638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F8638);
  }

  return result;
}

uint64_t sub_1E1660018(uint64_t a1)
{
  v2 = type metadata accessor for PageFacetsFieldsProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E16600B0(uint64_t a1)
{
  result = sub_1E1AF524C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1E1660154(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = objc_opt_self();
  result = [v7 valueWithNewObjectInContext_];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = [v7 valueWithObject:sub_1E1AF755C() inContext:{a1, v4, v3}];
  result = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1E1AF6C5C();
  LOBYTE(v13) = v5;
  v10 = [v7 valueWithObject:sub_1E1AF755C() inContext:{a1, v13}];
  result = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1E1AF6C5C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7450, &unk_1E1B22C40);
  v11 = [v7 valueWithObject:sub_1E1AF755C() inContext:{a1, v6}];
  result = swift_unknownObjectRelease();
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1E1AF6C5C();
  result = [v7 valueWithNewObjectInContext_];
  if (result)
  {
    v12 = result;
    sub_1E1AF6C5C();
    return v12;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_1E166038C()
{
  result = qword_1ECEB7440;
  if (!qword_1ECEB7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7440);
  }

  return result;
}

unint64_t sub_1E16603E8(__n128 a1)
{
  result = qword_1ECEB7448;
  if (!qword_1ECEB7448)
  {
    type metadata accessor for ArcadeSeeAllGamesPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7448);
  }

  return result;
}

uint64_t sub_1E1660448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E16610B0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.pageContext.getter()
{
  sub_1E16604E8();
  sub_1E1AF24EC();
  return v1;
}

unint64_t sub_1E16604E8()
{
  result = qword_1ECEB7458;
  if (!qword_1ECEB7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7458);
  }

  return result;
}

double sub_1E166053C@<D0>(_OWORD *a1@<X8>)
{
  sub_1E16604E8();
  sub_1E1AF24EC();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1E166058C(void *a1)
{
  sub_1E16604E8();

  return sub_1E1AF24FC();
}

void (*EnvironmentValues.pageContext.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1E16604E8();
  sub_1E1AF24EC();
  *v4 = v4[1];
  return sub_1E16606C0;
}

void sub_1E16606C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v2[3] = v3;
  if (a2)
  {

    sub_1E1AF24FC();
  }

  else
  {
    sub_1E1AF24FC();
  }

  free(v2);
}

uint64_t View.providePageContextMetrics()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath(" \x1B;\v");
  v15 = 0;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40, &unk_1E1B02B90);
  sub_1E1AF2BEC();
  v5 = v9;
  v6 = v10;
  v7 = v11;
  v9 = KeyPath;
  v10 = 0;
  LOBYTE(v11) = 0;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  MEMORY[0x1E68FB770](&v9, a1, &type metadata for ProvidePageContextModifier, a2);
}

unint64_t sub_1E1660820()
{
  result = qword_1ECEB7460;
  if (!qword_1ECEB7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7460);
  }

  return result;
}

uint64_t sub_1E1660880(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1E16608DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1E1660978(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_1E1AF24DC();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  sub_1E1AF644C();
  v1[16] = sub_1E1AF643C();
  v4 = sub_1E1AF63CC();

  return MEMORY[0x1EEE6DFA0](sub_1E1660A6C, v4, v3);
}

uint64_t sub_1E1660A6C()
{
  v1 = *(v0 + 96);

  v2 = *(v1 + 16);
  *(v0 + 40) = *v1;
  *(v0 + 56) = v2;
  v3 = *(v0 + 40);
  if (v2 == 1)
  {
  }

  else
  {
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 104);

    sub_1E1AF682C();
    v8 = sub_1E1AF26BC();
    sub_1E1AF0F1C();

    sub_1E1AF24CC();
    swift_getAtKeyPath();
    sub_1E1308058(v0 + 40, &qword_1ECEB7478, &qword_1E1B22DE8);
    (*(v6 + 8))(v5, v7);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
  }

  v9 = *(v0 + 96);
  v10 = *(v9 + 40);
  *(v0 + 16) = *(v9 + 24);
  *(v0 + 32) = v10;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB74A8, &unk_1E1B22E00);
  sub_1E1AF2C0C();

  v11 = *(v0 + 8);

  return v11();
}

double sub_1E1660BF8(uint64_t a1, __int128 *a2)
{
  v3 = sub_1E1AF24DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 24);
  v15 = *(a2 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB74A8, &unk_1E1B22E00);
  sub_1E1AF2BFC();
  v7 = v13;
  if (v13)
  {
    v8 = v12;
  }

  else
  {
    v14 = *a2;
    LOBYTE(v15) = *(a2 + 16);
    v8 = v14;
    if (v15 == 1)
    {
      v7 = *(&v14 + 1);

      if (!v7)
      {
        return result;
      }
    }

    else
    {

      sub_1E1AF682C();
      v10 = sub_1E1AF26BC();
      sub_1E1AF0F1C();

      sub_1E1AF24CC();
      swift_getAtKeyPath();
      sub_1E1308058(&v14, &qword_1ECEB7478, &qword_1E1B22DE8);
      (*(v4 + 8))(v6, v3);
      v8 = v12;
      v7 = v13;
      if (!v13)
      {
        return result;
      }
    }
  }

  v12 = v8;
  v13 = v7;
  if (qword_1EE1E39B8 != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78, &unk_1E1B297F0);
  __swift_project_value_buffer(v11, qword_1EE1E39C0);
  sub_1E1AF4A7C();

  return result;
}

uint64_t sub_1E1660E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v16 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7470, &qword_1E1B22DD0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - v4;
  v6 = *(v2 + 5);
  v18 = *v2;
  v19 = *(v2 + 16);
  v21 = *(v2 + 24);
  v20 = v6;
  v7 = swift_allocObject();
  v8 = v2[1];
  *(v7 + 16) = *v2;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v2 + 4);
  *(v7 + 56) = v6;
  v9 = &v5[*(v3 + 36)];
  sub_1E1AF21EC();
  sub_1E134FD1C(&v18, v17, &qword_1ECEB7478, &qword_1E1B22DE8);
  sub_1E134FD1C(&v21, v17, &unk_1ECEB5D40, &unk_1E1B02B90);
  sub_1E134FD1C(&v20, v17, &qword_1ECEB7480, &qword_1E1B22DF0);
  sub_1E1AF645C();
  *v9 = &unk_1E1B22DE0;
  *(v9 + 1) = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7488, &qword_1E1B22DF8);
  (*(*(v10 - 8) + 16))(v5, v15, v10);
  v11 = swift_allocObject();
  v12 = v2[1];
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v2 + 4);
  *(v11 + 56) = v6;
  sub_1E134FD1C(&v18, v17, &qword_1ECEB7478, &qword_1E1B22DE8);
  sub_1E134FD1C(&v21, v17, &unk_1ECEB5D40, &unk_1E1B02B90);
  sub_1E134FD1C(&v20, v17, &qword_1ECEB7480, &qword_1E1B22DF0);
  sub_1E16611D8();
  sub_1E1AF295C();

  return sub_1E1308058(v5, &qword_1ECEB7470, &qword_1E1B22DD0);
}

unint64_t sub_1E16610B0()
{
  result = qword_1ECEB7468;
  if (!qword_1ECEB7468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECEB5D40, &unk_1E1B02B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7468);
  }

  return result;
}

void sub_1E166112C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E166113C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E130B5DC;

  return sub_1E1660978(v0 + 16);
}

unint64_t sub_1E16611D8()
{
  result = qword_1ECEB7490;
  if (!qword_1ECEB7490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB7470, &qword_1E1B22DD0);
    sub_1E1661264();
    sub_1E16612C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7490);
  }

  return result;
}

unint64_t sub_1E1661264()
{
  result = qword_1ECEB7498;
  if (!qword_1ECEB7498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB7488, &qword_1E1B22DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7498);
  }

  return result;
}

unint64_t sub_1E16612C8()
{
  result = qword_1ECEB74A0;
  if (!qword_1ECEB74A0)
  {
    sub_1E1AF21EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB74A0);
  }

  return result;
}

BOOL sub_1E1661320(unsigned __int8 a1)
{
  v3 = sub_1E1AF3F6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  if (*(v1 + 16) != 1)
  {
    return 0;
  }

  v12 = a1;
  if (!a1)
  {
    return 1;
  }

  v13 = v8;
  v14 = *(v1 + 32);
  if (v12 == 1)
  {
    [*(v1 + 32) lock];
    sub_1E1AF3F5C();
    v15 = v1 + OBJC_IVAR____TtC11AppStoreKit18JSGarbageCollector_lastShrinkTime;
    swift_beginAccess();
    v16 = 10.0;
  }

  else
  {
    [*(v1 + 32) lock];
    sub_1E1AF3F5C();
    v15 = v1 + OBJC_IVAR____TtC11AppStoreKit18JSGarbageCollector_lastShrinkTime;
    swift_beginAccess();
    v16 = 5.0;
  }

  (*(v4 + 16))(v6, v15, v13);
  sub_1E1AF3F3C();
  v19 = v18;
  v20 = *(v4 + 8);
  v20(v6, v13);
  v20(v11, v13);
  [v14 unlock];
  return v19 > v16;
}

uint64_t sub_1E1661520(char a1)
{
  v2 = v1;
  v12 = sub_1E1AF3F6C();
  v4 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E35B0 != -1)
  {
    swift_once();
  }

  v7 = sub_1E1AF591C();
  __swift_project_value_buffer(v7, qword_1EE216158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B03760;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  v14 = &type metadata for JSGarbageCollector.Methodology;
  v13[0] = a1 & 1;
  sub_1E1AF38BC();
  sub_1E13E44F8(v13);
  sub_1E1AF548C();

  if ((a1 & 1) == 0)
  {
    return sub_1E1AF573C();
  }

  v8 = *(v1 + 32);
  [*(v2 + 32) lock];
  sub_1E1AF3F5C();
  v9 = OBJC_IVAR____TtC11AppStoreKit18JSGarbageCollector_lastShrinkTime;
  swift_beginAccess();
  (*(v4 + 40))(v2 + v9, v6, v12);
  swift_endAccess();
  [v8 unlock];
  return sub_1E1AF572C();
}

void sub_1E16617D8(void *a1)
{
  v1 = [a1 virtualMachine];
  if (v1)
  {
    v2 = v1;
    [v1 shrinkFootprintWhenIdle];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E1661834()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit18JSGarbageCollector_lastShrinkTime;
  v2 = sub_1E1AF3F6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JSGarbageCollector(uint64_t a1)
{
  result = qword_1EE1EFAE8;
  if (!qword_1EE1EFAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1661934(uint64_t a1)
{
  result = sub_1E1AF3F6C();
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

unint64_t sub_1E1661A00()
{
  result = qword_1ECEB74B0;
  if (!qword_1ECEB74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB74B0);
  }

  return result;
}

uint64_t sub_1E1661AA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50, qword_1E1B0A0D0);
  __swift_allocate_value_buffer(v0, qword_1EE1E3A90);
  __swift_project_value_buffer(v0, qword_1EE1E3A90);
  return sub_1E1AF3F9C();
}

uint64_t static LocalPreferences.placeholderDisableShelfHydration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1E3A88 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50, qword_1E1B0A0D0);
  v3 = __swift_project_value_buffer(v2, qword_1EE1E3A90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1E1661BCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4938, &qword_1E1B0F2F8);
  __swift_allocate_value_buffer(v0, qword_1EE1E3A68);
  __swift_project_value_buffer(v0, qword_1EE1E3A68);
  return sub_1E1AF3F9C();
}

uint64_t sub_1E1661C68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4938, &qword_1E1B0F2F8);
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1E1661D0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4938, &qword_1E1B0F2F8);
  __swift_allocate_value_buffer(v0, qword_1EE1E3A40);
  __swift_project_value_buffer(v0, qword_1EE1E3A40);
  return sub_1E1AF3F9C();
}

uint64_t sub_1E1661DA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8, &qword_1E1B12110);
  __swift_allocate_value_buffer(v0, qword_1ECEB74B8);
  __swift_project_value_buffer(v0, qword_1ECEB74B8);
  return sub_1E1AF3F9C();
}

uint64_t static LocalPreferences.currentJSVersion.getter()
{
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1ECEB0F50 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8, &qword_1E1B12110);
  __swift_project_value_buffer(v0, qword_1ECEB74B8);
  sub_1E1AF3C8C();

  return v2;
}

double sub_1E1661EFC@<D0>(_OWORD *a1@<X8>)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1ECEB0F50 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8, &qword_1E1B12110);
  __swift_project_value_buffer(v2, qword_1ECEB74B8);
  sub_1E1AF3C8C();

  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_1E1661FE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA8, &qword_1E1B12110);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-1] - v6;
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (a2)
  {
    if (qword_1ECEB0F50 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v4, qword_1ECEB74B8);
    (*(v5 + 16))(v7, v8, v4);
    v13[0] = a1;
    v13[1] = a2;
    sub_1E1AF3C9C();
  }

  else
  {
    if (qword_1ECEB0F50 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v4, qword_1ECEB74B8);
    v13[3] = v4;
    v13[4] = sub_1E14F0120();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
    (*(v5 + 16))(boxed_opaque_existential_0, v10, v4);
    sub_1E1AF448C();

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }
}

AppStoreKit::AppShowcaseType_optional __swiftcall AppShowcaseType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AppShowcaseType.rawValue.getter()
{
  v1 = 0x6C6C616D73;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656772616CLL;
  }
}

uint64_t sub_1E16622AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6C6C616D73;
  v5 = 0x80000001E1B55F70;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001E1B55F70;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x656772616CLL;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x6C6C616D73;
  if (*a2 == 1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656772616CLL;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E1662398()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E1662438(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E16624C4(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E166256C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6C6C616D73;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001E1B55F70;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656772616CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AppShowcase.descriptionText.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AppShowcase.__allocating_init(id:lockup:descriptionText:screenshots:video:type:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v27 = a5;
  v28 = a6;
  v29 = a2;
  v30 = a3;
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = *a7;
  sub_1E134FD1C(a1, &v33, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v34 + 1))
  {
    v18 = v34;
    *(v16 + 64) = v33;
    *(v16 + 80) = v18;
    *(v16 + 96) = v35;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v26 = a8;
    v21 = v20;
    (*(v13 + 8))(v15, v12);
    v31 = v19;
    v32 = v21;
    a8 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v33, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E134B7C8(a8, v16 + OBJC_IVAR____TtC11AppStoreKit11AppShowcase_impressionMetrics);
  v22 = v30;
  *(v16 + 16) = v29;
  *(v16 + 24) = v22;
  v24 = v27;
  v23 = v28;
  *(v16 + 32) = a4;
  *(v16 + 40) = v24;
  *(v16 + 48) = v23;
  *(v16 + 56) = v17;
  return v16;
}

uint64_t AppShowcase.init(id:lockup:descriptionText:screenshots:video:type:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v9 = v8;
  v28 = a5;
  v29 = a6;
  v30 = a2;
  v31 = a3;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a7;
  sub_1E134FD1C(a1, &v34, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v35 + 1))
  {
    v37 = v34;
    v38 = v35;
    v39 = v36;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v27 = a8;
    v21 = v20;
    (*(v15 + 8))(v17, v14);
    v32 = v19;
    v33 = v21;
    a8 = v27;
    sub_1E1AF6F6C();
    sub_1E1308058(&v34, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a1, &unk_1ECEB5670, qword_1E1B03EC0);
  v22 = v38;
  *(v9 + 64) = v37;
  *(v9 + 80) = v22;
  *(v9 + 96) = v39;
  sub_1E134B7C8(a8, v9 + OBJC_IVAR____TtC11AppStoreKit11AppShowcase_impressionMetrics);
  v23 = v31;
  *(v9 + 16) = v30;
  *(v9 + 24) = v23;
  v25 = v28;
  v24 = v29;
  *(v9 + 32) = a4;
  *(v9 + 40) = v25;
  *(v9 + 48) = v24;
  *(v9 + 56) = v18;
  return v9;
}

uint64_t sub_1E1662A40@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for AppShowcase(0);
  *a1 = v1;
}

void *AppShowcase.deinit()
{

  sub_1E134B88C(v0 + 64);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit11AppShowcase_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  return v0;
}

uint64_t AppShowcase.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 64);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit11AppShowcase_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  return swift_deallocClassInstance();
}

char *sub_1E1662B90@<X0>(char **a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E1662C40(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E1662BBC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for AppShowcase(0);
  *a1 = v3;
}

char *sub_1E1662C40(char *a1, uint64_t a2)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v59 - v4;
  v63 = sub_1E1AEFEAC();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF39DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59 - v10;
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  sub_1E1AF381C();
  v60 = sub_1E1AF37CC();
  v72 = v12;
  v73 = v23;
  v77 = *(v13 + 8);
  v74 = (v13 + 8);
  v77(v22, v12);
  sub_1E1AF381C();
  v69 = v7;
  v24 = *(v7 + 16);
  v25 = v76;
  v24(v11, v76, v6);
  type metadata accessor for Screenshots();
  sub_1E1663730(&qword_1EE1F66F8, type metadata accessor for Screenshots, &protocol conformance descriptor for Screenshots);
  v65 = v11;
  v26 = sub_1E1AF630C();
  v71 = a1;
  sub_1E1AF381C();
  v27 = v68;
  v75 = v6;
  v28 = v6;
  v29 = v24;
  v24(v68, v25, v28);
  type metadata accessor for Lockup(0);
  swift_allocObject();
  v30 = v70;
  v31 = Lockup.init(deserializing:using:)(v19, v27);
  if (v30)
  {

    (*(v69 + 8))(v25, v75);
    v77(v71, v72);
  }

  else
  {
    v32 = v31;
    v70 = 0;
    v68 = v26;
    type metadata accessor for Video(0);
    v33 = v71;
    sub_1E1AF381C();
    v29(v65, v25, v75);
    sub_1E1663730(&qword_1EE1E52D0, type metadata accessor for Video, &protocol conformance descriptor for Video);
    sub_1E1AF464C();
    v65 = v83[0];
    v34 = v66;
    sub_1E1AF381C();
    v35 = sub_1E1AF37CC();
    v37 = v32;
    if (v36)
    {
      *&v80 = v35;
      *(&v80 + 1) = v36;
    }

    else
    {
      v38 = v61;
      sub_1E1AEFE9C();
      v39 = sub_1E1AEFE7C();
      v41 = v40;
      (*(v62 + 8))(v38, v63);
      *&v80 = v39;
      *(&v80 + 1) = v41;
    }

    sub_1E1AF6F6C();
    v42 = v72;
    v22 = v74;
    v77(v34, v72);
    v43 = v69;
    v44 = v67;
    sub_1E1AF381C();
    sub_1E1663778();
    v45 = v70;
    sub_1E1AF36AC();
    v46 = v76;
    v47 = v73;
    if (v45)
    {

      (*(v43 + 8))(v46, v75);
      v48 = v77;
      v77(v33, v42);
      v48(v44, v42);
      sub_1E1308058(v83, &unk_1ECEB5670, qword_1E1B03EC0);
    }

    else
    {
      v70 = 0;
      v77(v44, v42);
      v50 = v84;
      v51 = v64;
      sub_1E134FD1C(v37 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, v64, &unk_1ECEB1770, &unk_1E1AFED20);
      type metadata accessor for AppShowcase(0);
      v22 = swift_allocObject();
      sub_1E134FD1C(v83, &v80, &unk_1ECEB5670, qword_1E1B03EC0);
      if (*(&v81 + 1))
      {
        v52 = v81;
        *(v22 + 4) = v80;
        *(v22 + 5) = v52;
        *(v22 + 12) = v82;
      }

      else
      {
        v53 = v61;
        sub_1E1AEFE9C();
        v54 = sub_1E1AEFE7C();
        v56 = v55;
        (*(v62 + 8))(v53, v63);
        v78 = v54;
        v79 = v56;
        v42 = v72;
        v47 = v73;
        v51 = v64;
        sub_1E1AF6F6C();
        sub_1E1308058(&v80, &unk_1ECEB5670, qword_1E1B03EC0);
      }

      (*(v43 + 8))(v46, v75);
      v77(v33, v42);
      sub_1E1308058(v83, &unk_1ECEB5670, qword_1E1B03EC0);
      sub_1E134B7C8(v51, &v22[OBJC_IVAR____TtC11AppStoreKit11AppShowcase_impressionMetrics]);
      v57 = v60;
      *(v22 + 2) = v37;
      *(v22 + 3) = v57;
      v58 = v68;
      *(v22 + 4) = v47;
      *(v22 + 5) = v58;
      *(v22 + 6) = v65;
      v22[56] = v50;
    }
  }

  return v22;
}

uint64_t type metadata accessor for AppShowcase(uint64_t a1)
{
  result = qword_1EE1F8C50;
  if (!qword_1EE1F8C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E1663518()
{
  result = qword_1ECEB74D0;
  if (!qword_1ECEB74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB74D0);
  }

  return result;
}

void sub_1E16635CC(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E1663730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E1663778()
{
  result = qword_1EE1E18E0;
  if (!qword_1EE1E18E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E18E0);
  }

  return result;
}

void *OpenAppAction.__allocating_init(title:adamId:allowBetaApps:destination:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, void *a3, char a4, char *a5, uint64_t a6, uint64_t a7)
{
  v34 = a2;
  v35 = a6;
  v33 = a1;
  v11 = sub_1E1AEFEAC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = a3[1];
  v17 = *a5;
  v18 = (v15 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
  *v18 = *a3;
  v18[1] = v16;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_destination) = v17;
  *(v15 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_allowBetaApps) = a4;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v19 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v20 = sub_1E1AF3E1C();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v15 + v19, a7, v20);
  v22 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v23 = sub_1E1AF46DC();
  (*(*(v23 - 8) + 56))(v15 + v22, 1, 1, v23);
  v24 = (v15 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v24 = 0u;
  v24[1] = 0u;
  v25 = v15 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v41, &v38);
  if (*(&v39 + 1))
  {
    v26 = v39;
    *v25 = v38;
    *(v25 + 1) = v26;
    *(v25 + 4) = v40;
  }

  else
  {
    sub_1E1AEFE9C();
    v27 = sub_1E1AEFE7C();
    v29 = v28;
    (*(v12 + 8))(v14, v11);
    v36 = v27;
    v37 = v29;
    sub_1E1AF6F6C();
    sub_1E1308058(&v38, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v21 + 8))(a7, v20);
  sub_1E1308058(v41, &unk_1ECEB5670, qword_1E1B03EC0);
  v30 = v34;
  v15[2] = v33;
  v15[3] = v30;
  v31 = v35;
  v15[4] = 0;
  v15[5] = v31;
  return v15;
}

double OpenAppAction.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
  a1[1] = v2;

  return result;
}

void *OpenAppAction.init(title:adamId:allowBetaApps:destination:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, void *a3, char a4, char *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a2;
  v39 = a6;
  v37 = a1;
  v36 = sub_1E1AEFEAC();
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v35 - v16;
  v18 = sub_1E1AF3E1C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a3[1];
  v23 = *a5;
  v24 = (v8 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
  *v24 = *a3;
  v24[1] = v22;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_destination) = v23;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_allowBetaApps) = a4;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  (*(v19 + 16))(v21, a7, v18);
  v25 = sub_1E1AF46DC();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = (v8 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v26 = 0u;
  v26[1] = 0u;
  sub_1E138853C(v48, &v42);
  if (*(&v43 + 1))
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
  }

  else
  {
    sub_1E1AEFE9C();
    v27 = sub_1E1AEFE7C();
    v29 = v28;
    (*(v35 + 8))(v14, v36);
    v40 = v27;
    v41 = v29;
    sub_1E1AF6F6C();
    sub_1E1308058(&v42, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v19 + 8))(a7, v18);
  sub_1E1308058(v48, &unk_1ECEB5670, qword_1E1B03EC0);
  v30 = v8 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v30 + 4) = v47;
  v31 = v46;
  *v30 = v45;
  *(v30 + 1) = v31;
  sub_1E134B7C8(v17, v8 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v32 = v38;
  v8[2] = v37;
  v8[3] = v32;
  v33 = v39;
  v8[4] = 0;
  v8[5] = v33;
  (*(v19 + 32))(v8 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v21, v18);
  return v8;
}

void *OpenAppAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v46 = a2;
  v40 = *v3;
  v5 = sub_1E1AF39DC();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  v47 = a1;
  sub_1E1AF381C();
  v19 = sub_1E1AF37CC();
  v21 = v20;
  v22 = *(v8 + 8);
  v48 = v7;
  v49 = v22;
  v22(v18, v7);
  if (v21)
  {
    v23 = (v3 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_adamId);
    *v23 = v19;
    v23[1] = v21;
    v24 = v47;
    sub_1E1AF381C();
    sub_1E16643B4();
    sub_1E1AF369C();
    v25 = v15;
    v26 = v3;
    v3 = v48;
    v27 = v49;
    v49(v25, v48);
    *(v26 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_destination) = v50;
    sub_1E1AF381C();
    v28 = sub_1E1AF370C();
    v27(v12, v3);
    *(v26 + OBJC_IVAR____TtC11AppStoreKit13OpenAppAction_allowBetaApps) = (v28 == 2) | v28 & 1;
    v29 = v41;
    (*(v8 + 16))(v41, v24, v3);
    v31 = v44;
    v30 = v45;
    v32 = v42;
    v33 = v46;
    (*(v44 + 16))(v42, v46, v45);
    v34 = v43;
    v35 = Action.init(deserializing:using:)(v29, v32);
    if (!v34)
    {
      v3 = v35;
    }

    (*(v31 + 8))(v33, v30);
    v49(v24, v48);
  }

  else
  {
    v36 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v37 = 0x64496D616461;
    v38 = v40;
    v37[1] = 0xE600000000000000;
    v37[2] = v38;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x1E69AB690], v36);
    swift_willThrow();
    (*(v44 + 8))(v46, v45);
    v49(v47, v48);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

unint64_t sub_1E16643B4()
{
  result = qword_1EE1DCBC0;
  if (!qword_1EE1DCBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DCBC0);
  }

  return result;
}

uint64_t OpenAppAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return v0;
}

uint64_t OpenAppAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OpenAppAction(uint64_t a1)
{
  result = qword_1EE1FA090;
  if (!qword_1EE1FA090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1664754(uint64_t a1)
{
  v2 = sub_1E1AF227C();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1E1AF23CC();
}

void *sub_1E166481C()
{
  result = sub_1E159FDF8(MEMORY[0x1E69E7CC0]);
  off_1ECEB74D8 = result;
  return result;
}

uint64_t ScaledSpaceMetric.init(wrappedValue:)@<X0>(void *a1@<X8>, double a2@<D0>)
{
  *a1 = swift_getKeyPath(byte_1E1B231A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8, &qword_1E1B09640);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ScaledSpaceMetric(0);
  *(a1 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for ScaledSpaceMetric(uint64_t a1)
{
  result = qword_1ECEB74E0;
  if (!qword_1ECEB74E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1664900@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E1AF24DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8, &qword_1E1B09640);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1E16650C4(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E1AF227C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1E1AF682C();
    v13 = sub_1E1AF26BC();
    sub_1E1AF0F1C();

    sub_1E1AF24CC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double ScaledSpaceMetric.wrappedValue.getter()
{
  v1 = sub_1E1AF745C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  v8 = sub_1E1AF227C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1664900(v11);
  v12 = sub_1E1664E04(v11);
  (*(v9 + 8))(v11, v8);
  v13 = v12 * *(v0 + *(type metadata accessor for ScaledSpaceMetric(0) + 20));
  sub_1E1AF102C();
  v21 = v13;
  (*(v2 + 16))(v4, v7, v1);
  v14 = (*(v2 + 88))(v4, v1);
  if (v14 == *MEMORY[0x1E69E7038])
  {
    v15 = round(v13);
LABEL_11:
    (*(v2 + 8))(v7, v1);
    return v15;
  }

  if (v14 == *MEMORY[0x1E69E7030])
  {
    v15 = rint(v13);
    goto LABEL_11;
  }

  if (v14 == *MEMORY[0x1E69E7040])
  {
    v15 = ceil(v13);
    goto LABEL_11;
  }

  if (v14 == *MEMORY[0x1E69E7048])
  {
    v15 = floor(v13);
    goto LABEL_11;
  }

  if (v14 == *MEMORY[0x1E69E7020])
  {
    v15 = trunc(v13);
    goto LABEL_11;
  }

  if (v14 == *MEMORY[0x1E69E7028])
  {
    (*(v2 + 8))(v7, v1);
    v17 = ceil(v13);
    v18 = floor(v13);
    if (v13 < 0.0)
    {
      return v18;
    }

    else
    {
      return v17;
    }
  }

  else
  {
    sub_1E1AF655C();
    v19 = *(v2 + 8);
    v19(v7, v1);
    v19(v4, v1);
    return v21;
  }
}

double sub_1E1664E04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3FB0, &qword_1E1B0A998);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  if (qword_1ECEB0F58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = off_1ECEB74D8;
  if (*(off_1ECEB74D8 + 2) && (v9 = sub_1E1595814(a1), (v10 & 1) != 0))
  {
    v11 = *(v8[7] + 8 * v9);
  }

  else
  {
    swift_endAccess();
    v12 = sub_1E1AF227C();
    v13 = *(*(v12 - 8) + 56);
    v13(v7, 1, 1, v12);
    v13(v4, 1, 1, v12);
    v14 = sub_1E144AEB0(v7, v4, 1.0);
    sub_1E144B5A0(v4);
    sub_1E144B5A0(v7);
    v11 = (v14 + -1.0) * 0.5 + 1.0;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_1ECEB74D8;
    off_1ECEB74D8 = 0x8000000000000000;
    sub_1E1599A20(a1, isUniquelyReferenced_nonNull_native, v11);
    off_1ECEB74D8 = v17;
  }

  swift_endAccess();
  return v11;
}

void sub_1E1665050(uint64_t a1)
{
  sub_1E1430C30(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1E16650C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8, &qword_1E1B09640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RuleIdentifier.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RuleIdentifier.version.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

AppStoreKit::RuleIdentifier __swiftcall RuleIdentifier.init(name:version:)(Swift::String name, Swift::String version)
{
  *v2 = name;
  v2[1] = version;
  result.version = version;
  result.name = name;
  return result;
}

uint64_t RuleIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = MEMORY[0x1E68FED70](v1, v2);
  return MEMORY[0x1E68FED70](v3, v4) ^ v5;
}

uint64_t static RuleIdentifier.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = v7 == v3 && v8 == v4;
  if (v11 || (v12 = sub_1E1AF74AC(), result = 0, (v12 & 1) != 0))
  {
    if (v9 == v5 && v10 == v6)
    {
      return 1;
    }

    else
    {

      return sub_1E1AF74AC();
    }
  }

  return result;
}

uint64_t RuleIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = MEMORY[0x1E68FED70](v1, v2);
  v6 = MEMORY[0x1E68FED70](v4, v3);
  return MEMORY[0x1E6900360](v6 ^ v5);
}

uint64_t sub_1E16652D0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = v7 == v3 && v8 == v4;
  if (v11 || (v12 = sub_1E1AF74AC(), result = 0, (v12 & 1) != 0))
  {
    if (v9 == v5 && v10 == v6)
    {
      return 1;
    }

    else
    {

      return sub_1E1AF74AC();
    }
  }

  return result;
}

uint64_t sub_1E166536C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = MEMORY[0x1E68FED70](v1, v2);
  return MEMORY[0x1E68FED70](v3, v4) ^ v5;
}

uint64_t sub_1E16653B0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = MEMORY[0x1E68FED70](v1, v2);
  v6 = MEMORY[0x1E68FED70](v4, v3);
  return MEMORY[0x1E6900360](v6 ^ v5);
}

uint64_t sub_1E1665400(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_1E1AF762C();
  v6 = MEMORY[0x1E68FED70](v2, v3);
  v7 = MEMORY[0x1E68FED70](v5, v4);
  MEMORY[0x1E6900360](v7 ^ v6);
  return sub_1E1AF767C();
}

double GladiatorRule.identifier.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

uint64_t sub_1E16654B0@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v32 = sub_1E1AEF59C();
  v6 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39F0, &qword_1E1B489E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_1E1AEF65C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF5EC();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1E1308058(v11, &qword_1ECEB39F0, &qword_1E1B489E0);
    sub_1E166705C();
    swift_allocError();
    *v16 = 0;
    *(v16 + 8) = 0;
    *(v16 + 16) = 2;
    return swift_willThrow();
  }

  else
  {
    v28 = v2;
    (*(v13 + 32))(v15, v11, v12);
    v18 = *(v1 + OBJC_IVAR____TtC11AppStoreKit13GladiatorRule_rulePath + 8);
    v19 = *(v1 + 16);
    v20 = *(v1 + 24);
    v30 = *(v1 + OBJC_IVAR____TtC11AppStoreKit13GladiatorRule_rulePath);
    v31 = v18;

    MEMORY[0x1E68FECA0](v19, v20);
    MEMORY[0x1E68F8340](v30, v31);
    sub_1E1AEF56C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2708, &unk_1E1B02B60);
    v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1E1B02CC0;
    v23 = v22 + v21;
    v24 = v32;
    (*(v6 + 16))(v23, v8, v32);
    sub_1E1AEF5DC();
    sub_1E1AEF5FC();
    v25 = sub_1E1AEFCCC();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v5, 1, v25) == 1)
    {
      sub_1E1308058(v5, &unk_1ECEB4B60, &unk_1E1B02620);
      sub_1E166705C();
      swift_allocError();
      *v27 = xmmword_1E1B16440;
      *(v27 + 16) = 2;
      swift_willThrow();
      (*(v6 + 8))(v8, v24);
      return (*(v13 + 8))(v15, v12);
    }

    else
    {
      (*(v6 + 8))(v8, v24);
      (*(v13 + 8))(v15, v12);
      return (*(v26 + 32))(v29, v5, v25);
    }
  }
}

uint64_t sub_1E1665944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[11] = *MEMORY[0x1E69E9840];
  v5 = sub_1E1AEFCCC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  result = sub_1E16654B0(v20 - v10);
  if (!v2)
  {
    (*(v6 + 16))(v8, v11, v5);
    sub_1E1AEF34C();
    sub_1E1AEF39C();
    sub_1E1AEF2EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB43F0, "p-\t");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B02CC0;
    *(inited + 32) = 0x73746E657665;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4740, &qword_1E1B0E118);
    *(inited + 48) = a1;

    sub_1E1303A74(inited);
    swift_setDeallocating();
    sub_1E1308058(inited + 32, &qword_1ECEB5F80, &qword_1E1B192E0);
    v14 = objc_opt_self();
    v15 = sub_1E1AF5C6C();

    v20[0] = 0;
    v16 = [v14 dataWithJSONObject:v15 options:0 error:v20];

    v17 = v20[0];
    if (v16)
    {
      sub_1E1AEFD3C();

      sub_1E1AEF38C();
    }

    else
    {
      v18 = v17;
      sub_1E1AEFB2C();

      swift_willThrow();
      v19 = sub_1E1AEF3AC();
      (*(*(v19 - 8) + 8))(a2, v19);
    }

    return (*(v6 + 8))(v11, v5);
  }

  return result;
}

uint64_t sub_1E1665CAC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E1B06D70;
  *(v3 + 32) = a1;
  v4 = a1;
  sub_1E1665F50(v3);

  v5 = swift_allocObject();
  *(v5 + 16) = sub_1E1666144;
  *(v5 + 24) = v1;
  v8[3] = sub_1E1AF470C();
  v8[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v8);

  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49D8, &qword_1E1B0FE70);
  sub_1E1666150();
  v6 = sub_1E1AF585C();

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1E1665DEC(uint64_t a1)
{
  sub_1E1665F50(a1);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E16676A4;
  *(v2 + 24) = v1;
  v5[3] = sub_1E1AF470C();
  v5[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v5);

  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49D8, &qword_1E1B0FE70);
  sub_1E1666150();
  v3 = sub_1E1AF585C();

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1E1665EE4(uint64_t a1, unint64_t a2, char **a3)
{
  sub_1E16670B0(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49D8, &qword_1E1B0FE70);
  return sub_1E1AF582C();
}

uint64_t sub_1E1665F50(uint64_t a1)
{
  v3 = sub_1E1AEF3AC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7528, &qword_1E1B23408);
  v7 = sub_1E1AF588C();
  sub_1E1665944(a1, v6);
  v8 = *(v1 + 48);
  v9 = sub_1E1AEF31C();
  aBlock[4] = sub_1E1667670;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1666290;
  aBlock[3] = &block_descriptor_43;
  v10 = _Block_copy(aBlock);

  v11 = [v8 dataTaskWithRequest:v9 completionHandler:v10];
  _Block_release(v10);

  [v11 resume];
  (*(v4 + 8))(v6, v3);
  return v7;
}

unint64_t sub_1E1666150()
{
  result = qword_1ECEB74F0;
  if (!qword_1ECEB74F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB49D8, &qword_1E1B0FE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB74F0);
  }

  return result;
}

void sub_1E16661E8(uint64_t a1, unint64_t a2, void *a3, id a4)
{
  if (a4)
  {
    v5 = a4;
    sub_1E1AF584C();
  }

  else
  {
    if (a2 >> 60 == 15)
    {
      __break(1u);
    }

    else if (a3)
    {
      sub_1E14708F4(a1, a2);
      v7 = a3;
      sub_1E1AF586C();
      sub_1E14283DC(a1, a2);

      return;
    }

    __break(1u);
  }
}

uint64_t sub_1E1666290(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1E1AEFD3C();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1E1337F64(v6, v10);
}

void sub_1E1666358(char *a1@<X0>, unint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v32 - v4;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v32 - v13;
  v15 = a1;
  sub_1E1AF381C();
  v16 = sub_1E1AF36EC();
  LOBYTE(a1) = v17;
  v18 = *(v6 + 8);
  v18(v14, v5);
  if (a1)
  {
    sub_1E166705C();
    swift_allocError();
    *v19 = 0xD000000000000021;
    *(v19 + 8) = 0x80000001E1B6CD30;
    *(v19 + 16) = 0;
    swift_willThrow();
  }

  else if (v16 < 1)
  {
    v26 = v35;
    *v35 = 0;
    v26[1] = 0;
  }

  else
  {
    v33 = 0xD00000000000002ALL;
    v34 = 0x80000001E1B6CD60;
    sub_1E1AF381C();
    v20 = sub_1E1AF37CC();
    v22 = v21;
    v18(v11, v5);
    if (v22)
    {
      strcpy(v32, "Failed Rule: ");
      HIWORD(v32[1]) = -4864;
      MEMORY[0x1E68FECA0](v20, v22);

      v33 = v32[0];
      v34 = v32[1];
    }

    sub_1E1AF381C();
    v23 = v31;
    sub_1E1AF374C();
    v18(v8, v5);
    v24 = sub_1E1AF5A6C();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_1E1308058(v23, &qword_1ECEB1F90, &qword_1E1B00D30);
    }

    else
    {
      v27 = sub_1E1AF59FC();
      v28 = (*(v25 + 8))(v23, v24);
      MEMORY[0x1EEE9AC00](v28);
      *(&v31 - 2) = v15;
      *(&v31 - 1) = &v33;
      sub_1E1810834(sub_1E1667654, (&v31 - 4), v27);
    }

    v29 = v34;
    v30 = v35;
    *v35 = v33;
    v30[1] = v29;
  }
}

double sub_1E166679C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a3;
  v4 = sub_1E1AF380C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  v11 = *a1;
  v12 = a1[1];
  sub_1E1AF381C();
  sub_1E1AF381C();
  v13 = *(v5 + 8);
  v13(v10, v4);
  v14 = sub_1E1AF37CC();
  v16 = v15;
  v13(v7, v4);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1E1AF6FEC();

  v20 = 0x2064656C6961460ALL;
  v21 = 0xEF203A646C656946;
  MEMORY[0x1E68FECA0](v11, v12);
  MEMORY[0x1E68FECA0](2112032, 0xE300000000000000);
  v19[2] = v14;
  v19[3] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40, &unk_1E1B02B90);
  v17 = sub_1E1AF5E8C();
  MEMORY[0x1E68FECA0](v17);

  MEMORY[0x1E68FECA0](v20, v21);

  return result;
}

uint64_t GladiatorRule.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit13GladiatorRule_baseURL;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t GladiatorRule.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit13GladiatorRule_baseURL;
  v2 = sub_1E1AEFCCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t RuleIdentifier.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  MEMORY[0x1E68FECA0](*v0, v0[1]);
  MEMORY[0x1E68FECA0](3831328, 0xE300000000000000);
  MEMORY[0x1E68FECA0](v1, v2);
  return 0x20656C7552;
}

unint64_t RuleIdentifier.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1E1AF6FEC();

  MEMORY[0x1E68FECA0](v1, v2);
  MEMORY[0x1E68FECA0](980820012, 0xE400000000000000);
  MEMORY[0x1E68FECA0](v3, v4);
  MEMORY[0x1E68FECA0](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t sub_1E1666C44()
{
  v1 = v0[2];
  v2 = v0[3];
  MEMORY[0x1E68FECA0](*v0, v0[1]);
  MEMORY[0x1E68FECA0](3831328, 0xE300000000000000);
  MEMORY[0x1E68FECA0](v1, v2);
  return 0x20656C7552;
}

uint64_t GladiatorRule.description.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  MEMORY[0x1E68FECA0](v0[2], v0[3]);
  MEMORY[0x1E68FECA0](3831328, 0xE300000000000000);
  MEMORY[0x1E68FECA0](v1, v2);
  return 0x20656C7552;
}

unint64_t GladiatorRule.debugDescription.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1E1AF6FEC();

  MEMORY[0x1E68FECA0](v1, v2);
  MEMORY[0x1E68FECA0](980820012, 0xE400000000000000);
  MEMORY[0x1E68FECA0](v3, v4);
  MEMORY[0x1E68FECA0](41, 0xE100000000000000);
  return 0xD000000000000011;
}

unint64_t sub_1E1666DF4()
{
  result = qword_1ECEB7508;
  if (!qword_1ECEB7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7508);
  }

  return result;
}

uint64_t sub_1E1666E6C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);
  MEMORY[0x1E68FECA0](*(*v0 + 16), *(*v0 + 24));
  MEMORY[0x1E68FECA0](3831328, 0xE300000000000000);
  MEMORY[0x1E68FECA0](v1, v2);
  return 0x20656C7552;
}

uint64_t type metadata accessor for GladiatorRule(uint64_t a1)
{
  result = qword_1ECEB7510;
  if (!qword_1ECEB7510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1666F4C(uint64_t a1)
{
  result = sub_1E1AEFCCC();
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

unint64_t sub_1E166705C()
{
  result = qword_1ECEB7520;
  if (!qword_1ECEB7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7520);
  }

  return result;
}

char **sub_1E16670B0(uint64_t a1, unint64_t a2, char **a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_1E1AF380C();
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  if (a3)
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v30 = a3;
      a3 = &selRef_addPayment_;
      if ([v17 statusCode] != 200)
      {
        v32 = 0;
        v33 = 0xE000000000000000;
        sub_1E1AF6FEC();

        v32 = 0xD00000000000001DLL;
        v33 = 0x80000001E1B6CD10;
        v34 = [v17 statusCode];
        v22 = sub_1E1AF742C();
        MEMORY[0x1E68FECA0](v22);

        v23 = v32;
        v24 = v33;
        sub_1E166705C();
        swift_allocError();
        *v25 = v23;
        *(v25 + 8) = v24;
        *(v25 + 16) = 0;
        swift_willThrow();

        return a3;
      }
    }
  }

  if (a2 >> 60 == 15)
  {
    sub_1E166705C();
    swift_allocError();
    *v18 = 0xD00000000000001FLL;
    *(v18 + 8) = 0x80000001E1B6CCB0;
    *(v18 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    sub_1E14708A0(a1, a2);
    sub_1E14708A0(a1, a2);
    sub_1E1AF36CC();
    a3 = v3;
    if (v3)
    {
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1E1AF6FEC();
      MEMORY[0x1E68FECA0](0xD000000000000019, 0x80000001E1B6CCD0);
      v34 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0, qword_1E1B05740);
      sub_1E1AF714C();
      v19 = v32;
      v20 = v33;
      sub_1E166705C();
      swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v20;
      *(v21 + 16) = 0;
      swift_willThrow();
      sub_1E1337F64(a1, a2);
    }

    else
    {
      (*(v31 + 32))(v15, v12, v10);
      sub_1E1AF374C();
      v26 = sub_1E1AF5A6C();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v9, 1, v26) == 1)
      {
        sub_1E1308058(v9, &qword_1ECEB1F90, &qword_1E1B00D30);
        sub_1E166705C();
        swift_allocError();
        *v28 = 0xD00000000000001FLL;
        *(v28 + 8) = 0x80000001E1B6CCF0;
        *(v28 + 16) = 0;
        swift_willThrow();
        sub_1E1337F64(a1, a2);
        (*(v31 + 8))(v15, v10);
      }

      else
      {
        a3 = sub_1E1AF59FC();
        (*(v27 + 8))(v9, v26);
        if (a3[2])
        {
          (*(v31 + 8))(v15, v10);
          sub_1E1337F64(a1, a2);
        }

        else
        {

          sub_1E1337F64(a1, a2);
          (*(v31 + 8))(v15, v10);
          return &unk_1F5C2D908;
        }
      }
    }
  }

  return a3;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit9RuleErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void sub_1E16676AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1E135C088(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_1E1AF6EFC();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_1E135C088((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 16 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_1E142EA30(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_1E142EA30(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t ImpressionsAppendixMetricsTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7530, &unk_1E1B234D0);
  swift_allocObject();
  *(v0 + 16) = sub_1E14C5D90();
  return v0;
}

uint64_t ImpressionsAppendixMetricsTracker.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7530, &unk_1E1B234D0);
  swift_allocObject();
  *(v0 + 16) = sub_1E14C5D90();
  return v0;
}

void ImpressionsAppendixMetricsTracker.updateAppendix(for:including:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_1E1AF320C();
  v23 = *(v4 - 8);
  v24 = v4;
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1E69E7CD0];
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_14:
    v15 = *(v21 + 16);
    MEMORY[0x1EEE9AC00](v5);
    *(&v21 - 2) = &v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40, &unk_1E1B169A0);
    v16 = v23;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1E1B02CC0;

    sub_1E1AF31FC();
    v25 = v17;
    sub_1E139D5D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
    sub_1E13FE650();
    v18 = v22;
    v19 = v24;
    v20 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v20);
    *(&v21 - 4) = sub_1E1668374;
    *(&v21 - 3) = (&v21 - 4);
    *(&v21 - 2) = v15;
    sub_1E1AF68FC();
    (*(v16 + 8))(v18, v19);

    return;
  }

  v5 = sub_1E1AF71CC();
  v8 = v5;
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E68FFD80](i, a1, v6);
      }

      else
      {
        v10 = *(a1 + 8 * i + 32);
      }

      if ((a2(v10) & 1) != 0 && (type metadata accessor for AppSearchResult(0), (v11 = swift_dynamicCastClass()) != 0))
      {
        v12 = *(v11 + OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_lockup);
        v14 = *(v12 + 16);
        v13 = *(v12 + 24);

        sub_1E18943C0(&v25, v14, v13);
      }

      else
      {
      }
    }

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t ImpressionsAppendixMetricsTracker.insert(_:)(uint64_t a1)
{
  v2 = sub_1E1AF320C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppSearchResult(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = *(*(result + OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_lockup) + 24);
    v8 = *(v1 + 16);
    MEMORY[0x1EEE9AC00](result);
    v12[-2] = v9;
    v12[-1] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40, &unk_1E1B169A0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1E1B02CC0;

    sub_1E1AF31FC();
    v12[1] = v10;
    sub_1E139D5D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
    sub_1E13FE650();
    v11 = sub_1E1AF6EEC();
    MEMORY[0x1EEE9AC00](v11);
    v12[-4] = sub_1E16683A8;
    v12[-3] = &v12[-4];
    v12[-2] = v8;
    sub_1E1AF68FC();

    (*(v3 + 8))(v5, v2);
  }

  return result;
}

double sub_1E1667F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1E18943C0(&v6, a2, a3);

  return result;
}

uint64_t ImpressionsAppendixMetricsTracker.getCondensedLockupAdamIds()()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
  sub_1E1AF690C();

  return v1;
}

Swift::Void __swiftcall ImpressionsAppendixMetricsTracker.clearAppendix()()
{
  v1 = sub_1E1AF320C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40, &unk_1E1B169A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E1B02CC0;

  sub_1E1AF31FC();
  v11 = v6;
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  v8 = sub_1E1668240;
  v9 = 0;
  v10 = v5;
  sub_1E1AF68FC();
  (*(v2 + 8))(v4, v1);
}

uint64_t ImpressionsAppendixMetricsTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E16682D0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
  sub_1E1AF690C();

  return v1;
}

uint64_t TodayPageIntent.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v68 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v61 - v8;
  v73 = sub_1E1AEFCCC();
  v70 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v67 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AEFEAC();
  v62 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF380C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v61 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  sub_1E1AF381C();
  v24 = sub_1E1AF37CC();
  if (v25)
  {
    v71 = v24;
    v72 = v25;
  }

  else
  {
    sub_1E1AEFE9C();
    v26 = sub_1E1AEFE7C();
    v27 = v10;
    v28 = v13;
    v29 = a1;
    v31 = v30;
    (*(v62 + 8))(v12, v27);
    v71 = v26;
    v72 = v31;
    a1 = v29;
    v13 = v28;
  }

  sub_1E1AF6F6C();
  v32 = *(v14 + 8);
  v32(v23, v13);
  sub_1E1AF381C();
  v33 = v66;
  sub_1E1AF36FC();
  v34 = v20;
  v35 = v33;
  v32(v34, v13);
  v36 = v70;
  v37 = v73;
  if ((*(v70 + 48))(v35, 1, v73) == 1)
  {
    sub_1E1308058(v35, &unk_1ECEB4B60, &unk_1E1B02620);
    v38 = a1;
    v39 = sub_1E1AF5A7C();
    sub_1E1669140(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v41 = v40;
    v42 = type metadata accessor for TodayPageIntent(0);
    *v41 = 7107189;
    v41[1] = 0xE300000000000000;
    v41[2] = v42;
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69AB690], v39);
    swift_willThrow();
    v43 = sub_1E1AF39DC();
    (*(*(v43 - 8) + 8))(v68, v43);
    v32(v38, v13);
    return sub_1E134B88C(a3);
  }

  else
  {
    v45 = v35;
    v46 = v67;
    (*(v36 + 32))(v67, v45, v37);
    v47 = type metadata accessor for TodayPageIntent(0);
    (*(v36 + 16))(&a3[v47[5]], v46, v37);
    v48 = v63;
    v49 = a1;
    sub_1E1AF381C();
    v50 = v65;
    sub_1E1AF374C();
    v66 = v13;
    v51 = v13;
    v52 = v50;
    v32(v48, v51);
    v53 = sub_1E1AF5A6C();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v52, 1, v53) == 1)
    {
      sub_1E1308058(v52, &qword_1ECEB1F90, &qword_1E1B00D30);
      v55 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v56 = v69;
      v55 = sub_1E1AF59FC();
      v69 = v56;
      (*(v54 + 8))(v52, v53);
    }

    *&a3[v47[6]] = v55;
    v57 = v64;
    sub_1E1AF381C();
    v58 = sub_1E1AF370C();
    v59 = sub_1E1AF39DC();
    (*(*(v59 - 8) + 8))(v68, v59);
    v60 = v66;
    v32(v49, v66);
    v32(v57, v60);
    result = (*(v70 + 8))(v67, v73);
    a3[v47[7]] = v58 & 1;
  }

  return result;
}

uint64_t type metadata accessor for TodayPageIntent(uint64_t a1)
{
  result = qword_1EE1DF528;
  if (!qword_1EE1DF528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TodayPageIntent.init(id:url:onboardingCardIds:isRunningPPTs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v9;
  *(a5 + 32) = *(a1 + 32);
  v10 = type metadata accessor for TodayPageIntent(0);
  v11 = v10[5];
  v12 = sub_1E1AEFCCC();
  result = (*(*(v12 - 8) + 32))(a5 + v11, a2, v12);
  *(a5 + v10[6]) = a3;
  *(a5 + v10[7]) = a4;
  return result;
}

uint64_t TodayPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayPageIntent(0) + 20);
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double TodayPageIntent.onboardingCardIds.getter()
{
  type metadata accessor for TodayPageIntent(0);

  return result;
}

JSValue __swiftcall TodayPageIntent.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_14;
  }

  isa = result.super.isa;
  sub_1E134E724(v1, v24);
  v7 = [v4 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1E1AF6C5C();
  v8 = type metadata accessor for TodayPageIntent(0);
  v24[0] = sub_1E1AEFBDC();
  v24[1] = v9;
  v10 = [v4 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1E1AF6C5C();
  v11 = *(v1 + *(v8 + 24));
  v12 = *(v11 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v21 = v8;
    v22 = v1;
    v23 = in.super.isa;
    v24[0] = MEMORY[0x1E69E7CC0];
    sub_1E135C088(0, v12, 0);
    v13 = v24[0];
    v14 = (v11 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v24[0] = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);

      if (v18 >= v17 >> 1)
      {
        sub_1E135C088((v17 > 1), v18 + 1, 1);
        v13 = v24[0];
      }

      *(v13 + 16) = v18 + 1;
      v19 = v13 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v14 += 2;
      --v12;
    }

    while (v12);
    v2 = v22;
    in.super.isa = v23;
    v8 = v21;
  }

  v24[0] = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10, &unk_1E1B04970);
  v20 = [v4 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v20)
  {
    goto LABEL_16;
  }

  sub_1E1AF6C5C();
  result.super.isa = [v4 valueWithBool:*(v2 + *(v8 + 28)) inContext:in.super.isa];
  if (result.super.isa)
  {

    sub_1E1AF6C5C();
    return isa;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1E1669140(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E16691B0(uint64_t a1)
{
  sub_1E1AEFCCC();
  if (v1 <= 0x3F)
  {
    sub_1E166924C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E166924C()
{
  if (!qword_1EE1D2658)
  {
    v0 = sub_1E1AF635C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1D2658);
    }
  }
}

void sub_1E16692C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v69 = MEMORY[0x1E69E7CC0];
    sub_1E135C128(0, v1, 0);
    v3 = v69;
    v4 = v2 + 56;
    v5 = sub_1E1AF6EFC();
    v53 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7588, &qword_1E1B23C90);
    v6 = 0;
    v50 = v2 + 64;
    v51 = v1;
    v52 = v2 + 56;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_31;
      }

      v56 = v5 >> 6;
      v57 = v5;
      v58 = v3;
      v54 = v6;
      v55 = *(v2 + 36);
      v8 = (*(v2 + 48) + (v5 << 6));
      v9 = v8[6];
      v59 = v8[7];
      v60 = *v8;
      v61 = v8[1];
      v62 = v8[2];
      v63 = v8[3];
      v64 = v8[4];
      v65 = v8[5];
      strcpy(v66, "metricsValue");
      BYTE5(v66[1]) = 0;
      HIWORD(v66[1]) = -5120;
      v67 = v9;
      v68 = v59;
      v10 = sub_1E1AF72CC();

      v11 = sub_1E13018F8(0x65756C6176, 0xE500000000000000);
      if (v12)
      {
        goto LABEL_28;
      }

      v13 = v10 + 8;
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
      v14 = (v10[6] + 16 * v11);
      *v14 = 0x65756C6176;
      v14[1] = 0xE500000000000000;
      v15 = (v10[7] + 16 * v11);
      *v15 = v60;
      v15[1] = v61;
      v16 = v10[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_29;
      }

      v10[2] = v18;

      v19 = sub_1E13018F8(0x656C746974, 0xE500000000000000);
      if (v20)
      {
        goto LABEL_28;
      }

      *(v13 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v21 = (v10[6] + 16 * v19);
      *v21 = 0x656C746974;
      v21[1] = 0xE500000000000000;
      v22 = (v10[7] + 16 * v19);
      *v22 = v62;
      v22[1] = v63;
      v23 = v10[2];
      v17 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v17)
      {
        goto LABEL_29;
      }

      v10[2] = v24;

      v25 = sub_1E13018F8(0x6D496D6574737973, 0xEF656D614E656761);
      if (v26)
      {
        goto LABEL_28;
      }

      *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v27 = (v10[6] + 16 * v25);
      *v27 = 0x6D496D6574737973;
      v27[1] = 0xEF656D614E656761;
      v28 = (v10[7] + 16 * v25);
      *v28 = v64;
      v28[1] = v65;
      v29 = v10[2];
      v17 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v17)
      {
        goto LABEL_29;
      }

      v10[2] = v30;
      v31 = v66[0];
      v32 = v66[1];
      v34 = v67;
      v33 = v68;

      v35 = sub_1E13018F8(v66[0], v66[1]);
      if (v36)
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        break;
      }

      *(v13 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      v37 = (v10[6] + 16 * v35);
      *v37 = v31;
      v37[1] = v32;
      v38 = (v10[7] + 16 * v35);
      *v38 = v34;
      v38[1] = v33;
      v39 = v10[2];
      v17 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v17)
      {
        goto LABEL_29;
      }

      v10[2] = v40;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7590, &qword_1E1B23C98);
      swift_arrayDestroy();
      v3 = v58;
      v69 = v58;
      v42 = *(v58 + 16);
      v41 = *(v58 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1E135C128((v41 > 1), v42 + 1, 1);
        v3 = v69;
      }

      *(v3 + 16) = v42 + 1;
      *(v3 + 8 * v42 + 32) = v10;
      v2 = v53;
      v7 = 1 << *(v53 + 32);
      if (v5 >= v7)
      {
        goto LABEL_32;
      }

      v4 = v52;
      v43 = *(v52 + 8 * v56);
      if ((v43 & (1 << v5)) == 0)
      {
        goto LABEL_33;
      }

      if (v55 != *(v53 + 36))
      {
        goto LABEL_34;
      }

      v44 = v43 & (-2 << (v5 & 0x3F));
      if (v44)
      {
        v7 = __clz(__rbit64(v44)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v45 = v56 << 6;
        v46 = v56 + 1;
        v47 = (v50 + 8 * v56);
        while (v46 < (v7 + 63) >> 6)
        {
          v49 = *v47++;
          v48 = v49;
          v45 += 64;
          ++v46;
          if (v49)
          {
            sub_1E142EA30(v57, v55, 0);
            v7 = __clz(__rbit64(v48)) + v45;
            goto LABEL_4;
          }
        }

        sub_1E142EA30(v57, v55, 0);
      }

LABEL_4:
      v6 = v54 + 1;
      v5 = v7;
      if (v54 + 1 == v51)
      {
        return;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

AppStoreKit::PageFacets::Facet::DisplayType_optional __swiftcall PageFacets.Facet.DisplayType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PageFacets.Facet.DisplayType.rawValue.getter()
{
  v1 = 0x6553656C676E6973;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C67676F74;
  }
}

uint64_t sub_1E166988C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6553656C676E6973;
  v4 = 0xEF6E6F697463656CLL;
  v5 = 0x80000001E1B56180;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x80000001E1B56180;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x656C67676F74;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x6553656C676E6973;
  if (*a2 == 1)
  {
    v5 = 0xEF6E6F697463656CLL;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C67676F74;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

void sub_1E16699A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEF6E6F697463656CLL;
  v5 = 0x6553656C676E6973;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x80000001E1B56180;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C67676F74;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1E1669A14()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

double sub_1E1669AC4(uint64_t a1)
{
  sub_1E1AF5F0C();

  return result;
}

uint64_t sub_1E1669B60(uint64_t a1)
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t PageFacets.Facet.Option.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PageFacets.Facet.Option.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PageFacets.Facet.Option.systemImageName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PageFacets.Facet.Option.metricsValue.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PageFacets.Facet.Option.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v51 = a2;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v52 = a1;
  sub_1E1AF381C();
  v18 = sub_1E1AF37CC();
  v20 = v19;
  v21 = *(v6 + 8);
  v50 = v5;
  v22 = v5;
  v23 = v21;
  v21(v17, v22);
  v49 = v20;
  if (v20)
  {
    v24 = v52;
    v48 = v18;
    v25 = sub_1E1AF381C();
    v26 = sub_1E166A0BC(v25);
    v46 = v27;
    v47 = v26;
    v28 = v50;
    v23(v14, v50);
    v29 = sub_1E1AF381C();
    v30 = sub_1E166A0BC(v29);
    v45 = v31;
    v23(v11, v28);
    v32 = sub_1E1AF381C();
    v33 = sub_1E166A0BC(v32);
    v35 = v34;
    v36 = sub_1E1AF39DC();
    (*(*(v36 - 8) + 8))(v51, v36);
    v23(v24, v28);
    result = (v23)(v8, v28);
    v38 = v46;
    *a3 = v47;
    a3[1] = v38;
    v39 = v49;
    a3[2] = v48;
    a3[3] = v39;
    v40 = v45;
    a3[4] = v30;
    a3[5] = v40;
    a3[6] = v33;
    a3[7] = v35;
  }

  else
  {
    v41 = sub_1E1AF5A7C();
    sub_1E166F9C8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v42 = MEMORY[0x1E69E7CC0];
    *v43 = 0x656C746974;
    v43[1] = 0xE500000000000000;
    v43[2] = &type metadata for PageFacets.Facet;
    v43[3] = v42;
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69AB6A0], v41);
    swift_willThrow();
    v44 = sub_1E1AF39DC();
    (*(*(v44 - 8) + 8))(v51, v44);
    return (v23)(v52, v50);
  }

  return result;
}

uint64_t sub_1E166A0BC(uint64_t a1)
{
  sub_1E1AF37EC();
  if (v6)
  {
    sub_1E1301CF0(&v5, v7);
    sub_1E137A5C4(v7, &v5);
    if (swift_dynamicCast())
    {
      if (v4)
      {
        v1 = 1702195828;
      }

      else
      {
        v1 = 0x65736C6166;
      }

      goto LABEL_10;
    }

    sub_1E1380D6C();
    if (swift_dynamicCast())
    {
      v2 = [v4 stringValue];
      v1 = sub_1E1AF5DFC();

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v7);
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1(&v5);
      return v1;
    }

    __swift_destroy_boxed_opaque_existential_1(v7);
    if (swift_dynamicCast())
    {
      v1 = v4;
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_1(&v5);
  }

  else
  {
    sub_1E1308058(&v5, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  return 0;
}

void __swiftcall PageFacets.Facet.Option.init(value:title:systemImageName:metricsValue:)(AppStoreKit::PageFacets::Facet::Option *__return_ptr retstr, Swift::String_optional value, Swift::String title, Swift::String_optional systemImageName, Swift::String_optional metricsValue)
{
  retstr->value = value;
  retstr->title = title;
  retstr->systemImageName = systemImageName;
  retstr->metricsValue = metricsValue;
}

uint64_t sub_1E166A250()
{
  v1 = 0x65756C6176;
  v2 = 0x6D496D6574737973;
  if (*v0 != 2)
  {
    v2 = 0x567363697274656DLL;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E166A2D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E166F860(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E166A300(uint64_t a1)
{
  v2 = sub_1E166F2B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E166A33C(uint64_t a1)
{
  v2 = sub_1E166F2B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PageFacets.Facet.Option.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7540, &qword_1E1B236A8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E166F2B8();
  sub_1E1AF76EC();
  v16 = 0;
  v10 = v12[7];
  sub_1E1AF73AC();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_1E1AF73DC();
  v14 = 2;
  sub_1E1AF73AC();
  v13 = 3;
  sub_1E1AF73AC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t PageFacets.Facet.Option.hash(into:)(uint64_t a1)
{
  v2 = v1[5];
  v3 = v1[7];
  if (v1[1])
  {
    sub_1E1AF764C();
    sub_1E1AF5F0C();
  }

  else
  {
    sub_1E1AF764C();
  }

  sub_1E1AF5F0C();
  if (!v2)
  {
    sub_1E1AF764C();
    if (v3)
    {
      goto LABEL_6;
    }

    return sub_1E1AF764C();
  }

  sub_1E1AF764C();
  sub_1E1AF5F0C();
  if (!v3)
  {
    return sub_1E1AF764C();
  }

LABEL_6:
  sub_1E1AF764C();

  return sub_1E1AF5F0C();
}

uint64_t PageFacets.Facet.Option.hashValue.getter()
{
  sub_1E1AF762C();
  PageFacets.Facet.Option.hash(into:)(v1);
  return sub_1E1AF767C();
}

uint64_t PageFacets.Facet.Option.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7550, &qword_1E1B236B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E166F2B8();
  sub_1E1AF76CC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_1E1AF733C();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_1E1AF735C();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_1E1AF733C();
  v25 = v13;
  v33 = 3;
  v14 = sub_1E1AF733C();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  sub_1E13C5038(&v28, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  return sub_1E13C5094(v32);
}

uint64_t sub_1E166A9B8()
{
  sub_1E1AF762C();
  PageFacets.Facet.Option.hash(into:)(v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E166A9FC(uint64_t a1)
{
  sub_1E1AF762C();
  PageFacets.Facet.Option.hash(into:)(v2);
  return sub_1E1AF767C();
}

double PageFacets.Facet.init(id:parameterName:title:displayType:options:defaultOptions:displayOptionsInline:showsSelectedOptions:isHiddenFromMenu:metricsParameterName:clickAction:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16 = *a7;
  result = 0.0;
  *(a9 + 104) = 0u;
  *(a9 + 120) = 0u;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 48) = v16;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 88) = a11;
  *(a9 + 89) = a12;
  *(a9 + 72) = a14;
  *(a9 + 80) = a15;
  *(a9 + 90) = a13;
  *(a9 + 96) = a16;
  return result;
}

uint64_t PageFacets.Facet.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v126 = a2;
  v117 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v112 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v102 - v7;
  v9 = sub_1E1AF5A6C();
  v10 = *(v9 - 8);
  v121 = v9;
  v122 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v110 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v120 = &v102 - v13;
  v14 = sub_1E1AF380C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v116 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v114 = &v102 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v113 = &v102 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v111 = &v102 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v118 = &v102 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v102 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v123 = &v102 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v102 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v102 - v34;
  sub_1E1AF381C();
  v115 = sub_1E1AF37CC();
  v37 = v36;
  v40 = *(v15 + 8);
  v39 = v15 + 8;
  v38 = v40;
  v40(v35, v14);
  v124 = v37;
  if (!v37)
  {
    v50 = sub_1E1AF5A7C();
    sub_1E166F9C8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v52 = v51;
    v53 = MEMORY[0x1E69E7CC0];
    *v51 = 25705;
    v51[1] = 0xE200000000000000;
    v51[2] = &type metadata for PageFacets.Facet;
    v51[3] = v53;
LABEL_10:
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69AB6A0], v50);
    swift_willThrow();
    v38(a1, v14);
    goto LABEL_11;
  }

  v125 = v38;
  sub_1E1AF381C();
  v41 = sub_1E1AF37CC();
  v42 = v125;
  v108 = v41;
  v44 = v43;
  v125(v32, v14);
  if (!v44)
  {

    v46 = sub_1E1AF5A7C();
    sub_1E166F9C8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v48 = v47;
    v49 = MEMORY[0x1E69E7CC0];
    *v47 = 0x656C746974;
    v47[1] = 0xE500000000000000;
    goto LABEL_7;
  }

  v109 = v44;
  v45 = v123;
  sub_1E1AF381C();
  sub_1E166F30C();
  sub_1E1AF36DC();
  v42 = v125;
  v125(v45, v14);
  if (v128 == 3)
  {

    v46 = sub_1E1AF5A7C();
    sub_1E166F9C8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v48 = v47;
    v49 = MEMORY[0x1E69E7CC0];
    *v47 = 0x5479616C70736964;
    v47[1] = 0xEB00000000657079;
LABEL_7:
    v47[2] = &type metadata for PageFacets.Facet;
    v47[3] = v49;
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69AB6A0], v46);
    swift_willThrow();
    v42(a1, v14);
LABEL_11:
    v58 = v126;
    v59 = sub_1E1AF39DC();
    return (*(*(v59 - 8) + 8))(v58, v59);
  }

  v127 = v128;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v38 = v125;
  v125(v27, v14);
  v54 = v121;
  v55 = v122;
  v104 = *(v122 + 48);
  if (v104(v8, 1, v121) == 1)
  {

    sub_1E1308058(v8, &qword_1ECEB1F90, &qword_1E1B00D30);
    v50 = sub_1E1AF5A7C();
    sub_1E166F9C8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v52 = v56;
    v57 = MEMORY[0x1E69E7CC0];
    *v56 = 0x736E6F6974706FLL;
    v56[1] = 0xE700000000000000;
    v56[2] = &type metadata for PageFacets.Facet;
    v56[3] = v57;
    goto LABEL_10;
  }

  v105 = v39;
  v106 = v14;
  v61 = *(v55 + 32);
  v62 = v120;
  v103 = v61;
  v63 = v61(v120, v8, v54);
  v107 = a1;
  MEMORY[0x1EEE9AC00](v63);
  *(&v102 - 2) = v126;
  v64 = sub_1E1AF59FC();
  v65 = v107;
  if (v127 && !*(v64 + 16))
  {

    v79 = sub_1E1AF5A7C();
    sub_1E166F9C8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v80 = MEMORY[0x1E69E7CC0];
    *v81 = 0x736E6F6974706FLL;
    v81[1] = 0xE700000000000000;
    v81[2] = &type metadata for PageFacets.Facet;
    v81[3] = v80;
    (*(*(v79 - 8) + 104))(v81, *MEMORY[0x1E69AB6A0], v79);
    swift_willThrow();
    v125(v65, v106);
    (*(v122 + 8))(v62, v54);
    goto LABEL_11;
  }

  v119 = v64;
  v66 = v118;
  sub_1E1AF381C();
  v102 = sub_1E1AF37CC();
  v68 = v67;
  v69 = v106;
  v70 = v125;
  v125(v66, v106);
  v118 = v68;
  if (!v68)
  {

    v76 = sub_1E1AF5A7C();
    sub_1E166F9C8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v77 = MEMORY[0x1E69E7CC0];
    strcpy(v78, "parameterName");
    *(v78 + 7) = -4864;
    *(v78 + 2) = &type metadata for PageFacets.Facet;
    *(v78 + 3) = v77;
    (*(*(v76 - 8) + 104))(v78, *MEMORY[0x1E69AB6A0], v76);
    swift_willThrow();
    v70(v107, v69);
    (*(v122 + 8))(v62, v121);
    goto LABEL_11;
  }

  v71 = v111;
  sub_1E1AF381C();
  v72 = v112;
  sub_1E1AF374C();
  v70(v71, v69);
  v73 = v121;
  v74 = v104(v72, 1, v121);
  v75 = v126;
  if (v74 == 1)
  {
    sub_1E1308058(v72, &qword_1ECEB1F90, &qword_1E1B00D30);
    v112 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v82 = v110;
    v83 = v103(v110, v72, v73);
    MEMORY[0x1EEE9AC00](v83);
    *(&v102 - 2) = v75;
    v84 = sub_1E1AF59FC();
    v112 = sub_1E13C4838(v84);

    (*(v122 + 8))(v82, v73);
  }

  v85 = v113;
  v86 = v107;
  sub_1E1AF381C();
  LODWORD(v111) = sub_1E1AF370C();
  v87 = v106;
  v88 = v125;
  v125(v85, v106);
  v89 = v114;
  sub_1E1AF381C();
  LODWORD(v113) = sub_1E1AF370C();
  v88(v89, v87);
  v90 = v116;
  sub_1E1AF381C();
  LODWORD(v114) = sub_1E1AF370C();
  v88(v90, v87);
  v91 = v123;
  sub_1E1AF381C();
  v116 = sub_1E1AF37CC();
  v110 = v92;
  v88(v91, v87);
  type metadata accessor for Action(0);
  sub_1E1AF381C();
  v93 = v126;
  v94 = static Action.tryToMakeInstance(byDeserializing:using:)(v91, v126);
  v88(v86, v87);
  v88(v91, v87);
  (*(v122 + 8))(v120, v121);
  v95 = v117;
  *(v117 + 120) = 0u;
  *(v95 + 104) = 0u;
  v96 = v124;
  *v95 = v115;
  *(v95 + 8) = v96;
  v97 = v109;
  *(v95 + 32) = v108;
  *(v95 + 40) = v97;
  v98 = v118;
  *(v95 + 16) = v102;
  *(v95 + 24) = v98;
  *(v95 + 48) = v127;
  v99 = v112;
  *(v95 + 56) = v119;
  *(v95 + 64) = v99;
  *(v95 + 88) = v113 & 1;
  *(v95 + 89) = v111 & 1;
  v100 = v110;
  *(v95 + 72) = v116;
  *(v95 + 80) = v100;
  *(v95 + 90) = v114 & 1;
  *(v95 + 96) = v94;
  v101 = sub_1E1AF39DC();
  return (*(*(v101 - 8) + 8))(v93, v101);
}

uint64_t sub_1E166B9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  (*(v5 + 16))(v7, a2, v4);
  sub_1E166FAB8();
  return sub_1E1AF464C();
}

uint64_t PageFacets.Facet.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PageFacets.Facet.parameterName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PageFacets.Facet.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PageFacets.Facet.metricsParameterName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t PageFacets.Facet.hash(into:)(__int128 *a1)
{
  v2 = v1;
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();

  sub_1E166DD10(a1, *(v2 + 64));
  sub_1E166D858(a1, *(v2 + 56));
  sub_1E1AF764C();
  sub_1E1AF764C();
  return sub_1E1AF764C();
}

uint64_t PageFacets.Facet.hashValue.getter()
{
  sub_1E1AF762C();
  PageFacets.Facet.hash(into:)(v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E166BDB0()
{
  sub_1E1AF762C();
  PageFacets.Facet.hash(into:)(v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E166BDF4(uint64_t a1)
{
  sub_1E1AF762C();
  PageFacets.Facet.hash(into:)(v2);
  return sub_1E1AF767C();
}

AppStoreKit::PageFacets::FacetGroup __swiftcall PageFacets.FacetGroup.init(title:facets:)(Swift::String_optional title, Swift::OpaquePointer facets)
{
  *v2 = title;
  *(v2 + 16) = facets;
  result.title = title;
  result.facets = facets;
  return result;
}

uint64_t PageFacets.FacetGroup.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = a3;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - v13;
  v33 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v32 = *(v6 + 8);
  v32(v11, v5);
  v15 = sub_1E1AF5A6C();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);
  v34 = a2;
  if (v17 != 1)
  {
    MEMORY[0x1EEE9AC00](v17);
    *(&v30 - 2) = a2;
    v18 = sub_1E1AF59FC();
    (*(v16 + 8))(v14, v15);
    if (*(v18 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:

    v26 = sub_1E1AF5A7C();
    sub_1E166F9C8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v27 = 0x737465636166;
    v27[1] = 0xE600000000000000;
    v27[2] = &type metadata for PageFacets.FacetGroup;
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x1E69AB690], v26);
    swift_willThrow();
    v32(v33, v5);
    goto LABEL_6;
  }

  sub_1E1308058(v14, &qword_1ECEB1F90, &qword_1E1B00D30);
  v18 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_5;
  }

LABEL_3:
  v19 = v33;
  sub_1E1AF381C();
  v20 = sub_1E1AF37CC();
  v22 = v21;
  v23 = v19;
  v24 = v32;
  v32(v23, v5);
  v24(v8, v5);
  v25 = v31;
  *v31 = v20;
  v25[1] = v22;
  v25[2] = v18;
LABEL_6:
  v28 = sub_1E1AF39DC();
  return (*(*(v28 - 8) + 8))(v34, v28);
}

uint64_t sub_1E166C294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  (*(v5 + 16))(v7, a2, v4);
  sub_1E166FA64();
  return sub_1E1AF464C();
}

uint64_t PageFacets.FacetGroup.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PageFacets.FacetGroup.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_1E1AF764C();
    sub_1E1AF5F0C();
  }

  else
  {
    sub_1E1AF764C();
  }

  return sub_1E166D9C8(a1, v3);
}

uint64_t static PageFacets.FacetGroup.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_1E1AF74AC() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_1E1570A78(v4, v6);
}

uint64_t PageFacets.FacetGroup.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1E1AF762C();
  sub_1E1AF764C();
  if (v1)
  {
    sub_1E1AF5F0C();
  }

  sub_1E166D9C8(v4, v2);
  return sub_1E1AF767C();
}

uint64_t sub_1E166C628()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1E1AF762C();
  sub_1E1AF764C();
  if (v1)
  {
    sub_1E1AF5F0C();
  }

  sub_1E166D9C8(v4, v2);
  return sub_1E1AF767C();
}

uint64_t sub_1E166C6A8(__int128 *a1)
{
  v3 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_1E1AF764C();
    sub_1E1AF5F0C();
  }

  else
  {
    sub_1E1AF764C();
  }

  return sub_1E166D9C8(a1, v3);
}

uint64_t sub_1E166C728(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_1E1AF762C();
  sub_1E1AF764C();
  if (v2)
  {
    sub_1E1AF5F0C();
  }

  sub_1E166D9C8(v5, v3);
  return sub_1E1AF767C();
}

uint64_t sub_1E166C7BC(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_1E1AF74AC() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_1E1570A78(v4, v6);
}

AppStoreKit::PageFacets __swiftcall PageFacets.init(facetGroups:resetButtonTitle:allowsResetButton:)(Swift::OpaquePointer facetGroups, Swift::String_optional resetButtonTitle, Swift::Bool allowsResetButton)
{
  countAndFlagsBits = resetButtonTitle.value._countAndFlagsBits;
  rawValue = facetGroups._rawValue;
  v7 = v3;
  if (!resetButtonTitle.value._object)
  {
    resetButtonTitle.value._countAndFlagsBits = 0x80000001E1B6CEC0;
    v8 = 0xD00000000000001DLL;
    v9 = 0xE000000000000000;
    v10 = localizedString(_:comment:)(*(&resetButtonTitle - 8), *&resetButtonTitle.value._object);
    resetButtonTitle.value._countAndFlagsBits = v10._object;
    facetGroups._rawValue = v10._countAndFlagsBits;
    countAndFlagsBits = v10._countAndFlagsBits;
    resetButtonTitle.value._object = v10._object;
  }

  *v7 = rawValue;
  *(v7 + 8) = countAndFlagsBits;
  *(v7 + 16) = resetButtonTitle.value._object;
  *(v7 + 24) = allowsResetButton;
  result.resetButtonTitle = resetButtonTitle;
  result.facetGroups = facetGroups;
  result.allowsResetButton = allowsResetButton;
  return result;
}

uint64_t PageFacets.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a3;
  v35 = a2;
  v4 = sub_1E1AF380C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v33 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v33 - v15;
  v36 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v17 = *(v5 + 8);
  v17(v13, v4);
  v18 = sub_1E1AF5A6C();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v16, 1, v18);
  if (v20 == 1)
  {
    sub_1E1308058(v16, &qword_1ECEB1F90, &qword_1E1B00D30);
    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v33[1] = v33;
    MEMORY[0x1EEE9AC00](v20);
    v33[-2] = v35;
    v21 = sub_1E1AF59FC();
    (*(v19 + 8))(v16, v18);
  }

  sub_1E1AF381C();
  countAndFlagsBits = sub_1E1AF37CC();
  object = v23;
  v17(v10, v4);
  sub_1E1AF381C();
  v25 = sub_1E1AF370C();
  v17(v7, v4);
  if (!object)
  {
    v26._countAndFlagsBits = 0xD00000000000001DLL;
    v26._object = 0x80000001E1B6CEC0;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v28 = localizedString(_:comment:)(v26, v27);
    countAndFlagsBits = v28._countAndFlagsBits;
    object = v28._object;
  }

  v29 = v35;
  v17(v36, v4);
  v30 = v34;
  *v34 = v21;
  v30[1] = countAndFlagsBits;
  v30[2] = object;
  *(v30 + 24) = v25 & 1;
  v31 = sub_1E1AF39DC();
  return (*(*(v31 - 8) + 8))(v29, v31);
}

uint64_t sub_1E166CC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  (*(v5 + 16))(v7, a2, v4);
  sub_1E166FA10();
  return sub_1E1AF464C();
}

uint64_t PageFacets.resetButtonTitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PageFacets.hash(into:)(__int128 *a1)
{
  v2 = v1[2];
  sub_1E166DB18(a1, *v1);
  sub_1E1AF764C();
  if (v2)
  {
    sub_1E1AF5F0C();
  }

  return sub_1E1AF764C();
}

uint64_t static PageFacets.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_1E15704CC(*a1, *a2);
  if (v8)
  {
    if (v3)
    {
      if (v6 && (v2 == v5 && v3 == v6 || (sub_1E1AF74AC() & 1) != 0))
      {
        return v4 ^ v7 ^ 1u;
      }
    }

    else if (!v6)
    {
      return v4 ^ v7 ^ 1u;
    }
  }

  return 0;
}

uint64_t sub_1E166CF98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_1E15704CC(*a1, *a2);
  if (v8)
  {
    if (v3)
    {
      if (v6 && (v2 == v5 && v3 == v6 || (sub_1E1AF74AC() & 1) != 0))
      {
        return v4 ^ v7 ^ 1u;
      }
    }

    else if (!v6)
    {
      return v4 ^ v7 ^ 1u;
    }
  }

  return 0;
}

uint64_t sub_1E166D05C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E1AEFE6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v30 - v7;
  v8 = sub_1E1AEFCCC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v30 - v13;
  if (a2 >> 62)
  {
    v29 = sub_1E1AF71CC();
    MEMORY[0x1E6900360](v29);
    result = sub_1E1AF71CC();
    v16 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x1E6900360](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), v12);
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      return result;
    }
  }

  if (v16 >= 1)
  {
    v17 = 0;
    v18 = v4;
    v19 = a2 & 0xC000000000000001;
    v32 = (v9 + 8);
    v33 = (v9 + 32);
    v37 = (v18 + 48);
    v38 = (v9 + 48);
    v30 = (v18 + 8);
    v31 = (v18 + 32);
    v39 = v8;
    v40 = a2;
    v34 = v3;
    while (1)
    {
      if (v19)
      {
        v21 = MEMORY[0x1E68FFD80](v17, a2);
      }

      else
      {
        v21 = *(a2 + 8 * v17 + 32);
      }

      sub_1E1AF5F0C();
      if (*(v21 + 40))
      {
        sub_1E1AF764C();
        sub_1E1AF5F0C();
        if (!*(v21 + 56))
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1E1AF764C();
        if (!*(v21 + 56))
        {
LABEL_14:
          sub_1E1AF764C();
          goto LABEL_15;
        }
      }

      sub_1E1AF764C();
      sub_1E1AF5F0C();
LABEL_15:
      a2 = v40;
      sub_1E1AF764C();
      sub_1E134FD1C(v21 + OBJC_IVAR____TtC11AppStoreKit23WidgetTodayCardTemplate_url, v14, &unk_1ECEB4B60, &unk_1E1B02620);
      v22 = v39;
      if ((*v38)(v14, 1, v39) == 1)
      {
        sub_1E1AF764C();
      }

      else
      {
        v23 = v19;
        v24 = v16;
        v25 = a2;
        v26 = v35;
        (*v33)(v35, v14, v22);
        sub_1E1AF764C();
        sub_1E166F9C8(&qword_1EE1E2330, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        sub_1E1AF5D1C();
        v27 = v26;
        a2 = v25;
        v16 = v24;
        v19 = v23;
        v3 = v34;
        (*v32)(v27, v22);
      }

      v28 = v41;
      sub_1E134FD1C(v21 + OBJC_IVAR____TtC11AppStoreKit23WidgetTodayCardTemplate_eventStartDate, v41, &unk_1ECEBB780, &unk_1E1B029A0);
      if ((*v37)(v28, 1, v3) == 1)
      {
        sub_1E1AF764C();
      }

      else
      {
        v20 = v36;
        (*v31)(v36, v28, v3);
        sub_1E1AF764C();
        sub_1E166F9C8(&qword_1ECEB6B70, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
        sub_1E1AF5D1C();

        result = (*v30)(v20, v3);
      }

      if (v16 == ++v17)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E166D5B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v11 = sub_1E1AF71CC();
    MEMORY[0x1E6900360](v11);
    result = sub_1E1AF71CC();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x1E6900360](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = MEMORY[0x1E68FFD80](i, a2);
      sub_1E1AF5F0C();

      if ((*(v6 + 56) & 1) == 0)
      {
        if ((*(v6 + 48) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v7 = *(v6 + 48);
        }

        else
        {
          v7 = 0;
        }

        MEMORY[0x1E6900390](v7);
      }

      result = swift_unknownObjectRelease();
    }
  }

  else
  {
    v8 = (a2 + 32);
    do
    {
      v9 = *v8;

      sub_1E1AF5F0C();

      if ((*(v9 + 56) & 1) == 0)
      {
        if ((*(v9 + 48) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v10 = *(v9 + 48);
        }

        else
        {
          v10 = 0;
        }

        MEMORY[0x1E6900390](v10);
      }

      ++v8;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_1E166D858(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1E6900360](v3);
  if (v3)
  {
    v4 = a2 + 48;
    do
    {
      v5 = *(v4 + 24);
      v6 = *(v4 + 40);
      if (*(v4 - 8))
      {
        sub_1E1AF764C();

        sub_1E1AF5F0C();
      }

      else
      {
        sub_1E1AF764C();
      }

      sub_1E1AF5F0C();
      if (v5)
      {
        sub_1E1AF764C();
        sub_1E1AF5F0C();
        if (!v6)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1E1AF764C();
        if (!v6)
        {
LABEL_12:
          sub_1E1AF764C();
          goto LABEL_4;
        }
      }

      sub_1E1AF764C();
      sub_1E1AF5F0C();
LABEL_4:

      v4 += 64;

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1E166D9C8(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1E6900360](v4);
  if (v4)
  {
    v6 = a2 + 32;
    do
    {
      sub_1E141D0E8(v6, v7);
      sub_1E1AF5F0C();
      sub_1E1AF5F0C();
      sub_1E1AF5F0C();
      sub_1E1AF5F0C();

      sub_1E166DD10(a1, v7[8]);
      sub_1E166D858(a1, v7[7]);
      sub_1E1AF764C();
      sub_1E1AF764C();
      sub_1E1AF764C();
      result = sub_1E141D144(v7);
      v6 += 136;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_1E166DB18(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  MEMORY[0x1E6900360](v4);
  if (v4)
  {
    v5 = 0;
    v10 = a2 + 32;
    do
    {
      v6 = v10 + 24 * v5;
      v7 = *(v6 + 16);
      if (*(v6 + 8))
      {
        sub_1E1AF764C();

        sub_1E1AF5F0C();
      }

      else
      {
        sub_1E1AF764C();
      }

      MEMORY[0x1E6900360](*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = v7 + 32;
        do
        {
          sub_1E141D0E8(v9, v11);
          sub_1E1AF5F0C();
          sub_1E1AF5F0C();
          sub_1E1AF5F0C();
          sub_1E1AF5F0C();

          sub_1E166DD10(a1, v11[8]);
          sub_1E166D858(a1, v11[7]);
          sub_1E1AF764C();
          sub_1E1AF764C();
          sub_1E1AF764C();
          sub_1E141D144(v11);
          v9 += 136;
          --v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v4);
  }
}

void sub_1E166DD10(__int128 *a1, uint64_t a2)
{
  sub_1E1AF767C();
  v16 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v6)
  {
    v17 = v8;
LABEL_12:
    v12 = (*(v16 + 48) + ((v9 << 12) | (__clz(__rbit64(v6)) << 6)));
    v13 = v12[1];
    v14 = v12[5];
    v15 = v12[7];
    sub_1E1AF762C();
    sub_1E1AF764C();

    if (v13)
    {

      sub_1E1AF5F0C();
    }

    sub_1E1AF5F0C();
    if (v14)
    {
      sub_1E1AF764C();
      sub_1E1AF5F0C();
      if (!v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1E1AF764C();
      if (!v15)
      {
LABEL_4:
        sub_1E1AF764C();
        goto LABEL_5;
      }
    }

    sub_1E1AF764C();
    sub_1E1AF5F0C();
LABEL_5:
    v6 &= v6 - 1;
    v10 = sub_1E1AF767C();

    v8 = v10 ^ v17;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      MEMORY[0x1E6900360](v8);
      return;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v17 = v8;
      v9 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t _s11AppStoreKit10PageFacetsV5FacetV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1E1AF74AC() & 1) == 0)
  {
    goto LABEL_39;
  }

  v5 = a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40);
  if (!v5 && (sub_1E1AF74AC() & 1) == 0 || (a1[2] != *(a2 + 16) || a1[3] != *(a2 + 24)) && (sub_1E1AF74AC() & 1) == 0)
  {
    goto LABEL_39;
  }

  v6 = 0x6553656C676E6973;
  v7 = 0xEF6E6F697463656CLL;
  v8 = 0x80000001E1B56180;
  if (*(a1 + 48) != 1)
  {
    v6 = 0xD000000000000011;
    v7 = 0x80000001E1B56180;
  }

  if (*(a1 + 48))
  {
    v9 = v6;
  }

  else
  {
    v9 = 0x656C67676F74;
  }

  if (*(a1 + 48))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  v11 = 0x6553656C676E6973;
  if (*(a2 + 48) == 1)
  {
    v8 = 0xEF6E6F697463656CLL;
  }

  else
  {
    v11 = 0xD000000000000011;
  }

  if (*(a2 + 48))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x656C67676F74;
  }

  if (*(a2 + 48))
  {
    v13 = v8;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (v9 == v12 && v10 == v13)
  {
  }

  else
  {
    v14 = sub_1E1AF74AC();

    if ((v14 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if ((sub_1E16B0884(a1[8], *(a2 + 64)) & 1) != 0 && (sub_1E156EDEC(a1[7], *(a2 + 56)) & 1) != 0 && *(a1 + 88) == *(a2 + 88) && *(a1 + 89) == *(a2 + 89))
  {
    v15 = *(a1 + 90) ^ *(a2 + 90) ^ 1;
    return v15 & 1;
  }

LABEL_39:
  v15 = 0;
  return v15 & 1;
}

uint64_t _s11AppStoreKit10PageFacetsV5FacetV6OptionV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[7];
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[7];
  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    v16 = a2[6];
    v17 = a1[6];
    if ((*a1 != *a2 || v3 != v9) && (sub_1E1AF74AC() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v16 = a2[6];
    v17 = a1[6];
    if (v9)
    {
      return 0;
    }
  }

  if ((v4 != v10 || v6 != v11) && (sub_1E1AF74AC() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v13 || (v5 != v12 || v7 != v13) && (sub_1E1AF74AC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    if (v14 && (v17 == v16 && v8 == v14 || (sub_1E1AF74AC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v14)
  {
    return 1;
  }

  return 0;
}

void *_s11AppStoreKit10PageFacetsV24serializeSelectedOptionsySDySSSaySDyS2SSgGGGSDyAC5FacetVShyAJ6OptionVGGFZ_0(uint64_t a1)
{
  v2 = sub_1E159D918(MEMORY[0x1E69E7CC0]);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = &qword_1E1B3AB40;
  v33 = v7;
  while (v6)
  {
LABEL_11:
    v12 = __clz(__rbit64(v6)) | (v8 << 6);
    sub_1E141D0E8(*(a1 + 48) + 136 * v12, v40);
    v13 = *(*(a1 + 56) + 8 * v12);
    v37[6] = v40[6];
    v37[7] = v40[7];
    v37[2] = v40[2];
    v37[3] = v40[3];
    v37[4] = v40[4];
    v37[5] = v40[5];
    v37[0] = v40[0];
    v37[1] = v40[1];
    v38 = v41;
    v39 = v13;
    v14 = v9;
    sub_1E134FD1C(v37, v34, &qword_1ECEB7580, v9);

    v16 = v35;
    v15 = v36;

    sub_1E141D144(v34);
    sub_1E16692C4(v13);
    v18 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_1E13018F8(v16, v15);
    v22 = v2[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_23;
    }

    v26 = v21;
    if (v2[3] < v25)
    {
      sub_1E16885F8(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_1E13018F8(v16, v15);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v9 = v14;
      if (v26)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v31 = v20;
    sub_1E1415820();
    v20 = v31;
    v9 = v14;
    if (v26)
    {
LABEL_4:
      v10 = v20;

      *(v2[7] + 8 * v10) = v18;

      goto LABEL_5;
    }

LABEL_17:
    v2[(v20 >> 6) + 8] |= 1 << v20;
    v28 = (v2[6] + 16 * v20);
    *v28 = v16;
    v28[1] = v15;
    *(v2[7] + 8 * v20) = v18;
    v29 = v2[2];
    v24 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v24)
    {
      goto LABEL_24;
    }

    v2[2] = v30;
LABEL_5:
    v6 &= v6 - 1;
    sub_1E1308058(v37, &qword_1ECEB7580, v9);
    v7 = v33;
    v3 = a1 + 64;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

void *sub_1E166E56C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v15 = sub_1E159FA90(MEMORY[0x1E69E7CC0]);
    v16 = *(v5 + 2);
    if (!v16)
    {
LABEL_58:

      return v15;
    }

    v17 = 0;
    v18 = (v5 + 32);
    v19 = MEMORY[0x1E69E7CD0];
    while (1)
    {
      if (v17 >= *(v5 + 2))
      {
        goto LABEL_62;
      }

      sub_1E141D0E8(v18, v65);
      if (!v66)
      {
        break;
      }

      if (v66 != 1 || (v20 = v67, !*(v67 + 16)))
      {
        sub_1E141D0E8(v65, v64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v61[0] = v15;
        v37 = sub_1E15951A4(v64);
        v39 = v15[2];
        v40 = (v38 & 1) == 0;
        v13 = __OFADD__(v39, v40);
        v41 = v39 + v40;
        if (v13)
        {
          goto LABEL_64;
        }

        v42 = v38;
        if (v15[3] < v41)
        {
          sub_1E168ACD4(v41, isUniquelyReferenced_nonNull_native);
          v37 = sub_1E15951A4(v64);
          if ((v42 & 1) != (v43 & 1))
          {
            goto LABEL_70;
          }

          goto LABEL_41;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_41:
          v15 = *&v61[0];
          if ((v42 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v57 = v37;
          sub_1E1417014();
          v37 = v57;
          v15 = *&v61[0];
          if ((v42 & 1) == 0)
          {
LABEL_42:
            v15[(v37 >> 6) + 8] |= 1 << v37;
            v51 = v37;
            sub_1E141D0E8(v64, v15[6] + 136 * v37);
            *(v15[7] + 8 * v51) = v19;
            sub_1E141D144(v64);
            v52 = v15[2];
            v13 = __OFADD__(v52, 1);
            v53 = v52 + 1;
            if (v13)
            {
              goto LABEL_67;
            }

LABEL_48:
            v15[2] = v53;
            goto LABEL_23;
          }
        }

        goto LABEL_22;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2630, &qword_1E1B02A88);
      inited = swift_initStackObject();
      inited[1] = xmmword_1E1B02CC0;
      v22 = v20[2];
      v23 = v20[3];
      v24 = v20[5];
      v62 = v20[4];
      v25 = v62;
      v63 = v24;
      v61[0] = v22;
      v61[1] = v23;
      v26 = v20[3];
      inited[2] = v20[2];
      inited[3] = v26;
      inited[4] = v25;
      inited[5] = v24;
      sub_1E13C5038(v61, v64);
      v27 = sub_1E13C4838(inited);
      swift_setDeallocating();
      sub_1E13C5094((inited + 2));
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v29 = sub_1E15951A4(v65);
      v31 = v15[2];
      v32 = (v30 & 1) == 0;
      v13 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v13)
      {
        goto LABEL_68;
      }

      v34 = v30;
      if (v15[3] >= v33)
      {
        if ((v28 & 1) == 0)
        {
          v59 = v29;
          sub_1E1417014();
          v29 = v59;
        }
      }

      else
      {
        sub_1E168ACD4(v33, v28);
        v29 = sub_1E15951A4(v65);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_70;
        }
      }

      if (v34)
      {
        *(v15[7] + 8 * v29) = v27;
      }

      else
      {
        v56 = v29;
        sub_1E141D0E8(v65, v64);
        sub_1E165F608(v56, v64, v27, v15);
      }

LABEL_23:
      sub_1E141D144(v65);
      ++v17;
      v18 += 136;
      if (v16 == v17)
      {
        goto LABEL_58;
      }
    }

    sub_1E141D0E8(v65, v64);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    *&v61[0] = v15;
    v37 = sub_1E15951A4(v64);
    v46 = v15[2];
    v47 = (v45 & 1) == 0;
    v13 = __OFADD__(v46, v47);
    v48 = v46 + v47;
    if (v13)
    {
      goto LABEL_66;
    }

    v49 = v45;
    if (v15[3] >= v48)
    {
      if ((v44 & 1) == 0)
      {
        v58 = v37;
        sub_1E1417014();
        v37 = v58;
        v15 = *&v61[0];
        if ((v49 & 1) == 0)
        {
LABEL_47:
          v15[(v37 >> 6) + 8] |= 1 << v37;
          v54 = v37;
          sub_1E141D0E8(v64, v15[6] + 136 * v37);
          *(v15[7] + 8 * v54) = v19;
          sub_1E141D144(v64);
          v55 = v15[2];
          v13 = __OFADD__(v55, 1);
          v53 = v55 + 1;
          if (v13)
          {
            goto LABEL_69;
          }

          goto LABEL_48;
        }

        goto LABEL_22;
      }
    }

    else
    {
      sub_1E168ACD4(v48, v44);
      v37 = sub_1E15951A4(v64);
      if ((v49 & 1) != (v50 & 1))
      {
        goto LABEL_70;
      }
    }

    v15 = *&v61[0];
    if ((v49 & 1) == 0)
    {
      goto LABEL_47;
    }

LABEL_22:
    *(v15[7] + 8 * v37) = v19;

    sub_1E141D144(v64);
    goto LABEL_23;
  }

  v3 = 0;
  v4 = (v1 + 48);
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_60;
    }

    v10 = swift_isUniquelyReferenced_nonNull_native();
    if (v10 && v9 <= *(v5 + 3) >> 1)
    {
      if (!*(v6 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = sub_1E172DFB0(v10, v11, 1, v5);
      if (!*(v6 + 16))
      {
LABEL_3:

        if (v7)
        {
          goto LABEL_61;
        }

        goto LABEL_4;
      }
    }

    if ((*(v5 + 3) >> 1) - *(v5 + 2) < v7)
    {
      goto LABEL_63;
    }

    swift_arrayInitWithCopy();

    if (v7)
    {
      v12 = *(v5 + 2);
      v13 = __OFADD__(v12, v7);
      v14 = v12 + v7;
      if (v13)
      {
        goto LABEL_65;
      }

      *(v5 + 2) = v14;
    }

LABEL_4:
    ++v3;
    v4 += 3;
    if (v2 == v3)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}