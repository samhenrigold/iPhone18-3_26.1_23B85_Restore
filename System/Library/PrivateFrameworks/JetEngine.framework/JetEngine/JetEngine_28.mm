double sub_1AB233A9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0, &qword_1AB4D8DD0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - v3;
  if (qword_1ED4D0B80 != -1)
  {
    v2 = swift_once();
  }

  v5 = *(v0 + 104);
  v15[0] = *(v0 + 96);
  v15[1] = v5;
  v6 = *(qword_1ED4D3EB0 + 16);
  MEMORY[0x1EEE9AC00](v2);
  *(&v13 - 2) = v15;
  os_unfair_lock_lock(v6 + 6);
  sub_1AB233D50(v14);
  os_unfair_lock_unlock(v6 + 6);

  v7 = sub_1AB460BE4();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_1AB233D6C(v0, v14);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  v9 = v14[5];
  *(v8 + 96) = v14[4];
  *(v8 + 112) = v9;
  *(v8 + 128) = v14[6];
  v10 = v14[1];
  *(v8 + 32) = v14[0];
  *(v8 + 48) = v10;
  v11 = v14[3];
  *(v8 + 64) = v14[2];
  *(v8 + 80) = v11;
  sub_1AB2313A4(0, 0, v4, &unk_1AB4E06D8, v8);

  return result;
}

uint64_t sub_1AB233C78(uint64_t a1)
{
  if (qword_1ED4D0B80 != -1)
  {
    a1 = swift_once();
  }

  v2 = *(v1 + 104);
  v5[2] = *(v1 + 96);
  v5[3] = v2;
  v3 = *(qword_1ED4D3EB0 + 16);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v3 + 6);
  sub_1AB0572A0(v5);
  os_unfair_lock_unlock(v3 + 6);
}

uint64_t sub_1AB233DA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1AB027460;

  return sub_1AB233448(a1, v4, v5, v1 + 32);
}

uint64_t NetworkInterface.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

unint64_t sub_1AB233EE0()
{
  result = qword_1EB438BF8;
  if (!qword_1EB438BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438BF8);
  }

  return result;
}

void sub_1AB233FBC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v67 = sub_1AB4601B4();
  v8 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1AB4601F4();
  v10 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1AB4601C4();
  v12 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1AB45F9E4();
  v14 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4[3];
  v17 = v4[4];
  v70 = v4;
  __swift_project_boxed_opaque_existential_1Tm(v4, v16);
  v74 = *a1;
  aBlock = v74;
  (*(v17 + 8))(&aBlock, a2, a3, v16, v17);
  sub_1AB15811C(v74);
  v18 = objc_allocWithZone(MEMORY[0x1E698CA08]);
  v19 = sub_1AB4602D4();

  v72 = [v18 initWithUnderlyingDictionary_];

  if (a3)
  {
    v20 = sub_1AB460514();
    [v72 setTopic_];
  }

  v71 = sub_1AB18732C();
  v61 = *(v71 + 2);
  if (v61)
  {
    v60 = (v14 + 8);
    v21 = 0;
    v59 = v77;
    v58 = *MEMORY[0x1E69E7FA0];
    v57 = (v12 + 104);
    v56 = (v12 + 8);
    v55 = (v8 + 8);
    v54 = (v10 + 8);
    v22 = (v71 + 48);
    while (v21 < *(v71 + 2))
    {
      v23 = *(v22 - 2);
      v24 = *(v22 - 1);
      v25 = *v22;

      v26 = v68;
      sub_1AB45F9D4();
      v27 = sub_1AB45F9C4();
      v29 = v28;
      (*v60)(v26, v69);
      v78[0] = v27;
      v78[1] = v29;
      v78[5] = sub_1AB016760(0, &qword_1EB434E60, 0x1E698CA08);
      v78[6] = sub_1AB158CC0();
      v30 = v72;
      v78[2] = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436940, &qword_1AB4D46D8);
      v31 = sub_1AB461924();
      v32 = v30;

      sub_1AB234D9C(v78, &aBlock);
      v33 = aBlock;
      v34 = sub_1AB014DB4(aBlock, *(&aBlock + 1));
      if (v35)
      {
        goto LABEL_16;
      }

      v31[(v34 >> 6) + 8] |= 1 << v34;
      *(v31[6] + 16 * v34) = v33;
      sub_1AB0149B0(v59, v31[7] + 40 * v34);
      v36 = v31[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_17;
      }

      *&v74 = v21 + 1;
      v31[2] = v38;

      sub_1AB234E0C(v78);
      v39 = v70[6];
      sub_1AB016760(0, &qword_1ED4D2060, 0x1E69E9610);
      v40 = v62;
      v41 = v63;
      (*v57)(v62, v58, v63);
      v73 = sub_1AB461164();
      (*v56)(v40, v41);
      v42 = swift_allocObject();
      v42[2] = v23;
      v42[3] = v24;
      v42[4] = v25;
      v42[5] = v31;
      v42[6] = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438C08, &unk_1AB4F3C80);
      v43 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
      v44 = swift_allocObject();
      *(v44 + 16) = 0;
      *(v43 + 16) = v44;
      v45 = MEMORY[0x1E69E7CC0];
      *(v43 + 24) = MEMORY[0x1E69E7CC0];
      *(v43 + 64) = 0;
      v46 = swift_allocObject();
      v46[2] = sub_1AB234E74;
      v46[3] = v42;
      v46[4] = v43;
      v47 = swift_allocObject();
      *(v47 + 16) = sub_1AB234EA4;
      *(v47 + 24) = v46;
      v77[2] = sub_1AB021144;
      v77[3] = v47;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v77[0] = sub_1AB01D528;
      v77[1] = &block_descriptor_12;
      v48 = _Block_copy(&aBlock);
      v49 = v39;

      v50 = v64;
      _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
      v75 = v45;
      sub_1AB016500();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540, &unk_1AB4DCF50);
      sub_1AB01561C(&qword_1ED4D1FB0, &qword_1EB438540, &unk_1AB4DCF50, MEMORY[0x1E69E6328]);
      v51 = v66;
      v52 = v67;
      sub_1AB4614E4();
      v53 = v73;
      MEMORY[0x1AC59C480](0, v50, v51, v48);
      _Block_release(v48);
      v21 = v74;

      (*v55)(v51, v52);
      (*v54)(v50, v65);

      v22 += 3;
      if (v61 == v21)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_9:

    if (qword_1EB435DB0 == -1)
    {
      goto LABEL_10;
    }
  }

  swift_once();
LABEL_10:
  if ([(_JEAtomicFlag *)qword_1EB43AE18 currentValue])
  {
    if (qword_1EB435DB8 != -1)
    {
      swift_once();
    }

    sub_1AB234F14(v72, qword_1EB46C318);
  }
}

uint64_t sub_1AB2348F4()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

void MetricsEventRecorder.withRemoteInspection.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v29[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29[-1] - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v16 = *(v8 + 16);
  v16(&v29[-1] - v17, v4, a1, v15);
  if (swift_dynamicCast())
  {
    sub_1AB234D5C(v29);
LABEL_3:
    a3[3] = a1;
    a3[4] = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    (v16)(boxed_opaque_existential_0, v4, a1);
    return;
  }

  (v16)(v13, v4, a1);
  type metadata accessor for AMSMetricsEventRecorder();
  if (swift_dynamicCast())
  {

    __break(1u);
    goto LABEL_22;
  }

  (v16)(v10, v4, a1);
  type metadata accessor for AMSInMemoryMetricsEventRecorder();
  if (swift_dynamicCast())
  {
LABEL_22:

    __break(1u);
    return;
  }

  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v19 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v19[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v19 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    goto LABEL_3;
  }

  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  if (qword_1EB4358F0 != -1)
  {
    swift_once();
  }

  v21 = sub_1AB026D00(qword_1EB46C2C0, *algn_1EB46C2C8);
  if (v21 == 2 || (v21 & 1) == 0)
  {
    goto LABEL_3;
  }

  a3[3] = &type metadata for MetricsEventRecorderWithInspection;
  a3[4] = &off_1F2000840;
  v22 = swift_allocObject();
  *a3 = v22;
  v22[5] = a1;
  v22[6] = a2;
  v23 = __swift_allocate_boxed_opaque_existential_0(v22 + 2);
  (v16)(v23, v4, a1);
  if (qword_1EB435CA8 != -1)
  {
    swift_once();
  }

  v24 = qword_1EB46C2D8;
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 sharedSession];
  v22[7] = v26;
  v22[8] = v27;
}

unint64_t sub_1AB234CEC(uint64_t *a1, uint64_t a2)
{

  sub_1AB2353C0(a1, a2);
  v5 = v4;

  v7 = *(*a1 + 16);
  if (v7 >= v5)
  {
    return sub_1AB23566C(v5, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB234D9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438C00, &qword_1AB4E0830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB234E0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438C00, &qword_1AB4E0830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AB234F14(void *a1, uint64_t a2)
{
  v16[3] = &type metadata for TraceMetricsEventEnqueue;
  v16[4] = &protocol witness table for TraceMetricsEventEnqueue;
  v16[0] = a1;
  v3 = *(a2 + 16);
  v4 = a1;

  os_unfair_lock_lock((v3 + 24));
  v5 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));

  v15 = MEMORY[0x1E69E7CD0];
  v6 = *(v5 + 16);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (i >= *(v5 + 16))
      {
        __break(1u);
        return;
      }

      v8 = *(v5 + 8 * i + 32);
      v9 = *(*v8 + 88);

      if ((v9(v10) & 1) == 0 || (v11 = (*(*v8 + 104))(v16), (v9(v11) & 1) == 0))
      {
        sub_1AB248988(&v14, v8);
      }
    }

    if (!*(v15 + 16))
    {
      goto LABEL_12;
    }
  }

  else
  {

    if (!*(MEMORY[0x1E69E7CD0] + 16))
    {
LABEL_12:

      goto LABEL_13;
    }
  }

  v13 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](v12);

  os_unfair_lock_lock((v13 + 24));
  sub_1AB235114((v13 + 16));
  os_unfair_lock_unlock((v13 + 24));

LABEL_13:
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

unint64_t sub_1AB235130(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1AB2351F0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB2352B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      v7 = *(v5 + 8 * v4);
      sub_1AB4620A4();
      MEMORY[0x1AC59D3F0](v7);
      v8 = sub_1AB462104();
      v9 = -1 << *(a2 + 32);
      v10 = v8 & ~v9;
      if ((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        break;
      }
    }

LABEL_3:
    if (++v4 == v2)
    {
      return 0;
    }
  }

  v11 = ~v9;
  while (*(*(a2 + 48) + 8 * v10) != v7)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return v4;
}

void sub_1AB2353C0(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = sub_1AB2352B0(*a1, a2);
  v8 = v6;
  if (!v2 && (v7 & 1) == 0)
  {
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      v10 = a2 + 56;
      while (1)
      {
        v12 = v5[2];
        if (v9 == v12)
        {
          break;
        }

        if (v9 >= v12)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v13 = v5 + 4;
        if (*(a2 + 16) && (v14 = v13[v9], sub_1AB4620A4(), MEMORY[0x1AC59D3F0](v14), v15 = sub_1AB462104(), v16 = -1 << *(a2 + 32), v17 = v15 & ~v16, ((*(v10 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
        {
          v18 = ~v16;
          while (*(*(a2 + 48) + 8 * v17) != v14)
          {
            v17 = (v17 + 1) & v18;
            if (((*(v10 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          if (v8 != v9)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_27;
            }

            v19 = v5[2];
            if (v8 >= v19)
            {
              goto LABEL_28;
            }

            if (v9 >= v19)
            {
              goto LABEL_29;
            }

            v20 = v13[v8];
            v21 = v13[v9];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_1AB234EB0(v5);
            }

            if (v8 >= v5[2])
            {
              goto LABEL_30;
            }

            v5[v8 + 4] = v21;

            if (v9 >= v5[2])
            {
              goto LABEL_31;
            }

            v5[v9 + 4] = v20;

            *a1 = v5;
          }

          v11 = __OFADD__(v8++, 1);
          if (v11)
          {
            goto LABEL_26;
          }
        }

        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
          goto LABEL_25;
        }
      }
    }
  }
}

unint64_t sub_1AB23559C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E00, &unk_1AB4D6A20);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1AB23566C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_22:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    goto LABEL_14;
  }

  if (v8 > *(v4 + 24) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

LABEL_14:
    sub_1AB17781C(isUniquelyReferenced_nonNull_native, v10, 1);
  }

  return sub_1AB23559C(v6, a2, 0);
}

unint64_t sub_1AB235734(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439C30, &qword_1AB4E0838);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB235804(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AB235858(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1AB2358B8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v14 = a4;
  v15 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438C10, &qword_1AB4E09A8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB235C3C();
  sub_1AB462274();
  v16 = a2;
  v17 = a3;
  v18 = 0;
  sub_1AB017200(a2, a3);
  sub_1AB235C90();
  sub_1AB461BF4();
  sub_1AB017254(v16, v17);
  if (!v5)
  {
    v16 = v14;
    v17 = v15;
    v18 = 1;
    sub_1AB017200(v14, v15);
    sub_1AB461BF4();
    sub_1AB017254(v16, v17);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1AB235A78()
{
  if (*v0)
  {
    return 6775156;
  }

  else
  {
    return 30313;
  }
}

uint64_t sub_1AB235AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 30313 && a2 == 0xE200000000000000;
  if (v5 || (sub_1AB461DA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AB461DA4();

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

uint64_t sub_1AB235B74(uint64_t a1)
{
  v2 = sub_1AB235C3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB235BB0(uint64_t a1)
{
  v2 = sub_1AB235C3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB235BEC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AB235CE4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

unint64_t sub_1AB235C3C()
{
  result = qword_1EB435838;
  if (!qword_1EB435838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435838);
  }

  return result;
}

unint64_t sub_1AB235C90()
{
  result = qword_1EB438C18;
  if (!qword_1EB438C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438C18);
  }

  return result;
}

uint64_t sub_1AB235CE4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438C20, &qword_1AB4E09B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1Tm(a1, v7);
  sub_1AB235C3C();
  sub_1AB462224();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v14 = 0;
    sub_1AB066CD4();
    sub_1AB461AC4();
    v7 = v12;
    v9 = v13;
    v14 = 1;
    sub_1AB461AC4();
    (*(v4 + 8))(v6, v3);
    v10 = v12;
    v11 = v13;
    sub_1AB017200(v7, v9);
    sub_1AB017200(v10, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_1AB017254(v7, v9);
    sub_1AB017254(v10, v11);
  }

  return v7;
}

unint64_t sub_1AB235F24()
{
  result = qword_1EB438C28;
  if (!qword_1EB438C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438C28);
  }

  return result;
}

unint64_t sub_1AB235F7C()
{
  result = qword_1EB435828;
  if (!qword_1EB435828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435828);
  }

  return result;
}

unint64_t sub_1AB235FD4()
{
  result = qword_1EB435830;
  if (!qword_1EB435830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435830);
  }

  return result;
}

uint64_t sub_1AB236028(uint64_t a1, int a2)
{
  v6 = *v2;
  v5 = v2[1];

  v7 = sub_1AB236354(v6, v5, a1, a2);
  if (qword_1ED4D0C30 != -1)
  {
    swift_once();
  }

  result = sub_1AB15AA44(v7, qword_1ED4D3ED8);
  if ((result & 1) == 0)
  {
    sub_1AB1F60B4();
    swift_allocError();
    *v9 = v7;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AB2360F4(uint64_t a1, int a2)
{
  v3 = sqlite3_bind_int(*(a1 + 16), a2, *v2);
  if (qword_1ED4D0C30 != -1)
  {
    swift_once();
  }

  result = sub_1AB15AA44(v3, qword_1ED4D3ED8);
  if ((result & 1) == 0)
  {
    sub_1AB1F60B4();
    swift_allocError();
    *v5 = v3;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AB2361A0(uint64_t a1, int a2)
{
  v3 = sqlite3_bind_int64(*(a1 + 16), a2, *v2);
  if (qword_1ED4D0C30 != -1)
  {
    swift_once();
  }

  result = sub_1AB15AA44(v3, qword_1ED4D3ED8);
  if ((result & 1) == 0)
  {
    sub_1AB1F60B4();
    swift_allocError();
    *v5 = v3;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

sqlite3_stmt *sub_1AB23624C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(v7) = a3;
  result = sub_1AB45F414();
  v11 = result;
  if (!result)
  {
LABEL_4:
    v12 = __OFSUB__(a2, a1);
    v13 = a2 - a1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      result = sub_1AB45F434();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (v11)
      {
        v7 = v14;
      }

      else
      {
        v7 = 0;
      }

      if (v7 >= 0xFFFFFFFF80000000)
      {
        if (v7 <= 0x7FFFFFFF)
        {
          result = *(a4 + 16);
          if (qword_1ED4D0998 == -1)
          {
            return sqlite3_bind_blob(result, a5, v11, v7, qword_1ED4D0988);
          }

LABEL_18:
          v15 = result;
          swift_once();
          result = v15;
          return sqlite3_bind_blob(result, a5, v11, v7, qword_1ED4D0988);
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  result = sub_1AB45F444();
  if (!__OFSUB__(a1, result))
  {
    v11 = (v11 + a1 - result);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_1AB236354(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v9 = *(a1 + 16);
      v10 = *(a1 + 24);
      goto LABEL_9;
    }

    memset(v16, 0, 14);
    a1 = *(a3 + 16);
    if (qword_1ED4D0998 == -1)
    {
LABEL_11:
      v7 = qword_1ED4D0988;
      v8 = a4;
      v6 = 0;
LABEL_12:
      v11 = sqlite3_bind_blob(a1, v8, v16, v6, v7);

      return v11;
    }

LABEL_15:
    v15 = a1;
    swift_once();
    a1 = v15;
    goto LABEL_11;
  }

  if (!v5)
  {
    v16[0] = a1;
    LOWORD(v16[1]) = a2;
    BYTE2(v16[1]) = BYTE2(a2);
    BYTE3(v16[1]) = BYTE3(a2);
    BYTE4(v16[1]) = BYTE4(a2);
    BYTE5(v16[1]) = BYTE5(a2);
    a1 = *(a3 + 16);
    v6 = BYTE6(a2);
    if (qword_1ED4D0998 != -1)
    {
      v13 = BYTE6(a2);
      v14 = *(a3 + 16);
      swift_once();
      v6 = v13;
      a1 = v14;
    }

    v7 = qword_1ED4D0988;
    v8 = a4;
    goto LABEL_12;
  }

  v9 = a1;
  v10 = a1 >> 32;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_9:
  v11 = sub_1AB23624C(v9, v10, a2, a3, a4);

  return v11;
}

uint64_t sub_1AB236554(uint64_t a1)
{
  sub_1AB068778();
  sub_1AB460A64();
  v2 = v1;
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AB2365CC(uint64_t a1)
{
  v3 = [*v2 objectAtIndexedSubscript_];
  sub_1AB461494();

  return swift_unknownObjectRelease();
}

uint64_t sub_1AB23664C(void *a1, uint64_t a2)
{
  v8[1] = a1;
  v7[2] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436ED8, &qword_1AB4D6B40);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
  v5 = sub_1AB236AC8(&qword_1EB438C38, MEMORY[0x1E69E6340]);
  return sub_1AB258C6C(sub_1AB236AA8, v7, v3, a2, v4, v5, MEMORY[0x1E69E7288], v8);
}

void sub_1AB236724(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1AB461354();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30[-1] - v11;
  v13 = *a1;
  sub_1AB0890D8(v13, v34);
  if (!v4)
  {
    v34[6] = 0;
    sub_1AB01EC0C(v34, v30);
    v14 = v31;
    if (v31)
    {
      v29 = v10;
      v15 = a3;
      v16 = a4;
      v17 = v32;
      __swift_project_boxed_opaque_existential_1Tm(v30, v31);
      v18 = *(v17 + 120);
      v19 = v17;
      a4 = v16;
      a3 = v15;
      v10 = v29;
      v18(v33, v14, v19);
      sub_1AB066D84(v34);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
    }

    else
    {
      sub_1AB066D84(v34);
      sub_1AB18977C(v30);
      memset(v33, 0, sizeof(v33));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437E60, &qword_1AB4D4730);
    v20 = swift_dynamicCast();
    v21 = *(*(a2 - 8) + 56);
    if (v20)
    {
      v22 = *(a2 - 8);
      v21(v12, 0, 1, a2);
      (*(v22 + 32))(a4, v12, a2);
      return;
    }

    v21(v12, 1, 1, a2);
    (*(v10 + 8))(v12, v9);
    v23 = v13;
    v24 = sub_1AB462314();
    v26 = v25;
    sub_1AB0C3EF0();
    v27 = swift_allocError();
    JSError.init(badValue:expected:)(v23, v24, v26, v28);
    swift_willThrow();
    v4 = v27;
  }

  *a3 = v4;
}

uint64_t sub_1AB2369D0()
{
  if (*v0 >> 62)
  {
    return sub_1AB4618F4();
  }

  else
  {
    return *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_1AB2369F8@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1AC59C990](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {
    result = *(v4 + 8 * result + 32);
LABEL_5:
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB236A64(uint64_t a1)
{
  result = sub_1AB236AC8(&qword_1EB438C30, MEMORY[0x1E69E6328]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AB236AC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB436ED8, &qword_1AB4D6B40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AB236B64(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v14 - v10;
  v12 = *(v2 + *(a2 + 36));
  (*(v5 + 24))(a1, v6, v5, v9);
  v12(v11);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

char *sub_1AB236C9C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v36 = a1;
  v39 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v31 - v5;
  v7 = sub_1AB461354();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v33 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  v18 = (*(v2 + 16))(v3, v2, v15);
  v19 = sub_1AB2B1080(0, v18 & ~(v18 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v20 = *(v10 + 16);
  v37 = v1;
  v20(v13, v1, v3);
  sub_1AB4607F4();
  v21 = v32;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = v17;
  v39 = v14;
  v35 = AssociatedConformanceWitness;
  sub_1AB4613F4();
  v34 = *(v21 + 48);
  if (v34(v9, 1, AssociatedTypeWitness) != 1)
  {
    v24 = *(v21 + 32);
    v25 = (v21 + 8);
    do
    {
      v24(v6, v9, AssociatedTypeWitness);
      (*(v37 + *(v36 + 36)))(v40, v6);
      v27 = *(v19 + 2);
      v26 = *(v19 + 3);
      if (v27 >= v26 >> 1)
      {
        v19 = sub_1AB2B1080((v26 > 1), v27 + 1, 1, v19);
      }

      (*v25)(v6, AssociatedTypeWitness);
      *(v19 + 2) = v27 + 1;
      v28 = &v19[40 * v27];
      v29 = v40[0];
      v30 = v40[1];
      *(v28 + 8) = v41;
      *(v28 + 2) = v29;
      *(v28 + 3) = v30;
      sub_1AB4613F4();
    }

    while (v34(v9, 1, AssociatedTypeWitness) != 1);
  }

  (*(v33 + 8))(v38, v39);
  return v19;
}

uint64_t sub_1AB2370B4(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v30 = a1;
  v31 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v24[0] = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  v32 = v6;
  v28 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v24 - v10;
  v12 = sub_1AB461354();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v24 - v13;
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v27 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = swift_getAssociatedTypeWitness();
  v25 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v18 = v24 - v17;
  v37 = sub_1AB4602B4();
  v19 = v34;
  v24[1] = (*(v7 + 16))(v8, v7);
  v29 = sub_1AB460A64();
  sub_1AB460984();
  (*(v33 + 2))(v27, v19, v8);
  sub_1AB4607F4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = v18;
  v28 = AssociatedConformanceWitness;
  sub_1AB4613F4();
  v21 = v26;
  v27 = *(v26 + 48);
  if ((v27)(v14, 1, AssociatedTypeWitness) == 1)
  {
LABEL_5:
    (*(v25 + 8))(v33, v35);
    return v37;
  }

  else
  {
    v26 = *(v21 + 32);
    v22 = (v21 + 8);
    while (1)
    {
      (v26)(v11, v14, AssociatedTypeWitness);
      (*(v34 + *(v32 + 36)))(v36, v11);
      v30(v36);
      if (v4)
      {
        break;
      }

      sub_1AB460A14();
      sub_1AB066D84(v36);
      (*v22)(v11, AssociatedTypeWitness);
      sub_1AB4613F4();
      if ((v27)(v14, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_5;
      }
    }

    sub_1AB066D84(v36);
    (*v22)(v11, AssociatedTypeWitness);
    (*(v25 + 8))(v33, v35);
  }
}

char *sub_1AB237574(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v41 = a2;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v42 = a3;
  v44 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v34 - v7;
  v9 = sub_1AB461354();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v12 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v5;
  v17 = swift_getAssociatedTypeWitness();
  v35 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - v19;
  (*(v12 + 16))(v15, v48, v16, v18);
  sub_1AB4607F4();
  v21 = v36;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = v20;
  v44 = v17;
  v39 = AssociatedConformanceWitness;
  sub_1AB4613F4();
  v38 = *(v21 + 48);
  if (v38(v11, 1, AssociatedTypeWitness) == 1)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_3:
    (*(v35 + 8))(v43, v44);
  }

  else
  {
    v25 = *(v21 + 32);
    v24 = v21 + 32;
    v37 = v25;
    v26 = (v24 - 24);
    v23 = MEMORY[0x1E69E7CC0];
    v36 = v24;
    v25(v8, v11, AssociatedTypeWitness);
    while (1)
    {
      (*(v48 + *(v42 + 36)))(v47, v8);
      v27 = v40(v47);
      if (v3)
      {
        break;
      }

      if (v27)
      {
        sub_1AB0B9254(v47, v45);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1AB2B1080(0, *(v23 + 2) + 1, 1, v23);
        }

        v29 = *(v23 + 2);
        v28 = *(v23 + 3);
        if (v29 >= v28 >> 1)
        {
          v23 = sub_1AB2B1080((v28 > 1), v29 + 1, 1, v23);
        }

        sub_1AB066D84(v47);
        (*v26)(v8, AssociatedTypeWitness);
        *(v23 + 2) = v29 + 1;
        v30 = &v23[40 * v29];
        v31 = v45[0];
        v32 = v45[1];
        *(v30 + 8) = v46;
        *(v30 + 2) = v31;
        *(v30 + 3) = v32;
      }

      else
      {
        sub_1AB066D84(v47);
        (*v26)(v8, AssociatedTypeWitness);
      }

      sub_1AB4613F4();
      if (v38(v11, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_3;
      }

      v37(v8, v11, AssociatedTypeWitness);
    }

    sub_1AB066D84(v47);
    (*v26)(v8, AssociatedTypeWitness);
    (*(v35 + 8))(v43, v44);
  }

  return v23;
}

uint64_t sub_1AB237A30@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v52 = a1;
  v47 = a2;
  v48 = a3;
  v41 = a5;
  v40 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v49 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v36 - v9;
  v11 = sub_1AB461354();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - v12;
  v14 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v39 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - v20;
  v22 = *(v40 + 16);
  v50 = a4;
  v22(v41, v52, a4, v19);
  (*(v14 + 16))(v17, v53, v8);
  sub_1AB4607F4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = v21;
  v52 = v18;
  v46 = AssociatedConformanceWitness;
  sub_1AB4613F4();
  v24 = v43;
  v25 = AssociatedTypeWitness;
  v44 = *(v43 + 48);
  v45 = v43 + 48;
  if (v44(v13, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v39 + 8))(v51, v52);
  }

  v27 = *(v24 + 32);
  v26 = v24 + 32;
  v28 = v41;
  v29 = (v26 - 24);
  v42 = v27;
  v43 = v40 + 8;
  v30 = (v40 + 32);
  v31 = v37;
  while (1)
  {
    v32 = v26;
    v42(v10, v13, v25);
    (*(v53 + *(v49 + 36)))(v54, v10);
    v33 = v55;
    v47(v28, v54);
    if (v33)
    {
      break;
    }

    v55 = 0;
    sub_1AB066D84(v54);
    (*v29)(v10, v25);
    v34 = v50;
    (*v43)(v28, v50);
    (*v30)(v28, v31, v34);
    sub_1AB4613F4();
    v26 = v32;
    if (v44(v13, 1, v25) == 1)
    {
      return (*(v39 + 8))(v51, v52);
    }
  }

  sub_1AB066D84(v54);
  (*v29)(v10, v25);
  (*(v39 + 8))(v51, v52);
  return (*v43)(v28, v50);
}

uint64_t sub_1AB237F28(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v31 = a3;
  v33 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v25 - v7;
  v9 = sub_1AB461354();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v26 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  (*(v12 + 16))(v15, v35, v5, v17);
  sub_1AB4607F4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = v19;
  v33 = v16;
  v21 = v25;
  v28 = AssociatedConformanceWitness;
  sub_1AB4613F4();
  v27 = *(v21 + 48);
  if (v27(v11, 1, AssociatedTypeWitness) != 1)
  {
    v22 = *(v21 + 32);
    v23 = (v21 + 8);
    while (1)
    {
      v22(v8, v11, AssociatedTypeWitness);
      (*(v35 + *(v31 + 36)))(v34, v8);
      v29(v34);
      if (v3)
      {
        break;
      }

      sub_1AB066D84(v34);
      (*v23)(v8, AssociatedTypeWitness);
      sub_1AB4613F4();
      if (v27(v11, 1, AssociatedTypeWitness) == 1)
      {
        return (*(v26 + 8))(v32, v33);
      }
    }

    sub_1AB066D84(v34);
    (*v23)(v8, AssociatedTypeWitness);
  }

  return (*(v26 + 8))(v32, v33);
}

BOOL sub_1AB2382E0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v32 = a3;
  v37 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v27 - v7;
  v9 = sub_1AB461354();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v29 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - v18;
  (*(v12 + 16))(v15, v34, v5, v17);
  v35 = v19;
  sub_1AB4607F4();
  v37 = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = (v28 + 48);
  v21 = (v28 + 32);
  v22 = (v28 + 8);
  do
  {
    sub_1AB4613F4();
    v23 = (*v20)(v11, 1, AssociatedTypeWitness);
    if (v23 == 1)
    {
      break;
    }

    (*v21)(v8, v11, AssociatedTypeWitness);
    (*(v34 + *(v32 + 36)))(v36, v8);
    v24 = v30(v36);
    if (v3)
    {
      sub_1AB066D84(v36);
      (*v22)(v8, AssociatedTypeWitness);
      break;
    }

    v25 = v24;
    sub_1AB066D84(v36);
    (*v22)(v8, AssociatedTypeWitness);
  }

  while ((v25 & 1) == 0);
  (*(v29 + 8))(v35, v37);
  return v23 != 1;
}

uint64_t sub_1AB238734(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1AB238870(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

char *sub_1AB238A28(char *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = (v2 << 6) | 0x18;
  v7 = 88;
  v16 = v2 >> 1;
  while (1)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v9 = *(v1 + 2);
    if (v3 >= v9)
    {
      break;
    }

    if (v5 >= v9)
    {
      goto LABEL_14;
    }

    v10 = *&v1[v7 - 32];
    v18 = *&v1[v7 - 40];
    v17 = *&v1[v7 - 24];
    v20 = *&v1[v7 - 56];
    v21 = *&v1[v7 - 8];
    v22 = v1[v7];
    v23 = v1[v7 - 16];
    v11 = *&v1[v6 - 48];
    v12 = *&v1[v6 - 32];
    v25 = *&v1[v6 - 40];
    v26 = *&v1[v6 - 56];
    v24 = *&v1[v6 - 24];
    v13 = v1[v6 - 16];
    v27 = *&v1[v6 - 8];
    v14 = v1[v6];
    v19 = *&v1[v7 - 48];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1AB3C4B48(v1);
    }

    v15 = &v1[v7];
    *(v15 - 7) = v26;
    *(v15 - 6) = v11;
    *(v15 - 5) = v25;
    *(v15 - 4) = v12;
    *(v15 - 3) = v24;
    *(v15 - 16) = v13;
    *(v15 - 3) = *&v29[3];
    *(v15 - 15) = *v29;
    *(v15 - 1) = v27;
    *v15 = v14;

    if (v5 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[v6];
    *(v8 - 7) = v20;
    *(v8 - 6) = v19;
    *(v8 - 5) = v18;
    *(v8 - 4) = v10;
    *(v8 - 3) = v17;
    *(v8 - 16) = v23;
    *(v8 - 3) = *&v28[3];
    *(v8 - 15) = *v28;
    *(v8 - 1) = v21;
    *v8 = v22;

    v4 = v16;
LABEL_5:
    ++v3;
    v7 += 64;
    --v5;
    v6 -= 64;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

double sub_1AB238C48@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[10];
  if (a1[12])
  {
    v5 = a1[11];
    v6 = a1[12];
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x726F727245;
  }

  v7 = *a1;
  v8 = a1[1];
  v9 = a1[6];
  v10 = a1[7];
  if (v3)
  {
    v28 = a1[6];
    v29 = *a1;
    v30 = a1[10];
    v31 = a1[1];
    v11 = *(v3 + 16);
    if (v11)
    {
      v12 = a1[9];
      v25 = v6;
      v26 = v5;
      v27 = a2;
      v38 = MEMORY[0x1E69E7CC0];

      sub_1AB177A20(0, v11, 0);
      v13 = v38;
      v14 = v12 + 48;
      do
      {
        if (*(v14 - 8))
        {
          v35 = *(v14 - 8);
          v36 = *(v14 - 16);
        }

        else
        {
          v35 = 0xE800000000000000;
          v36 = 0x296C61626F6C6728;
        }

        v15 = *(v14 + 8);
        v16 = *(v14 + 24);
        v33 = *(v14 + 16);
        v34 = *(v14 + 32);
        v17 = *(v14 + 40);
        if (v15)
        {
          v18 = *v14;
        }

        else
        {
          v18 = 0x296C61626F6C6728;
        }

        v19 = 0xE800000000000000;
        if (v15)
        {
          v19 = *(v14 + 8);
        }

        v32 = v19;
        v21 = *(v38 + 16);
        v20 = *(v38 + 24);

        if (v21 >= v20 >> 1)
        {
          sub_1AB177A20((v20 > 1), v21 + 1, 1);
        }

        *(v38 + 16) = v21 + 1;
        v22 = v38 + (v21 << 6);
        *(v22 + 32) = v36;
        *(v22 + 40) = v35;
        *(v22 + 48) = v18;
        *(v22 + 56) = v32;
        *(v22 + 64) = v33;
        *(v22 + 72) = v16;
        *(v22 + 76) = *&v37[3];
        *(v22 + 73) = *v37;
        *(v22 + 80) = v34;
        *(v22 + 88) = v17;
        v14 += 64;
        --v11;
      }

      while (v11);
      v5 = v26;
      a2 = v27;
      v6 = v25;
      v8 = v31;
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
    }

    v23 = sub_1AB238A28(v13);

    v9 = v28;
    v7 = v29;
  }

  else
  {

    v23 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  result = 4.82410885e228;
  *(a2 + 64) = xmmword_1AB4E0BD0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 514;
  *(a2 + 120) = v23;
  return result;
}

void sub_1AB238F00(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
  if (swift_dynamicCast())
  {
    v18[4] = v25;
    v18[5] = v26;
    v19 = v27;
    v18[0] = v21;
    v18[1] = v22;
    v18[2] = v23;
    v18[3] = v24;
    sub_1AB238C48(v18, &DynamicType);

    v5 = v39;
    v6 = v35;
    v7 = v36;
    v8 = v37;
    v9 = v38;
    v10 = v33;
    v11 = v34;
    v12 = v31;
    v13 = v32;
    v14 = DynamicType;
    v15 = v30;
  }

  else
  {
    swift_getErrorValue();
    DynamicType = swift_getDynamicType();
    v30 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438C40, &unk_1AB4E0BF0);
    v14 = sub_1AB4605E4();
    v15 = v16;
    swift_getErrorValue();
    v12 = sub_1AB462024();
    v13 = v17;

    v5 = 0;
    v6 = xmmword_1AB4E0BE0;
    v10 = 0uLL;
    v9 = 514;
    v11 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *(a2 + 96) = v8;
  *(a2 + 112) = v9;
  *(a2 + 120) = v5;
}

double sub_1AB239088@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  v3 = a1[4];
  v32[3] = a1[3];
  v33 = v3;
  v4 = a1[2];
  v32[1] = a1[1];
  v32[2] = v4;
  v32[0] = *a1;
  v5 = *(&v3 + 1);
  if (*(&v3 + 1))
  {
    v6 = *(*(&v33 + 1) + 16);
    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v31 = MEMORY[0x1E69E7CC0];
      sub_1AB177A20(0, v6, 0);
      v7 = v31;
      v8 = v5 + 48;
      do
      {
        if (*(v8 - 8))
        {
          v28 = *(v8 - 8);
          v29 = *(v8 - 16);
        }

        else
        {
          v28 = 0xE800000000000000;
          v29 = 0x296C61626F6C6728;
        }

        v9 = *v8;
        v10 = *(v8 + 8);
        v11 = *(v8 + 24);
        v26 = *(v8 + 16);
        v27 = *(v8 + 32);
        v12 = *(v8 + 40);
        if (!v10)
        {
          v9 = 0x296C61626F6C6728;
        }

        v25 = v9;
        if (v10)
        {
          v13 = *(v8 + 8);
        }

        else
        {
          v13 = 0xE800000000000000;
        }

        v14 = *(v31 + 16);
        v15 = *(v31 + 24);

        if (v14 >= v15 >> 1)
        {
          sub_1AB177A20((v15 > 1), v14 + 1, 1);
        }

        *(v31 + 16) = v14 + 1;
        v16 = v31 + (v14 << 6);
        *(v16 + 32) = v29;
        *(v16 + 40) = v28;
        *(v16 + 48) = v25;
        *(v16 + 56) = v13;
        *(v16 + 64) = v26;
        *(v16 + 72) = v11;
        *(v16 + 76) = *&v30[3];
        *(v16 + 73) = *v30;
        *(v16 + 80) = v27;
        *(v16 + 88) = v12;
        v8 += 64;
        --v6;
      }

      while (v6);
      v2 = a2;
    }

    v17 = sub_1AB238A28(v7);
  }

  else
  {
    v17 = 0;
  }

  if (LOBYTE(v32[0]))
  {
    v18 = 0x20676E697373696DLL;
  }

  else
  {
    v18 = 0x6570797420646162;
  }

  if (LOBYTE(v32[0]))
  {
    v19 = 0xED000065756C6176;
  }

  else
  {
    v19 = 0xE800000000000000;
  }

  v20 = JSIncident.problemSummary.getter();
  v22 = v21;
  sub_1AB2392F0(v32);
  *v2 = v18;
  *(v2 + 8) = v19;
  *(v2 + 16) = v20;
  *(v2 + 24) = v22;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0xD000000000000012;
  *(v2 + 72) = 0x80000001AB505240;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 514;
  *(v2 + 120) = v17;
  return result;
}

uint64_t sub_1AB239354(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = type metadata accessor for StatePath(319, AssociatedTypeWitness, v2, v3);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AB239400(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
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

void sub_1AB239584(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_47:
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
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
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
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_1AB2397EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = *a1;
  v8 = type metadata accessor for StateStoreHandle(0, a3, a4, a4);
  v9 = *(*(a3 - 8) + 32);
  v10 = a5 + *(v8 + 36);

  return v9(v10, a2, a3);
}

uint64_t sub_1AB239878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *v3;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(v6 + 32);

  v8(&v10, a2, a3, v7, v6);
}

uint64_t sub_1AB239924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[2] = a1;
  return StateStore.performTransaction<A>(_:)(sub_1AB05231C, v4, *(a3 + 16), MEMORY[0x1E69E7CA8] + 8, *(a3 + 24));
}

uint64_t sub_1AB239984(uint64_t a1, uint64_t a2)
{
  v8 = *v2;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = *(v4 + 40);

  v6(&v8, a1, v5, v4);
}

uint64_t sub_1AB239A44@<X0>(void (*a1)(void *__return_ptr, double)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v8 = sub_1AB461354();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v43[-v11 - 8];
  a1(v50, v10);
  sub_1AB01494C(v50, &v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437200, &qword_1AB4D7740);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v13 = *(a2 - 8);
    (*(v13 + 56))(v12, 0, 1, a2);
    return (*(v13 + 32))(a4, v12, a2);
  }

  else
  {
    (*(*(a2 - 8) + 56))(v12, 1, 1, a2);
    (*(v9 + 8))(v12, v8);
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v15 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1AB4D47F0;
    v46 = sub_1AB0168A8(0, 16, 0, MEMORY[0x1E69E7CC0]);
    v17._countAndFlagsBits = 0x206574617453;
    v17._object = 0xE600000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    __swift_project_boxed_opaque_existential_1Tm(v50, v50[3]);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v44[0] = DynamicType;
    sub_1AB01522C(v44, v43);
    v47 = 0u;
    v48 = 0u;
    sub_1AB0169C4(v43, &v47);
    v49 = 0;
    v19 = v46;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
    }

    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    if (v21 >= v20 >> 1)
    {
      v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
    }

    *(v19 + 2) = v21 + 1;
    v22 = &v19[40 * v21];
    v23 = v47;
    v24 = v48;
    v22[64] = v49;
    *(v22 + 2) = v23;
    *(v22 + 3) = v24;
    v46 = v19;
    sub_1AB0167A8(v44);
    v25._countAndFlagsBits = 0x6F6E2073656F6420;
    v25._object = 0xE900000000000074;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    *(v16 + 32) = v46;
    v46 = sub_1AB0168A8(0, 20, 0, MEMORY[0x1E69E7CC0]);
    v26._object = 0x80000001AB505260;
    v26._countAndFlagsBits = 0xD000000000000013;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    MetatypeMetadata = swift_getMetatypeMetadata();
    v44[0] = a2;
    sub_1AB01522C(v44, v43);
    v47 = 0u;
    v48 = 0u;
    sub_1AB0169C4(v43, &v47);
    v49 = 0;
    v27 = v46;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[40 * v29];
    v31 = v47;
    v32 = v48;
    v30[64] = v49;
    *(v30 + 2) = v31;
    *(v30 + 3) = v32;
    v46 = v27;
    sub_1AB0167A8(v44);
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v33);
    *(v16 + 40) = v46;
    v34 = sub_1AB461094();
    if (os_log_type_enabled(v15, v34))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v35 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v35[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v35 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v37 = swift_allocObject();
      *(v37 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v47 = v16;
      *(&v47 + 1) = sub_1AB01A8D8;
      *&v48 = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
      sub_1AB016A34();
      v38 = sub_1AB460484();
      v40 = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1AB4D4720;
      *(v41 + 56) = MEMORY[0x1E69E6158];
      *(v41 + 64) = sub_1AB016854();
      *(v41 + 32) = v38;
      *(v41 + 40) = v40;
      sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v15, v34, v41);
    }

    (*(a3 + 24))(a2, a3);
    return __swift_destroy_boxed_opaque_existential_1Tm(v50);
  }
}

uint64_t sub_1AB23A0D8()
{
  v0 = sub_1AB45F9E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB45F9D4();
  v4 = sub_1AB45F9C4();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_1EB46C220 = v4;
  *algn_1EB46C228 = v6;
  return result;
}

uint64_t sub_1AB23A1B8()
{
  v1 = v0;
  v85[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1AB45F764();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v69 - v7;
  if (*(v0 + OBJC_IVAR____TtC9JetEngine33JetPackResourceBundleDiskLocation_automaticallyCleanUp))
  {
    v72 = v5;
    if (qword_1ED4D1D90 != -1)
    {
      swift_once();
    }

    v9 = qword_1ED4D1D98;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v10 = swift_allocObject();
    v79 = xmmword_1AB4D4720;
    *(v10 + 16) = xmmword_1AB4D4720;
    v80 = sub_1AB0168A8(0, 23, 0, MEMORY[0x1E69E7CC0]);
    v11._object = 0x80000001AB5052E0;
    v11._countAndFlagsBits = 0xD000000000000016;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    v12 = *(v3 + 16);
    v78 = v0;
    v71 = OBJC_IVAR____TtC9JetEngine33JetPackResourceBundleDiskLocation_url;
    v75 = v3 + 16;
    v74 = v12;
    v12(v8, v0 + OBJC_IVAR____TtC9JetEngine33JetPackResourceBundleDiskLocation_url, v2);
    v13 = sub_1AB45F6F4();
    v15 = v14;
    v17 = *(v3 + 8);
    v16 = v3 + 8;
    v77 = v17;
    v17(v8, v2);
    v18 = MEMORY[0x1E69E6158];
    v85[3] = MEMORY[0x1E69E6158];
    v85[0] = v13;
    v85[1] = v15;
    sub_1AB01522C(v85, v81);
    v82 = 0u;
    v83 = 0u;
    sub_1AB0169C4(v81, &v82);
    v84 = 0;
    v19 = v80;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
    }

    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    if (v21 >= v20 >> 1)
    {
      v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
    }

    v73 = v16 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    *(v19 + 2) = v21 + 1;
    v22 = &v19[40 * v21];
    v23 = v82;
    v24 = v83;
    v22[64] = v84;
    *(v22 + 2) = v23;
    *(v22 + 3) = v24;
    v80 = v19;
    sub_1AB0167A8(v85);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    *(v10 + 32) = v80;
    v26 = sub_1AB461094();
    v27 = os_log_type_enabled(v9, v26);
    v76 = v2;
    v70 = v9;
    if (v27)
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v28 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v28[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v28 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v30 = swift_allocObject();
      *(v30 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v82 = v10;
      *(&v82 + 1) = sub_1AB0223E4;
      *&v83 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
      sub_1AB016A34();
      v31 = sub_1AB460484();
      v33 = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
      v34 = swift_allocObject();
      *(v34 + 16) = v79;
      *(v34 + 56) = v18;
      *(v34 + 64) = sub_1AB016854();
      *(v34 + 32) = v31;
      *(v34 + 40) = v33;
      sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v9, v26, v34);
    }

    v35 = v78;
    v36 = v74;
    v37 = v71;
    v38 = objc_opt_self();
    v39 = [v38 defaultManager];
    v40 = v72;
    v41 = v76;
    v36(v72, v35 + v37, v76);
    v42 = v37;
    sub_1AB45F6F4();
    v43 = v35;
    v44 = v77;
    v77(v40, v41);
    v45 = sub_1AB460514();

    v46 = [v39 fileExistsAtPath_];

    if (v46)
    {
      v47 = [v38 defaultManager];
      v1 = v43;
      v74(v40, v43 + v42, v41);
      sub_1AB45F6F4();
      v44(v40, v41);
      v48 = sub_1AB460514();

      *&v82 = 0;
      v49 = [v47 removeItemAtPath:v48 error:&v82];

      if (v49)
      {
        v50 = v82;
      }

      else
      {
        v66 = v82;
        v67 = sub_1AB45F594();

        swift_willThrow();
      }

      goto LABEL_26;
    }

    v52 = swift_allocObject();
    *(v52 + 16) = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
    v53 = swift_allocObject();
    *(v53 + 16) = v79;
    v54 = MEMORY[0x1E69E6158];
    *(&v83 + 1) = MEMORY[0x1E69E6158];
    *&v82 = 0xD000000000000025;
    *(&v82 + 1) = 0x80000001AB505300;
    *(v53 + 48) = 0u;
    *(v53 + 32) = 0u;
    sub_1AB0169C4(&v82, v53 + 32);
    *(v53 + 64) = 0;
    *(v52 + 32) = v53;
    v55 = sub_1AB461094();
    if (!os_log_type_enabled(v70, v55))
    {

      v44 = v77;
      v1 = v78;
      v41 = v76;
LABEL_26:
      (v44)(v1 + OBJC_IVAR____TtC9JetEngine33JetPackResourceBundleDiskLocation_url, v41, v51);
      return v1;
    }

    v56 = v54;
    v1 = v78;
    v57 = v76;
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v58 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    v59 = LOBYTE(v58[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v58 + 5);
    if (v59 == 2)
    {
      LOBYTE(v59) = os_variant_has_internal_content();
    }

    v60 = swift_allocObject();
    *(v60 + 16) = (v59 & 1) == 0;
    *&v82 = v52;
    *(&v82 + 1) = sub_1AB01A8D8;
    *&v83 = v60;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
    sub_1AB016A34();
    v61 = sub_1AB460484();
    v63 = v62;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
    v64 = swift_allocObject();
    *(v64 + 16) = v79;
    *(v64 + 56) = v56;
    *(v64 + 64) = sub_1AB016854();
    *(v64 + 32) = v61;
    *(v64 + 40) = v63;
    sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v70, v55, v64);

    (v77)(v1 + OBJC_IVAR____TtC9JetEngine33JetPackResourceBundleDiskLocation_url, v57, v65);
  }

  else
  {
    (*(v3 + 8))(v0 + OBJC_IVAR____TtC9JetEngine33JetPackResourceBundleDiskLocation_url, v2, v6);
  }

  return v1;
}

uint64_t sub_1AB23AABC()
{
  sub_1AB23A1B8();

  return swift_deallocClassInstance();
}

uint64_t sub_1AB23AB28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AB23AB98(uint64_t a1)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438C60, &qword_1AB4E0D68);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v50 - v2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438C68, &qword_1AB4E0D70);
  MEMORY[0x1EEE9AC00](v58);
  v57 = (&v50 - v3);
  v71 = sub_1AB45FF04();
  v65 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438C70, &qword_1AB4E0D78);
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v50 - v10;
  v67 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438C78, &unk_1AB4E0D80);
    v11 = sub_1AB461924();
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC8];
  }

  v12 = v67 + 64;
  v13 = 1 << *(v67 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v67 + 64);
  v16 = (v13 + 63) >> 6;
  v62 = v65 + 16;
  v66 = (v65 + 32);
  v51 = v11 + 8;
  v52 = (v65 + 40);

  v18 = 0;
  v19 = v64;
  v53 = v16;
  v55 = v7;
  v61 = v11;
  v54 = v12;
  while (1)
  {
    if (!v15)
    {
      while (1)
      {
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v21 >= v16)
        {

          return v11;
        }

        v15 = *(v12 + 8 * v21);
        ++v18;
        if (v15)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v21 = v18;
LABEL_14:
    v22 = __clz(__rbit64(v15)) | (v21 << 6);
    v23 = v67;
    v24 = v63;
    sub_1AB02B4BC(*(v67 + 48) + 40 * v22, v63);
    v25 = *(v23 + 56);
    v69 = *(v65 + 72);
    v26 = v25 + v69 * v22;
    v27 = *(v65 + 16);
    v27(v24 + *(v7 + 48), v26, v71);
    sub_1AB017FB8(v24, v19, &qword_1EB438C70, &qword_1AB4E0D78);
    sub_1AB02B4BC(v19, v74);
    if (!swift_dynamicCast())
    {
      break;
    }

    v15 &= v15 - 1;
    v28 = *(v7 + 48);
    v29 = v73;
    v68 = v72;
    v30 = v59;
    v31 = *(v60 + 48);
    v32 = v71;
    v27(&v59[v31], v19 + v28, v71);
    sub_1AB014AC0(v19, &qword_1EB438C70, &qword_1AB4E0D78);
    v33 = v58;
    v34 = *(v58 + 48);
    v35 = v57;
    *v57 = v68;
    v35[1] = v29;
    v36 = *v66;
    (*v66)(v35 + v34, &v30[v31], v32);
    v37 = *(v33 + 48);
    v38 = v70;
    v39 = *v35;
    v40 = v35[1];
    v41 = v56;
    v36(v56, v35 + v37, v32);
    v42 = v32;
    v43 = v40;
    v36(v38, v41, v42);
    v11 = v61;
    result = sub_1AB014DB4(v39, v40);
    v44 = result;
    if (v45)
    {
      v20 = (v11[6] + 16 * result);
      *v20 = v39;
      v20[1] = v43;

      result = (*v52)(v11[7] + v44 * v69, v70, v71);
    }

    else
    {
      if (v11[2] >= v11[3])
      {
        goto LABEL_23;
      }

      *(v51 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v46 = (v11[6] + 16 * result);
      *v46 = v39;
      v46[1] = v43;
      result = (v36)(v11[7] + result * v69, v70, v71);
      v47 = v11[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_24;
      }

      v11[2] = v49;
    }

    v18 = v21;
    v7 = v55;
    v19 = v64;
    v12 = v54;
    v16 = v53;
  }

  sub_1AB014AC0(v19, &qword_1EB438C70, &qword_1AB4E0D78);

  return 0;
}

uint64_t sub_1AB23B17C()
{
  result = sub_1AB069E84(&unk_1F1FF3B38);
  qword_1EB46C2B0 = result;
  *algn_1EB46C2B8 = v1;
  return result;
}

uint64_t sub_1AB23B1A8(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(v1 + 56))
  {
    sub_1AB23B534();
    swift_allocError();
    return swift_willThrow();
  }

  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 16), v5);
  if (qword_1EB4356F0 != -1)
  {
    swift_once();
  }

  result = (*(v6 + 8))(qword_1EB46C2B0, *algn_1EB46C2B8, v5, v6);
  if (!v2)
  {
    v27 = 0;
    v7 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v1 + 16), *(v1 + 40));
    v8 = sub_1AB05AF50(&v27, 1uLL);
    v10 = v9;
    (*(v7 + 8))();
    sub_1AB017254(v8, v10);
    v11 = *(a1 + 16);
    v28[0] = *a1;
    v28[1] = v11;
    v28[2] = *(a1 + 32);
    v29 = *(a1 + 48);
    v12 = sub_1AB23BE74(v28);
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        goto LABEL_18;
      }

      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      v20 = __OFSUB__(v18, v19);
      v17 = v18 - v19;
      if (!v20)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v14)
    {
      v15 = v12;
      v16 = v13;
      LODWORD(v17) = BYTE6(v13);
LABEL_19:
      LODWORD(v28[0]) = v17;
      v21 = *(v1 + 48);
      __swift_project_boxed_opaque_existential_1Tm((v1 + 16), *(v1 + 40));
      v22 = sub_1AB05AF50(v28, 4uLL);
      v24 = v23;
      (*(v21 + 8))();
      sub_1AB017254(v22, v24);
      v25 = *(v1 + 40);
      v26 = *(v1 + 48);
      __swift_project_boxed_opaque_existential_1Tm((v1 + 16), v25);
      (*(v26 + 8))(v15, v16, v25, v26);
      result = sub_1AB017254(v15, v16);
      *(v1 + 56) = 1;
      return result;
    }

    LODWORD(v17) = HIDWORD(v12) - v12;
    if (__OFSUB__(HIDWORD(v12), v12))
    {
      goto LABEL_22;
    }

    v17 = v17;
LABEL_15:
    if ((v17 & 0x8000000000000000) == 0)
    {
      v15 = v12;
      v16 = v13;
      if (!HIDWORD(v17))
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_18:
      v15 = v12;
      v16 = v13;
      LODWORD(v17) = 0;
      goto LABEL_19;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

unint64_t sub_1AB23B4E0()
{
  result = qword_1EB438C80;
  if (!qword_1EB438C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438C80);
  }

  return result;
}

unint64_t sub_1AB23B534()
{
  result = qword_1EB438C88;
  if (!qword_1EB438C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438C88);
  }

  return result;
}

uint64_t sub_1AB23B588(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_1AB45F804();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1AB23B6C0(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1AB23B6C0(v4, v5);
  }

  return sub_1AB45F804();
}

uint64_t sub_1AB23B6C0(uint64_t a1, uint64_t a2)
{
  result = sub_1AB45F414();
  if (!result || (result = sub_1AB45F444(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1AB45F434();
      return sub_1AB45F804();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB23B754(uint64_t a1, uint64_t a2)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v3 = sub_1AB4605C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    LOWORD(__src[0]) = 0;
    return sub_1AB0683DC(__src, __src + 2);
  }

  sub_1AB460594();
  v7 = sub_1AB460554();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  if (v9 >> 60 == 15)
  {
    sub_1AB31D6E0(0xD000000000000027, 0x80000001AB505450);
    sub_1AB23B534();
    swift_allocError();
    return swift_willThrow();
  }

  v11 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_19;
    }

    v14 = *(v7 + 16);
    v13 = *(v7 + 24);
    v15 = __OFSUB__(v13, v14);
    v16 = v13 - v14;
    if (!v15)
    {
LABEL_14:
      if (v16 > 65534)
      {
        sub_1AB31D6E0(0xD000000000000024, 0x80000001AB505480);
        sub_1AB23B534();
        swift_allocError();
        swift_willThrow();
        return sub_1AB03BD58(v7, v9);
      }

      if (v11 != 2)
      {
        LODWORD(v12) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_29;
        }

        v12 = v12;
        goto LABEL_23;
      }

      v18 = *(v7 + 16);
      v17 = *(v7 + 24);
      v15 = __OFSUB__(v17, v18);
      v12 = v17 - v18;
      if (!v15)
      {
LABEL_23:
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (!(v12 >> 16))
        {
          goto LABEL_25;
        }

        __break(1u);
        goto LABEL_28;
      }

      __break(1u);
LABEL_19:
      LOWORD(v12) = 0;
      goto LABEL_25;
    }

    __break(1u);
LABEL_12:
    LODWORD(v16) = HIDWORD(v7) - v7;
    if (__OFSUB__(HIDWORD(v7), v7))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    v16 = v16;
    goto LABEL_14;
  }

  if (v11)
  {
    goto LABEL_12;
  }

  LOWORD(v12) = BYTE6(v9);
LABEL_25:
  v26 = v12;
  v19 = sub_1AB05AF50(&v26, 2uLL);
  v21 = v20;
  v28[0] = v19;
  v28[1] = v20;
  __src[3] = MEMORY[0x1E6969080];
  __src[4] = MEMORY[0x1E6969078];
  __src[0] = v7;
  __src[1] = v9;
  v22 = __swift_project_boxed_opaque_existential_1Tm(__src, MEMORY[0x1E6969080]);
  v23 = *v22;
  v24 = v22[1];
  sub_1AB017200(v19, v21);
  sub_1AB23B588(v23, v24, v28);
  sub_1AB017254(v19, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(__src);
  return v28[0];
}

uint64_t sub_1AB23BA58(__int16 a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  LOBYTE(__src[0]) = (a1 & 0x100) == 0;
  v3 = sub_1AB0683DC(__src, __src + 1);
  if ((a1 & 0x100) != 0)
  {
    goto LABEL_4;
  }

  v4 = a1 + 1;
  if (((a1 + 1) & 0x100) != 0)
  {
    __break(1u);
LABEL_4:
    v4 = 0;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFFLL;
  LOBYTE(__src[0]) = v4;
  v6 = sub_1AB0683DC(__src, __src + 1);
  v11[0] = v3;
  v11[1] = v5;
  __src[3] = MEMORY[0x1E6969080];
  __src[4] = MEMORY[0x1E6969078];
  __src[0] = v6;
  __src[1] = v7 & 0xFFFFFFFFFFFFFFLL;
  v8 = __swift_project_boxed_opaque_existential_1Tm(__src, MEMORY[0x1E6969080]);
  sub_1AB23B588(*v8, v8[1], v11);
  __swift_destroy_boxed_opaque_existential_1Tm(__src);
  return v11[0];
}

uint64_t sub_1AB23BB48(uint64_t a1, unint64_t a2)
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (a2 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  if (a2 >> 60 == 15)
  {
    v3 = 0xC000000000000000;
  }

  else
  {
    v3 = a2;
  }

  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_21;
    }

    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
LABEL_16:
      if (v9 > 65534)
      {
        sub_1AB1B9C40(a1, a2);
        sub_1AB31D6E0(0xD000000000000022, 0x80000001AB505420);
        sub_1AB23B534();
        swift_allocError();
        swift_willThrow();
        return sub_1AB017254(v2, v3);
      }

      if (v4 != 2)
      {
        LODWORD(v5) = HIDWORD(v2) - v2;
        if (__OFSUB__(HIDWORD(v2), v2))
        {
          goto LABEL_31;
        }

        v5 = v5;
        goto LABEL_25;
      }

      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      v8 = __OFSUB__(v10, v11);
      v5 = v10 - v11;
      if (!v8)
      {
LABEL_25:
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (!(v5 >> 16))
        {
          goto LABEL_27;
        }

        __break(1u);
        goto LABEL_30;
      }

      __break(1u);
LABEL_21:
      LOWORD(v5) = 0;
      goto LABEL_27;
    }

    __break(1u);
LABEL_14:
    LODWORD(v9) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    v9 = v9;
    goto LABEL_16;
  }

  if (v4)
  {
    goto LABEL_14;
  }

  LOWORD(v5) = BYTE6(v3);
LABEL_27:
  v19 = v5;
  sub_1AB1B9C40(a1, a2);
  v13 = sub_1AB05AF50(&v19, 2uLL);
  v15 = v14;
  v21[0] = v13;
  v21[1] = v14;
  v20[3] = MEMORY[0x1E6969080];
  v20[4] = MEMORY[0x1E6969078];
  v20[0] = v2;
  v20[1] = v3;
  v16 = __swift_project_boxed_opaque_existential_1Tm(v20, MEMORY[0x1E6969080]);
  v17 = *v16;
  v18 = v16[1];
  sub_1AB017200(v13, v15);
  sub_1AB23B588(v17, v18, v21);
  sub_1AB017254(v13, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return v21[0];
}

uint64_t sub_1AB23BD34(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (v4 >> 60 == 15)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v6 = a1[1];
  }

  if (v4 >> 60 == 15)
  {
    v7 = 0xF000000000000000;
  }

  else
  {
    v7 = a1[2];
  }

  v8 = sub_1AB23BA58(v5 | ((v4 >> 60 == 15) << 8));
  v10 = v9;
  sub_1AB16DFC0(v2, v3, v4);
  v11 = sub_1AB23BB48(v6, v7);
  if (v1)
  {
    sub_1AB23C170(v2, v3, v4);
    return sub_1AB017254(v8, v10);
  }

  else
  {
    v14 = v11;
    v15 = v12;
    sub_1AB23C170(v2, v3, v4);
    v20[0] = v8;
    v20[1] = v10;
    v19[3] = MEMORY[0x1E6969080];
    v19[4] = MEMORY[0x1E6969078];
    v19[0] = v14;
    v19[1] = v15;
    v16 = __swift_project_boxed_opaque_existential_1Tm(v19, MEMORY[0x1E6969080]);
    v17 = *v16;
    v18 = v16[1];
    sub_1AB017200(v8, v10);
    sub_1AB23B588(v17, v18, v20);
    sub_1AB017254(v8, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    return v20[0];
  }
}

uint64_t sub_1AB23BE74(unsigned __int8 *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v33 = *(a1 + 12);
  v35 = *(a1 + 5);
  v36 = *(a1 + 4);
  v34 = *(a1 + 6);
  type metadata accessor for DataOutputStream();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4DA6A0;
  v9 = inited + 16;
  v10 = sub_1AB23BA58(v1 | (v2 << 8));
  v12 = v11;
  swift_beginAccess();
  sub_1AB45F874();
  swift_endAccess();
  sub_1AB017254(v10, v12);
  v13 = sub_1AB23BA58(v3 | (v4 << 8));
  v15 = v14;
  swift_beginAccess();
  sub_1AB45F874();
  swift_endAccess();
  sub_1AB017254(v13, v15);
  v16 = sub_1AB23BA58(v5);
  v18 = v17;
  swift_beginAccess();
  sub_1AB45F874();
  swift_endAccess();
  sub_1AB017254(v16, v18);
  v19 = sub_1AB23B754(v6, v7);
  if (v37)
  {
  }

  else
  {
    v21 = v20;
    v22 = v19;
    swift_beginAccess();
    sub_1AB45F874();
    swift_endAccess();
    sub_1AB017254(v22, v21);
    v38 = v33;
    v23 = sub_1AB05AF50(&v38, 2uLL);
    v25 = v24;
    swift_beginAccess();
    sub_1AB45F874();
    swift_endAccess();
    sub_1AB017254(v23, v25);
    v39 = v36;
    v40 = v35;
    v41 = v34;
    sub_1AB16DFC0(v36, v35, v34);
    v27 = sub_1AB23BD34(&v39);
    v29 = v28;
    sub_1AB23C170(v39, v40, v41);
    swift_beginAccess();
    sub_1AB45F874();
    swift_endAccess();
    sub_1AB017254(v27, v29);
    v9 = *(inited + 16);
    v30 = *(inited + 24);
    swift_setDeallocating();
    v32 = *(inited + 16);
    v31 = *(inited + 24);
    sub_1AB017200(v9, v30);
    sub_1AB017254(v32, v31);
  }

  return v9;
}

uint64_t sub_1AB23C170(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_1AB017254(a2, a3);
  }

  return result;
}

unint64_t sub_1AB23C1A0()
{
  result = qword_1EB438C90;
  if (!qword_1EB438C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438C90);
  }

  return result;
}

uint64_t AllowedFieldsTreatmentFilter.Definition.eventType.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

JetEngine::AllowedFieldsTreatmentFilter::Definition __swiftcall AllowedFieldsTreatmentFilter.Definition.init(eventType:fieldNames:)(JetEngine::MetricsEventType eventType, Swift::OpaquePointer fieldNames)
{
  v3 = *(eventType.rawValue._countAndFlagsBits + 8);
  *v2 = *eventType.rawValue._countAndFlagsBits;
  v2[1] = v3;
  v2[2] = eventType.rawValue._object;
  result.eventType = eventType;
  result.fieldNames = fieldNames;
  return result;
}

JetEngine::AllowedFieldsTreatmentFilter __swiftcall AllowedFieldsTreatmentFilter.init(_:)(JetEngine::AllowedFieldsTreatmentFilter result)
{
  *v1 = *result.allowed.eventType.rawValue._countAndFlagsBits;
  *(v1 + 8) = *(result.allowed.eventType.rawValue._countAndFlagsBits + 8);
  return result;
}

JetEngine::LintedMetricsEvent __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AllowedFieldsTreatmentFilter.treat(_:on:)(JetEngine::LintedMetricsEvent _, Swift::String_optional on)
{
  v4 = v2;
  v6 = *_.fields._rawValue;
  v5 = *(_.fields._rawValue + 1);
  if (!*(*_.fields._rawValue + 16))
  {
    goto LABEL_27;
  }

  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065);
  if ((v11 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1AB0165C4(*(v6 + 56) + 32 * v10, &v46);
  v12 = MEMORY[0x1E69E6158];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v42 = v9;
  v43 = v4;
  if (v45[0] != __PAIR128__(v8, v7) && (sub_1AB461DA4() & 1) == 0)
  {

LABEL_27:
    *v4 = v6;
    v4[1] = v5;

LABEL_28:

    goto LABEL_33;
  }

  v41 = v5;
  v47 = v12;
  v46 = v45[0];
  sub_1AB014B78(&v46, v45);
  v13 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v13;
  sub_1AB01AE18(v45, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v15 = v48;
  v44 = *(v9 + 16);
  if (!v44)
  {
    v18 = v43;
LABEL_25:
    *v18 = v15;
    v18[1] = v41;
    goto LABEL_28;
  }

  v16 = 0;
  v17 = (v9 + 40);
  v18 = v43;
  while (v16 < *(v9 + 16))
  {
    if (*(v6 + 16))
    {
      v20 = *(v17 - 1);
      v19 = *v17;

      v21 = sub_1AB014DB4(v20, v19);
      if (v22)
      {
        sub_1AB0165C4(*(v6 + 56) + 32 * v21, v45);
        sub_1AB014B78(v45, &v46);
        sub_1AB0165C4(&v46, v45);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v48 = v15;
        v24 = sub_1AB014DB4(v20, v19);
        v26 = v15[2];
        v27 = (v25 & 1) == 0;
        v28 = __OFADD__(v26, v27);
        v29 = v26 + v27;
        if (v28)
        {
          goto LABEL_30;
        }

        v30 = v25;
        if (v15[3] >= v29)
        {
          if (v23)
          {
            goto LABEL_18;
          }

          v34 = v24;
          sub_1AB0676CC();
          v24 = v34;
          if ((v30 & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_19:
          v32 = v24;

          v15 = v48;
          v33 = (v48[7] + 32 * v32);
          __swift_destroy_boxed_opaque_existential_1Tm(v33);
          sub_1AB014B78(v45, v33);
          __swift_destroy_boxed_opaque_existential_1Tm(&v46);
        }

        else
        {
          sub_1AB01AF68(v29, v23);
          v24 = sub_1AB014DB4(v20, v19);
          if ((v30 & 1) != (v31 & 1))
          {
            goto LABEL_32;
          }

LABEL_18:
          if (v30)
          {
            goto LABEL_19;
          }

LABEL_21:
          v15 = v48;
          v48[(v24 >> 6) + 8] |= 1 << v24;
          v35 = (v15[6] + 16 * v24);
          *v35 = v20;
          v35[1] = v19;
          sub_1AB014B78(v45, (v15[7] + 32 * v24));
          __swift_destroy_boxed_opaque_existential_1Tm(&v46);
          v36 = v15[2];
          v28 = __OFADD__(v36, 1);
          v37 = v36 + 1;
          if (v28)
          {
            goto LABEL_31;
          }

          v15[2] = v37;
        }

        v9 = v42;
        v18 = v43;
        goto LABEL_9;
      }
    }

LABEL_9:
    ++v16;
    v17 += 2;
    if (v44 == v16)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  v38 = sub_1AB461FC4();
  __break(1u);
LABEL_33:
  result.issues._rawValue = v39;
  result.fields._rawValue = v38;
  return result;
}

double sub_1AB23C5B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0, &qword_1AB4D8DD0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  if (*(v0 + 120))
  {

    sub_1AB460CA4();
  }

  v4 = sub_1AB460BE4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v6 = sub_1AB23DF70(&qword_1EB438C98, v5, type metadata accessor for StandardIntentReplayStorage, &unk_1AB4E0FDC);
  v7 = swift_allocObject();
  v7[2] = v0;
  v7[3] = v6;
  v7[4] = v0;
  swift_retain_n();
  *(v0 + 120) = sub_1AB2313A4(0, 0, v3, &unk_1AB4E1040, v7);

  return result;
}

uint64_t sub_1AB23C740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a4;
  v6 = sub_1AB45F0F4();
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v7 = sub_1AB45F604();
  v4[28] = v7;
  v4[29] = *(v7 - 8);
  v4[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  v4[31] = swift_task_alloc();
  v8 = sub_1AB45F764();
  v4[32] = v8;
  v4[33] = *(v8 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v9 = sub_1AB4617E4();
  v4[36] = v9;
  v4[37] = *(v9 - 8);
  v4[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB23C95C, a4, 0);
}

uint64_t sub_1AB23C95C()
{
  sub_1AB461FF4();
  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  *v1 = v0;
  v1[1] = sub_1AB23CA2C;

  return sub_1AB23D90C(500000000000000, 0, 0, 0, 1);
}

uint64_t sub_1AB23CA2C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = v2[38];
  v4 = v2[37];
  v5 = v2[36];
  v6 = v2[24];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_1AB23D1BC;
  }

  else
  {
    v7 = sub_1AB23CBA8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1AB23CBA8()
{
  v39 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 232);
  v33 = *(v0 + 224);
  v34 = *(v0 + 192);
  v35 = *(v0 + 320);
  v7 = NSTemporaryDirectory();
  sub_1AB460544();

  (*(v3 + 56))(v4, 1, 1, v2);
  (*(v6 + 104))(v5, *MEMORY[0x1E6968F70], v33);
  sub_1AB45F724();
  sub_1AB45F664();
  v8 = *(v3 + 8);
  v8(v1, v2);
  sub_1AB45F194();
  swift_allocObject();
  sub_1AB45F184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438CA0, &qword_1AB4E1058);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AB4D4720;
  sub_1AB45F0E4();
  *(v0 + 176) = v9;
  sub_1AB23DF70(&qword_1EB438CA8, 255, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438CB0, &qword_1AB4E1060);
  sub_1AB23DE80();
  sub_1AB4614E4();
  sub_1AB45F104();
  swift_beginAccess();
  *(v0 + 184) = *(v34 + 128);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438CC0, &qword_1AB4E1068);
  sub_1AB23DEE4();
  v10 = v35;
  v11 = sub_1AB45F174();
  v13 = *(v0 + 280);
  if (v35)
  {
    v14 = *(v0 + 256);

    v8(v13, v14);
    if (qword_1ED4D2218 != -1)
    {
      swift_once();
    }

    v17 = *(off_1ED4D2220 + 2);
    v18 = swift_task_alloc();
    *(v18 + 16) = 0xD000000000000013;
    *(v18 + 24) = 0x80000001AB4FF400;
    strcpy((v18 + 32), "IntentReplay");
    *(v18 + 45) = 0;
    *(v18 + 46) = -5120;
    os_unfair_lock_lock((v17 + 24));
    sub_1AB019150((v17 + 16), &v37);
    os_unfair_lock_unlock((v17 + 24));
    v36 = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1AB4D4720;
    v37 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
    v20._countAndFlagsBits = 0xD000000000000015;
    v20._object = 0x80000001AB505500;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    swift_getErrorValue();
    v21 = *(v0 + 120);
    v22 = *(v0 + 128);
    *(v0 + 80) = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v21, v22);
    sub_1AB01522C(v0 + 56, v0 + 88);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1AB0169C4(v0 + 88, v0 + 16);
    *(v0 + 48) = 0;
    v24 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1AB0168A8(0, *(v24 + 2) + 1, 1, v24);
    }

    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_1AB0168A8((v25 > 1), v26 + 1, 1, v24);
    }

    *(v24 + 2) = v26 + 1;
    v27 = &v24[40 * v26];
    v28 = *(v0 + 16);
    v29 = *(v0 + 32);
    v27[64] = *(v0 + 48);
    *(v27 + 2) = v28;
    *(v27 + 3) = v29;
    v37 = v24;
    sub_1AB0167A8(v0 + 56);
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v30);
    *(v19 + 32) = v37;
    v37 = v36;
    v38 = 3;
    OSLogger.log(contentsOf:withLevel:)(v19, &v38);
  }

  else
  {
    v15 = v11;
    v16 = v12;

    sub_1AB45F864();
    v8(*(v0 + 280), *(v0 + 256));
    sub_1AB017254(v15, v16);
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1AB23D1BC()
{
  v21 = v0;
  v1 = *(v0 + 320);
  if (qword_1ED4D2218 != -1)
  {
    swift_once();
  }

  v2 = *(off_1ED4D2220 + 2);
  v3 = swift_task_alloc();
  *(v3 + 16) = 0xD000000000000013;
  *(v3 + 24) = 0x80000001AB4FF400;
  strcpy((v3 + 32), "IntentReplay");
  *(v3 + 45) = 0;
  *(v3 + 46) = -5120;
  os_unfair_lock_lock((v2 + 24));
  sub_1AB019150((v2 + 16), &v19);
  os_unfair_lock_unlock((v2 + 24));
  v4 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v19 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
  v6._countAndFlagsBits = 0xD000000000000015;
  v6._object = 0x80000001AB505500;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  *(v0 + 80) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v7, v8);
  sub_1AB01522C(v0 + 56, v0 + 88);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  sub_1AB0169C4(v0 + 88, v0 + 16);
  *(v0 + 48) = 0;
  v10 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1AB0168A8(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[40 * v12];
  v14 = *(v0 + 16);
  v15 = *(v0 + 32);
  v13[64] = *(v0 + 48);
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  v19 = v10;
  sub_1AB0167A8(v0 + 56);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  *(v5 + 32) = v19;
  v19 = v4;
  v20 = 3;
  OSLogger.log(contentsOf:withLevel:)(v5, &v20);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1AB23D4E8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB23D50C, v2, 0);
}

uint64_t sub_1AB23D50C()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (*(v2 + 16) && (v3 = sub_1AB014DB4(v0[5], v0[6]), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];
    sub_1AB017200(*v5, v6);
  }

  else
  {
    v7 = 0;
    v6 = 0xF000000000000000;
  }

  swift_endAccess();
  v8 = v0[1];

  return v8(v7, v6);
}

uint64_t sub_1AB23D5C8()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1AB23D638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a3;
  v5[8] = a4;
  v5[5] = a1;
  v5[6] = a2;
  v6 = *v4;
  v5[9] = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1AB23D660, v6, 0);
}

uint64_t sub_1AB23D660()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  swift_beginAccess();

  sub_1AB017200(v3, v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + 128);
  *(v2 + 128) = 0x8000000000000000;
  sub_1AB021CCC(v3, v1, v5, v4, isUniquelyReferenced_nonNull_native);

  *(v2 + 128) = v10;
  swift_endAccess();
  if ((*(v2 + 112) & 1) == 0)
  {
    v7.n128_f64[0] = sub_1AB23C5B8();
  }

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1AB23D760(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB23D808;

  return sub_1AB23D4E8(a1, a2);
}

uint64_t sub_1AB23D808(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1AB23D90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1AB4617D4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1AB23DA0C, 0, 0);
}

uint64_t sub_1AB23DA0C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1AB4617E4();
  v5 = sub_1AB23DF70(&qword_1EB4339E8, 255, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1AB461FD4();
  sub_1AB23DF70(&qword_1EB4339F0, 255, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1AB4617F4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1AB23DBA4;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1AB23DBA4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB23DD60, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1AB23DD60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB23DDCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AB027460;

  return sub_1AB23C740(a1, v4, v5, v6);
}

unint64_t sub_1AB23DE80()
{
  result = qword_1EB438CB8;
  if (!qword_1EB438CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB438CB0, &qword_1AB4E1060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438CB8);
  }

  return result;
}

unint64_t sub_1AB23DEE4()
{
  result = qword_1EB438CC8;
  if (!qword_1EB438CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB438CC0, &qword_1AB4E1068);
    sub_1AB235C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB438CC8);
  }

  return result;
}

uint64_t sub_1AB23DF70(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MetricsFieldsProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v5[6] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB0D36B0, 0, 0);
}

uint64_t sub_1AB23E008(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB027460;

  return MetricsFieldsProvider.addExpensiveMetricsFields(into:using:)(a1, a2, a3, a4);
}

uint64_t MetricsFieldsProviderCategory.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

unint64_t sub_1AB23E168()
{
  result = qword_1EB438CD0[0];
  if (!qword_1EB438CD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB438CD0);
  }

  return result;
}

uint64_t dispatch thunk of MetricsFieldsProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB027460;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1AB23E360(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB23E388, 0, 0);
}

uint64_t sub_1AB23E388()
{
  v6 = v0;
  v1 = v0[2];
  v5 = v0[4];
  v2.n128_f64[0] = AMSMetricsIdentifierFieldsProvider.addMetricsFields(into:using:)(v1, &v5);
  v3 = v0[1];

  return v3(v2);
}

id sub_1AB23E418(void *a1, uint64_t a2)
{
  v10 = a1;
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A68, &qword_1AB4DF038);
  if (swift_dynamicCast())
  {
    sub_1AB1580C0(v11, v13);
    v4 = v14;
    v5 = v15;
    __swift_project_boxed_opaque_existential_1Tm(v13, v14);
    v6 = (*(v5 + 16))(a2, v4, v5);
LABEL_5:
    v8 = v6;
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    return v8;
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_1AB014AC0(v11, &qword_1EB438160, &qword_1AB4DF040);
  swift_getErrorValue();
  sub_1AB462024();
  v7 = sub_1AB460514();

  v8 = [objc_opt_self() valueWithNewErrorFromMessage:v7 inContext:a2];

  if (!v8)
  {
    __break(1u);
    goto LABEL_5;
  }

  return v8;
}

void sub_1AB23EA88(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [a1 toString];
  if (!v4)
  {

LABEL_9:
    v10 = 2;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = sub_1AB460544();
  v8 = v7;

  v9 = v6 == 0x363532616873 && v8 == 0xE600000000000000;
  if (!v9 && (sub_1AB461DA4() & 1) == 0)
  {
    if (v6 == 0x323135616873 && v8 == 0xE600000000000000)
    {

      v10 = 1;
      goto LABEL_10;
    }

    v12 = sub_1AB461DA4();

    if (v12)
    {
      v10 = 1;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:
  *a2 = v10;
}

uint64_t sub_1AB23EBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  v11 = *(a5 + 16);
  swift_unknownObjectRetain();
  v11(v13, a4, a5);
  EventEmitter.addObserver(on:singleUse:_:)(v13, 0, a2, a3, a4, a5);
  swift_unknownObjectRelease();

  result = __swift_destroy_boxed_opaque_existential_1Tm(v13);
  a6[1] = v13[5];
  return result;
}

double sub_1AB23EC60(uint64_t a1)
{
  v6 = *(v1 + 8);
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(v2 + 32);

  v4(&v6, v3, v2);

  return result;
}

uint64_t EventEmitter.asyncStream.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v5 = sub_1AB460C14();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11[-v6];
  v12 = a1;
  v13 = a2;
  v14 = v2;
  swift_checkMetadataState();
  v8 = *MEMORY[0x1E69E8650];
  v9 = sub_1AB460C14();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  return sub_1AB460C84();
}

uint64_t sub_1AB23EE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v7 = sub_1AB460C34();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  (*(v8 + 16))(&v17 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  (*(v8 + 32))(v13 + v12, v11, v7);
  v14 = swift_unknownObjectRetain();
  sub_1AB23EBA0(v14, sub_1AB23F1B4, v13, a3, a4, &v18);
  v17 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = v17;
  return sub_1AB460C04();
}

uint64_t sub_1AB23EFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v15 - v7;
  v9 = sub_1AB460BF4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v6 + 16))(v8, a1, AssociatedTypeWitness, v11);
  sub_1AB460C34();
  sub_1AB460C24();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1AB23F1B4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  v5 = *(sub_1AB460C34() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1AB23EFE4(a1, v6, v3, v4);
}

uint64_t sub_1AB23F2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ProxyingStateCenter.Transaction.changeState<A>(at:to:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *a1;
  v8 = *(a5 + 8);
  v14[3] = a4;
  v14[4] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a2, a4);
  v15 = 0;

  v10 = *(a3 + 32);
  v12[0] = *(a3 + 16);
  v12[1] = v10;
  type metadata accessor for ProxyingStateCenter.Transaction.Change(255, v12);
  sub_1AB460A64();
  return sub_1AB460A14();
}

uint64_t ProxyingStateCenter.Transaction.removeState(at:recursively:)(uint64_t *a1, char a2, uint64_t a3)
{
  v8[0] = *a1;
  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v9 = v4;

  v5 = *(a3 + 32);
  v7[0] = *(a3 + 16);
  v7[1] = v5;
  type metadata accessor for ProxyingStateCenter.Transaction.Change(255, v7);
  sub_1AB460A64();
  return sub_1AB460A14();
}

Swift::Void __swiftcall ProxyingStateCenter.Transaction.removeAllState()()
{
  v2 = v0;

  v3 = *(v2 + 32);
  v7[0] = *(v2 + 16);
  v7[1] = v3;
  v4 = type metadata accessor for ProxyingStateCenter.Transaction.Change(255, v7);
  sub_1AB461C64();
  swift_allocObject();
  v5 = sub_1AB460964();
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 3;
  *v1 = sub_1AB20EC04(v5, v4);
}

uint64_t ProxyingStateCenter.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v5 = sub_1AB23FAAC(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t ProxyingStateCenter.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AB23FAAC(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

double ProxyingStateCenter.currentState<A>(at:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = v4[2];
  v11[0] = *a1;
  v11[1] = v8;
  v9 = type metadata accessor for AnyStateStore(0, *(v7 + 80), a3, a4);

  AnyStateStore.currentState<A>(at:)(v11, v9, a2, a3);

  return result;
}

uint64_t ProxyingStateCenter.beginTransaction()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 96);
  v5[0] = *(*v1 + 80);
  v5[1] = v3;
  type metadata accessor for ProxyingStateCenter.Transaction.Change(0, v5);
  result = sub_1AB4609A4();
  *a1 = result;
  return result;
}

double ProxyingStateCenter.commit(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *a1;
  v10[5] = v4[2];
  v10[2] = v6;
  v7 = type metadata accessor for AnyStateStore(0, *(v5 + 80), a3, a4);

  WitnessTable = swift_getWitnessTable();
  StateStore.performTransaction<A>(_:)(sub_1AB23FBA8, v10, v7, MEMORY[0x1E69E7CA8] + 8, WitnessTable);

  return result;
}

uint64_t sub_1AB23F7B0(uint64_t a1, void *a2)
{
  v3 = *(*a2 + 96);
  v15 = *(*a2 + 80);
  v19[0] = v15;
  v19[1] = v3;
  v4 = type metadata accessor for ProxyingStateCenter.Transaction.Change(0, v19);
  result = sub_1AB4609F4();
  if (!result)
  {
    return result;
  }

  v6 = 0;
  for (i = a1 + 32; ; i += 56)
  {
    v8 = sub_1AB4609D4();
    result = sub_1AB460974();
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_15;
    }

    (*(*(v4 - 8) + 16))(v19, i, v4);
    if (v20 > 1u)
    {
      if (v20 != 2)
      {
        v18[0] = a2[2];
        type metadata accessor for AnyStateStore(0, v15, v10, v11);

        AnyStateStore.removeAllState()();
        goto LABEL_4;
      }
    }

    else if (!v20)
    {
      v12 = *&v19[0];
      sub_1AB0149B0((v19 + 8), v18);
      v21 = a2[2];
      v17 = v12;
      type metadata accessor for AnyStateStore(0, v15, v13, v14);

      AnyStateStore.updateState(at:to:)(&v17);

      __swift_destroy_boxed_opaque_existential_1Tm(v18);

      goto LABEL_5;
    }

    v18[0] = a2[2];
    v21 = *&v19[0];
    type metadata accessor for AnyStateStore(0, v15, v10, v11);

    AnyStateStore.removeState(at:recursively:)(&v21);

LABEL_4:

LABEL_5:
    result = sub_1AB4609F4();
    ++v6;
    if (v9 == result)
    {
      return result;
    }
  }

  result = sub_1AB461644();
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t ProxyingStateCenter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AB23FAAC(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  AnyStateStore.init<A>(_:)(v6, a2, &v10);
  *(v2 + 16) = v10;
  return v2;
}

uint64_t sub_1AB23FC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB23FCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine19ProxyingStateCenterC11TransactionV6Change33_ED4CEA07D389E38855CE7173419576F7LLOyx__G(uint64_t a1)
{
  if ((*(a1 + 48) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

void ShelfBasedPageModel<>.presentation.getter(uint64_t a1)
{
  sub_1AB4615D4();

  swift_getDynamicType();
  v1 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v1);

  MEMORY[0x1AC59BA20](0xD000000000000021, 0x80000001AB5055C0);
  sub_1AB461884();
  __break(1u);
}

uint64_t StateLens.init<A>(contentsOf:in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v11 = *a1;
  a5[3] = type metadata accessor for StateStoreHandle(0, a3, a4, a3);
  a5[4] = &off_1F2000C50;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5);
  return sub_1AB2397EC(&v11, a2, a3, a4, boxed_opaque_existential_0);
}

void *StateLens.init(get:set:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[3] = &type metadata for DelegatingStateStoreHandle;
  a5[4] = &off_1F2000C30;
  result = swift_allocObject();
  *a5 = result;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t StateLens<A>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v4[3];
  v11 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4, v10);
  (*(v11 + 8))(v6, a3, v10, v11);
  swift_getAtKeyPath();
  return (*(v7 + 8))(v9, v6);
}

uint64_t StateLens<A>.currentValue.getter(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v5);
  return (*(v6 + 8))(*(a1 + 16), a2, v5, v6);
}

uint64_t StateLens<A>.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v4[3];
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4, v12);
  (*(v13 + 8))(v8, a3, v12, v13);
  swift_getAtKeyPath();
  (*(v9 + 8))(v11, v8);
  v15[0] = v15[1];
  return ReadOnlyLens.init(_:)(v15, *(v7 + *MEMORY[0x1E69E77B0] + 8), a4);
}

uint64_t sub_1AB240234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t CompoundTreatmentFilter.addFilter(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1Tm(a1, v2);

  return sub_1AB240354(v4, v1, v2, v3);
}

uint64_t CompoundTreatmentFilter.addingFilter(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = *v2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1Tm(a1, v4);

  return sub_1AB240354(v6, a2, v4, v5);
}

uint64_t sub_1AB240354(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = *(v7 + 16);
  v14(&v20 - v12, v11);
  v15 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1AB02A808(0, v15[2] + 1, 1, v15);
    *a2 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1AB02A808((v17 > 1), v18 + 1, 1, v15);
    *a2 = v15;
  }

  (v14)(v9, v13, a3);
  sub_1AB24050C(v18, v9, a2, a3, a4);
  *a2 = v15;
  return (*(v7 + 8))(v13, a3);
}

uint64_t sub_1AB24050C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1AB1580C0(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1AB2405A4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  a2(v3, a1);
  sub_1AB42E99C(v3[0], v3[1]);
}

uint64_t sub_1AB240650(uint64_t a1, void (*a2)(uint64_t, double))
{
  v4 = sub_1AB45F0A4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1, v6);
  sub_1AB42F3C4(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AB240768(uint64_t a1, void (*a2)(void *__return_ptr))
{
  (a2)(v3, a1);
  sub_1AB434F14(v3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

void sub_1AB2407F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  MEMORY[0x1AC59BA20](a5, a6);
  MEMORY[0x1AC59BA20](a3, a4);
}

uint64_t LowMemoryMetricsEventLinter.Error.hashValue.getter()
{
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](0);
  return sub_1AB462104();
}

uint64_t sub_1AB240918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_1AB240988(a1, a2, a3, a4, a5);
  return v10;
}

void *sub_1AB240988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = *a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[5] = v8;
  sub_1AB014A58(a5, v14, &qword_1EB438F60, &unk_1AB4E16A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438F70, &unk_1AB4E16C8);
  v9 = swift_allocObject();
  *(v9 + 56) = 0;
  sub_1AB014A58(v14, v12, &qword_1EB438F60, &unk_1AB4E16A8);
  sub_1AB014AC0(a5, &qword_1EB438F60, &unk_1AB4E16A8);
  sub_1AB014AC0(v14, &qword_1EB438F60, &unk_1AB4E16A8);
  v10 = v12[1];
  *(v9 + 16) = v12[0];
  *(v9 + 32) = v10;
  *(v9 + 48) = v13;
  v5[4] = v9;
  v5[6] = a3;
  return v5;
}

uint64_t LowMemoryMetricsEventLinter.__allocating_init(defaultTopic:configuration:rules:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11 = 0;
  sub_1AB01494C(a3, v10);
  v8 = swift_allocObject();
  sub_1AB240988(a1, a2, a4, &v11, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v8;
}

uint64_t LowMemoryMetricsEventLinter.__allocating_init(defaultTopic:bag:rules:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  v11 = 0;
  v12 = v7;
  memset(v10, 0, sizeof(v10));
  v8 = swift_allocObject();
  sub_1AB240988(a1, a2, a4, &v12, v10);
  return v8;
}

char *sub_1AB240B70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D1C0, &unk_1AB4D7F60);
  inited = swift_initStackObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(inited + 16) = v3;
  *(inited + 24) = 0;
  *(inited + 32) = 1;
  if (qword_1EB432D30 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB46BDF8;
  v10[3] = sub_1AB015664();
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = v4;
  v5 = v4;

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438F58, &qword_1AB4E16A0);
  v7 = sub_1AB01561C(qword_1EB432DD8, &qword_1EB438F58, &qword_1AB4E16A0, &protocol conformance descriptor for Promise<A>);
  v8 = Promise.flatMap<A>(on:_:)(v10, sub_1AB2424EC, v1, v6, v7);
  swift_setDeallocating();

  sub_1AB074080(*(inited + 24), *(inited + 32));

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v8;
}

char *sub_1AB240CF8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[4];

  os_unfair_lock_lock(v4 + 14);
  sub_1AB014A58(&v4[4], &v21, &qword_1EB438F60, &unk_1AB4E16A8);
  os_unfair_lock_unlock(v4 + 14);

  if (*&v22[8])
  {
    sub_1AB0149B0(&v21, v24);
    sub_1AB01494C(v24, v23);
    sub_1AB01494C(v23, &v21);
    v22[24] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438F58, &qword_1AB4E16A0);
    v5 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v5 + 16) = v6;
    v7 = *v22;
    *(v5 + 24) = v21;
    *(v5 + 40) = v7;
    *(v5 + 49) = *&v22[9];
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    sub_1AB014AC0(&v21, &qword_1EB438F60, &unk_1AB4E16A8);
    v8 = a2[5];
    if (v8)
    {
      swift_unknownObjectRetain();
      v9 = sub_1AB460514();
      v10 = [v8 dictionaryForKey_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B90, &qword_1AB4D4F30);
      inited = swift_initStackObject();
      inited[2] = v10;
      inited[3] = sub_1AB3E095C;
      inited[4] = 0;
      sub_1AB3A9374();

      if (qword_1EB432D30 != -1)
      {
        swift_once();
      }

      v12 = qword_1EB46BDF8;
      *&v22[8] = sub_1AB015664();
      *&v22[16] = &protocol witness table for OS_dispatch_queue;
      *&v21 = v12;
      v13 = v12;

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438F68, &qword_1AB4E16B8);
      v5 = Promise.map<A>(on:_:)(&v21, sub_1AB2424F4, a2, v14);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1Tm(&v21);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438F58, &qword_1AB4E16A0);
      type metadata accessor for LowMemoryMetricsEventLinter.Error(0, *(v3 + 80), *(v3 + 88), v15);
      swift_getWitnessTable();
      v16 = swift_allocError();
      return Promise.__allocating_init(error:)(v16, v17, v18, v19);
    }
  }

  return v5;
}

void sub_1AB24100C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  sub_1AB014A58(a1, &v11, &qword_1EB43BDB0, &qword_1AB4E16C0);
  if (*(&v12 + 1) == 1)
  {
    sub_1AB014AC0(&v11, &qword_1EB43BDB0, &qword_1AB4E16C0);
    type metadata accessor for LowMemoryMetricsEventLinter.Error(0, *(v6 + 80), *(v6 + 88), v7);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v14[0] = v11;
    v14[1] = v12;
    v15 = v13;
    v8 = sub_1AB0B9254(v14, &v11);
    v9 = a2[4];
    MEMORY[0x1EEE9AC00](v8);

    os_unfair_lock_lock((v9 + 56));
    sub_1AB242510((v9 + 16));
    os_unfair_lock_unlock((v9 + 56));
    if (v3)
    {
      __break(1u);
    }

    else
    {

      a3[3] = &type metadata for MetricsEventLinterBagConfiguration;
      a3[4] = &protocol witness table for MetricsEventLinterBagConfiguration;
      v10 = swift_allocObject();
      *a3 = v10;
      sub_1AB24252C(&v11, v10 + 16);
      sub_1AB066D84(v14);
      sub_1AB242588(&v11);
    }
  }
}

uint64_t sub_1AB2411E4(uint64_t *a1, uint64_t a2)
{
  sub_1AB014AC0(a1, &qword_1EB438F60, &unk_1AB4E16A8);
  a1[3] = &type metadata for MetricsEventLinterBagConfiguration;
  a1[4] = &protocol witness table for MetricsEventLinterBagConfiguration;
  v4 = swift_allocObject();
  *a1 = v4;
  return sub_1AB24252C(a2, v4 + 16);
}

uint64_t LowMemoryMetricsEventLinter.processEvent(_:)(uint64_t a1)
{
  sub_1AB240B70();
  if (qword_1EB432D30 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB46BDF8;
  v16[3] = sub_1AB015664();
  v16[4] = &protocol witness table for OS_dispatch_queue;
  v16[0] = v3;
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = v1;
  v7[6] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B58, &unk_1AB4DCF70);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v11 = swift_allocObject();
  v11[2] = sub_1AB241CEC;
  v11[3] = v7;
  v11[4] = v8;
  v14[0] = sub_1AB241D10;
  v14[1] = v11;
  v14[2] = sub_1AB1606E0;
  v14[3] = v8;
  sub_1AB01494C(v16, v15);
  v15[40] = 0;
  swift_retain_n();
  v12 = v3;

  sub_1AB1944E0(v14);

  sub_1AB014AC0(v14, &unk_1EB4378D0, &qword_1AB4E14F0);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v8;
}

uint64_t sub_1AB241488@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v10 = *(*a5 + 88);
  v11 = *(v10 + 8);
  v61 = *(*a5 + 80);
  v9 = v61;
  v62 = v10;
  __swift_allocate_boxed_opaque_existential_0(v60);

  v11(v12, v9, v10);
  v13 = v61;
  v14 = v62;
  __swift_project_boxed_opaque_existential_1Tm(v60, v61);
  v15 = MetricsFieldsBuilder.subscript.getter(0x6369706F74, 0xE500000000000000, v13, v14);
  if (v16)
  {
    a3 = v15;
    v54 = v16;
  }

  else
  {
    v54 = a4;
  }

  v53 = a3;
  v17 = v61;
  v18 = v62;
  __swift_project_boxed_opaque_existential_1Tm(v60, v61);
  sub_1AB0D3590();
  MetricsFieldsBuilder.subscript.getter(0x707954746E657665, 0xE900000000000065, v17, &type metadata for MetricsEventType, v18, &v55);
  v20 = *(&v55 + 1);
  v19 = v55;
  if (qword_1ED4D1FC0 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v21 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1AB4D4720;
    v63 = sub_1AB0168A8(0, 27, 0, MEMORY[0x1E69E7CC0]);
    v23._object = 0x80000001AB505640;
    v23._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    if (v20)
    {
      v24 = &type metadata for MetricsEventType;
      v25 = v20;
      v26 = v19;
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v24 = 0;
      v59[2] = 0;
    }

    v59[0] = v26;
    v59[1] = v25;
    v59[3] = v24;
    sub_1AB014A58(v59, v58, &unk_1EB437E60, &qword_1AB4D4730);
    v55 = 0u;
    v56 = 0u;

    sub_1AB0169C4(v58, &v55);
    LOBYTE(v57) = 0;
    v27 = v63;
    v50 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1AB0168A8(0, *(v27 + 2) + 1, 1, v27);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_1AB0168A8((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[40 * v29];
    v31 = v55;
    v32 = v56;
    v30[64] = v57;
    *(v30 + 2) = v31;
    *(v30 + 3) = v32;
    v63 = v27;
    sub_1AB014AC0(v59, &unk_1EB437E60, &qword_1AB4D4730);
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v33);
    *(v22 + 32) = v63;
    *&v55 = v21;
    LOBYTE(v59[0]) = 3;
    OSLogger.log(contentsOf:withLevel:)(v22, v59);

    sub_1AB241E04(v60, v53, v54, a1);
    v19 = v51;
    if (v51)
    {

      return __swift_destroy_boxed_opaque_existential_1Tm(v60);
    }

    if (v20)
    {
      if (v50 == 0x616964656DLL && v20 == 0xE500000000000000 || (sub_1AB461DA4() & 1) != 0)
      {
        sub_1AB24240C(v60);
      }
    }

    v35 = *(a6 + 16);
    if (v35)
    {
      v36 = a6 + 32;
      do
      {
        sub_1AB01494C(v36, &v55);
        v37 = *(&v56 + 1);
        v38 = v57;
        __swift_project_boxed_opaque_existential_1Tm(&v55, *(&v56 + 1));
        (*(v38 + 8))(v60, v37, v38);
        __swift_destroy_boxed_opaque_existential_1Tm(&v55);
        v36 += 40;
        --v35;
      }

      while (v35);
    }

    v39 = a1[3];
    v40 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v39);
    v20 = (*(v40 + 32))(v53, v54, v39, v40);

    v41 = *(v20 + 16);
    if (!v41)
    {
      break;
    }

    v42 = 0;
    v43 = v20 + 32;
    while (v42 < *(v20 + 16))
    {
      sub_1AB01494C(v43, &v55);
      v44 = *(&v56 + 1);
      v45 = v57;
      __swift_project_boxed_opaque_existential_1Tm(&v55, *(&v56 + 1));
      (*(v45 + 8))(v60, v44, v45);
      ++v42;
      __swift_destroy_boxed_opaque_existential_1Tm(&v55);
      v43 += 40;
      if (v41 == v42)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

LABEL_28:

  v46 = v61;
  v47 = v62;
  __swift_project_boxed_opaque_existential_1Tm(v60, v61);
  *a7 = (*(v47 + 24))(v46, v47);
  a7[1] = MEMORY[0x1E69E7CC0];
  return __swift_destroy_boxed_opaque_existential_1Tm(v60);
}

uint64_t LowMemoryMetricsEventLinter.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t LowMemoryMetricsEventLinter.__deallocating_deinit()
{
  LowMemoryMetricsEventLinter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1AB241AB8()
{
  v0 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1AB4601F4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1AB461114();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB015664();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v2);
  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1AB033808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770, &unk_1AB4D89F0);
  sub_1AB01561C(&qword_1ED4D1F68, &unk_1EB439770, &unk_1AB4D89F0, MEMORY[0x1E69E6328]);
  sub_1AB4614E4();
  result = sub_1AB461154();
  qword_1EB46BDF8 = result;
  return result;
}

void sub_1AB241E04(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v9 = a4[3];
  v10 = a4[4];
  __swift_project_boxed_opaque_existential_1Tm(a4, v9);
  v11 = (*(v10 + 8))(a2, a3, v9, v10);
  v90 = a1;
  v79 = a2;
  if (v11)
  {
    v76 = a3;
    v80 = v11;
    v12 = 0;
    a3 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;
    if (!v15)
    {
      goto LABEL_7;
    }

    do
    {
      while (1)
      {
        v20 = v12;
LABEL_17:
        v21 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v22 = v21 | (v20 << 6);
        v23 = (*(v80 + 48) + 16 * v22);
        v25 = *v23;
        v24 = v23[1];
        sub_1AB0165C4(*(v80 + 56) + 32 * v22, v83);
        *&v84 = v25;
        *(&v84 + 1) = v24;
        sub_1AB014B78(v83, &v85);

        v19 = v20;
LABEL_18:
        v87 = v84;
        v88 = v85;
        v89 = v86;
        v26 = *(&v84 + 1);
        if (!*(&v84 + 1))
        {

          v5 = v4;
          a1 = v90;
          a3 = v76;
          goto LABEL_25;
        }

        v27 = v87;
        sub_1AB014B78(&v88, &v84);
        v28 = v90[3];
        v29 = v90[4];
        __swift_project_boxed_opaque_existential_1Tm(v90, v28);
        v30 = (*(v29 + 24))(v28, v29);
        if (!*(v30 + 16))
        {
          break;
        }

        v31 = sub_1AB014DB4(v27, v26);
        if ((v32 & 1) == 0)
        {
          break;
        }

        v17 = v31;

        sub_1AB0165C4(*(v30 + 56) + 32 * v17, v83);

        __swift_destroy_boxed_opaque_existential_1Tm(&v84);
        sub_1AB014AC0(v83, &unk_1EB437E60, &qword_1AB4D4730);
        v12 = v19;
        if (!v15)
        {
          goto LABEL_7;
        }
      }

      memset(v83, 0, sizeof(v83));
      sub_1AB014AC0(v83, &unk_1EB437E60, &qword_1AB4D4730);
      v33 = v90[3];
      v34 = v90[4];
      __swift_mutable_project_boxed_opaque_existential_1(v90, v33);
      (*(v34 + 16))(&v84, v27, v26, v33, v34);
      __swift_destroy_boxed_opaque_existential_1Tm(&v84);

      if (v4)
      {

        return;
      }

      v12 = v19;
    }

    while (v15);
LABEL_7:
    if (v16 <= v12 + 1)
    {
      v18 = v12 + 1;
    }

    else
    {
      v18 = v16;
    }

    v19 = v18 - 1;
    while (1)
    {
      v20 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v20 >= v16)
      {
        v15 = 0;
        v85 = 0u;
        v86 = 0u;
        v84 = 0u;
        goto LABEL_18;
      }

      v15 = *(a3 + 8 * v20);
      ++v12;
      if (v15)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_25:
  v35 = MEMORY[0x1E69E6158];
  *(&v88 + 1) = MEMORY[0x1E69E6158];
  *&v87 = 7628138;
  *(&v87 + 1) = 0xE300000000000000;
  v36 = a1[3];
  v37 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v36);
  v38 = v5;
  (*(v37 + 16))(&v87, 0x654D646E65537078, 0xEC000000646F6874, v36, v37);
  v39 = a1;
  v16 = v38;
  __swift_destroy_boxed_opaque_existential_1Tm(&v87);
  if (v38)
  {
    return;
  }

  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v40);
  MetricsFieldsBuilder.subscript.getter(1701273968, 0xE400000000000000, v40, v41);
  if (v42)
  {
    goto LABEL_27;
  }

  v45 = a1[3];
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v45);
  v47 = MetricsFieldsBuilder.subscript.getter(0x6570795465676170, 0xE800000000000000, v45, v46);
  if (v48)
  {
    v82 = v47;
    v49 = v48;
    v50 = a1[3];
    v51 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v50);
    v52 = MetricsFieldsBuilder.subscript.getter(0x644965676170, 0xE600000000000000, v50, v51);
    if (!v53)
    {
LABEL_27:
      v44 = a4;
      v43 = v79;

      goto LABEL_39;
    }

    v54 = v53;
    v81 = v52;
    v55 = a4[3];
    v56 = a4[4];
    __swift_project_boxed_opaque_existential_1Tm(a4, v55);
    v77 = a3;
    v57 = (*(v56 + 16))(v79, a3, v55, v56);
    if (v58)
    {
      v59 = v57;
    }

    else
    {
      v59 = 95;
    }

    if (v58)
    {
      v60 = v58;
    }

    else
    {
      v60 = 0xE100000000000000;
    }

    sub_1AB2407F8(v82, v49, v81, v54, v59, v60);
    v62 = v61;
    v64 = v63;

    *(&v88 + 1) = v35;
    *&v87 = v62;
    *(&v87 + 1) = v64;
    v65 = v39[3];
    v66 = v39[4];
    __swift_mutable_project_boxed_opaque_existential_1(v39, v65);
    (*(v66 + 16))(&v87, 1701273968, 0xE400000000000000, v65, v66);
    __swift_destroy_boxed_opaque_existential_1Tm(&v87);
    a3 = v77;
  }

  v44 = a4;
  v43 = v79;
LABEL_39:
  v67 = v44[3];
  v68 = v44[4];
  __swift_project_boxed_opaque_existential_1Tm(v44, v67);
  v69 = (*(v68 + 24))(v43, a3, v67, v68);
  v70 = v69;
  v71 = *(v69 + 16);
  if (v71)
  {
    v72 = 0;
    v73 = v69 + 32;
    while (v72 < *(v70 + 16))
    {
      sub_1AB01494C(v73, &v87);
      v74 = *(&v88 + 1);
      v75 = v89;
      __swift_project_boxed_opaque_existential_1Tm(&v87, *(&v88 + 1));
      (*(v75 + 8))(v90, v74, v75);
      if (v16)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v87);
        goto LABEL_46;
      }

      ++v72;
      __swift_destroy_boxed_opaque_existential_1Tm(&v87);
      v73 += 40;
      if (v71 == v72)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_46:
  }
}

uint64_t sub_1AB24240C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v2);
  result = MetricsFieldsBuilder.subscript.getter(0x6E6F697469736F70, 0xE800000000000000, v2, v3);
  if ((v5 & 1) == 0)
  {
    v8[3] = MEMORY[0x1E69E63B0];
    v8[0] = round(*&result);
    v6 = a1[3];
    v7 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
    (*(v7 + 16))(v8, 0x6E6F697469736F70, 0xE800000000000000, v6, v7);
    return __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  return result;
}

void NSOperationQueue.schedule(task:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_1AB021150;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1AB01D528;
  v9[3] = &block_descriptor_6_1;
  v6 = _Block_copy(v9);
  v7 = objc_opt_self();

  v8 = [v7 blockOperationWithBlock_];
  _Block_release(v6);

  [v2 addOperation_];
}

void sub_1AB242714(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v10[4] = sub_1AB02114C;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1AB01D528;
  v10[3] = &block_descriptor_17;
  v7 = _Block_copy(v10);
  v8 = objc_opt_self();

  v9 = [v8 blockOperationWithBlock_];
  _Block_release(v7);

  [v5 addOperation_];
}

uint64_t QueryExpression.init(pattern:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a3;
  v78 = a4;
  v94 = *MEMORY[0x1E69E9840];
  v7 = sub_1AB45EFB4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v75 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45EFC4();
  v77 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v76 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1AB45F2C4();
  v11 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v88 = v71 - v14;
  v15 = sub_1AB45F3E4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = MEMORY[0x1E69E7CC8];
  v73 = a1;
  v74 = a2;
  sub_1AB461614();
  sub_1AB45F3D4();

  sub_1AB45F3A4();
  v19 = sub_1AB45F304();

  if (!v19)
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  (*(v16 + 8))(v18, v15);
  v79 = *(v19 + 16);
  if (v79)
  {
    v71[3] = v4;
    v72 = v9;
    v20 = 0;
    v21 = *(v11 + 80);
    v80 = v19;
    v81 = v19 + ((v21 + 32) & ~v21);
    v84 = v11 + 16;
    v22 = (v11 + 8);
    while (1)
    {
      if (v20 >= *(v19 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      v23 = *(v11 + 16);
      v23(v88, v81 + *(v11 + 72) * v20, v87);
      v24 = sub_1AB45F2A4();
      v26 = v25;
      v91 = v24;
      v92 = v25;

      v27 = sub_1AB460794();

      if (v27)
      {
        if ((v26 & 0x2000000000000000) != 0)
        {
          if ((v26 & 0xF00000000000000) == 0)
          {
            goto LABEL_25;
          }
        }

        else if ((v24 & 0xFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_26;
        }

        sub_1AB4606B4();
        sub_1AB4606F4();
      }

      v28 = HIBYTE(v92) & 0xF;
      v29 = v91;
      if ((v92 & 0x2000000000000000) == 0)
      {
        v28 = v91 & 0xFFFFFFFFFFFFLL;
      }

      if (!v28)
      {

        sub_1AB45EF74();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AB4D47F0;
        *(inited + 32) = sub_1AB460544();
        v48 = MEMORY[0x1E69E6158];
        *(inited + 72) = MEMORY[0x1E69E6158];
        *(inited + 40) = v49;
        *(inited + 48) = 0xD000000000000026;
        *(inited + 56) = 0x80000001AB5056D0;
        *(inited + 80) = sub_1AB460544();
        *(inited + 88) = v50;
        v51 = sub_1AB461614();
        *(inited + 120) = v48;
        *(inited + 96) = v51;
        *(inited + 104) = v52;
        sub_1AB01B220(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0, &qword_1AB4DA4B0);
        swift_arrayDestroy();
        sub_1AB24B468(&qword_1EB438F78, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
        v53 = v76;
        v54 = v72;
        sub_1AB45F574();
        sub_1AB45EF64();
        (*(v77 + 8))(v53, v54);
        swift_willThrow();
        return (*v22)(v88, v87);
      }

      v83 = v92;
      v23(v85, v88, v87);
      v30 = sub_1AB45F2B4();
      v31 = v86;
      sub_1AB322C10(v30, v32);
      v86 = v31;
      if (v31)
      {

        v55 = *v22;
        v56 = v87;
        (*v22)(v85, v87);
        v55(v88, v56);
      }

      v33 = objc_allocWithZone(MEMORY[0x1E696AE70]);
      v34 = sub_1AB460514();

      v89 = 0;
      v35 = [v33 initWithPattern:v34 options:0 error:&v89];

      if (!v35)
      {
        v57 = v89;

        sub_1AB45F594();

        swift_willThrow();
        v58 = *v22;
        v59 = v87;
        (*v22)(v85, v87);
        v58(v88, v59);
      }

      v36 = v89;
      v37 = v85;
      sub_1AB45F2A4();
      v38 = sub_1AB460794();

      v39 = v37;
      v40 = v87;
      v82 = *v22;
      v82(v39, v87);
      v41 = v38 & 1;
      v42 = v29;
      v43 = v29;
      v44 = v83;
      v45 = sub_1AB24AC40(v35, v41, v43, v83);
      if (v45)
      {
        break;
      }

      ++v20;
      v82(v88, v40);

      v19 = v80;
      if (v79 == v20)
      {
        goto LABEL_19;
      }
    }

    v60 = v45;

    sub_1AB45EF74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
    v61 = swift_initStackObject();
    *(v61 + 16) = xmmword_1AB4D47F0;
    *(v61 + 32) = sub_1AB460544();
    *(v61 + 40) = v62;
    v89 = 0;
    v90 = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](96, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v42, v44);

    MEMORY[0x1AC59BA20](0xD000000000000033, 0x80000001AB505690);
    v63 = v89;
    v64 = v90;
    v65 = MEMORY[0x1E69E6158];
    *(v61 + 72) = MEMORY[0x1E69E6158];
    *(v61 + 48) = v63;
    *(v61 + 56) = v64;
    *(v61 + 80) = sub_1AB460544();
    *(v61 + 88) = v66;
    v67 = sub_1AB461614();
    *(v61 + 120) = v65;
    *(v61 + 96) = v67;
    *(v61 + 104) = v68;
    sub_1AB01B220(v61);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0, &qword_1AB4DA4B0);
    swift_arrayDestroy();
    sub_1AB24B468(&qword_1EB438F78, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v69 = v76;
    v70 = v72;
    sub_1AB45F574();
    sub_1AB45EF64();
    (*(v77 + 8))(v69, v70);
    swift_willThrow();
    return v82(v88, v40);
  }

  else
  {
LABEL_19:

    *v78 = v93;
  }

  return result;
}

void QueryExpression.match(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v71 = a3;
  v7 = sub_1AB45F2C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v68 - v11;
  v13 = sub_1AB45F3E4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v4;
  v18 = swift_allocObject();
  v72 = v18;
  *(v18 + 16) = MEMORY[0x1E69E7CD0];
  v78 = v18 + 16;
  sub_1AB45F3D4();

  v69 = a1;
  v70 = a2;
  sub_1AB45F3A4();
  v19 = sub_1AB45F304();
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v22 = v16;
  v23 = v21;
  (*(v14 + 8))(v22, v13);
  v86 = *(v23 + 16);
  if (v86)
  {
    v24 = 0;
    v74 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v85 = v23 + v74;
    v87 = v8 + 16;
    v84 = (v8 + 8);
    v73 = (v8 + 32);
    v80 = MEMORY[0x1E69E7CC0];
    v25 = v8;
    v76 = v17;
    v77 = v7;
    v75 = v8;
    v83 = v23;
    while (1)
    {
      if (v24 >= *(v23 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      v26 = *(v25 + 72);
      v27 = *(v25 + 16);
      v27(v12, v85 + v26 * v24, v7);
      v28 = sub_1AB45F2A4();
      if (!*(v17 + 16))
      {
        break;
      }

      v30 = sub_1AB014DB4(v28, v29);
      v32 = v31;
      v23 = v83;

      if ((v32 & 1) == 0)
      {
        goto LABEL_7;
      }

      v33 = *(v17 + 56) + 16 * v30;
      v34 = *v33;
      v81 = *(v33 + 8);
      v82 = v34;
      v35 = sub_1AB45F2A4();
      sub_1AB248C34(v89, v35, v36);

      v37 = sub_1AB45F2B4();
      if (v38)
      {
        v39 = v37;
      }

      else
      {
        v39 = 0;
      }

      if (v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = 0xE000000000000000;
      }

      v41 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v41 = v39;
      }

      v42 = 7;
      if (((v40 >> 60) & ((v39 & 0x800000000000000) == 0)) != 0)
      {
        v42 = 11;
      }

      v43 = v42 | (v41 << 16);
      v44 = sub_1AB460514();
      v88 = v43;
      v89[0] = v39;
      v89[1] = v40;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437578, &qword_1AB4D8128);
      v45 = v82;
      sub_1AB01561C(&qword_1EB437580, &qword_1EB437578, &qword_1AB4D8128, MEMORY[0x1E69E6D28]);
      sub_1AB0273A8();
      v46 = sub_1AB4612F4();
      [v45 rangeOfFirstMatchInString:v44 options:0 range:{v46, v47}];

      sub_1AB460FD4();
      LOBYTE(v43) = v48;

      if (v43)
      {

        v7 = v77;
        (*v84)(v12, v77);
        if ((v81 & 1) == 0)
        {

          goto LABEL_38;
        }

        v17 = v76;
      }

      else
      {
        v7 = v77;
        v27(v79, v12, v77);
        v49 = v80;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1AB2B0228(0, v49[2] + 1, 1, v49);
        }

        v17 = v76;
        v51 = v49[2];
        v50 = v49[3];
        if (v51 >= v50 >> 1)
        {
          v49 = sub_1AB2B0228((v50 > 1), v51 + 1, 1, v49);
        }

        (*v84)(v12, v7);
        v49[2] = v51 + 1;
        v80 = v49;
        (*v73)(v49 + v74 + v51 * v26, v79, v7);
      }

      v25 = v75;
      v23 = v83;
LABEL_8:
      if (v86 == ++v24)
      {
        goto LABEL_32;
      }
    }

LABEL_7:
    (*v84)(v12, v7);
    goto LABEL_8;
  }

  v80 = v20;
LABEL_32:

  v52 = swift_allocObject();
  v53 = v72;
  *(v52 + 16) = sub_1AB24B160;
  *(v52 + 24) = v53;

  v55 = sub_1AB24AF5C(v54, sub_1AB24B168);
  if (v57)
  {
    goto LABEL_42;
  }

  v58 = v55;
  v59 = v56;
  v60 = *(v17 + 36);
  v61 = *(v17 + 32);

  v62 = v60 == v59;
  v63 = v80;
  if (!v62)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

  if (v58 == 1 << v61)
  {
    v64 = v70;

    v65 = v71;
    v66 = v69;
    *v71 = v63;
    v65[1] = v66;
    v65[2] = v64;
  }

  else
  {

LABEL_38:

    v67 = v71;
    *v71 = 0;
    v67[1] = 0;
    v67[2] = 0;
  }
}

uint64_t QueryExpression.MatchResult.Index.description.getter()
{
  v0 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return 0x287865646E49;
}

uint64_t sub_1AB243950()
{
  v0 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return 0x287865646E49;
}

uint64_t QueryExpression.MatchResult.raw.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

JetEngine::QueryExpression::MatchResult::Index __swiftcall QueryExpression.MatchResult.index(after:)(JetEngine::QueryExpression::MatchResult::Index after)
{
  v1 = __OFADD__(after.rawValue, 1);
  result.rawValue = after.rawValue + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t QueryExpression.MatchResult.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v6 = *v3;
  if (*(v6 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = sub_1AB45F2C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4;

  return v9(a2, v10, v7);
}

uint64_t QueryExpression.MatchResult.subscript.getter(uint64_t a1, uint64_t a2, double a3)
{
  v35 = a1;
  v5 = sub_1AB45F2C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = *v3;
  v13 = *(*v3 + 16);

  v34 = a2;

  if (v13)
  {
    v15 = 0;
    v32 = v13;
    v33 = v6 + 16;
    v16 = (v6 + 8);
    v30 = v13 - 1;
    v31 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v17 = v15;
      while (1)
      {
        if (v17 >= *(v12 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v6 + 16))(v8, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v5);
        if (sub_1AB45F2A4() == v35 && v18 == v34)
        {
          break;
        }

        v19 = sub_1AB461DA4();

        if (v19)
        {
          goto LABEL_11;
        }

        result = (*v16)(v8, v5);
LABEL_5:
        if (v32 == ++v17)
        {
          goto LABEL_19;
        }
      }

LABEL_11:
      (*(v6 + 32))(v11, v8, v5);
      v20 = sub_1AB45F2B4();
      v22 = v21;
      result = (*v16)(v11, v5);
      if (!v22)
      {
        goto LABEL_5;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1AB020904(0, *(v31 + 2) + 1, 1, v31);
        v31 = result;
      }

      v24 = *(v31 + 2);
      v23 = *(v31 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v28 = *(v31 + 2);
        v29 = v24 + 1;
        result = sub_1AB020904((v23 > 1), v24 + 1, 1, v31);
        v24 = v28;
        v25 = v29;
        v31 = result;
      }

      v15 = v17 + 1;
      v26 = v31;
      *(v31 + 2) = v25;
      v27 = &v26[16 * v24];
      *(v27 + 4) = v20;
      *(v27 + 5) = v22;
      if (v30 == v17)
      {
        goto LABEL_19;
      }
    }
  }

  v31 = MEMORY[0x1E69E7CC0];
LABEL_19:

  return v31;
}

uint64_t QueryExpression.MatchResult.subscript.getter(uint64_t a1, uint64_t a2)
{
  v8 = *v2;
  v9 = *(*v2 + 16);

  if (v9)
  {
    v3 = 0;
    v10 = *(sub_1AB45F2C4() - 8);
    v4 = v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v5 = *(v10 + 72);
    v11 = v4;
    do
    {
      if (sub_1AB45F2A4() == a1 && v12 == a2)
      {
        goto LABEL_14;
      }

      v13 = sub_1AB461DA4();

      if (v13)
      {
        goto LABEL_15;
      }

      ++v3;
      v11 += v5;
    }

    while (v9 != v3);
  }

  while (1)
  {
    v14 = *(v8 + 16);
    if (v9 == v14)
    {

      return 0;
    }

    if (v9 < v14)
    {
      break;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:

LABEL_15:
    if (v3 >= v9)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      v9 = v3;
    }

    else
    {
LABEL_16:
      sub_1AB45F2B4();
      v19 = v18;

      if (v19)
      {
        goto LABEL_25;
      }

      ++v3;
      v20 = v4 + v5 * v3;
      while (v9 != v3)
      {
        if (sub_1AB45F2A4() == a1 && v22 == a2)
        {
          goto LABEL_14;
        }

        v21 = sub_1AB461DA4();

        ++v3;
        v20 += v5;
        if (v21)
        {
          if (--v3 < v9)
          {
            goto LABEL_16;
          }

          goto LABEL_24;
        }
      }
    }
  }

  sub_1AB45F2C4();
  a1 = sub_1AB45F2B4();
  v17 = v16;

  if (!v17)
  {
    goto LABEL_13;
  }

  return a1;
}

{
  v6 = sub_1AB45EFB4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB45EFC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v36 = v3[1];
  v37 = v3[2];
  v12 = *(v11 + 16);

  if (!v12)
  {
    goto LABEL_8;
  }

  v34 = v9;
  v35 = v8;
  v2 = 0;
  v13 = *(sub_1AB45F2C4() - 8);
  v14 = v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v9 = *(v13 + 72);
  v42 = v14;
  do
  {
    if (sub_1AB45F2A4() == a1 && v15 == a2)
    {
      goto LABEL_16;
    }

    v16 = sub_1AB461DA4();

    if (v16)
    {
      goto LABEL_17;
    }

    ++v2;
    v14 += v9;
  }

  while (v12 != v2);
  while (1)
  {
    v8 = v35;
    v9 = v34;
LABEL_8:
    v18 = *(v11 + 16);
    if (v12 == v18)
    {

      sub_1AB45EF74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AB4D47F0;
      *(inited + 32) = sub_1AB460544();
      *(inited + 40) = v20;
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_1AB4615D4();

      v40 = 0xD000000000000019;
      v41 = 0x80000001AB505700;
      MEMORY[0x1AC59BA20](a1, a2);
      MEMORY[0x1AC59BA20](0x676E697373696D20, 0xE800000000000000);
      v21 = v40;
      v22 = v41;
      v23 = MEMORY[0x1E69E6158];
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v21;
      *(inited + 56) = v22;
      *(inited + 80) = sub_1AB460544();
      *(inited + 88) = v24;
      *(inited + 120) = v23;
      v25 = v37;
      *(inited + 96) = v36;
      *(inited + 104) = v25;

      sub_1AB01B220(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0, &qword_1AB4DA4B0);
      swift_arrayDestroy();
      sub_1AB24B468(&qword_1EB438F78, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      v2 = v38;
      sub_1AB45F574();
      sub_1AB45EF64();
      (*(v9 + 8))(v2, v8);
      swift_willThrow();
      return v2;
    }

    if (v12 >= v18)
    {
      __break(1u);
    }

    else
    {
      sub_1AB45F2C4();
      v2 = sub_1AB45F2B4();
      v27 = v26;

      if (v27)
      {

        return v2;
      }
    }

    __break(1u);
LABEL_16:

LABEL_17:
    v28 = v42;
    if (v2 >= v12)
    {
      break;
    }

    sub_1AB45F2B4();
    v30 = v29;

    if (v30)
    {
      v12 = v2;
    }

    else
    {
      ++v2;
      v31 = v28 + v9 * v2;
      while (v12 != v2)
      {
        if (sub_1AB45F2A4() == a1 && v33 == a2)
        {
          goto LABEL_16;
        }

        v32 = sub_1AB461DA4();

        ++v2;
        v31 += v9;
        if (v32)
        {
          --v2;
          goto LABEL_17;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t QueryExpression.MatchResult.debugDescription.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438F80, &qword_1AB4E1778);
  sub_1AB24B1A4();
  v0 = sub_1AB460484();
  v2 = v1;

  strcpy(v4, "MatchResult(");
  MEMORY[0x1AC59BA20](v0, v2);

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return v4[0];
}

uint64_t sub_1AB2445F8@<X0>(uint64_t *a2@<X8>)
{
  v8 = sub_1AB45F2A4();
  v9 = v3;
  MEMORY[0x1AC59BA20](8250, 0xE200000000000000);
  v4 = sub_1AB45F2B4();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  MEMORY[0x1AC59BA20](v4, v6);

  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t (*sub_1AB244694(uint64_t *a1, unint64_t *a2, double a3))()
{
  v6 = sub_1AB45F2C4();
  *a1 = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v7 + 64));
  }

  a1[2] = result;
  v10 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 < *(*v3 + 16))
  {
    (*(v8 + 16))(result, *v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v10, v6);
    return sub_1AB2447B0;
  }

  __break(1u);
  return result;
}

void sub_1AB2447B0(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t *sub_1AB2447FC@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v5 = v2[1];
    v6 = v2[2];
    a2[2] = result;
    a2[3] = v5;
    a2[4] = v6;
    *a2 = v3;
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_1AB244860@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = 0;
  a1[4] = *(v2 + 16);
}

uint64_t *sub_1AB2448C0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB2448F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AB4052BC(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1AB244928(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t *sub_1AB244968(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_1AB244984(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1AB2449A0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_1AB2449BC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1AB2449D4(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_1AB2449EC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438F80, &qword_1AB4E1778);
  sub_1AB24B1A4();
  v0 = sub_1AB460484();
  v2 = v1;

  strcpy(v4, "MatchResult(");
  MEMORY[0x1AC59BA20](v0, v2);

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return v4[0];
}

__n128 sub_1AB244ACC@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  v3 = v1[1].n128_u64[0];
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

void *sub_1AB244AE0()
{
  v1 = sub_1AB2BE9D8(*v0, v0[1], v0[2]);

  return v1;
}

uint64_t sub_1AB244B60(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    return 0;
  }

  swift_beginAccess();
  v9 = *(a5 + 16);

  LOBYTE(a1) = sub_1AB05CF1C(a1, a2, v9);

  return (a1 ^ 1) & 1;
}

void sub_1AB244BEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438FE8, &qword_1AB4E1A68);
  v2 = *v0;
  v3 = sub_1AB461584();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1AB244D50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AF0, &qword_1AB4DF3B0);
  v2 = *v0;
  v3 = sub_1AB461584();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1AB244EA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437628, &qword_1AB4D87F8);
  v2 = *v0;
  v3 = sub_1AB461584();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1AB244FFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439020, &unk_1AB4E1AA0);
  v2 = *v0;
  v3 = sub_1AB461584();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 24);
        v20 = *(v18 + 48);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 8);
        v23 = *(v18 + 32);
        *v21 = *v18;
        *(v21 + 8) = v22;
        *(v21 + 24) = v19;
        *(v21 + 32) = v23;
        *(v21 + 48) = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1AB245198()
{
  v1 = v0;
  v2 = sub_1AB45F764();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439000, &qword_1AB4E1A80);
  v6 = *v0;
  v7 = sub_1AB461584();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
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

void sub_1AB2453D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438FF0, &qword_1AB4E1A70);
  v2 = *v0;
  v3 = sub_1AB461584();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 72 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[3];
        v24 = *(v18 + 8);
        v23[3] = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x48uLL);
        sub_1AB09DF1C(v23, v22);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1AB245560()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AE8, &qword_1AB4DF3A8);
  v2 = *v0;
  v3 = sub_1AB461584();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1AB2456A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439010, &qword_1AB4E1A90);
  v2 = *v0;
  v3 = sub_1AB461584();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1AB2457E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439008, &qword_1AB4E1A88);
  v2 = *v0;
  v3 = sub_1AB461584();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        sub_1AB02B4BC(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_1AB245958(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438FE8, &qword_1AB4E1A68);
  v4 = sub_1AB461594();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1AB4620A4();
      MEMORY[0x1AC59D3F0](v16);
      v17 = sub_1AB462104();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
    *v2 = v5;
  }
}

void sub_1AB245B80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AF0, &qword_1AB4DF3B0);
  v4 = sub_1AB461594();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v29 = v1;
    v30 = v3 + 56;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v31 = v4 + 56;
    v32 = v10;
    v33 = v4;
    v34 = v3;
LABEL_7:
    if (v9)
    {
      v12 = __clz(__rbit64(v9));
      v35 = (v9 - 1) & v9;
LABEL_14:
      v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
      sub_1AB4620A4();
      v16 = v15 + 64;
      v17 = 1 << *(v15 + 32);
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v19 = v18 & *(v15 + 64);
      v20 = (v17 + 63) >> 6;
      v36 = v15;
      swift_bridgeObjectRetain_n();
      v37 = 0;
      v21 = 0;
      while (v19)
      {
LABEL_25:
        v23 = __clz(__rbit64(v19)) | (v21 << 6);
        v24 = *(*(v36 + 48) + 16 * v23 + 8);
        v25 = *(v36 + 56) + 24 * v23;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = *(v25 + 16);

        sub_1AB163984(v26, v27, v28);
        if (!v24)
        {
LABEL_6:

          MEMORY[0x1AC59D3F0](v37);
          sub_1AB462104();
          v5 = v33;
          v11 = sub_1AB461514();
          *(v31 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
          *(*(v33 + 48) + 8 * v11) = v36;
          ++*(v33 + 16);
          v3 = v34;
          v9 = v35;
          v10 = v32;
          goto LABEL_7;
        }

        sub_1AB460684();

        if (v28)
        {
          MEMORY[0x1AC59D3F0](1);
          sub_1AB4612D4();
        }

        else
        {
          MEMORY[0x1AC59D3F0](0);
          sub_1AB460684();
        }

        v19 &= v19 - 1;
        sub_1AB163994(v26, v27, v28);
        v37 ^= sub_1AB462104();
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v20)
        {
          goto LABEL_6;
        }

        v19 = *(v16 + 8 * v22);
        ++v21;
        if (v19)
        {
          v21 = v22;
          goto LABEL_25;
        }
      }

      __break(1u);
    }

    else
    {
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v29;
          goto LABEL_30;
        }

        v14 = *(v30 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v35 = (v14 - 1) & v14;
          goto LABEL_14;
        }
      }
    }

    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v5;
  }
}

void sub_1AB245EA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437628, &qword_1AB4D87F8);
  v4 = sub_1AB461594();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1AB4620A4();

      sub_1AB460684();
      v20 = sub_1AB462104();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }
}

void sub_1AB2460DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439020, &unk_1AB4E1AA0);
  v4 = sub_1AB461594();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    v35 = v4;
    while (v10)
    {
      v16 = __clz(__rbit64(v10));
      v37 = (v10 - 1) & v10;
LABEL_15:
      v19 = (*(v3 + 48) + 56 * (v16 | (v6 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v36 = v19[4];
      v38 = v19[5];
      v24 = v19[6];
      sub_1AB4620A4();
      sub_1AB4620C4();

      if (v20)
      {

        sub_1AB460684();
      }

      sub_1AB460684();
      sub_1AB4620C4();
      if (v24)
      {
        sub_1AB460684();
      }

      v25 = sub_1AB462104();
      v5 = v35;
      v26 = -1 << *(v35 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v14 = v21;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_32;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v14 = v21;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v15 = (*(v35 + 48) + 56 * v13);
      *v15 = v14;
      v15[1] = v20;
      v15[2] = v22;
      v15[3] = v23;
      v10 = v37;
      v15[4] = v36;
      v15[5] = v38;
      v15[6] = v24;
      ++*(v35 + 16);
      v3 = v34;
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v33;
        goto LABEL_30;
      }

      v18 = *(v7 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v5;
  }
}

void sub_1AB2463E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1AB461594();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v19 = (*(v5 + 48) + 16 * (v16 | (v8 << 6)));
      v20 = *v19;
      v21 = v19[1];
      sub_1AB4620A4();

      sub_1AB460684();
      v22 = sub_1AB462104();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v7 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v18 = *(v5 + 56 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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
    *v4 = v7;
  }
}

void sub_1AB246614(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1AB45F764();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439000, &qword_1AB4E1A80);
  v7 = sub_1AB461594();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1AB24B468(&qword_1ED4D1AF0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v21 = sub_1AB460444();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

void sub_1AB246930(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438FF0, &qword_1AB4E1A70);
  v3 = sub_1AB461594();
  if (*(v2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v2 + 56);
    for (i = (v5 + 63) >> 6; v7; ++*(v3 + 16))
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(v2 + 48) + 72 * (v9 | (v4 << 6));
      v14 = *(v12 + 32);
      v13 = *(v12 + 48);
      v15 = *(v12 + 16);
      v34 = *(v12 + 64);
      v32 = v14;
      v33 = v13;
      v30 = *v12;
      v31 = v15;
      v16 = *(v12 + 48);
      v27 = *(v12 + 32);
      v28 = v16;
      v29 = *(v12 + 64);
      v17 = *(v12 + 16);
      v25 = *v12;
      v26 = v17;
      sub_1AB4620A4();
      sub_1AB09DF1C(&v30, &v23);
      sub_1AB3ADEDC(v24);
      sub_1AB462104();
      v18 = sub_1AB461514();
      *(v3 + 56 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = *(v3 + 48) + 72 * v18;
      *v19 = v30;
      v20 = v31;
      v21 = v32;
      v22 = v33;
      *(v19 + 64) = v34;
      *(v19 + 32) = v21;
      *(v19 + 48) = v22;
      *(v19 + 16) = v20;
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= i)
      {
        goto LABEL_14;
      }

      v11 = *(v2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v1 = v3;
  }
}

void sub_1AB246B34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AE8, &qword_1AB4DF3A8);
  v4 = sub_1AB461594();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1AB4620A4();
      MEMORY[0x1AC59D3F0](v16);
      v17 = sub_1AB462104();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
    *v2 = v5;
  }
}

void sub_1AB246D54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439010, &qword_1AB4E1A90);
  v4 = sub_1AB461594();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1AB4620A4();
      if (v16)
      {
        MEMORY[0x1AC59D3F0](0);
        v17 = v16;
      }

      else
      {
        v17 = 1;
      }

      MEMORY[0x1AC59D3F0](v17);
      v18 = sub_1AB462104();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }
}

void sub_1AB246F8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439008, &qword_1AB4E1A88);
  v4 = sub_1AB461594();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_1AB02B4BC(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v27);
      v19 = sub_1AB461524();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v27[0];
      v15 = v27[1];
      *(v13 + 32) = v28;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
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
    *v2 = v5;
  }
}

void sub_1AB2471B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438FE8, &qword_1AB4E1A68);
  v4 = sub_1AB461594();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1AB4620A4();
      MEMORY[0x1AC59D3F0](v17);
      v18 = sub_1AB462104();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1AB247408(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AF0, &qword_1AB4DF3B0);
  v4 = sub_1AB461594();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v30 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v31 = v4 + 56;
    v32 = v10;
    v33 = v4;
    v34 = v3;
LABEL_7:
    if (v9)
    {
      v12 = __clz(__rbit64(v9));
      v35 = (v9 - 1) & v9;
LABEL_14:
      v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
      sub_1AB4620A4();
      v16 = v15 + 64;
      v17 = 1 << *(v15 + 32);
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v19 = v18 & *(v15 + 64);
      v20 = (v17 + 63) >> 6;
      v36 = v15;

      v37 = 0;
      v21 = 0;
      while (v19)
      {
LABEL_25:
        v23 = __clz(__rbit64(v19)) | (v21 << 6);
        v24 = *(*(v36 + 48) + 16 * v23 + 8);
        v25 = *(v36 + 56) + 24 * v23;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = *(v25 + 16);

        sub_1AB163984(v26, v27, v28);
        if (!v24)
        {
LABEL_6:

          MEMORY[0x1AC59D3F0](v37);
          sub_1AB462104();
          v5 = v33;
          v11 = sub_1AB461514();
          *(v31 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
          *(*(v33 + 48) + 8 * v11) = v36;
          ++*(v33 + 16);
          v3 = v34;
          v9 = v35;
          v10 = v32;
          goto LABEL_7;
        }

        sub_1AB460684();

        if (v28)
        {
          MEMORY[0x1AC59D3F0](1);
          sub_1AB4612D4();
        }

        else
        {
          MEMORY[0x1AC59D3F0](0);
          sub_1AB460684();
        }

        v19 &= v19 - 1;
        sub_1AB163994(v26, v27, v28);
        v37 ^= sub_1AB462104();
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v20)
        {
          goto LABEL_6;
        }

        v19 = *(v16 + 8 * v22);
        ++v21;
        if (v19)
        {
          v21 = v22;
          goto LABEL_25;
        }
      }

      __break(1u);
    }

    else
    {
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          v29 = 1 << *(v3 + 32);
          if (v29 >= 64)
          {
            bzero(v30, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v30 = -1 << v29;
          }

          *(v3 + 16) = 0;
          goto LABEL_32;
        }

        v14 = v30[v6];
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v35 = (v14 - 1) & v14;
          goto LABEL_14;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_32:

    *v2 = v5;
  }
}