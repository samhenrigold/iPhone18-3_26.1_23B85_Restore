uint64_t sub_C1CCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E170, &qword_EAE70);
  result = sub_E7944();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_E7CC4();

      sub_E7124();
      result = sub_E7CF4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
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

  return result;
}

uint64_t sub_C1F04(uint64_t a1)
{
  v2 = v1;
  v33 = sub_E59C4();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131378, &qword_F5578);
  v7 = sub_E7944();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_C2960(&qword_131368, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      result = sub_E6FA4();
      v21 = -1 << *(v7 + 32);
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

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
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

        v2 = v28;
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

  return result;
}

uint64_t sub_C2220(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131348, &qword_F5558);
  result = sub_E7944();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_E7CB4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_C2410(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_E7944();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v3;
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
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_E7784(v18);
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

  return result;
}

uint64_t sub_C261C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_E61F4();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131350, &qword_F5560);
  v7 = sub_E7944();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_C2960(&qword_130908, &type metadata accessor for PlaybackIntent.Option, &protocol conformance descriptor for PlaybackIntent.Option);
      result = sub_E6FA4();
      v21 = -1 << *(v7 + 32);
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

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
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

        v2 = v28;
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

  return result;
}

uint64_t sub_C2960(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AddFavoriteCategoriesButtonTip.title.getter()
{
  v1._object = 0x80000000000F8690;
  v1._countAndFlagsBits = 0xD000000000000012;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  return sub_E63A4(v1, v2);
}

uint64_t AddFavoriteCategoriesButtonTip.message.getter()
{
  v1._object = 0x80000000000F86B0;
  v1._countAndFlagsBits = 0xD000000000000020;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  return sub_E63A4(v1, v2);
}

uint64_t AddFavoriteCategoriesButtonTip.buttons.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  v1 = __chkstk_darwin(v0 - 8);
  v32 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v31 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v28 = sub_E6CE4();
  v27 = *(v28 - 8);
  v7 = __chkstk_darwin(v28);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v26 = &v26 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131380, &unk_F5590);
  v11 = type metadata accessor for TipButton(0);
  v12 = *(v11 - 8);
  v29 = v11 - 8;
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  v30 = v14;
  *(v14 + 16) = xmmword_E87F0;
  v15 = (v14 + v13);
  sub_E62D4();
  sub_E6384();
  sub_E6484();
  v16 = sub_E59C4();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_E5C24();
  sub_E6CB4();
  v41 = v34;
  sub_110AC(&v41, &qword_131388, &unk_F56C0);
  v40 = v35;
  sub_110AC(&v40, &qword_131390, &unk_F55A0);
  v39 = v36;
  sub_110AC(&v39, &qword_131398, &unk_F56D0);
  sub_C2FD4(v37, v38);

  sub_110AC(v6, &unk_12DFA0, &qword_E9B50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FA50, &qword_F55B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_E9EF0;
  sub_E6CD4();
  *(v17 + 56) = sub_E6D14();
  *(v17 + 64) = &protocol witness table for ClosureAction;
  __swift_allocate_boxed_opaque_existential_1((v17 + 32));
  sub_E6D04();
  sub_E6CD4();
  refreshed = type metadata accessor for RequestTipProviderRefreshAction(0);
  *(v17 + 96) = refreshed;
  *(v17 + 104) = sub_8E78();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v17 + 72));
  *boxed_opaque_existential_1 = sub_C50C(&off_120558);
  (*(v27 + 32))(boxed_opaque_existential_1 + *(refreshed + 20), v9, v28);
  v33[3] = sub_E6D64();
  v33[4] = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_1(v33);
  sub_E6D54();
  sub_E62D4();
  sub_E6384();
  v20 = v31;
  sub_E5B84();

  v21 = sub_E5B94();
  v22 = *(*(v21 - 8) + 56);
  v22(v20, 0, 1, v21);
  sub_48FC(v33, (v15 + 4));
  v23 = v32;
  sub_BD5BC(v20, v32);
  v24 = *(v29 + 40);
  v22(v15 + v24, 1, 1, v21);
  *v15 = 0xD000000000000022;
  v15[1] = 0x80000000000F8560;
  v15[2] = 0;
  v15[3] = 0;
  v15[9] = 2;
  sub_BD48C(v23, v15 + v24);
  sub_110AC(v20, &qword_131220, &unk_F5580);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v30;
}

uint64_t sub_C2FD4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_C2FE4()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_E70F4();
  v1 = sub_E7024();

  [v0 setBool:1 forKey:v1];
}

uint64_t AddFavoriteCategoriesButtonTip.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v6._object = 0x80000000000F8690;
  v6._countAndFlagsBits = 0xD000000000000012;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  sub_E63A4(v6, v7);
  sub_E6E54();

  v2 = sub_E6E64();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

unint64_t sub_C315C(uint64_t a1)
{
  result = sub_C3184();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_C3184()
{
  result = qword_1313A0;
  if (!qword_1313A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1313A0);
  }

  return result;
}

uint64_t RemoveAbandonedDownloadsTip.init(reclaimedSpace:episodesToDelete:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_E60F4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for RemoveAbandonedDownloadsTip(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for RemoveAbandonedDownloadsTip(uint64_t a1)
{
  result = qword_131408;
  if (!qword_131408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemoveAbandonedDownloadsTip.reclaimedSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_E60F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoveAbandonedDownloadsTip.episodesToDelete.getter()
{
  type metadata accessor for RemoveAbandonedDownloadsTip(0);
}

uint64_t RemoveAbandonedDownloadsTip.title.getter()
{
  v1._object = 0x80000000000F8750;
  v2._countAndFlagsBits = 0xD000000000000057;
  v2._object = 0x80000000000F8780;
  v1._countAndFlagsBits = 0xD000000000000027;
  return sub_E63A4(v1, v2);
}

id RemoveAbandonedDownloadsTip.message.getter()
{
  v8._object = 0x80000000000F87E0;
  v9._countAndFlagsBits = 0xD0000000000000D5;
  v9._object = 0x80000000000F8810;
  v8._countAndFlagsBits = 0xD00000000000002CLL;
  sub_E63A4(v8, v9);
  v0 = sub_E60E4();
  result = [objc_opt_self() stringWithBytesize:v0];
  if (result)
  {
    v2 = result;
    v3 = sub_E7064();
    v5 = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_E87F0;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_1BE80();
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;
    v7 = sub_E7074();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RemoveAbandonedDownloadsTip.buttons.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __chkstk_darwin(v1 - 8);
  v70 = &v53 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  v4 = __chkstk_darwin(v3 - 8);
  v72 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v73 = &v53 - v6;
  v7 = sub_E6CE4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v53 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131380, &unk_F5590);
  v14 = type metadata accessor for TipButton(0);
  v15 = *(v14 - 8);
  v56 = *(v15 + 72);
  v16 = v14 - 8;
  v67 = v14 - 8;
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  v71 = v18;
  v75 = xmmword_E9EF0;
  *(v18 + 16) = xmmword_E9EF0;
  v19 = (v18 + v17);
  v55 = 0x80000000000F88F0;
  v85._countAndFlagsBits = 0xD00000000000001ALL;
  v85._object = 0x80000000000F8930;
  v86._countAndFlagsBits = 0xD000000000000074;
  v86._object = 0x80000000000F8950;
  v54 = sub_E63A4(v85, v86);
  v53 = v20;
  v74 = v13;
  sub_E6CD4();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FA50, &qword_F55B0);
  v21 = swift_allocObject();
  *(v21 + 16) = v75;
  v22 = *(v0 + *(type metadata accessor for RemoveAbandonedDownloadsTip(0) + 20));
  v64 = v22;

  sub_E6CD4();
  v23 = type metadata accessor for RemoveAbandonedDownloadsAction(0);
  *(v21 + 56) = v23;
  *(v21 + 64) = sub_C3F70(&qword_12D090, type metadata accessor for RemoveAbandonedDownloadsAction, &protocol conformance descriptor for RemoveAbandonedDownloadsAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v21 + 32));
  *boxed_opaque_existential_1 = v22;
  v25 = *(v23 + 20);
  v26 = *(v8 + 32);
  v58 = v7;
  v26(boxed_opaque_existential_1 + v25, v11, v7);
  v57 = v26;
  v59 = v8 + 32;
  sub_E6CD4();
  refreshed = type metadata accessor for RequestTipProviderRefreshAction(0);
  *(v21 + 96) = refreshed;
  v63 = refreshed;
  v68 = sub_C3F70(&qword_12D0B8, type metadata accessor for RequestTipProviderRefreshAction, &protocol conformance descriptor for RequestTipProviderRefreshAction);
  *(v21 + 104) = v68;
  v28 = __swift_allocate_boxed_opaque_existential_1((v21 + 72));
  *v28 = sub_C50C(&off_120580);
  v26(v28 + *(refreshed + 20), v11, v7);
  v65 = sub_E6D64();
  v19[7] = v65;
  v19[8] = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_1(v19 + 4);
  sub_E6D54();
  sub_E6394();
  v66 = 0x80000000000F71D0;
  v29 = v73;
  sub_E5B84();

  v30 = sub_E5B94();
  v60 = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v61 = v32;
  v62 = v31 + 56;
  v32(v29, 0, 1, v30);
  v33 = *(v16 + 40);
  v32(v19 + v33, 1, 1, v30);
  *v19 = 0xD000000000000037;
  v34 = v54;
  v19[1] = v55;
  v19[2] = v34;
  v19[3] = v53;
  v19[9] = 0;
  sub_BD48C(v29, v19 + v33);
  v35 = v19 + v56;
  sub_E62D4();
  sub_E6384();
  sub_E6484();
  v36 = sub_E59C4();
  v37 = v70;
  (*(*(v36 - 8) + 56))(v70, 1, 1, v36);
  sub_E5C24();
  sub_E6CB4();
  v84 = v77;
  sub_110AC(&v84, &qword_131388, &unk_F56C0);
  v83 = v78;
  sub_110AC(&v83, &qword_131390, &unk_F55A0);
  v82 = v79;
  sub_110AC(&v82, &qword_131398, &unk_F56D0);
  sub_C2FD4(v80, v81);

  sub_110AC(v37, &unk_12DFA0, &qword_E9B50);
  v38 = swift_allocObject();
  *(v38 + 16) = v75;
  v39 = v64;

  sub_E6CD4();
  v40 = type metadata accessor for IgnoreAbandonedDownloadsAction(0);
  *(v38 + 56) = v40;
  *(v38 + 64) = sub_C3F70(&qword_12D058, type metadata accessor for IgnoreAbandonedDownloadsAction, &protocol conformance descriptor for IgnoreAbandonedDownloadsAction);
  v41 = __swift_allocate_boxed_opaque_existential_1((v38 + 32));
  *v41 = v39;
  v42 = v58;
  v43 = v57;
  v57(v41 + *(v40 + 20), v11, v58);
  sub_E6CD4();
  v44 = v63;
  v45 = v68;
  *(v38 + 96) = v63;
  *(v38 + 104) = v45;
  v46 = __swift_allocate_boxed_opaque_existential_1((v38 + 72));
  *v46 = sub_C50C(&off_1205A8);
  v43(v46 + *(v44 + 20), v11, v42);
  v76[3] = v65;
  v76[4] = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_1(v76);
  sub_E6D54();
  sub_E62D4();
  sub_E6384();
  v47 = v73;
  sub_E5B84();

  v48 = v60;
  v49 = v61;
  v61(v47, 0, 1, v60);
  sub_48FC(v76, (v35 + 32));
  v50 = v72;
  sub_BD5BC(v47, v72);
  v51 = *(v67 + 40);
  v49(&v35[v51], 1, 1, v48);
  *v35 = 0xD000000000000022;
  *(v35 + 1) = 0x80000000000F8560;
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  *(v35 + 9) = 2;
  sub_BD48C(v50, &v35[v51]);
  sub_110AC(v47, &qword_131220, &unk_F5580);
  __swift_destroy_boxed_opaque_existential_1(v76);
  return v71;
}

uint64_t RemoveAbandonedDownloadsTip.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E6E54();
  v2 = sub_E6E64();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_C3F18(uint64_t a1)
{
  result = sub_C3F70(&qword_1313A8, type metadata accessor for RemoveAbandonedDownloadsTip, &protocol conformance descriptor for RemoveAbandonedDownloadsTip);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C3F70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_C3FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E60F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_C409C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_E60F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_C4154(uint64_t a1)
{
  sub_E60F4();
  if (v1 <= 0x3F)
  {
    sub_A77C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t RemoveOlderDownloadsTip.init(recommendation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_E5C84();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t RemoveOlderDownloadsTip.title.getter()
{
  v1._object = 0x80000000000F8A00;
  v1._countAndFlagsBits = 0xD00000000000001ALL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  return sub_E63A4(v1, v2);
}

id RemoveOlderDownloadsTip.message.getter()
{
  v0 = sub_E60F4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E5C64();
  v4 = sub_E60E4();
  (*(v1 + 8))(v3, v0);
  v5 = sub_E5C44();
  v6 = sub_C44F4(v5, v4, 0);
  v8 = v7;
  if (!v7)
  {
    return v6;
  }

  if (!v4)
  {
    v19._countAndFlagsBits = 0xD00000000000002BLL;
    v19._object = 0x80000000000F8A20;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    sub_E63A4(v19, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_E87F0;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1BE80();
    *(v16 + 32) = v6;
    *(v16 + 40) = v8;
    goto LABEL_6;
  }

  result = [objc_opt_self() stringWithBytesize:v4];
  if (result)
  {
    v10 = result;
    v11 = sub_E7064();
    v13 = v12;

    v18._object = 0x80000000000F8A50;
    v18._countAndFlagsBits = 0xD000000000000023;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    sub_E63A4(v18, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_E9EF0;
    *(v14 + 56) = &type metadata for String;
    v15 = sub_1BE80();
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v15;
    *(v14 + 64) = v15;
    *(v14 + 72) = v6;
    *(v14 + 80) = v8;
LABEL_6:
    v6 = sub_E7034();

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_C44F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E6974();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x455A49535F4F4E5FLL;
  }

  if (a2)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0xE800000000000000;
  }

  v41._countAndFlagsBits = 0xD000000000000017;
  v41._object = 0x80000000000F8B10;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v12 = sub_E63A4(v41, v50);
  if (a1 <= 5)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v40._countAndFlagsBits = 0;
        v40._object = 0xE000000000000000;
        v15 = v12;
        v14 = v13;
        sub_E7984(50);

        v40._countAndFlagsBits = 0xD000000000000030;
        v40._object = 0x80000000000F8BD0;
        v48._countAndFlagsBits = v10;
        v48._object = v11;
        sub_E7134(v48);

        v56._countAndFlagsBits = 0;
        v56._object = 0xE000000000000000;
        sub_E63A4(v40, v56);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
        v16 = swift_allocObject();
        v17 = v16;
        *(v16 + 16) = xmmword_E9EF0;
        *(v16 + 56) = &type metadata for Int;
        *(v16 + 64) = &protocol witness table for Int;
        v18 = 3;
      }

      else
      {
        v15 = v12;
        v14 = v13;
        v40._countAndFlagsBits = 0;
        v40._object = 0xE000000000000000;
        sub_E7984(50);

        v40._countAndFlagsBits = 0xD000000000000030;
        v40._object = 0x80000000000F8BD0;
        v44._countAndFlagsBits = v10;
        v44._object = v11;
        sub_E7134(v44);

        v53._countAndFlagsBits = 0;
        v53._object = 0xE000000000000000;
        sub_E63A4(v40, v53);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
        v16 = swift_allocObject();
        v17 = v16;
        *(v16 + 16) = xmmword_E9EF0;
        *(v16 + 56) = &type metadata for Int;
        *(v16 + 64) = &protocol witness table for Int;
        if (a1 == 4)
        {
          v18 = 5;
        }

        else
        {
          v18 = 10;
        }
      }

      goto LABEL_41;
    }

    if (!a1)
    {

      return 0;
    }

    v15 = v12;
    v14 = v13;
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        v40._countAndFlagsBits = 0;
        v40._object = 0xE000000000000000;
        sub_E7984(50);

        v40._countAndFlagsBits = 0xD000000000000030;
        v40._object = 0x80000000000F8BD0;
        v49._countAndFlagsBits = v10;
        v49._object = v11;
        sub_E7134(v49);

        v57._countAndFlagsBits = 0;
        v57._object = 0xE000000000000000;
        sub_E63A4(v40, v57);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
        v16 = swift_allocObject();
        v17 = v16;
        *(v16 + 16) = xmmword_E9EF0;
        *(v16 + 56) = &type metadata for Int;
        *(v16 + 64) = &protocol witness table for Int;
        v18 = 2;
        goto LABEL_41;
      }

      goto LABEL_46;
    }

    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    sub_E7984(51);
    v19 = "REMOVE_DOWNLOADS_EPISODE_LIMIT_ONE_MESSAGE_FORMAT";
LABEL_25:
    v46._countAndFlagsBits = 0xD000000000000031;
    v46._object = ((v19 - 32) | 0x8000000000000000);
    sub_E7134(v46);
    v47._countAndFlagsBits = v10;
    v47._object = v11;
    sub_E7134(v47);

    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    sub_E63A4(v40, v55);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_E87F0;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_1BE80();
    *(v27 + 32) = v15;
    *(v27 + 40) = v14;
    goto LABEL_42;
  }

  if (a1 <= 8)
  {
    if (a1 != 6)
    {
      v20 = v12;
      v21 = v13;
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      sub_E7984(48);

      v40._countAndFlagsBits = 0xD00000000000002ELL;
      v40._object = 0x80000000000F8B60;
      v43._countAndFlagsBits = v10;
      v43._object = v11;
      sub_E7134(v43);

      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      sub_E63A4(v40, v52);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
      v22 = swift_allocObject();
      v23 = v22;
      *(v22 + 16) = xmmword_E9EF0;
      *(v22 + 56) = &type metadata for Int;
      *(v22 + 64) = &protocol witness table for Int;
      if (a1 == 7)
      {
        *(v22 + 32) = 7;
      }

      else
      {
        *(v22 + 32) = 14;
      }

      *(v22 + 96) = &type metadata for String;
      *(v22 + 104) = sub_1BE80();
      *(v23 + 72) = v20;
      *(v23 + 80) = v21;
      goto LABEL_42;
    }

    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    v15 = v12;
    v14 = v13;
    sub_E7984(51);
    v19 = "REMOVE_DOWNLOADS_TIP_LIMIT_ONE_DAY_MESSAGE_FORMAT";
    goto LABEL_25;
  }

  if (a1 > 0xFFFFFFFFLL)
  {
    v39 = v13;
    if (a1 == 0x100000000)
    {
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      v24 = v12;
      sub_E7984(36);

      v40._countAndFlagsBits = 0xD000000000000022;
      v40._object = 0x80000000000F8B30;
      v45._countAndFlagsBits = v10;
      v45._object = v11;
      sub_E7134(v45);

      v54._countAndFlagsBits = 0;
      v54._object = 0xE000000000000000;
      sub_E63A4(v40, v54);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_E87F0;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_1BE80();
      v26 = v39;
      *(v25 + 32) = v24;
      *(v25 + 40) = v26;
LABEL_42:
      v34 = sub_E7034();

      return v34;
    }

    if (a1 != 0x100000001)
    {
      goto LABEL_46;
    }

    if (!a3)
    {
      v36 = [objc_opt_self() _applePodcastsFoundationSettingsUserDefaults];
      v37 = [v36 episodeLimitForKey:kMTPodcastEpisodeLimitDefaultKey];

      v28 = v37;
      v29 = a2;
      v30 = 1;
      return sub_C44F4(v28, v29, v30);
    }

    sub_E6954();
    v31 = sub_E6964();
    v32 = sub_E74B4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "Encountered a device where the global limit has been configured to point to itself, causing infinite recursion. This is invalid, so this logic is exiting without a value -- no storage tip can be displayed.", v33, 2u);
    }

    (*(v7 + 8))(v9, v6);
    return 0;
  }

  v14 = v13;
  if (a1 == 9)
  {
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    v15 = v12;
    sub_E7984(48);

    v40._countAndFlagsBits = 0xD00000000000002ELL;
    v40._object = 0x80000000000F8B60;
    v42._countAndFlagsBits = v10;
    v42._object = v11;
    sub_E7134(v42);

    v51._countAndFlagsBits = 0;
    v51._object = 0xE000000000000000;
    sub_E63A4(v40, v51);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
    v16 = swift_allocObject();
    v17 = v16;
    *(v16 + 16) = xmmword_E9EF0;
    *(v16 + 56) = &type metadata for Int;
    *(v16 + 64) = &protocol witness table for Int;
    v18 = 30;
LABEL_41:
    *(v16 + 32) = v18;
    *(v16 + 96) = &type metadata for String;
    v17[13] = sub_1BE80();
    v17[9] = v15;
    v17[10] = v14;
    goto LABEL_42;
  }

  if (a1 == 0xFFFFFFFFLL)
  {

    v28 = sub_E76B4();
    v29 = a2;
    v30 = 0;
    return sub_C44F4(v28, v29, v30);
  }

LABEL_46:
  type metadata accessor for MTPodcastEpisodeLimit(0);
  v40._countAndFlagsBits = a1;
  result = sub_E7C24();
  __break(1u);
  return result;
}

uint64_t RemoveOlderDownloadsTip.buttons.getter()
{
  v1 = v0;
  v2 = sub_E5C84();
  v65 = v2;
  v74 = *(v2 - 8);
  v3 = v74;
  __chkstk_darwin(v2);
  v78 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __chkstk_darwin(v5 - 8);
  v73 = &v61 - v6;
  v7 = sub_E6CE4();
  v79 = *(v7 - 8);
  v80 = v7;
  v8 = __chkstk_darwin(v7);
  v77 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v83 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  v12 = __chkstk_darwin(v11 - 8);
  v82 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v61 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131380, &unk_F5590);
  v16 = type metadata accessor for TipButton(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = v16 - 8;
  v76 = v16 - 8;
  v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v21 = swift_allocObject();
  v75 = xmmword_E9EF0;
  v81 = v21;
  *(v21 + 16) = xmmword_E9EF0;
  v22 = (v21 + v20);
  v63 = 0x80000000000F8A80;
  v93._countAndFlagsBits = 0xD000000000000021;
  v93._object = 0x80000000000F8AC0;
  v94._countAndFlagsBits = 0;
  v94._object = 0xE000000000000000;
  v62 = sub_E63A4(v93, v94);
  v24 = v23;
  v25 = type metadata accessor for AcceptEpisodeLimitRecommendationAction(0);
  v22[7] = v25;
  v22[8] = sub_C59F0(&qword_12CD48, type metadata accessor for AcceptEpisodeLimitRecommendationAction, &protocol conformance descriptor for AcceptEpisodeLimitRecommendationAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22 + 4);
  v66 = *(v3 + 16);
  v66(boxed_opaque_existential_1, v1, v2);
  v27 = (boxed_opaque_existential_1 + *(v25 + 20));
  refreshed = type metadata accessor for RequestTipProviderRefreshAction(0);
  v27[3] = refreshed;
  v68 = refreshed;
  v69 = sub_C59F0(&qword_12D0B8, type metadata accessor for RequestTipProviderRefreshAction, &protocol conformance descriptor for RequestTipProviderRefreshAction);
  v27[4] = v69;
  v29 = __swift_allocate_boxed_opaque_existential_1(v27);
  sub_E6CD4();
  *v29 = sub_C50C(&off_1205D0);
  sub_E6CD4();
  sub_E6394();
  v30 = v15;
  sub_E5B84();

  v31 = sub_E5B94();
  v70 = v31;
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v71 = v33;
  v34 = v32 + 56;
  v64 = v30;
  v33(v30, 0, 1, v31);
  v72 = v34;
  v35 = *(v19 + 40);
  v33(v22 + v35, 1, 1, v31);
  *v22 = 0xD000000000000033;
  v36 = v62;
  v22[1] = v63;
  v22[2] = v36;
  v22[3] = v24;
  v22[9] = 0;
  sub_BD48C(v30, v22 + v35);
  v37 = v22 + v18;
  sub_E62D4();
  sub_E6384();
  sub_E6484();
  v38 = sub_E59C4();
  v39 = v73;
  (*(*(v38 - 8) + 56))(v73, 1, 1, v38);
  sub_E5C24();
  sub_E6CB4();
  v92 = v85;
  sub_110AC(&v92, &qword_131388, &unk_F56C0);
  v91 = v86;
  sub_110AC(&v91, &qword_131390, &unk_F55A0);
  v90 = v87;
  sub_110AC(&v90, &qword_131398, &unk_F56D0);
  sub_C2FD4(v88, v89);

  sub_110AC(v39, &unk_12DFA0, &qword_E9B50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FA50, &qword_F55B0);
  v40 = swift_allocObject();
  *(v40 + 16) = v75;
  v41 = v78;
  v42 = v65;
  v66(v78, v67, v65);
  v43 = v77;
  sub_E6CD4();
  v44 = type metadata accessor for DeclineEpisodeLimitRecommendationAction(0);
  *(v40 + 56) = v44;
  *(v40 + 64) = sub_C59F0(qword_12CF40, type metadata accessor for DeclineEpisodeLimitRecommendationAction, &protocol conformance descriptor for DeclineEpisodeLimitRecommendationAction);
  v45 = __swift_allocate_boxed_opaque_existential_1((v40 + 32));
  (*(v74 + 32))(v45, v41, v42);
  v46 = *(v79 + 32);
  v47 = v43;
  v48 = v43;
  v49 = v80;
  v46(v45 + *(v44 + 20), v48, v80);
  sub_E6CD4();
  v50 = v68;
  v51 = v69;
  *(v40 + 96) = v68;
  *(v40 + 104) = v51;
  v52 = __swift_allocate_boxed_opaque_existential_1((v40 + 72));
  *v52 = sub_C50C(&off_1205F8);
  v46(v52 + *(v50 + 20), v47, v49);
  v84[3] = sub_E6D64();
  v84[4] = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_1(v84);
  sub_E6D54();
  sub_E62D4();
  sub_E6384();
  v53 = v64;
  sub_E5B84();

  v54 = v53;
  v55 = v70;
  v56 = v71;
  v71(v53, 0, 1, v70);
  sub_48FC(v84, (v37 + 32));
  v57 = v53;
  v58 = v82;
  sub_BD5BC(v57, v82);
  v59 = *(v76 + 40);
  v56(&v37[v59], 1, 1, v55);
  *v37 = 0xD000000000000022;
  *(v37 + 1) = 0x80000000000F8560;
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  *(v37 + 9) = 2;
  sub_BD48C(v58, &v37[v59]);
  sub_110AC(v54, &qword_131220, &unk_F5580);
  __swift_destroy_boxed_opaque_existential_1(v84);
  return v81;
}

uint64_t RemoveOlderDownloadsTip.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E6E54();
  v2 = sub_E6E64();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_C5998(uint64_t a1)
{
  result = sub_C59F0(&qword_131440, type metadata accessor for RemoveOlderDownloadsTip, &protocol conformance descriptor for RemoveOlderDownloadsTip);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_C59F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for RemoveOlderDownloadsTip(uint64_t a1)
{
  result = qword_1314A0;
  if (!qword_1314A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C5A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_E5C84();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_C5B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_E5C84();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_C5B88(uint64_t a1)
{
  result = sub_E5C84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t RestorePurgedEpisodesTip.title.getter()
{
  v1._object = 0x80000000000F8CA0;
  v2._countAndFlagsBits = 0xD000000000000049;
  v2._object = 0x80000000000F8CD0;
  v1._countAndFlagsBits = 0xD000000000000027;
  return sub_E63A4(v1, v2);
}

uint64_t RestorePurgedEpisodesTip.message.getter()
{
  v1._object = 0x80000000000F8D20;
  v2._countAndFlagsBits = 0xD000000000000049;
  v2._object = 0x80000000000F8CD0;
  v1._countAndFlagsBits = 0xD000000000000026;
  return sub_E63A4(v1, v2);
}

uint64_t RestorePurgedEpisodesTip.buttons.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __chkstk_darwin(v1 - 8);
  v70 = v53 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  v4 = __chkstk_darwin(v3 - 8);
  v72 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v73 = v53 - v6;
  v7 = sub_E6CE4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v53 - v12;
  v65 = *v0;
  v14 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131380, &unk_F5590);
  v15 = type metadata accessor for TipButton(0);
  v16 = *(v15 - 8);
  v57 = *(v16 + 72);
  v17 = v15 - 8;
  v67 = v15 - 8;
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v74 = xmmword_E9EF0;
  v71 = v19;
  *(v19 + 16) = xmmword_E9EF0;
  v20 = (v19 + v18);
  v56 = 0x80000000000F8D50;
  v84._countAndFlagsBits = 0xD000000000000030;
  v84._object = 0x80000000000F8D90;
  v85._countAndFlagsBits = 0xD000000000000056;
  v85._object = 0x80000000000F8DD0;
  v55 = sub_E63A4(v84, v85);
  v54 = v21;
  v53[1] = v13;
  sub_E6CD4();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FA50, &qword_F55B0);
  v22 = swift_allocObject();
  *(v22 + 16) = v74;

  sub_E6CD4();
  v23 = type metadata accessor for RestorePurgedEpisodesAction(0);
  *(v22 + 56) = v23;
  *(v22 + 64) = sub_C66BC(&qword_12D0D0, type metadata accessor for RestorePurgedEpisodesAction, &protocol conformance descriptor for RestorePurgedEpisodesAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v22 + 32));
  *boxed_opaque_existential_1 = v14;
  v25 = *(v23 + 20);
  v26 = *(v8 + 32);
  v59 = v7;
  v26(boxed_opaque_existential_1 + v25, v11, v7);
  v58 = v26;
  v60 = v8 + 32;
  sub_E6CD4();
  refreshed = type metadata accessor for RequestTipProviderRefreshAction(0);
  *(v22 + 96) = refreshed;
  v64 = refreshed;
  v68 = sub_C66BC(&qword_12D0B8, type metadata accessor for RequestTipProviderRefreshAction, &protocol conformance descriptor for RequestTipProviderRefreshAction);
  *(v22 + 104) = v68;
  v28 = __swift_allocate_boxed_opaque_existential_1((v22 + 72));
  *v28 = sub_C50C(&off_120620);
  v26(v28 + *(refreshed + 20), v11, v7);
  v66 = sub_E6D64();
  v20[7] = v66;
  v20[8] = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_1(v20 + 4);
  sub_E6D54();
  sub_E6394();
  v29 = v73;
  sub_E5B84();

  v30 = sub_E5B94();
  v61 = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v62 = v32;
  v63 = v31 + 56;
  v32(v29, 0, 1, v30);
  v33 = *(v17 + 40);
  v32(v20 + v33, 1, 1, v30);
  *v20 = 0xD000000000000034;
  v34 = v55;
  v20[1] = v56;
  v20[2] = v34;
  v20[3] = v54;
  v20[9] = 0;
  sub_BD48C(v29, v20 + v33);
  v35 = v20 + v57;
  sub_E62D4();
  sub_E6384();
  sub_E6484();
  v36 = sub_E59C4();
  v37 = v70;
  (*(*(v36 - 8) + 56))(v70, 1, 1, v36);
  sub_E5C24();
  sub_E6CB4();
  v83 = v76;
  sub_110AC(&v83, &qword_131388, &unk_F56C0);
  v82 = v77;
  sub_110AC(&v82, &qword_131390, &unk_F55A0);
  v81 = v78;
  sub_110AC(&v81, &qword_131398, &unk_F56D0);
  sub_C2FD4(v79, v80);

  sub_110AC(v37, &unk_12DFA0, &qword_E9B50);
  v38 = swift_allocObject();
  *(v38 + 16) = v74;
  v39 = v65;

  sub_E6CD4();
  v40 = type metadata accessor for IgnorePurgedEpisodesAction(0);
  *(v38 + 56) = v40;
  *(v38 + 64) = sub_C66BC(&qword_12D078, type metadata accessor for IgnorePurgedEpisodesAction, &protocol conformance descriptor for IgnorePurgedEpisodesAction);
  v41 = __swift_allocate_boxed_opaque_existential_1((v38 + 32));
  *v41 = v39;
  v42 = v59;
  v43 = v58;
  v58(v41 + *(v40 + 20), v11, v59);
  sub_E6CD4();
  v44 = v64;
  v45 = v68;
  *(v38 + 96) = v64;
  *(v38 + 104) = v45;
  v46 = __swift_allocate_boxed_opaque_existential_1((v38 + 72));
  *v46 = sub_C50C(&off_120648);
  v43(v46 + *(v44 + 20), v11, v42);
  v75[3] = v66;
  v75[4] = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_1(v75);
  sub_E6D54();
  sub_E62D4();
  sub_E6384();
  v47 = v73;
  sub_E5B84();

  v48 = v61;
  v49 = v62;
  v62(v47, 0, 1, v61);
  sub_48FC(v75, (v35 + 32));
  v50 = v72;
  sub_BD5BC(v47, v72);
  v51 = *(v67 + 40);
  v49(&v35[v51], 1, 1, v48);
  *v35 = 0xD000000000000022;
  *(v35 + 1) = 0x80000000000F8560;
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  *(v35 + 9) = 2;
  sub_BD48C(v50, &v35[v51]);
  sub_110AC(v47, &qword_131220, &unk_F5580);
  __swift_destroy_boxed_opaque_existential_1(v75);
  return v71;
}

uint64_t RestorePurgedEpisodesTip.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  sub_E6E54();
  v2 = sub_E6E64();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_C66BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_C6704(uint64_t a1)
{
  result = sub_C672C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_C672C()
{
  result = qword_1314D8;
  if (!qword_1314D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1314D8);
  }

  return result;
}

uint64_t StayUpToDateTip.title.getter()
{
  v1._object = 0x80000000000F8E90;
  v1._countAndFlagsBits = 0xD000000000000010;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  return sub_E63A4(v1, v2);
}

uint64_t StayUpToDateTip.message.getter()
{
  v1._object = 0x80000000000F8EB0;
  v1._countAndFlagsBits = 0xD000000000000013;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  return sub_E63A4(v1, v2);
}

uint64_t StayUpToDateTip.buttons.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  v1 = __chkstk_darwin(v0 - 8);
  v32 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v31 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v28 = sub_E6CE4();
  v27 = *(v28 - 8);
  v7 = __chkstk_darwin(v28);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v26 = &v26 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131380, &unk_F5590);
  v11 = type metadata accessor for TipButton(0);
  v12 = *(v11 - 8);
  v29 = v11 - 8;
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  v30 = v14;
  *(v14 + 16) = xmmword_E87F0;
  v15 = (v14 + v13);
  sub_E62D4();
  sub_E6384();
  sub_E6484();
  v16 = sub_E59C4();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_E5C24();
  sub_E6CB4();
  v41 = v34;
  sub_110AC(&v41, &qword_131388, &unk_F56C0);
  v40 = v35;
  sub_110AC(&v40, &qword_131390, &unk_F55A0);
  v39 = v36;
  sub_110AC(&v39, &qword_131398, &unk_F56D0);
  sub_C2FD4(v37, v38);

  sub_110AC(v6, &unk_12DFA0, &qword_E9B50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FA50, &qword_F55B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_E9EF0;
  sub_E6CD4();
  *(v17 + 56) = sub_E6D14();
  *(v17 + 64) = &protocol witness table for ClosureAction;
  __swift_allocate_boxed_opaque_existential_1((v17 + 32));
  sub_E6D04();
  sub_E6CD4();
  refreshed = type metadata accessor for RequestTipProviderRefreshAction(0);
  *(v17 + 96) = refreshed;
  *(v17 + 104) = sub_8E78();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v17 + 72));
  *boxed_opaque_existential_1 = sub_C50C(&off_120670);
  (*(v27 + 32))(boxed_opaque_existential_1 + *(refreshed + 20), v9, v28);
  v33[3] = sub_E6D64();
  v33[4] = &protocol witness table for CompoundAction;
  __swift_allocate_boxed_opaque_existential_1(v33);
  sub_E6D54();
  sub_E62D4();
  sub_E6384();
  v20 = v31;
  sub_E5B84();

  v21 = sub_E5B94();
  v22 = *(*(v21 - 8) + 56);
  v22(v20, 0, 1, v21);
  sub_48FC(v33, (v15 + 4));
  v23 = v32;
  sub_BD5BC(v20, v32);
  v24 = *(v29 + 40);
  v22(v15 + v24, 1, 1, v21);
  *v15 = 0xD000000000000022;
  v15[1] = 0x80000000000F8560;
  v15[2] = 0;
  v15[3] = 0;
  v15[9] = 2;
  sub_BD48C(v23, v15 + v24);
  sub_110AC(v20, &qword_131220, &unk_F5580);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v30;
}

void sub_C6DBC()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_E70D4();
  v1 = sub_E7024();

  [v0 setBool:1 forKey:v1];
}

uint64_t StayUpToDateTip.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v6._object = 0x80000000000F8E90;
  v6._countAndFlagsBits = 0xD000000000000010;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  sub_E63A4(v6, v7);
  sub_E6E54();

  v2 = sub_E6E64();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

unint64_t sub_C6F2C(uint64_t a1)
{
  result = sub_C6F54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_C6F54()
{
  result = qword_1314E0;
  if (!qword_1314E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1314E0);
  }

  return result;
}

BOOL sub_C6FB8(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_E7CC4();
  sub_E7CD4(v3);
  v4 = sub_E7CF4();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_C7084(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_E78F4();
  }

  else if (*(a2 + 16) && (sub_4ABC(0, &qword_12E090, NSManagedObjectID_ptr), v5 = sub_E7784(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_E7794();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t AddFavoriteCategoriesButtonTipProvider.__allocating_init(asPartOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AddFavoriteCategoriesButtonTipProvider.init(asPartOf:)(a1);
  return v2;
}

uint64_t AddFavoriteCategoriesButtonTipProvider.init(asPartOf:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D20, "Ju");
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1314E8, "Ju");
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v7 = &v41 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1314F0, "du");
  v54 = *(v51 - 8);
  __chkstk_darwin(v51);
  v42 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1314F8, &qword_F5888);
  v10 = *(v9 - 8);
  v52 = v9;
  v53 = v10;
  __chkstk_darwin(v9);
  v48 = &v41 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131500, &qword_F5890);
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v49 = &v41 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131508, &qword_F5898);
  v58 = *(v56 - 8);
  __chkstk_darwin(v56);
  v50 = &v41 - v13;
  v14 = sub_E7534();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4ABC(0, &qword_12CE20, NSUserDefaults_ptr);
  (*(v15 + 104))(v17, enum case for NSUserDefaults.Name.shared(_:), v14);
  sub_C7B2C(&qword_12D040, &qword_12CE20, NSUserDefaults_ptr, &protocol conformance descriptor for NSUserDefaults);
  v44 = a1;
  sub_E6DB4();
  (*(v15 + 8))(v17, v14);
  v41 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
  swift_allocObject();
  v18 = sub_E69D4();
  *(v1 + 16) = v18;
  sub_E66C4();

  sub_E6DA4();
  v43 = v59;
  v59 = v18;
  v63 = sub_E66B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131510, &qword_F58A8);
  sub_3C2A0(&qword_131910, &qword_131FA0, &qword_F58A0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_3C2A0(&qword_131900, &qword_131510, &qword_F58A8, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_E6AA4();

  v19 = sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  v20 = sub_E7584();
  v59 = v20;
  v21 = sub_E7594();
  v22 = v5;
  (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  v23 = sub_3C2A0(&qword_131518, &qword_1314E8, "Ju", &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v24 = sub_C7B2C(&qword_1317B0, &qword_1317A0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v25 = v42;
  v26 = v45;
  sub_E6A54();
  sub_110AC(v22, &qword_131D20, "Ju");

  v27 = v26;
  v47[1](v7, v26);
  v28 = swift_allocObject();
  v29 = v41;
  *(v28 + 16) = v41;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_C7D34;
  *(v30 + 24) = v28;
  v47 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131750, &qword_F58B0);
  v59 = v27;
  v60 = v19;
  v61 = v23;
  v62 = v24;
  swift_getOpaqueTypeConformance2();
  v31 = v48;
  v32 = v51;
  sub_E6AC4();

  (*(v54 + 8))(v25, v32);
  v33 = sub_3C2A0(&qword_131520, &qword_1314F8, &qword_F5888, &protocol conformance descriptor for Publishers.Map<A, B>);
  v34 = v49;
  v35 = v52;
  sub_E6A64();
  (*(v53 + 8))(v31, v35);

  v59 = v35;
  v60 = v33;
  swift_getOpaqueTypeConformance2();
  v36 = v55;
  v37 = v50;
  sub_E6A84();

  (*(v57 + 8))(v34, v36);
  sub_3C2A0(&qword_131528, &qword_131508, &qword_F5898, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  v38 = v56;
  v39 = sub_E6A74();

  (*(v58 + 8))(v37, v38);
  result = v46;
  *(v46 + 24) = v39;
  return result;
}

uint64_t sub_C7B2C(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_4ABC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_C7B70(uint64_t a1, void *a2)
{
  sub_E7104();
  v4 = sub_E7024();

  v5 = [a2 BOOLForKey:v4];

  if (v5 || (sub_E70F4(), v6 = sub_E7024(), , v7 = [a2 BOOLForKey:v6], v6, v7) || a1)
  {

    return sub_B18B8(_swiftEmptyArrayStorage);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131CB0, &qword_F5C20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_E87F0;
    *(inited + 32) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCA8, &qword_EA4D0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_E87F0;
    *(v10 + 56) = &type metadata for AddFavoriteCategoriesButtonTip;
    *(v10 + 64) = sub_C801C();
    *(inited + 40) = v10;
    v11 = sub_B18B8(inited);
    swift_setDeallocating();
    sub_110AC(inited + 32, qword_131A30, &qword_F5F80);
    return v11;
  }
}

uint64_t sub_C7CFC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_C7D3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_C7D74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_C7DA8()
{
  sub_3C2A0(&qword_1317D0, &qword_131FA0, &qword_F58A0, &protocol conformance descriptor for PassthroughSubject<A, B>);

  return sub_E6A44();
}

uint64_t AddFavoriteCategoriesButtonTipProvider.requestRefresh(for:)(uint64_t a1)
{
  result = sub_C6FB8(4u, a1);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
    sub_3C2A0(&qword_1317D0, &qword_131FA0, &qword_F58A0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    return sub_E6A44();
  }

  return result;
}

uint64_t AddFavoriteCategoriesButtonTipProvider.deinit()
{

  return v0;
}

uint64_t AddFavoriteCategoriesButtonTipProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_C7F3C(uint64_t a1)
{
  result = sub_C6FB8(4u, a1);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
    sub_3C2A0(&qword_1317D0, &qword_131FA0, &qword_F58A0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    return sub_E6A44();
  }

  return result;
}

unint64_t sub_C801C()
{
  result = qword_1315D8;
  if (!qword_1315D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1315D8);
  }

  return result;
}

uint64_t OrderedTipProvider.init(providers:scheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  v8 = type metadata accessor for OrderedTipProvider(0, a3, a4, a4);
  v9 = *(*(a3 - 8) + 32);
  v10 = a5 + *(v8 + 36);

  return v9(v10, a2, a3);
}

uint64_t OrderedTipProvider.tips.getter(uint64_t a1)
{
  v2 = v1;
  v50 = a1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_E7814();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v46 = v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1315E0, &unk_F5930);
  v8 = sub_3C2A0(&qword_1315E8, &qword_1315E0, &unk_F5930, &protocol conformance descriptor for AnyPublisher<A, B>);
  v55 = v7;
  v56 = v4;
  v39 = v4;
  v57 = v8;
  v58 = v3;
  v9 = v8;
  v38 = v8;
  v40 = v3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v48 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v44 = v34 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_131750, &qword_F58B0);
  v55 = v7;
  v56 = v4;
  v57 = v9;
  v58 = v3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = sub_E69A4();
  v47 = *(v11 - 8);
  __chkstk_darwin(v11);
  v36 = v34 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1315F0, &qword_F5940);
  v14 = sub_3C2A0(&qword_1315F8, &qword_1315F0, &qword_F5940, &protocol conformance descriptor for Publishers.Sequence<A, B>);
  WitnessTable = swift_getWitnessTable();
  v55 = v13;
  v56 = v11;
  v57 = v14;
  v58 = WitnessTable;
  v35 = sub_E6994();
  v45 = *(v35 - 8);
  __chkstk_darwin(v35);
  v16 = v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131600, &qword_F5948);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v34 - v19;
  v55 = &_swiftEmptyDictionarySingleton;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131608, &qword_F5950);
  sub_E6A04();
  sub_3C2A0(&qword_131610, &qword_131600, &qword_F5948, &protocol conformance descriptor for Just<A>);
  v21 = sub_E6A74();
  v34[1] = v21;
  (*(v18 + 8))(v20, v17);
  v55 = *v2;

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131618, &qword_F5958);
  v23 = sub_C8C34();
  v25 = sub_1110C(sub_C88C0, 0, v22, v7, &type metadata for Never, v23, &protocol witness table for Never, v24);

  v53 = v21;
  v54 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131638, &qword_F5968);
  sub_3C2A0(&qword_131640, &qword_131638, &qword_F5968, &protocol conformance descriptor for [A]);
  sub_E7194();

  v26 = v46;
  (*(*(AssociatedTypeWitness - 8) + 56))(v46, 1, 1);
  v27 = v44;
  sub_E6A54();
  (*(v51 + 8))(v26, v52);
  v28 = v36;
  v29 = OpaqueTypeMetadata2;
  sub_E6AC4();
  (*(v48 + 8))(v27, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_131648, &qword_F5970);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_E87F0;
  *(v30 + 32) = sub_B18B8(_swiftEmptyArrayStorage);
  sub_E6AF4();

  (*(v47 + 8))(v28, v11);
  v31 = v35;
  swift_getWitnessTable();
  v32 = sub_E6A74();

  (*(v45 + 8))(v16, v31);
  return v32;
}

uint64_t sub_C88C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131710, &qword_F5A20);
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131718, &qword_F5A28);
  v7 = *(v6 - 8);
  v20 = v6;
  v21 = v7;
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  v11 = a1[4];
  v10 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v11);
  *&v23[0] = (*(v10 + 8))(v11, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_131648, &qword_F5970);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_E87F0;
  *(v12 + 32) = sub_B18B8(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131310, &qword_F5A30);
  sub_3C2A0(&qword_131318, &qword_131310, &qword_F5A30, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_E6AF4();

  sub_CA850(a1, v23);
  v13 = swift_allocObject();
  v14 = v23[1];
  v13[1] = v23[0];
  v13[2] = v14;
  v13[3] = v23[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131608, &qword_F5950);
  sub_3C2A0(&qword_131728, &qword_131710, &qword_F5A20, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  v15 = v19;
  sub_E6AC4();

  (*(v3 + 8))(v5, v15);
  sub_3C2A0(&qword_131730, &qword_131718, &qword_F5A28, &protocol conformance descriptor for Publishers.Map<A, B>);
  v16 = v20;
  v17 = sub_E6A74();
  result = (*(v21 + 8))(v9, v16);
  *v22 = v17;
  return result;
}

unint64_t sub_C8C34()
{
  result = qword_131620;
  if (!qword_131620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_131618, &qword_F5958);
    sub_3C2A0(&qword_131628, &qword_131630, &qword_F5960, &protocol conformance descriptor for [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131620);
  }

  return result;
}

uint64_t sub_C8CE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA98, &unk_E9DB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_E87F0;
  sub_CA850(a2, &v8);
  *(v6 + 32) = v8;
  *(v6 + 40) = v5;

  result = __swift_destroy_boxed_opaque_existential_1(v9);
  *a3 = v6;
  return result;
}

uint64_t sub_C8D88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1316D8, &qword_F5A00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1316E0, &qword_F5A08);
  v23 = *(v21 - 8);
  __chkstk_darwin(v21);
  v10 = &v19 - v9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1316E8, &qword_F5A10);
  v22 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = &v19 - v11;
  v13 = *a2;
  v26 = *a1;
  v25 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1316F0, &qword_F5A18);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_E87F0;
  *(v14 + 32) = &_swiftEmptyDictionarySingleton;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1315E0, &unk_F5930);
  sub_3C2A0(&qword_1315E8, &qword_1315E0, &unk_F5930, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_E6AF4();

  sub_3C2A0(&qword_1316F8, &qword_1316D8, &qword_F5A00, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  sub_E6AA4();
  (*(v6 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131608, &qword_F5950);
  sub_3C2A0(&qword_131700, &qword_1316E0, &qword_F5A08, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v15 = v21;
  sub_E6AC4();
  (*(v23 + 8))(v10, v15);
  sub_3C2A0(&qword_131708, &qword_1316E8, &qword_F5A10, &protocol conformance descriptor for Publishers.Map<A, B>);
  v16 = v20;
  v17 = sub_E6A74();
  result = (*(v22 + 8))(v12, v16);
  *v24 = v17;
  return result;
}

void *sub_C917C(uint64_t a1, void *a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v28 = a1;

  v9 = 0;
  v10 = 0;
  while (v7)
  {
LABEL_10:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = *(*(v28 + 48) + v12);
    v14 = *(*(v28 + 56) + 8 * v12);

    sub_C2FD4(v9, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = a2;
    v16 = sub_E07B8(v13);
    v18 = a2[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_23;
    }

    v22 = v17;
    if (a2[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = v16;
        sub_E36F8();
        v16 = v26;
        a2 = v29;
        if (v22)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_E2B88(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_E07B8(v13);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_25;
      }
    }

    if (v22)
    {
      goto LABEL_4;
    }

LABEL_16:
    a2[(v16 >> 6) + 8] |= 1 << v16;
    *(a2[6] + v16) = v13;
    *(a2[7] + 8 * v16) = _swiftEmptyArrayStorage;
    v24 = a2[2];
    v20 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v20)
    {
      goto LABEL_24;
    }

    a2[2] = v25;
LABEL_4:
    v7 &= v7 - 1;
    sub_22EB8(v14);
    v9 = sub_C93AC;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      sub_C2FD4(v9, 0);
      return a2;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_E7C54();
  __break(1u);
  return result;
}

void *sub_C93BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_C917C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void *sub_C93EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130720, &unk_F59E0);
  result = sub_E7AE4();
  v4 = result;
  v5 = 0;
  v6 = *(v2 + 64);
  v34 = v2 + 64;
  v37 = result;
  v38 = v2;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v35 = v10;
  v36 = result + 8;
  if ((v8 & v6) == 0)
  {
LABEL_5:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_37;
      }

      if (v5 >= v10)
      {
        *a2 = v4;
        return result;
      }

      v14 = *(v34 + 8 * v5);
      ++v13;
      if (v14)
      {
        v11 = __clz(__rbit64(v14));
        v12 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }
  }

  while (1)
  {
    v11 = __clz(__rbit64(v9));
    v12 = (v9 - 1) & v9;
LABEL_10:
    v15 = v11 | (v5 << 6);
    v16 = *(*(v38 + 48) + v15);
    v43 = *(*(v38 + 56) + 8 * v15);
    swift_bridgeObjectRetain_n();
    sub_C97C8(&v43);
    v40 = v5;
    v41 = v16;
    v42 = v15;
    v39 = v12;
    v17 = v43;
    v18 = *(v43 + 16);
    if (v18)
    {
      break;
    }

    v21 = _swiftEmptyArrayStorage;
LABEL_29:

    v4 = v37;
    *(v36 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    *(v37[6] + v42) = v41;
    *(v37[7] + 8 * v42) = v21;
    v31 = v37[2];
    v29 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v29)
    {
      goto LABEL_39;
    }

    v37[2] = v32;
    v9 = v39;
    v5 = v40;
    v10 = v35;
    if (!v39)
    {
      goto LABEL_5;
    }
  }

  v19 = 0;
  v20 = (v43 + 40);
  v21 = _swiftEmptyArrayStorage;
  while (v19 < *(v17 + 16))
  {
    v22 = *v20;
    v23 = *(*v20 + 16);
    v24 = v21[2];
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      goto LABEL_34;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v25 <= v21[3] >> 1)
    {
      if (*(v22 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v24 <= v25)
      {
        v27 = v24 + v23;
      }

      else
      {
        v27 = v24;
      }

      v21 = sub_23C14(isUniquelyReferenced_nonNull_native, v27, 1, v21);
      if (*(v22 + 16))
      {
LABEL_24:
        if ((v21[3] >> 1) - v21[2] < v23)
        {
          goto LABEL_36;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCB0, &qword_EA4D8);
        swift_arrayInitWithCopy();

        if (v23)
        {
          v28 = v21[2];
          v29 = __OFADD__(v28, v23);
          v30 = v28 + v23;
          if (v29)
          {
            goto LABEL_38;
          }

          v21[2] = v30;
        }

        goto LABEL_13;
      }
    }

    if (v23)
    {
      goto LABEL_35;
    }

LABEL_13:
    ++v19;
    v20 += 2;
    if (v18 == v19)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t OrderedTipProvider.requestRefresh(for:)(uint64_t result)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *v1 + 32;
    do
    {
      sub_48FC(v4, v7);
      v5 = v8;
      v6 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v6 + 16))(v3, v5, v6);
      result = __swift_destroy_boxed_opaque_existential_1(v7);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t OrderedTipProvider<>.init(providers:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_CA344();
  result = sub_E7574();
  *a2 = a1;
  a2[1] = result;
  return result;
}

Swift::Int sub_C97C8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_CA330(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_E7BA4(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAA0, &unk_F59F0);
      v7 = sub_E7264();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_C991C(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_C991C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_CA134(v8);
      v8 = result;
    }

    v82 = v8 + 2;
    v83 = v8[2];
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = &v8[2 * v83];
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_C9EA4((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23350(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v36 = v8[3];
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_23350((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v37;
    v38 = v8 + 4;
    v39 = &v8[2 * v5 + 4];
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = v8[4];
          v41 = v8[5];
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = &v8[2 * v37];
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = &v38[2 * v5];
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = &v8[2 * v37];
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = &v38[2 * v5];
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = &v38[2 * v5 - 2];
        v78 = *v77;
        v79 = &v38[2 * v5];
        v80 = v79[1];
        sub_C9EA4((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = v8[2];
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove(&v38[2 * v5], v79 + 2, 16 * (v81 - 1 - v5));
        v8[2] = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v38[2 * v37];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = &v8[2 * v37];
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = &v38[2 * v5];
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_C9EA4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_CA0A8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_CA134(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_CA148(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131738, &qword_F5A40);
  result = sub_E7AE4();
  v6 = 0;
  v25 = a3;
  v26 = result;
  v9 = *(a3 + 64);
  v8 = a3 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v23 = result + 8;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(*(v25 + 48) + v17);
      v28 = *(*(v25 + 56) + 8 * v17);

      a1(&v27, &v28);
      if (v3)
      {
        break;
      }

      *(v23 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v26;
      v19 = v27;
      *(v26[6] + v17) = v18;
      *(v26[7] + 8 * v17) = v19;
      v20 = v26[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_17;
      }

      v26[2] = v22;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    return v26;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_CA344()
{
  result = qword_1317A0;
  if (!qword_1317A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1317A0);
  }

  return result;
}

void sub_CA390(uint64_t a1)
{
  sub_CA7EC(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_CA418(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_CA59C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

void sub_CA7EC(uint64_t a1)
{
  if (!qword_1316D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12D048, &qword_E90B0);
    v1 = sub_E7284();
    if (!v2)
    {
      atomic_store(v1, &qword_1316D0);
    }
  }
}

uint64_t sub_CA850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131720, &qword_F5A38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_CA8C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

void *sub_CA8F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v6[2] = v2 + 16;
  result = sub_CA148(sub_CA958, v6, v4);
  *a2 = result;
  return result;
}

uint64_t RemoveAbandonedDownloadsTipProvider.tips.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131740, &unk_F5A60);
  v2 = *(v1 - 8);
  result = __chkstk_darwin(v1);
  v5 = v7 - v4;
  if (*(v0 + 32))
  {
    v7[1] = *(v0 + 32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131D90, &unk_F5ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131750, &qword_F58B0);
    sub_3C2A0(&unk_131DA0, &unk_131D90, &unk_F5ED0, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_E6AC4();

    sub_3C2A0(&unk_131760, &unk_131740, &unk_F5A60, &protocol conformance descriptor for Publishers.Map<A, B>);
    v6 = sub_E6A74();
    (*(v2 + 8))(v5, v1);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_CAB40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131CB0, &qword_F5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_E87F0;
  *(inited + 32) = 3;
  v5 = inited + 32;
  *(inited + 40) = v3;
  v6 = sub_B18B8(inited);
  swift_setDeallocating();

  result = sub_110AC(v5, qword_131A30, &qword_F5F80);
  *a2 = v6;
  return result;
}

uint64_t RemoveAbandonedDownloadsTipProvider.__allocating_init(asPartOf:)(void *a1)
{
  v2 = swift_allocObject();
  RemoveAbandonedDownloadsTipProvider.init(asPartOf:)(a1);
  return v2;
}

void *RemoveAbandonedDownloadsTipProvider.init(asPartOf:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D20, "Ju");
  __chkstk_darwin(v4 - 8);
  v6 = v37 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131770, &qword_F5A70);
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v38 = v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131778, &qword_F5A78);
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  __chkstk_darwin(v8);
  v39 = v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131780, &qword_F5A80);
  v12 = *(v11 - 8);
  v46 = v11;
  v47 = v12;
  __chkstk_darwin(v11);
  v40 = v37 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131788, &qword_F5A88);
  v15 = *(v14 - 8);
  v48 = v14;
  v49 = v15;
  __chkstk_darwin(v14);
  v41 = v37 - v16;
  v1[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131790, &qword_F5A90);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 16) = 0;
  v1[6] = v17;
  v1[8] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131798, &qword_F5A98);
  swift_allocObject();
  v19 = sub_E69D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  sub_E6DA4();
  v20 = [v50 privateQueueContext];
  swift_unknownObjectRelease();
  v1[9] = a1;
  v37[1] = a1;
  v1[5] = v20;
  v1[2] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
  swift_allocObject();

  v37[0] = v20;

  v1[3] = sub_E69D4();
  swift_allocObject();
  v1[7] = sub_E69D4();
  v50 = v19;
  v21 = sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  v22 = sub_E7584();
  v54 = v22;
  v23 = sub_E7594();
  (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  v24 = sub_3C2A0(&qword_1317A8, &qword_131798, &qword_F5A98, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v25 = sub_C7B2C(&qword_1317B0, &qword_1317A0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v26 = v38;
  sub_E6A54();
  sub_110AC(v6, &qword_131D20, "Ju");

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D70, &unk_F5EC0);
  v50 = v18;
  v51 = v21;
  v52 = v24;
  v53 = v25;
  swift_getOpaqueTypeConformance2();
  v27 = v39;
  v28 = v42;
  sub_E6AC4();
  (*(v45 + 8))(v26, v28);
  v29 = sub_3C2A0(&qword_1317C0, &qword_131778, &qword_F5A78, &protocol conformance descriptor for Publishers.Map<A, B>);
  v30 = v40;
  v31 = v43;
  sub_E6A64();
  (*(v44 + 8))(v27, v31);
  swift_allocObject();
  swift_weakInit();

  v50 = v31;
  v51 = v29;
  swift_getOpaqueTypeConformance2();
  v32 = v46;
  v33 = v41;
  sub_E6A84();

  (*(v47 + 8))(v30, v32);

  sub_3C2A0(&qword_1317C8, &qword_131788, &qword_F5A88, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  v34 = v48;
  v35 = sub_E6A74();

  (*(v49 + 8))(v33, v34);
  v2[4] = v35;

  return v2;
}

uint64_t sub_CB368@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131980, &qword_F5BB8);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  sub_26324(a1, v13 - v5, &unk_131980, &qword_F5BB8);
  v7 = type metadata accessor for RemoveAbandonedDownloadsTip(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_110AC(v6, &unk_131980, &qword_F5BB8);
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
  }

  else
  {
    *(&v20 + 1) = v7;
    v21 = sub_CF1DC(&unk_131A20, type metadata accessor for RemoveAbandonedDownloadsTip, &protocol conformance descriptor for RemoveAbandonedDownloadsTip);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
    sub_CF25C(v6, boxed_opaque_existential_1);
  }

  sub_26324(&v19, &v16, &qword_131F10, &unk_F5FE0);
  v13[0] = v16;
  v13[1] = v17;
  v14 = v18;
  if (*(&v17 + 1))
  {
    sub_4524(v13, v15);
    v9 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_23C14(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_23C14((v10 > 1), v11 + 1, 1, v9);
    }

    v9[2] = v11 + 1;
    sub_4524(v15, &v9[5 * v11 + 4]);
  }

  else
  {
    sub_110AC(v13, &qword_131F10, &unk_F5FE0);
    v9 = _swiftEmptyArrayStorage;
  }

  result = sub_110AC(&v19, &qword_131F10, &unk_F5FE0);
  *a2 = v9;
  return result;
}

uint64_t sub_CB5D4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_CB60C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 48);
    os_unfair_lock_lock((v3 + 24));
    sub_CDA60((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  return result;
}

uint64_t RemoveAbandonedDownloadsTipProvider.requestRefresh(for:)(uint64_t a1)
{
  result = sub_C6FB8(3u, a1);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
    sub_3C2A0(&qword_1317D0, &qword_131FA0, &qword_F58A0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    return sub_E6A44();
  }

  return result;
}

uint64_t sub_CB71C()
{
  v0 = sub_E6974();
  v31 = *(v0 - 8);
  __chkstk_darwin(v0);
  v32 = (&v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_E6BA4();
  v34 = *(v37 - 8);
  __chkstk_darwin(v37);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_E6BC4();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_E7604();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_E59C4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() managedAssetsDirectoryURL];
  sub_E5994();

  sub_E59A4();
  (*(v11 + 8))(v13, v10);
  sub_E70A4();

  v15 = sub_E6984();

  if (v15 == -1)
  {
    v26 = v31;
    v27 = v32;
    sub_E6954();
    v28 = sub_E6964();
    v29 = sub_E74B4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "Failed to set up a dispatch source to monitor downloads directory. Tip will not referesh on downloads changes.", v30, 2u);
    }

    return (*(v26 + 8))(v27, v0);
  }

  else
  {
    sub_4ABC(0, &qword_1319F8, OS_dispatch_source_ptr);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A00, &qword_F5C10);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_E9EF0;
    sub_E75E4();
    sub_E75F4();
    aBlock = v16;
    sub_CF1DC(&qword_131A08, &type metadata accessor for OS_dispatch_source.FileSystemEvent, &protocol conformance descriptor for OS_dispatch_source.FileSystemEvent);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A10, &qword_F5C18);
    sub_3C2A0(&qword_131A18, &qword_131A10, &qword_F5C18, &protocol conformance descriptor for [A]);
    sub_E7874();
    sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
    v17 = sub_E7584();
    v18 = sub_E7614();

    (*(v7 + 8))(v9, v6);
    swift_getObjectType();
    v19 = swift_allocObject();
    swift_weakInit();
    v43 = sub_CF224;
    v44 = v19;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v32 = &v41;
    v41 = sub_2D68;
    v42 = &block_descriptor_0;
    v20 = _Block_copy(&aBlock);

    v21 = v33;
    sub_E6BB4();
    sub_CCEA8();
    sub_E7624();
    _Block_release(v20);
    v34 = *(v34 + 8);
    (v34)(v3, v37);
    v22 = v36;
    v35 = *(v35 + 8);
    (v35)(v21, v36);

    v23 = swift_allocObject();
    *(v23 + 16) = v15;
    v43 = sub_CF254;
    v44 = v23;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_2D68;
    v42 = &block_descriptor_24;
    v24 = _Block_copy(&aBlock);
    sub_E6BB4();
    sub_CCEA8();
    sub_E7634();
    _Block_release(v24);
    (v34)(v3, v37);
    (v35)(v21, v22);

    sub_E7654();
    *(v38 + 64) = v18;
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_CBE74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D20, "Ju");
  __chkstk_darwin(v1 - 8);
  v83 = &v56 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1318B0, &qword_F5B50);
  v4 = *(v3 - 8);
  v84 = v3;
  v85 = v4;
  __chkstk_darwin(v3);
  v81 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1318B8, &qword_F5B58);
  v7 = *(v6 - 8);
  v86 = v6;
  v87 = v7;
  __chkstk_darwin(v6);
  v82 = &v56 - v8;
  v68 = sub_E75B4();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v62 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1318C0, &qword_F5B60);
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v63 = &v56 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1318C8, &qword_F5B68);
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v65 = &v56 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1318D0, &qword_F5B70);
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v66 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1318D8, &qword_F5B78);
  v14 = *(v13 - 8);
  v76 = v13;
  v77 = v14;
  __chkstk_darwin(v13);
  v69 = &v56 - v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1318E0, &qword_F5B80);
  v80 = *(v78 - 8);
  __chkstk_darwin(v78);
  v89 = &v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1318E8, &qword_F5B88);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v56 - v19;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1318F0, &unk_F5B90);
  v79 = *(v90 - 8);
  __chkstk_darwin(v90);
  v91 = &v56 - v21;
  v22 = sub_E7534();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(v0 + 72);
  sub_4ABC(0, &qword_12CE20, NSUserDefaults_ptr);
  (*(v23 + 104))(v25, enum case for NSUserDefaults.Name.shared(_:), v22);
  sub_C7B2C(&qword_12D040, &qword_12CE20, NSUserDefaults_ptr, &protocol conformance descriptor for NSUserDefaults);
  sub_E6DB4();
  (*(v23 + 8))(v25, v22);
  v59 = v92;
  sub_E7064();
  v26 = sub_E7514();

  v92 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131510, &qword_F58A8);
  v60 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_3C2A0(&qword_131900, &qword_131510, &qword_F58A8, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_E6AC4();

  v57 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_3C2A0(&qword_131908, &qword_1318E8, &qword_F5B88, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_E6AF4();
  (*(v18 + 8))(v20, v17);
  v27 = v88;
  v92 = *(v88 + 56);

  v28 = v62;
  sub_E75A4();
  v58 = sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  v29 = sub_E7584();
  v96 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
  sub_3C2A0(&qword_131910, &qword_131FA0, &qword_F58A0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v61 = sub_C7B2C(&qword_1317B0, &qword_1317A0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v30 = v63;
  sub_E6B24();

  (*(v67 + 8))(v28, v68);

  v92 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131918, &qword_F5BA0);
  sub_3C2A0(&qword_131920, &qword_1318C0, &qword_F5B60, &protocol conformance descriptor for Publishers.Throttle<A, B>);
  sub_3C2A0(&qword_131928, &qword_131918, &qword_F5BA0, &protocol conformance descriptor for [A]);
  v31 = v65;
  v32 = v70;
  sub_E6B04();
  (*(v71 + 8))(v30, v32);
  sub_3C2A0(&qword_131930, &qword_1318C8, &qword_F5B68, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  v33 = v66;
  v34 = v72;
  sub_E6AC4();
  (*(v73 + 8))(v31, v34);
  v92 = *(v27 + 24);
  sub_3C2A0(&qword_131938, &qword_1318D0, &qword_F5B70, v57);
  sub_3C2A0(&qword_131940, &unk_1318F0, &unk_F5B90, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  v35 = v69;
  v36 = v74;
  sub_E6AE4();
  v75[1](v33, v36);
  v37 = *(v27 + 40);
  v38 = swift_allocObject();
  v39 = v59;
  *(v38 + 16) = v59;
  *(v38 + 24) = v37;
  v40 = v37;
  v75 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131948, &qword_F5BA8);
  sub_3C2A0(&qword_131950, &qword_1318D8, &qword_F5B78, &protocol conformance descriptor for Publishers.Merge3<A, B, C>);
  sub_3C2A0(&qword_131958, &qword_131948, &qword_F5BA8, v60);
  v41 = v76;
  sub_E6B54();

  (*(v77 + 8))(v35, v41);
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  *(v42 + 24) = v64;

  sub_E69B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131960, &qword_F5BB0);
  sub_3C2A0(&qword_131968, &qword_1318E0, &qword_F5B80, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  sub_3C2A0(&qword_131970, &qword_131960, &qword_F5BB0, &protocol conformance descriptor for Publishers.ReplaceError<A>);
  v43 = v81;
  v44 = v78;
  sub_E6B54();

  v45 = v58;
  v46 = sub_E7584();
  v92 = v46;
  v47 = sub_E7594();
  v48 = v83;
  (*(*(v47 - 8) + 56))(v83, 1, 1, v47);
  v49 = sub_3C2A0(&qword_131978, &qword_1318B0, &qword_F5B50, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v50 = v82;
  v51 = v84;
  v52 = v61;
  sub_E6A54();
  sub_110AC(v48, &qword_131D20, "Ju");

  (*(v85 + 8))(v43, v51);
  swift_allocObject();
  swift_weakInit();
  v92 = v51;
  v93 = v45;
  v94 = v49;
  v95 = v52;
  swift_getOpaqueTypeConformance2();
  v53 = v86;
  v54 = sub_E6B44();

  (*(v87 + 8))(v50, v53);
  (*(v80 + 8))(v89, v44);
  (*(v79 + 8))(v91, v90);
  return v54;
}

uint64_t sub_CCDE4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
    sub_3C2A0(&qword_1317D0, &qword_131FA0, &qword_F58A0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    sub_E6A44();
  }

  return result;
}

uint64_t sub_CCEA8()
{
  sub_E6BA4();
  sub_CF1DC(&qword_12CE00, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE08, &qword_E8AB0);
  sub_3C2A0(&qword_12CE10, &qword_12CE08, &qword_E8AB0, &protocol conformance descriptor for [A]);
  return sub_E7874();
}

uint64_t RemoveAbandonedDownloadsTipProvider.deinit()
{
  if (*(v0 + 64))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_E7644();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return v0;
}

uint64_t RemoveAbandonedDownloadsTipProvider.__deallocating_deinit()
{
  RemoveAbandonedDownloadsTipProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_CD060@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1319B8, &qword_F5BF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1319C0, &qword_F5BF8);
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1319C8, &qword_F5C00);
  v28 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  if ([a1 episodeLimitForKey:kMTPodcastEpisodeLimitDefaultKey] == 0x100000000 && (sub_E7114(), v14 = v5, v15 = v13, v27 = v7, v16 = v4, v17 = a1, v18 = v10, v19 = sub_E7024(), v20 = v11, v21 = v18, v22 = v15, v5 = v14, , v23 = v17, v4 = v16, v7 = v27, LOBYTE(v14) = objc_msgSend(v23, "BOOLForKey:", v19), v19, (v14 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130940, &qword_F35E0);
    v32 = sub_E76F4();
    v31 = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1319D8, &qword_F5C08);
    sub_3C2A0(&qword_1319E0, &qword_1319D8, &qword_F5C08, &protocol conformance descriptor for Future<A, B>);
    sub_E6A94();

    v32 = _swiftEmptyArrayStorage;
    sub_3C2A0(&qword_1319E8, &qword_1319C0, &qword_F5BF8, &protocol conformance descriptor for Publishers.ReplaceError<A>);
    v26 = v30;
    sub_E6A94();
    (*(v29 + 8))(v21, v26);
    sub_3C2A0(&qword_1319F0, &qword_1319C8, &qword_F5C00, &protocol conformance descriptor for Publishers.ReplaceError<A>);
    v24 = sub_E6A74();
    result = (*(v28 + 8))(v22, v20);
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130940, &qword_F35E0);
    sub_E6A04();
    sub_3C2A0(&qword_1319D0, &qword_1319B8, &qword_F5BF0, &protocol conformance descriptor for Just<A>);
    v24 = sub_E6A74();
    result = (*(v5 + 8))(v7, v4);
  }

  *a2 = v24;
  return result;
}

uint64_t sub_CD4D4(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131980, &qword_F5BB8);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  __chkstk_darwin(v9 - 8);
  v11 = v18 - v10;
  v12 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131990, &qword_F5BC8);
  v13 = sub_E7324();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = a2;
  v14[4] = sub_CDB34;
  v14[5] = a3;

  v15 = a2;
  v18[1] = sub_E6A24();
  v16 = type metadata accessor for RemoveAbandonedDownloadsTip(0);
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  sub_3C2A0(&unk_131998, &qword_131990, &qword_F5BC8, &protocol conformance descriptor for Future<A, B>);
  sub_E6A94();
  sub_110AC(v8, &unk_131980, &qword_F5BB8);
}

uint64_t sub_CD734(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_E69C4();
  }

  return result;
}

uint64_t sub_CD7B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131740, &unk_F5A60);
  v2 = *(v1 - 8);
  result = __chkstk_darwin(v1);
  v5 = v7 - v4;
  if (*(*v0 + 32))
  {
    v7[1] = *(*v0 + 32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131D90, &unk_F5ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131750, &qword_F58B0);
    sub_3C2A0(&unk_131DA0, &unk_131D90, &unk_F5ED0, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_E6AC4();

    sub_3C2A0(&unk_131760, &unk_131740, &unk_F5A60, &protocol conformance descriptor for Publishers.Map<A, B>);
    v6 = sub_E6A74();
    (*(v2 + 8))(v5, v1);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_CD980(uint64_t a1)
{
  result = sub_C6FB8(3u, a1);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
    sub_3C2A0(&qword_1317D0, &qword_131FA0, &qword_F58A0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    return sub_E6A44();
  }

  return result;
}

void *sub_CDA60(void *result)
{
  if (!*result)
  {
    v1 = result;
    sub_CB71C();
    result = sub_CBE74();
    *v1 = result;
  }

  return result;
}

uint64_t sub_CDA9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_CDAE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_CDB34()
{
  sub_4ABC(0, &qword_12CE40, MPMediaLibrary_ptr);
  sub_E6DA4();
  return v1;
}

uint64_t sub_CDB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_E6974();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v7 = sub_E60F4();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_CDCC0, 0, 0);
}

uint64_t sub_CDCC0()
{
  *(v0 + 16) = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130940, &qword_F35E0);
  sub_3C2A0(&qword_1319A8, &qword_130940, &qword_F35E0, &protocol conformance descriptor for [A]);
  if ((sub_E7404() & 1) != 0 && !sub_CE73C())
  {
    sub_E6474();
    v10 = swift_task_alloc();
    *(v0 + 136) = v10;
    *(v10 + 16) = *(v0 + 48);
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v11[1] = sub_CDF98;
    v12 = *(v0 + 128);
    v13 = *(v0 + 32);
    v14 = *(v0 + 40);

    return static MediaSpaceCalculator.spaceOccupied(by:managedObjectContext:mediaLibrary:)(v12, v13, v14, sub_CF1B4, v10);
  }

  else
  {
    sub_E6954();

    v1 = sub_E6964();
    v2 = sub_E7494();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 32);
    if (v3)
    {
      v5 = swift_slowAlloc();
      *v5 = 67109376;
      *(v5 + 4) = *(v4 + 16) == 0;

      *(v5 + 8) = 1024;
      *(v5 + 10) = sub_CE73C();
      _os_log_impl(&dword_0, v1, v2, "Skipping showing the abandoned download tips (isEmpty: %{BOOL}d, throttled: %{BOOL}d", v5, 0xEu);
    }

    else
    {
    }

    v6 = *(v0 + 24);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v7 = type metadata accessor for RemoveAbandonedDownloadsTip(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_CDF98()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_CE58C;
  }

  else
  {

    v2 = sub_CE0B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_CE0B4(uint64_t a1)
{
  v50 = v1;
  if (sub_E60E4())
  {
    v2 = v1[15];
    v3 = v1[16];
    v4 = v1[13];
    v5 = v1[14];
    sub_E6954();
    (*(v5 + 16))(v2, v3, v4);

    v6 = sub_E6964();
    v7 = sub_E74D4();

    v8 = os_log_type_enabled(v6, v7);
    v10 = v1[14];
    v9 = v1[15];
    v11 = v1[12];
    v12 = v1[13];
    v14 = v1[8];
    v13 = v1[9];
    if (v8)
    {
      v47 = v1[8];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v49 = v43;
      *v15 = 138412546;
      v45 = v11;
      v17 = sub_E60E4();
      v18 = [objc_opt_self() stringWithBytesize:v17];
      *(v15 + 4) = v18;
      *v16 = v18;
      (*(v10 + 8))(v9, v12);
      *(v15 + 12) = 2080;
      v19 = sub_E7204();
      v21 = sub_23E64(v19, v20, &v49);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_0, v6, v7, "Updating abandoned downloads tip for episodes reclaiming (%@: %s", v15, 0x16u);
      sub_110AC(v16, &unk_12DB20, &unk_F0760);

      __swift_destroy_boxed_opaque_existential_1(v43);

      (*(v13 + 8))(v45, v47);
    }

    else
    {

      (*(v10 + 8))(v9, v12);
      (*(v13 + 8))(v11, v14);
    }

    v36 = v1[3];
    v37 = v1[4];
    (*(v1[14] + 32))(v36, v1[16], v1[13]);
    v38 = type metadata accessor for RemoveAbandonedDownloadsTip(0);
    *(v36 + *(v38 + 20)) = v37;
    (*(*(v38 - 8) + 56))(v36, 0, 1, v38);
  }

  else
  {
    sub_E6954();

    v22 = sub_E6964();
    v23 = sub_E74B4();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v1[16];
    v27 = v1[13];
    v26 = v1[14];
    v28 = v1[11];
    v30 = v1[8];
    v29 = v1[9];
    if (v24)
    {
      v46 = v1[11];
      v48 = v1[13];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v49 = v32;
      *v31 = 136315138;
      v33 = sub_E7204();
      v44 = v25;
      v35 = sub_23E64(v33, v34, &v49);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_0, v22, v23, "Non-zero downloaded episodes has zero downloaded space for episodes: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);

      (*(v29 + 8))(v46, v30);
      (*(v26 + 8))(v44, v48);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
      (*(v26 + 8))(v25, v27);
    }

    v39 = v1[3];
    v40 = type metadata accessor for RemoveAbandonedDownloadsTip(0);
    (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
  }

  v41 = v1[1];

  return v41();
}

uint64_t sub_CE58C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_CE634()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_CE67C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_588C;

  return sub_CDB78(a1, v4, v5, v7, v6);
}

BOOL sub_CE73C()
{
  v0 = sub_E6974();
  v69 = *(v0 - 8);
  __chkstk_darwin(v0);
  v68 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_E5AB4();
  v74 = *(v72 - 1);
  __chkstk_darwin(v72);
  v71 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v4 = __chkstk_darwin(v3 - 8);
  v73 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v60 - v6;
  v8 = sub_E5A54();
  v70 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v67 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v66 = &v60 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v60 - v14;
  __chkstk_darwin(v13);
  v75 = &v60 - v16;
  v17 = sub_E5AC4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  sub_E5AA4();
  v22 = kMTEpisodeAbandonedRemovalTipLastDisplayedTimeKey;
  if ([v21 objectForKey:kMTEpisodeAbandonedRemovalTipLastDisplayedTimeKey])
  {
    v61 = v15;
    v62 = v0;
    v64 = v18;
    v65 = v17;
    sub_E7864();
    swift_unknownObjectRelease();
    sub_110AC(v76, &qword_1319B0, &qword_EAC58);
    [v21 doubleForKey:v22];
    sub_E5A04();
    v23 = v74;
    v24 = *(v74 + 13);
    v25 = v71;
    v26 = v72;
    v24(v71, enum case for Calendar.Component.month(_:), v72);
    sub_E5A84();
    v27 = v8;
    v30 = *(v23 + 1);
    v29 = v23 + 8;
    v28 = v30;
    (v30)(v25, v26);
    v31 = v73;
    sub_26324(v7, v73, &qword_131EE0, &unk_F5BE0);
    v32 = v7;
    v33 = v70;
    v34 = v31;
    v35 = v27;
    v36 = (*(v70 + 48))(v34, 1, v27);
    v63 = v32;
    if (v36 != 1)
    {
      v51 = *(v33 + 32);
      v69 = v28;
      v52 = v61;
      v51(v61, v73, v27);
      v53 = v66;
      sub_E5A44();
      v54 = v24;
      v55 = v71;
      v74 = v29;
      v56 = v72;
      v54(v71, enum case for Calendar.Component.day(_:), v72);
      v57 = sub_E5A94();

      (v69)(v55, v56);
      v58 = *(v33 + 8);
      v58(v53, v35);
      v58(v52, v35);
      sub_110AC(v63, &qword_131EE0, &unk_F5BE0);
      v58(v75, v35);
      (*(v64 + 8))(v20, v65);
      return v57 == -1;
    }

    v72 = v21;
    v74 = v20;
    sub_110AC(v73, &qword_131EE0, &unk_F5BE0);
    v37 = v68;
    sub_E6954();
    v38 = v67;
    v39 = v27;
    (*(v33 + 16))(v67, v75, v27);
    v40 = sub_E6964();
    v41 = sub_E74B4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v76[0] = v43;
      *v42 = 136315138;
      sub_CF1DC(&unk_12DDE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v44 = sub_E7BB4();
      v45 = v38;
      v46 = v37;
      v48 = v47;
      v49 = *(v33 + 8);
      v49(v45, v39);
      v50 = sub_23E64(v44, v48, v76);

      *(v42 + 4) = v50;
      _os_log_impl(&dword_0, v40, v41, "Unable to compute next date for the tip to be throttled after an accept. Hiding by default, last presentation date: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);

      v69[1](v46, v62);
    }

    else
    {

      v49 = *(v33 + 8);
      v49(v38, v27);
      v69[1](v37, v62);
    }

    sub_110AC(v63, &qword_131EE0, &unk_F5BE0);
    v49(v75, v39);
    (*(v64 + 8))(v74, v65);
  }

  else
  {
    (*(v18 + 8))(v20, v17);

    memset(v76, 0, 32);
    sub_110AC(v76, &qword_1319B0, &qword_EAC58);
  }

  return 0;
}

void sub_CEF2C(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
  [v3 setResultType:1];
  sub_4ABC(0, &qword_131F00, MTEpisode_ptr);
  v4 = sub_E77B4();
  [v3 setPredicate:v4];

  sub_4ABC(0, &qword_12E090, NSManagedObjectID_ptr);
  v5 = sub_E7734();
  if (v1)
  {

    return;
  }

  v6 = v5;
  if (!(v5 >> 62))
  {
    v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_18:

    *a1 = _swiftEmptyArrayStorage;
    return;
  }

  v7 = sub_E7AC4();
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_5:
  sub_15D58(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = sub_E79B4();
        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          v20 = v9;
          sub_15D58((v10 > 1), v11 + 1, 1);
          v9 = v20;
        }

        ++v8;
        _swiftEmptyArrayStorage[2] = v11 + 1;
        v12 = &_swiftEmptyArrayStorage[3 * v11];
        v12[4] = v9;
        v12[5] = 0;
        *(v12 + 48) = 1;
      }

      while (v7 != v8);
    }

    else
    {
      v13 = 32;
      do
      {
        v14 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        v16 = *(v6 + v13);
        if (v14 >= v15 >> 1)
        {
          v18 = v15 > 1;
          v19 = v16;
          sub_15D58(v18, v14 + 1, 1);
          v16 = v19;
        }

        _swiftEmptyArrayStorage[2] = v14 + 1;
        v17 = &_swiftEmptyArrayStorage[3 * v14];
        v17[4] = v16;
        v17[5] = 0;
        *(v17 + 48) = 1;
        v13 += 8;
        --v7;
      }

      while (v7);
    }

    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_CF1DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_CF25C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveAbandonedDownloadsTip(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RemoveOlderDownloadsTipProvider.unownedExecutor.getter()
{
  sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  v0 = sub_E7564();
  v1 = sub_E7554();

  return v1;
}

uint64_t RemoveOlderDownloadsTipProvider.suggestedEpisodeLimit.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeLimit;
  swift_beginAccess();
  return sub_26324(v1 + v3, a1, &qword_131A48, &qword_F5C30);
}

uint64_t sub_CF390(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A48, &qword_F5C30);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_26324(a1, &v6 - v3, &qword_131A48, &qword_F5C30);
  return RemoveOlderDownloadsTipProvider.suggestedEpisodeLimit.setter(v4);
}

uint64_t RemoveOlderDownloadsTipProvider.suggestedEpisodeLimit.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A50, &qword_F5C38);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A48, &qword_F5C30);
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - v8;
  v10 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeLimit;
  swift_beginAccess();
  sub_CF630(a1, v1 + v10);
  swift_endAccess();
  sub_26324(v1 + v10, v9, &qword_131A48, &qword_F5C30);
  sub_E66F4();
  sub_110AC(v9, &qword_131A48, &qword_F5C30);
  sub_26324(v1 + v10, v9, &qword_131A48, &qword_F5C30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A68, &qword_F5C40);
  sub_E7334();
  sub_110AC(a1, &qword_131A48, &qword_F5C30);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_CF630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A48, &qword_F5C30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*RemoveOlderDownloadsTipProvider.suggestedEpisodeLimit.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A50, &qword_F5C38);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v4[6] = v7;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A48, &qword_F5C30) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeLimit;
  v4[7] = v9;
  v4[8] = v10;
  swift_beginAccess();
  return sub_CF7DC;
}

void sub_CF7DC(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    v5 = v3[6];
    v4 = v3[7];
  }

  else
  {
    v4 = v3[7];
    v6 = v3[8];
    v7 = v3[5];
    v5 = v3[6];
    v9 = v3[3];
    v8 = v3[4];
    sub_26324(v9 + v6, v4, &qword_131A48, &qword_F5C30);
    sub_E66F4();
    sub_110AC(v4, &qword_131A48, &qword_F5C30);
    sub_26324(v9 + v6, v4, &qword_131A48, &qword_F5C30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A68, &qword_F5C40);
    sub_E7334();
    (*(v7 + 8))(v5, v8);
  }

  free(v4);
  free(v5);

  free(v3);
}

uint64_t RemoveOlderDownloadsTipProvider.suggestedEpisodeLimitStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeLimitStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131A70, &unk_F5C48);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *sub_CF9D4()
{
  v1 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider____lazy_storage___mediaLibrary;
  v2 = *(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider____lazy_storage___mediaLibrary);
  v3 = v2;
  if (v2 == &dword_0 + 1)
  {
    sub_4ABC(0, &qword_12CE40, MPMediaLibrary_ptr);
    v4 = v0;
    sub_E6D74();
    v3 = v8;
    v5 = *(v0 + v1);
    *(v4 + v1) = v8;
    v6 = v8;
    sub_D6A30(v5);
  }

  sub_D77A0(v2);
  return v3;
}

uint64_t sub_CFA7C()
{
  v1 = (v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider____lazy_storage___restoreToken);
  if (*(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider____lazy_storage___restoreToken + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_CFAF8();
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t sub_CFAF8()
{
  v0 = sub_CF9D4();
  if (!v0)
  {
    v0 = [objc_opt_self() defaultMediaLibrary];
  }

  v1 = v0;
  if ([v0 valueForDatabaseProperty:MTMediaLibraryRestoreTokenProperty])
  {
    sub_E7864();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {

      return v3;
    }
  }

  else
  {
    sub_110AC(v6, &qword_1319B0, &qword_EAC58);
  }

  return 0;
}

uint64_t RemoveOlderDownloadsTipProvider.__allocating_init(asPartOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RemoveOlderDownloadsTipProvider.init(asPartOf:)(a1);
  return v2;
}

uint64_t RemoveOlderDownloadsTipProvider.init(asPartOf:)(uint64_t a1)
{
  v2 = v1;
  v67 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D20, "Ju");
  __chkstk_darwin(v3 - 8);
  v53 = &v52 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A80, &qword_F5C58);
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A88, &qword_F5C60);
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v57 = &v52 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A48, &qword_F5C30);
  __chkstk_darwin(v65);
  v64 = &v52 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A90, &qword_F5C68);
  v9 = *(v68 - 8);
  __chkstk_darwin(v68);
  v63 = &v52 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131A70, &unk_F5C48);
  v54 = *(v69 - 8);
  __chkstk_darwin(v69);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A98, &qword_F5C70);
  v14 = __chkstk_darwin(v13 - 8);
  v66 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v52 - v16;
  v18 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeLimit;
  v19 = sub_E5C84();
  v20 = *(v19 - 8);
  v61 = *(v20 + 56);
  v62 = v20 + 56;
  v61(v2 + v18, 1, 1, v19);
  *(v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_storageRecommendationPublisher) = 0;
  v21 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider__globalAutomaticDownloadLimit;
  sub_E76B4();
  sub_E76D4();
  sub_E7064();
  v22 = objc_opt_self();
  v23 = [v22 _applePodcastsFoundationSettingsUserDefaults];
  *(v2 + v21) = sub_E6B64();
  v24 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider__ignoredConsumedSpaceQuantity;
  sub_E7064();
  v25 = [v22 _applePodcastsFoundationSharedUserDefaults];
  *(v2 + v24) = sub_E6B94();
  v26 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider__lastDismissedRestoreToken;
  sub_E7064();
  v27 = [v22 _applePodcastsFoundationSharedUserDefaults];
  *(v2 + v26) = sub_E6B84();
  v28 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider__lastDismissedOSVersion;
  sub_E7064();
  v29 = [v22 _applePodcastsFoundationSharedUserDefaults];
  *(v2 + v28) = sub_E6B84();
  *(v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_observersTask) = 0;
  *(v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider____lazy_storage___mediaLibrary) = 1;
  v30 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_spaceDistribution;
  v31 = sub_E6454();
  (*(*(v31 - 8) + 56))(v2 + v30, 1, 1, v31);
  v32 = (v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider____lazy_storage___restoreToken);
  *v32 = 0;
  v32[1] = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A68, &qword_F5C40);
  v34 = *(v33 - 8);
  (*(v34 + 56))(v17, 1, 1, v33);
  v70 = v17;
  (*(v9 + 104))(v63, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v68);
  v68 = v12;
  sub_E7344();
  v35 = v19;
  v36 = v67;
  v61(v64, 1, 1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131AE0, &unk_F5C78);
  swift_allocObject();
  v37 = sub_E6704();
  *(v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_objectGraph) = v36;
  sub_E6474();

  sub_E6DA4();
  *(v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_mediaSpaceCalculator) = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  sub_E6DA4();
  v38 = [v71 importContext];
  v39 = v66;
  swift_unknownObjectRelease();
  *(v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_managedObjectContext) = v38;
  v65 = v17;
  sub_26324(v17, v39, &qword_131A98, &qword_F5C70);
  result = (*(v34 + 48))(v39, 1, v33);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v34 + 32))(v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_streamContinuation, v39, v33);
    v41 = v54;
    (*(v54 + 16))(v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeLimitStream, v68, v69);
    *(v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeSubject) = v37;
    v71 = v37;
    sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);

    v42 = sub_E75C4();
    v66 = v37;
    v43 = v42;
    v72 = v42;
    v44 = sub_E7594();
    v45 = v53;
    (*(*(v44 - 8) + 56))(v53, 1, 1, v44);
    sub_3C2A0(&unk_131B08, &qword_131AE0, &unk_F5C78, &protocol conformance descriptor for RepublishingValueSubject<A, B>);
    sub_D07D0();
    v46 = v55;
    sub_E6B14();
    sub_110AC(v45, &qword_131D20, "Ju");

    swift_allocObject();
    swift_weakInit();
    sub_3C2A0(&qword_131B18, &qword_131A80, &qword_F5C58, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

    v47 = v58;
    v48 = v57;
    sub_E6A84();

    (*(v56 + 8))(v46, v47);

    sub_3C2A0(&unk_131B20, &qword_131A88, &qword_F5C60, &protocol conformance descriptor for Publishers.HandleEvents<A>);
    v49 = v60;
    v50 = sub_E6A74();

    (*(v59 + 8))(v48, v49);
    (*(v41 + 8))(v68, v69);
    v51 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_storageRecommendationPublisher;
    swift_beginAccess();
    *(v2 + v51) = v50;

    sub_110AC(v65, &qword_131A98, &qword_F5C70);
    return v2;
  }

  return result;
}

uint64_t sub_D06EC(uint64_t a1, uint64_t a2)
{
  sub_110AC(a2, &qword_131A98, &qword_F5C70);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A68, &qword_F5C40);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

unint64_t sub_D07D0()
{
  result = qword_1317B0;
  if (!qword_1317B0)
  {
    sub_4ABC(255, &qword_1317A0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1317B0);
  }

  return result;
}

uint64_t sub_D0838()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D0870(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_E7304();
    v7 = sub_E7324();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    sub_A75C0(0, 0, v4, &unk_F5E78, v8);
  }

  return result;
}

Swift::Void __swiftcall RemoveOlderDownloadsTipProvider.startListeningTaskRoot()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - v2;
  sub_E7304();
  v4 = sub_E7324();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_A75C0(0, 0, v3, &unk_F5C90, v5);
}

uint64_t sub_D0AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  v4[3] = swift_task_alloc();
  v4[4] = sub_D173C(&qword_131B30, type metadata accessor for RemoveOlderDownloadsTipProvider, &protocol conformance descriptor for RemoveOlderDownloadsTipProvider);
  v6 = sub_E7294();

  return _swift_task_switch(sub_D0BC4, v6, v5);
}

uint64_t sub_D0BC4(uint64_t a1)
{
  v2 = v1[2];
  v3 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_observersTask;
  if (!*(v2 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_observersTask))
  {
    v4 = v1[3];
    v5 = v1[4];
    sub_E7304();
    v6 = sub_E7324();
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
    v7 = swift_allocObject();
    v7[2] = v2;
    v7[3] = v5;
    v7[4] = v2;
    swift_retain_n();
    *(v2 + v3) = sub_A75C0(0, 0, v4, &unk_F5E70, v7);
  }

  v8 = v1[1];

  return v8();
}

uint64_t sub_D0CFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5E10;

  return sub_D0AB0(a1, v4, v5, v6);
}

Swift::Void __swiftcall RemoveOlderDownloadsTipProvider.beginListening()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_observersTask;
  if (!*(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_observersTask))
  {
    sub_E7304();
    v5 = sub_E7324();
    (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
    v6 = sub_D173C(&qword_131B30, type metadata accessor for RemoveOlderDownloadsTipProvider, &protocol conformance descriptor for RemoveOlderDownloadsTipProvider);
    v7 = swift_allocObject();
    v7[2] = v0;
    v7[3] = v6;
    v7[4] = v0;
    swift_retain_n();
    *(v0 + v4) = sub_A75C0(0, 0, v3, &unk_F5CA0, v7);
  }
}

uint64_t sub_D0F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4[247] = a4;
  v5 = sub_E6974();
  v4[253] = v5;
  v4[259] = *(v5 - 8);
  v4[265] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131CD0, &unk_F5DA0);
  v4[271] = v6;
  v4[277] = *(v6 - 8);
  v4[278] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305B0, &qword_F2D30);
  v4[279] = v7;
  v4[280] = *(v7 - 8);
  v4[281] = swift_task_alloc();
  sub_D173C(&qword_131B30, type metadata accessor for RemoveOlderDownloadsTipProvider, &protocol conformance descriptor for RemoveOlderDownloadsTipProvider);
  v9 = sub_E7294();
  v4[282] = v9;
  v4[283] = v8;

  return _swift_task_switch(sub_D1128, v9, v8);
}

uint64_t sub_D1128()
{
  v1 = v0[281];
  v2 = v0[280];
  v3 = v0[279];
  v4 = v0[278];
  v23 = v0[277];
  v24 = v0[271];
  v5 = v0[247];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131CE0, &qword_F5DB0);
  v6 = swift_allocObject();
  v0[284] = v6;
  *(v6 + 16) = xmmword_E87F0;
  *(v6 + 32) = UIApplicationWillEnterForegroundNotification;
  v7 = swift_task_alloc();
  v0[285] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = UIApplicationWillEnterForegroundNotification;
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  v9 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v0[286] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306D0, &unk_EA4C0);
  v10 = swift_allocObject();
  v0[287] = v10;
  *(v10 + 16) = xmmword_F21B0;
  *(v10 + 32) = sub_E7064();
  *(v10 + 40) = v11;
  *(v10 + 48) = sub_E7064();
  *(v10 + 56) = v12;
  *(v10 + 64) = sub_E7064();
  *(v10 + 72) = v13;
  *(v10 + 80) = sub_E7064();
  *(v10 + 88) = v14;
  sub_E6D34();
  v15 = sub_E6D44();
  v17 = v16;
  (*(v2 + 8))(v1, v3);
  *(v10 + 96) = v15;
  *(v10 + 104) = v17;
  sub_E6D24();
  v18 = sub_E6D44();
  v20 = v19;
  (*(v23 + 8))(v4, v24);
  *(v10 + 112) = v18;
  *(v10 + 120) = v20;
  v21 = swift_task_alloc();
  v0[288] = v21;
  v21[2] = v9;
  v21[3] = v10;
  v21[4] = v5;
  swift_asyncLet_begin();
  sub_E6464();

  return _swift_asyncLet_get(v0 + 2, v0 + 289, sub_D13FC, v0 + 242);
}

uint64_t sub_D1468()
{
  v1 = *(v0 + 2314);
  if ((sub_E7364() & 1) == 0)
  {
    sub_E6954();
    v2 = sub_E6964();
    v3 = sub_E74B4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 2316);
      v5 = *(v0 + 2315);
      v6 = swift_slowAlloc();
      *v6 = 67109632;
      *(v6 + 4) = v5;
      *(v6 + 8) = 1024;
      *(v6 + 10) = v4;
      *(v6 + 14) = 1024;
      *(v6 + 16) = v1;
      _os_log_impl(&dword_0, v2, v3, "Unexpectedly exited all observer loops without task cancellation: %{BOOL}d, %{BOOL}d, %{BOOL}d", v6, 0x14u);
    }

    v7 = *(v0 + 2120);
    v8 = *(v0 + 2072);
    v9 = *(v0 + 2024);

    (*(v8 + 8))(v7, v9);
  }

  return _swift_asyncLet_finish(v0 + 1296, v0 + 2314, sub_D15AC, v0 + 2080);
}

uint64_t sub_D15C8()
{

  return _swift_asyncLet_finish(v0 + 656, v0 + 2313, sub_D164C, v0 + 2128);
}

uint64_t sub_D16A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_D173C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for RemoveOlderDownloadsTipProvider(uint64_t a1)
{
  result = qword_131B90;
  if (!qword_131B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D17D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5E10;

  return sub_D0F20(a1, v4, v5, v6);
}

uint64_t sub_D1884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_D18A8, 0, 0);
}

uint64_t sub_D18A8()
{
  v0[5] = [objc_opt_self() defaultCenter];

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_D1998;
  v3 = v0[3];
  v2 = v0[4];

  return NSNotificationCenter.respond(to:with:)(v3, &unk_F5E68, v2);
}

uint64_t sub_D1998(char a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    v6 = *(v4 + 40);

    *(v4 + 56) = a1 & 1;

    return _swift_task_switch(sub_D7A04, 0, 0);
  }
}

uint64_t sub_D1AE4(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = sub_E6974();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_D1BA4, 0, 0);
}

uint64_t sub_D1BA4(uint64_t a1)
{
  sub_E6954();
  v2 = sub_E6964();
  v3 = sub_E7494();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Updating tip recommendations in response to foreground", v4, 2u);
  }

  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v1[6] = v8;
  *v8 = v1;
  v8[1] = sub_D1CD4;

  return sub_D1DE8();
}

uint64_t sub_D1CD4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_D1DE8()
{
  v1[4] = v0;
  v1[5] = *v0;
  v2 = sub_E72D4();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_E6974();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A48, &qword_F5C30);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[17] = v4;
  v5 = swift_task_alloc();
  v1[18] = v5;
  *v5 = v1;
  v5[1] = sub_D1FD0;

  return sub_D353C(v4);
}

uint64_t sub_D1FD0()
{
  *(*v1 + 152) = v0;

  sub_D173C(&qword_131B30, type metadata accessor for RemoveOlderDownloadsTipProvider, &protocol conformance descriptor for RemoveOlderDownloadsTipProvider);
  v3 = sub_E7294();
  if (v0)
  {
    v4 = sub_D240C;
  }

  else
  {
    v4 = sub_D215C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_D215C(uint64_t a1)
{
  v26 = v1;
  v2 = v1[16];
  v3 = v1[17];
  sub_E6954();
  sub_26324(v3, v2, &qword_131A48, &qword_F5C30);
  v4 = sub_E6964();
  v5 = sub_E74A4();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[16];
  if (v6)
  {
    v8 = v1[15];
    v22 = v1[10];
    v23 = v1[9];
    v24 = v1[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    sub_26324(v7, v8, &qword_131A48, &qword_F5C30);
    v11 = sub_E7084();
    v13 = v12;
    sub_110AC(v7, &qword_131A48, &qword_F5C30);
    v14 = sub_23E64(v11, v13, &v25);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_0, v4, v5, "Issuing retention policy change recommendation: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);

    (*(v22 + 8))(v24, v23);
  }

  else
  {
    v15 = v1[13];
    v16 = v1[9];
    v17 = v1[10];

    sub_110AC(v7, &qword_131A48, &qword_F5C30);
    (*(v17 + 8))(v15, v16);
  }

  v18 = v1[17];
  v19 = v1[15];
  sub_26324(v18, v19, &qword_131A48, &qword_F5C30);
  RemoveOlderDownloadsTipProvider.suggestedEpisodeLimit.setter(v19);
  sub_110AC(v18, &qword_131A48, &qword_F5C30);

  v20 = v1[1];

  return v20();
}

uint64_t sub_D240C()
{
  v26 = v0;
  v0[2] = v0[19];
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
  if (swift_dynamicCast())
  {

    sub_E6954();
    v1 = sub_E6964();
    v2 = sub_E74A4();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_0, v1, v2, "Computing episode limit suggestion cancelled", v3, 2u);
    }

    v4 = v0[12];
    v5 = v0[9];
    v6 = v0[10];
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];

    (*(v6 + 8))(v4, v5);
    (*(v8 + 8))(v7, v9);
  }

  else
  {

    sub_E6954();
    swift_errorRetain();
    v10 = sub_E6964();
    v11 = sub_E74B4();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[19];
    v14 = v0[10];
    v15 = v0[11];
    v16 = v0[9];
    if (v12)
    {
      v24 = v0[11];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      v0[3] = v13;
      swift_errorRetain();
      v19 = sub_E7084();
      v21 = sub_23E64(v19, v20, &v25);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_0, v10, v11, "Encountered fatal error to computing episode limit suggestion: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);

      (*(v14 + 8))(v24, v16);
    }

    else
    {

      (*(v14 + 8))(v15, v16);
    }
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_D2728(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_D2748, 0, 0);
}

uint64_t sub_D2748()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_mediaSpaceCalculator);
  v0[5] = v1;
  v0[2] = v1;

  v2 = swift_task_alloc();
  v0[6] = v2;
  v3 = sub_E6474();
  v4 = sub_D173C(&qword_131D18, &type metadata accessor for MediaSpaceCalculator, &protocol conformance descriptor for MediaSpaceCalculator);
  *v2 = v0;
  v2[1] = sub_D2870;
  v5 = v0[4];

  return AsyncSequence.onNext(perform:)(&unk_F5E58, v5, v3, v4);
}

uint64_t sub_D2870(char a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v4 + 56) = a1 & 1;

    return _swift_task_switch(sub_D29C0, 0, 0);
  }
}

uint64_t sub_D29E4(uint64_t a1, void *a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131B38, &qword_F5CA8);
  v2[8] = swift_task_alloc();
  v3 = sub_E6974();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_D2B04, 0, 0);
}

uint64_t sub_D2B04(uint64_t a1)
{
  sub_E6954();
  v2 = sub_E6964();
  v3 = sub_E7494();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Updating tip recommendations in response to new storage distribution", v4, 2u);
  }

  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[9];

  (*(v6 + 8))(v5, v7);
  sub_D173C(&qword_131B30, type metadata accessor for RemoveOlderDownloadsTipProvider, &protocol conformance descriptor for RemoveOlderDownloadsTipProvider);
  v9 = sub_E7294();

  return _swift_task_switch(sub_D2C58, v9, v8);
}

uint64_t sub_D2C58()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = sub_E6454();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_spaceDistribution;
  swift_beginAccess();
  sub_D7848(v1, v3 + v6);
  swift_endAccess();
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_D2DA4;

  return sub_D1DE8();
}

uint64_t sub_D2DA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_D2ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_D2EF8, 0, 0);
}

uint64_t sub_D2EF8()
{

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_D2FB4;
  v3 = v0[4];
  v2 = v0[5];

  return NSUserDefaults.observeChanges(for:performing:)(v3, &unk_F5DF8, v2);
}

uint64_t sub_D2FB4(char a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v4 + 56) = a1 & 1;

    return _swift_task_switch(sub_D30FC, 0, 0);
  }
}

uint64_t sub_D3120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_E6974();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_D31E4, 0, 0);
}

uint64_t sub_D31E4(uint64_t a1)
{
  v17 = v1;
  sub_E6954();

  v2 = sub_E6964();
  v3 = sub_E7494();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v1[6];
    v4 = v1[7];
    v6 = v1[5];
    v8 = v1[2];
    v7 = v1[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23E64(v8, v7, &v16);
    _os_log_impl(&dword_0, v2, v3, "Updating library in response to defaults key: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v12 = v1[6];
    v11 = v1[7];
    v13 = v1[5];

    (*(v12 + 8))(v11, v13);
  }

  v14 = swift_task_alloc();
  v1[8] = v14;
  *v14 = v1;
  v14[1] = sub_D33B4;

  return sub_D1DE8();
}

uint64_t sub_D33B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Void __swiftcall RemoveOlderDownloadsTipProvider.endListening()()
{
  if (*(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_observersTask))
  {

    sub_E7354();
  }
}

uint64_t sub_D353C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  sub_E60F4();
  v2[9] = swift_task_alloc();
  v3 = sub_E6454();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = sub_E5C04();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131B38, &qword_F5CA8);
  v2[18] = swift_task_alloc();
  v2[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF8, &qword_F5E18);
  v2[20] = swift_task_alloc();
  v5 = sub_E6974();
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D00, &qword_F5E20);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[30] = v6;
  v7 = swift_task_alloc();
  v2[31] = v7;
  *v7 = v2;
  v7[1] = sub_D3844;

  return sub_D4B74(v6);
}

uint64_t sub_D3844()
{
  v2 = *v1;
  v2[32] = v0;

  sub_D173C(&qword_131B30, type metadata accessor for RemoveOlderDownloadsTipProvider, &protocol conformance descriptor for RemoveOlderDownloadsTipProvider);
  v4 = sub_E7294();
  v2[33] = v4;
  v2[34] = v3;
  if (v0)
  {
    v5 = sub_D4A58;
  }

  else
  {
    v5 = sub_D39E0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_D39E0(uint64_t a1)
{
  v87 = v1;
  v2 = v1[30];
  v3 = v1[29];
  sub_E6954();
  sub_26324(v2, v3, &qword_131D00, &qword_F5E20);
  v4 = sub_E6964();
  v5 = sub_E7494();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[29];
  if (v6)
  {
    v8 = v1[28];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v86 = v10;
    *v9 = 136315138;
    sub_26324(v7, v8, &qword_131D00, &qword_F5E20);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D08, &qword_F5E30);
    v12 = (*(*(v11 - 8) + 48))(v8, 1, v11);
    v13 = v1[28];
    v14 = v1[20];
    v15 = v1[14];
    v16 = v1[15];
    if (v12 == 1)
    {
      sub_110AC(v1[28], &qword_131D00, &qword_F5E20);
      (*(v16 + 56))(v14, 1, 1, v15);
    }

    else
    {
      v83 = v10;
      v21 = v1[11];
      v80 = v1[10];
      v22 = *(v11 + 48);
      (*(v16 + 32))(v14, v13, v15);
      (*(v16 + 56))(v14, 0, 1, v15);
      (*(v21 + 8))(v13 + v22, v80);
      v10 = v83;
    }

    v23 = v1[29];
    v84 = v1[24];
    v25 = v1[21];
    v24 = v1[22];
    v26 = sub_E7084();
    v28 = v27;
    sub_110AC(v23, &qword_131D00, &qword_F5E20);
    v29 = sub_23E64(v26, v28, &v86);

    *(v9 + 4) = v29;
    _os_log_impl(&dword_0, v4, v5, "Received episode limit suggestion from the JS layer: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);

    v20 = *(v24 + 8);
    v20(v84, v25);
  }

  else
  {
    v17 = v1[24];
    v18 = v1[21];
    v19 = v1[22];

    sub_110AC(v7, &qword_131D00, &qword_F5E20);
    v20 = *(v19 + 8);
    v20(v17, v18);
  }

  v30 = v1[30];
  v31 = v1[27];
  sub_E6954();
  sub_26324(v30, v31, &qword_131D00, &qword_F5E20);
  v32 = sub_E6964();
  v33 = sub_E74A4();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v1[27];
  if (v34)
  {
    v85 = v20;
    v36 = v1[26];
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v86 = v38;
    *v37 = 136315138;
    sub_26324(v35, v36, &qword_131D00, &qword_F5E20);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D08, &qword_F5E30);
    v40 = (*(*(v39 - 8) + 48))(v36, 1, v39);
    v41 = v1[26];
    v42 = v1[18];
    if (v40 == 1)
    {
      v43 = v1[10];
      v44 = v1[11];
      sub_110AC(v41, &qword_131D00, &qword_F5E20);
      (*(v44 + 56))(v42, 1, 1, v43);
    }

    else
    {
      v47 = v1[15];
      v81 = v1[14];
      v49 = v1[10];
      v48 = v1[11];
      v50 = v41 + *(v39 + 48);
      v51 = v1[26];
      (*(v48 + 32))(v42, v50, v49);
      (*(v48 + 56))(v42, 0, 1, v49);
      (*(v47 + 8))(v51, v81);
    }

    v52 = v1[27];
    v82 = v1[23];
    v53 = v1[21];
    v54 = sub_E7084();
    v56 = v55;
    sub_110AC(v52, &qword_131D00, &qword_F5E20);
    v57 = sub_23E64(v54, v56, &v86);

    *(v37 + 4) = v57;
    _os_log_impl(&dword_0, v32, v33, "Storage distribution: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);

    v85(v82, v53);
  }

  else
  {
    v45 = v1[23];
    v46 = v1[21];

    sub_110AC(v35, &qword_131D00, &qword_F5E20);
    v20(v45, v46);
  }

  v59 = v1 + 25;
  v58 = v1[25];
  sub_26324(v1[30], v58, &qword_131D00, &qword_F5E20);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D08, &qword_F5E30);
  if ((*(*(v60 - 8) + 48))(v58, 1, v60) == 1)
  {
    sub_110AC(v1[30], &qword_131D00, &qword_F5E20);
LABEL_21:
    v76 = v1[6];
    sub_110AC(*v59, &qword_131D00, &qword_F5E20);
    v77 = sub_E5C84();
    (*(*(v77 - 8) + 56))(v76, 1, 1, v77);

    v78 = v1[1];

    return v78();
  }

  v61 = v1[25];
  v62 = v1[13];
  v63 = v1[10];
  v64 = v1[11];
  v65 = *(v60 + 48);
  (*(v1[15] + 32))(v1[16], v61, v1[14]);
  (*(v64 + 32))(v62, v61 + v65, v63);
  v66 = sub_E5BF4();
  v67 = sub_D5978(v66);
  v68 = v1[16];
  if ((v67 & 1) == 0)
  {
    v74 = v1[14];
    v75 = v1[15];
    (*(v1[11] + 8))(v1[13], v1[10]);
    (*(v75 + 8))(v68, v74);
    v59 = v1 + 30;
    goto LABEL_21;
  }

  v69 = sub_E5BD4();
  v70 = sub_CF9D4();
  v1[35] = v70;
  if (v70)
  {
    v71 = v70;
    v72 = swift_task_alloc();
    v1[36] = v72;
    *v72 = v1;
    v72[1] = sub_D4314;

    return sub_D5B34(v69, v71);
  }

  else
  {
    v79 = swift_task_alloc();
    v1[38] = v79;
    *v79 = v1;
    v79[1] = sub_D4458;

    return sub_D6074(v69);
  }
}

uint64_t sub_D4314(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v5[37] = v2;

  v6 = v4[34];
  v7 = v4[33];
  if (v2)
  {
    v8 = sub_D4600;
  }

  else
  {
    v8 = sub_D458C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_D4458(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    v6[41] = v2;
    v7 = v6[33];
    v8 = v6[34];
    v9 = sub_D48EC;
  }

  else
  {
    v6[39] = a2;
    v6[40] = a1;
    v7 = v6[33];
    v8 = v6[34];
    v9 = sub_D466C;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_D458C()
{
  *(v0 + 312) = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return _swift_task_switch(sub_D466C, v1, v2);
}

uint64_t sub_D4600()
{
  *(v0 + 328) = *(v0 + 296);
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return _swift_task_switch(sub_D48EC, v1, v2);
}

uint64_t sub_D466C()
{
  v1 = v0[15];
  v12 = v0[16];
  v2 = v0[13];
  v13 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  sub_E5BD4();
  sub_E60D4();
  (*(v3 + 16))(v4, v2, v5);
  v6 = [objc_opt_self() processInfo];
  v7 = [v6 operatingSystemVersionString];

  sub_E7064();
  sub_CFA7C();
  sub_E5C34();
  (*(v3 + 8))(v2, v5);
  (*(v1 + 8))(v12, v13);
  v8 = v0[6];
  sub_110AC(v0[30], &qword_131D00, &qword_F5E20);
  v9 = sub_E5C84();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_D48EC()
{
  v1 = v0[30];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  (*(v0[11] + 8))(v0[13], v0[10]);
  (*(v3 + 8))(v2, v4);
  sub_110AC(v1, &qword_131D00, &qword_F5E20);

  v5 = v0[1];

  return v5();
}

uint64_t sub_D4A58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_D4B74(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_E6974();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v4 = sub_E5C04();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130DA0, &qword_F4478);
  v2[21] = swift_task_alloc();
  v5 = sub_E60F4();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = type metadata accessor for LibraryStorageTipSuggestedLimitIntent(0);
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131B38, &qword_F5CA8);
  v2[28] = swift_task_alloc();
  v6 = sub_E6454();
  v2[29] = v6;
  v2[30] = *(v6 - 8);
  v2[31] = swift_task_alloc();
  sub_D173C(&qword_131B30, type metadata accessor for RemoveOlderDownloadsTipProvider, &protocol conformance descriptor for RemoveOlderDownloadsTipProvider);
  v8 = sub_E7294();
  v2[32] = v8;
  v2[33] = v7;

  return _swift_task_switch(sub_D4E6C, v8, v7);
}

uint64_t sub_D4E6C()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[14];

  sub_E6B74();

  v0[34] = v0[12];
  v5 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_spaceDistribution;
  swift_beginAccess();
  sub_26324(v4 + v5, v3, &qword_131B38, &qword_F5CA8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_110AC(v0[28], &qword_131B38, &qword_F5CA8);
    sub_E6954();
    v6 = sub_E6964();
    v7 = sub_E74B4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "Unable to compute dependent information for determining the storage tip threshold. The tip will not be displayed.", v8, 2u);
    }

    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[15];
    v12 = v0[13];

    (*(v10 + 8))(v9, v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D08, &qword_F5E30);
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);

    v14 = v0[1];

    return v14();
  }

  else
  {
    v17 = v0[30];
    v16 = v0[31];
    v18 = v0[28];
    v19 = v0[29];
    v20 = v0[14];
    v21 = *(v17 + 32);
    v0[35] = v21;
    v0[36] = (v17 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v21(v16, v18, v19);
    v0[37] = *(v20 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_objectGraph);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
    v23 = swift_task_alloc();
    v0[38] = v23;
    *v23 = v0;
    v23[1] = sub_D51A0;

    return BaseObjectGraph.inject<A>(_:)(v0 + 2, v22, v22);
  }
}

uint64_t sub_D51A0()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_D57A8;
  }

  else
  {
    v5 = sub_D52DC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_D52DC()
{
  sub_E6434();
  sub_E6444();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132180, &qword_EC5A8);
  sub_E6B74();

  if (*(v0 + 88))
  {
    v7 = 1;
  }

  else
  {
    v8 = *(v0 + 80);
    if (v8 < 0)
    {
      __break(1u);
      return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v8, v1, v2, v3, v4, v5, v6);
    }

    sub_E60D4();
    v7 = 0;
  }

  v9 = *(v0 + 272);
  v11 = *(v0 + 208);
  v10 = *(v0 + 216);
  v12 = *(v0 + 192);
  v13 = *(v0 + 200);
  v14 = *(v0 + 176);
  v15 = *(v0 + 184);
  v16 = *(v0 + 168);
  (*(v15 + 56))(v16, v7, 1, v14);
  v17 = sub_E76C4();
  *v10 = v9;
  *(v10 + 1) = v17;
  v18 = *(v15 + 32);
  v18(&v10[v11[6]], v13, v14);
  v18(&v10[v11[7]], v12, v14);
  sub_B8A98(v16, &v10[v11[8]]);
  v19 = *(v0 + 40);
  v20 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v19);
  v21 = swift_task_alloc();
  *(v0 + 320) = v21;
  v4 = sub_D173C(&qword_131D10, type metadata accessor for LibraryStorageTipSuggestedLimitIntent, &protocol conformance descriptor for LibraryStorageTipSuggestedLimitIntent);
  *v21 = v0;
  v21[1] = sub_D54F0;
  v2 = *(v0 + 296);
  v3 = *(v0 + 208);
  v1 = *(v0 + 216);
  v8 = *(v0 + 160);
  v5 = v19;
  v6 = v20;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v8, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_D54F0()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_D5884;
  }

  else
  {
    v5 = sub_D562C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_D562C()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[29];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v7 = v0[13];
  sub_B9B24(v0[27]);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D08, &qword_F5E30);
  v9 = *(v8 + 48);
  (*(v5 + 32))(v7, v4, v6);
  v1(v7 + v9, v2, v3);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_D57A8()
{
  (*(v0[30] + 8))(v0[31], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_D5884()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  sub_B9B24(v0[27]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_D5978(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v2 = sub_CFA7C();
      v4 = v3;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E0A0, &qword_EC5A0);
      sub_E6B74();

      if (v14)
      {
        if (v2 == v13 && v14 == v4)
        {
LABEL_7:

          v1 = 0;
          return v1 & 1;
        }

LABEL_13:
        v11 = sub_E7BD4();

        v1 = v11 ^ 1;
        return v1 & 1;
      }
    }

    else
    {
      v5 = [objc_opt_self() processInfo];
      v6 = [v5 operatingSystemVersionString];

      v7 = sub_E7064();
      v9 = v8;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E0A0, &qword_EC5A0);
      sub_E6B74();

      if (v14)
      {
        if (v7 == v13 && v14 == v9)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    v1 = 1;
    return v1 & 1;
  }

  v1 = a1 != 0;
  return v1 & 1;
}

uint64_t sub_D5B34(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_D173C(&qword_131B30, type metadata accessor for RemoveOlderDownloadsTipProvider, &protocol conformance descriptor for RemoveOlderDownloadsTipProvider);
  v5 = sub_E7294();
  v3[5] = v5;
  v3[6] = v4;

  return _swift_task_switch(sub_D5C0C, v5, v4);
}

uint64_t sub_D5C0C()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_managedObjectContext);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_D5CB4;
  v3 = v0[2];

  return MTPodcastEpisodeLimit.persistentIDsForAutoDownloadEpisodesExcludedByGlobalLimit(in:)(v1, v3);
}

uint64_t sub_D5CB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);

    return _swift_task_switch(sub_D5DF8, v7, v8);
  }
}

uint64_t sub_D5DF8()
{
  v24 = v1;
  v2 = *(v1 + 64);
  v3 = *(v2 + 16);
  v4 = *(v1 + 24);
  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  while (v3 != v5)
  {
    if (v5 >= *(v2 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v7 = *(v2 + 32 + 8 * v5++);
    if ([*(v1 + 24) itemExistsWithPersistentID:v7])
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v0 = &v23;
        sub_15D38(0, v6[2] + 1, 1);
        v6 = v23;
      }

      v10 = v6[2];
      v9 = v6[3];
      v11 = v10 + 1;
      if (v10 >= v9 >> 1)
      {
        v0 = &v23;
        sub_15D38((v9 > 1), v10 + 1, 1);
        v11 = v10 + 1;
        v6 = v23;
      }

      v6[2] = v11;
      v6[v10 + 4] = v7;
    }
  }

  v0 = *(v1 + 24);

  v12 = _swiftEmptyArrayStorage;
  v23 = _swiftEmptyArrayStorage;
  v13 = v6[2];
  v14 = v0;
  v15 = 0;
  while (v13 != v15)
  {
    if (v15 >= v6[2])
    {
      goto LABEL_24;
    }

    v16 = v15 + 1;
    v17 = [*(v1 + 24) itemWithPersistentID:v6[v15 + 4]];
    v15 = v16;
    if (v17)
    {
      sub_E71D4();
      if (*(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v23 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_E7214();
      }

      v0 = &v23;
      sub_E7274();
      v12 = v23;
      v15 = v16;
    }
  }

  v0 = *(v1 + 24);

  v18._rawValue = v12;
  v19 = sub_E74F4(v18);
  if (v19 < 0)
  {
    goto LABEL_25;
  }

  v0 = v19;
  if (!(v12 >> 62))
  {
    v20 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));

    goto LABEL_20;
  }

LABEL_26:
  v20 = sub_E7AC4();

  if (v20 < 0)
  {
    __break(1u);
    return result;
  }

LABEL_20:
  v21 = *(v1 + 8);

  return v21(v0, v20);
}

uint64_t sub_D6074(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_E6974();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_E60F4();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_E59C4();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_D173C(&qword_131B30, type metadata accessor for RemoveOlderDownloadsTipProvider, &protocol conformance descriptor for RemoveOlderDownloadsTipProvider);
  v7 = sub_E7294();
  v2[15] = v7;
  v2[16] = v6;

  return _swift_task_switch(sub_D6270, v7, v6);
}

uint64_t sub_D6270()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_managedObjectContext);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_D6318;
  v3 = v0[3];

  return MTPodcastEpisodeLimit.assetURLsForAutoDownloadEpisodesExcludedByGlobalLimit(in:)(v1, v3);
}

uint64_t sub_D6318(uint64_t a1)
{
  v3 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[15];
    v7 = v3[16];

    return _swift_task_switch(sub_D647C, v6, v7);
  }
}

void sub_D647C()
{
  v41 = v0;
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v38 = v0[12];
    v34 = (v0[6] + 8);
    v31 = (v0[9] + 8);
    v4 = v0[19];
    v37 = (v38 + 8);
    v36 = 0;
    v30 = *(v1 + 16);
    v35 = v0[18];
    while (v3 < *(v1 + 16))
    {
      v6 = *(v38 + 16);
      v6(v0[14], v0[18] + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v3, v0[11]);
      sub_E5964();
      if (v4)
      {
        v7 = v0[13];
        v8 = v0[14];
        v9 = v0[11];
        sub_E6954();
        v6(v7, v8, v9);
        swift_errorRetain();
        v10 = sub_E6964();
        v11 = sub_E74B4();

        v12 = os_log_type_enabled(v10, v11);
        v13 = v0[13];
        v39 = v0[11];
        v14 = v0[7];
        v15 = v0[5];
        if (v12)
        {
          v33 = v0[7];
          v16 = swift_slowAlloc();
          v40[0] = swift_slowAlloc();
          *v16 = 136315394;
          v0[2] = v4;
          swift_errorRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
          v17 = sub_E7084();
          v32 = v15;
          v19 = sub_23E64(v17, v18, v40);

          *(v16 + 4) = v19;
          *(v16 + 12) = 2080;
          v20 = sub_E5974();
          v22 = v21;
          v5 = *v37;
          (*v37)(v13, v39);
          v23 = sub_23E64(v20, v22, v40);
          v2 = v30;

          *(v16 + 14) = v23;
          _os_log_impl(&dword_0, v10, v11, "Failed to compute file size of file (%s: '%s'", v16, 0x16u);
          swift_arrayDestroy();

          (*v34)(v33, v32);
        }

        else
        {

          v5 = *v37;
          (*v37)(v13, v39);
          (*v34)(v14, v15);
        }

        v1 = v35;
      }

      else
      {
        v24 = v0[10];
        v25 = v0[8];
        v26 = sub_E60E4();
        (*v31)(v24, v25);
        v27 = __CFADD__(v36, v26);
        v36 += v26;
        if (v27)
        {
          goto LABEL_18;
        }

        v5 = *v37;
      }

      ++v3;
      v5(v0[14], v0[11]);
      v4 = 0;
      if (v2 == v3)
      {
        v28 = v36;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
    v28 = 0;
LABEL_14:

    v29 = v0[1];

    v29(v28, v2);
  }
}

uint64_t RemoveOlderDownloadsTipProvider.deinit()
{
  sub_110AC(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeLimit, &qword_131A48, &qword_F5C30);
  v1 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeLimitStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131A70, &unk_F5C48);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_streamContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A68, &qword_F5C40);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_D6A30(*(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider____lazy_storage___mediaLibrary));

  sub_110AC(v0 + OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_spaceDistribution, &qword_131B38, &qword_F5CA8);

  return v0;
}

void sub_D6A30(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

uint64_t RemoveOlderDownloadsTipProvider.__deallocating_deinit()
{
  RemoveOlderDownloadsTipProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t RemoveOlderDownloadsTipProvider.tips.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131B40, &qword_F5CB0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v5 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_storageRecommendationPublisher;
  result = swift_beginAccess();
  v7 = *(v0 + v5);
  if (v7)
  {
    v9 = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131B48, &unk_F5CB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131750, &qword_F58B0);
    sub_3C2A0(&qword_131B58, &unk_131B48, &unk_F5CB8, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_E6AC4();

    sub_3C2A0(&qword_131B60, &qword_131B40, &qword_F5CB0, &protocol conformance descriptor for Publishers.Map<A, B>);
    v8 = sub_E6A74();
    (*(v2 + 8))(v4, v1);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_D6C80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131A48, &qword_F5C30);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_E5C84();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26324(a1, v6, &qword_131A48, &qword_F5C30);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_110AC(v6, &qword_131A48, &qword_F5C30);
    result = sub_B18B8(_swiftEmptyArrayStorage);
    v12 = result;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131CB0, &qword_F5C20);
    inited = swift_initStackObject();
    v16 = xmmword_E87F0;
    *(inited + 16) = xmmword_E87F0;
    *(inited + 32) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCA8, &qword_EA4D0);
    v14 = swift_allocObject();
    *(v14 + 16) = v16;
    *(v14 + 56) = type metadata accessor for RemoveOlderDownloadsTip(0);
    *(v14 + 64) = sub_D173C(&unk_131CC0, type metadata accessor for RemoveOlderDownloadsTip, &protocol conformance descriptor for RemoveOlderDownloadsTip);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 32));
    (*(v8 + 16))(boxed_opaque_existential_1, v10, v7);
    *(inited + 40) = v14;
    v12 = sub_B18B8(inited);
    swift_setDeallocating();
    sub_110AC(inited + 32, qword_131A30, &qword_F5F80);
    result = (*(v8 + 8))(v10, v7);
  }

  *a2 = v12;
  return result;
}

uint64_t sub_D6F34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131B40, &qword_F5CB0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - v3;
  v5 = *v0;
  v6 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_storageRecommendationPublisher;
  result = swift_beginAccess();
  v8 = *(v5 + v6);
  if (v8)
  {
    v10 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131B48, &unk_F5CB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131750, &qword_F58B0);
    sub_3C2A0(&qword_131B58, &unk_131B48, &unk_F5CB8, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_E6AC4();

    sub_3C2A0(&qword_131B60, &qword_131B40, &qword_F5CB0, &protocol conformance descriptor for Publishers.Map<A, B>);
    v9 = sub_E6A74();
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_D7120@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15PodcastsActions31RemoveOlderDownloadsTipProvider_suggestedEpisodeLimit;
  swift_beginAccess();
  return sub_26324(v3 + v4, a2, &qword_131A48, &qword_F5C30);
}

void sub_D7198(uint64_t a1)
{
  sub_D7424(319, &qword_131BA0, &type metadata accessor for EpisodeLimitRecommendation);
  if (v1 <= 0x3F)
  {
    sub_D73B8(319, &qword_131BA8, &type metadata accessor for AsyncStream);
    if (v2 <= 0x3F)
    {
      sub_D73B8(319, &qword_131BB0, &type metadata accessor for AsyncStream.Continuation);
      if (v3 <= 0x3F)
      {
        sub_D7424(319, &unk_131BB8, &type metadata accessor for MediaSpaceCalculator.MediaSpaceDistribution);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_D73B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_131A48, &qword_F5C30);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_D7424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_E7814();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_D74CC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_D74FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_5E10;

  return sub_D1884(a1, v5, v4);
}

uint64_t sub_D75A8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_588C;

  return sub_D2728(a1, v1);
}

uint64_t sub_D7644(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5E10;

  return sub_D2ED4(a1, v4, v5, v6);
}

uint64_t sub_D76F8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_5E10;

  return sub_D3120(a1, a2, v2);
}

id sub_D77A0(id result)
{
  if (result != &dword_0 + 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_D77B0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_5E10;

  return sub_D29E4(a1, v1);
}

uint64_t sub_D7848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131B38, &qword_F5CA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_D78B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_5E10;

  return sub_D1AE4(a1, v1);
}

uint64_t sub_D7950(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_588C;

  return sub_D0F20(a1, v4, v5, v6);
}

void *sub_D7A14(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_E7A14();
    v28 = v1 + 64;
    v4 = sub_E7884();
    v5 = *(v1 + 36);
    v25 = objc_opt_self();
    result = objc_opt_self();
    v24 = result;
    v6 = 0;
    v23 = v1 + 72;
    v26 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v28 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v5 != *(v1 + 36))
      {
        goto LABEL_23;
      }

      v27 = v6;
      v9 = v2;
      v10 = *(*(v1 + 48) + 8 * v4);
      v11 = *(*(v1 + 56) + 8 * v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_E9EE0;
      v13 = v10;
      *(v12 + 32) = [v25 predicateForEpisodesDeterminedByLimitSettings:v11];
      *(v12 + 40) = [v25 predicateForAllEpisodesOnPodcast:v13];
      sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
      isa = sub_E71E4().super.isa;

      v15 = [v24 andPredicateWithSubpredicates:isa];

      sub_E79E4();
      sub_E7A24();
      v1 = v26;
      sub_E7A34();
      result = sub_E79F4();
      v7 = 1 << *(v26 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v16 = *(v28 + 8 * v8);
      if ((v16 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      if (v5 != *(v26 + 36))
      {
        goto LABEL_26;
      }

      v2 = v9;
      v17 = v16 & (-2 << (v4 & 0x3F));
      if (v17)
      {
        v7 = __clz(__rbit64(v17)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v8 << 6;
        v19 = v8 + 1;
        v20 = (v23 + 8 * v8);
        while (v19 < (v7 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1E32C(v4, v5, 0);
            v7 = __clz(__rbit64(v21)) + v18;
            goto LABEL_18;
          }
        }

        result = sub_1E32C(v4, v5, 0);
LABEL_18:
        v1 = v26;
      }

      v6 = v27 + 1;
      v4 = v7;
      if (v27 + 1 == v9)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t RestorePurgedEpisodesTipProvider.__allocating_init(asPartOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RestorePurgedEpisodesTipProvider.init(asPartOf:)(a1);
  return v2;
}

void *RestorePurgedEpisodesTipProvider.init(asPartOf:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D20, "Ju");
  __chkstk_darwin(v3 - 8);
  v46 = &v41 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D28, &qword_F5E88);
  v54 = *(v51 - 8);
  __chkstk_darwin(v51);
  v47 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D30, &qword_F5E90);
  v7 = *(v6 - 8);
  v52 = v6;
  v53 = v7;
  __chkstk_darwin(v6);
  v48 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D38, &qword_F5E98);
  v10 = *(v9 - 8);
  v55 = v9;
  v56 = v10;
  __chkstk_darwin(v9);
  v49 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D40, &qword_F5EA0);
  v13 = *(v12 - 8);
  v57 = v12;
  v58 = v13;
  __chkstk_darwin(v12);
  v50 = &v41 - v14;
  v15 = sub_E7534();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[4] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131D48, &qword_F5EA8);
  swift_allocObject();
  v19 = sub_E69D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  v44 = a1;
  sub_E6DA4();
  v20 = [v59 privateQueueContext];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D58, &unk_F5EB0);
  swift_allocObject();
  v1[2] = sub_E69F4();
  v1[5] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131790, &qword_F5A90);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  *(v21 + 16) = 0;
  v1[6] = v21;
  v1[3] = v19;
  sub_4ABC(0, &qword_12CE20, NSUserDefaults_ptr);
  (*(v16 + 104))(v18, enum case for NSUserDefaults.Name.shared(_:), v15);
  sub_C7B2C(&qword_12D040, &qword_12CE20, NSUserDefaults_ptr, &protocol conformance descriptor for NSUserDefaults);
  v45 = v20;
  v43 = v19;

  sub_E6DB4();
  (*(v16 + 8))(v18, v15);
  v1[7] = v59;
  v22 = v1;
  v59 = v19;
  v23 = sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  v24 = sub_E7584();
  v63 = v24;
  v25 = sub_E7594();
  v26 = v46;
  (*(*(v25 - 8) + 56))(v46, 1, 1, v25);
  v27 = sub_3C2A0(&unk_131D60, &unk_131D48, &qword_F5EA8, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v28 = sub_C7B2C(&qword_1317B0, &qword_1317A0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v29 = v47;
  v30 = v42;
  sub_E6A54();
  sub_110AC(v26, &qword_131D20, "Ju");

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D70, &unk_F5EC0);
  v59 = v30;
  v60 = v23;
  v61 = v27;
  v62 = v28;
  swift_getOpaqueTypeConformance2();
  v31 = v48;
  v32 = v51;
  sub_E6AC4();
  (*(v54 + 8))(v29, v32);
  v33 = sub_3C2A0(&qword_131D78, &qword_131D30, &qword_F5E90, &protocol conformance descriptor for Publishers.Map<A, B>);
  v34 = v49;
  v35 = v52;
  sub_E6A64();
  (*(v53 + 8))(v31, v35);
  swift_allocObject();
  swift_weakInit();

  v59 = v35;
  v60 = v33;
  swift_getOpaqueTypeConformance2();
  v36 = v55;
  v37 = v50;
  sub_E6A84();

  (*(v56 + 8))(v34, v36);

  sub_3C2A0(&unk_131D80, &qword_131D40, &qword_F5EA0, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  v38 = v57;
  v39 = sub_E6A74();

  (*(v58 + 8))(v37, v38);
  v22[4] = v39;

  return v22;
}

uint64_t sub_D85B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = &type metadata for RestorePurgedEpisodesTip;
    v5 = sub_DB4F8();
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  v16[0] = v3;
  v16[3] = v4;
  v16[4] = v5;

  sub_DB488(v16, &v13);
  v10[0] = v13;
  v10[1] = v14;
  v11 = v15;
  if (*(&v14 + 1))
  {
    sub_4524(v10, v12);
    v6 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_23C14(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v8 = v6[2];
    v7 = v6[3];
    if (v8 >= v7 >> 1)
    {
      v6 = sub_23C14((v7 > 1), v8 + 1, 1, v6);
    }

    v6[2] = v8 + 1;
    sub_4524(v12, &v6[5 * v8 + 4]);
  }

  else
  {
    sub_110AC(v10, &qword_131F10, &unk_F5FE0);
    v6 = _swiftEmptyArrayStorage;
  }

  result = sub_110AC(v16, &qword_131F10, &unk_F5FE0);
  *a2 = v6;
  return result;
}

uint64_t sub_D8710()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D8748(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 48);
    os_unfair_lock_lock((v3 + 24));
    sub_DB214((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  return result;
}

uint64_t sub_D87F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D20, "Ju");
  __chkstk_darwin(v1 - 8);
  v3 = &v35 - v2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131E80, &qword_F5F88);
  v46 = *(v44 - 8);
  __chkstk_darwin(v44);
  v36 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131E88, &qword_F5F90);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  __chkstk_darwin(v5);
  v42 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131E90, &qword_F5F98);
  v9 = *(v8 - 8);
  v49 = v8;
  v50 = v9;
  __chkstk_darwin(v8);
  v43 = &v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131E98, &qword_F5FA0);
  v12 = *(v11 - 8);
  v51 = v11;
  v52 = v12;
  __chkstk_darwin(v11);
  v45 = &v35 - v13;
  v14 = *(v0 + 16);
  v41 = v0;
  v53 = v14;
  v15 = sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);

  v16 = sub_E7584();
  v57 = v16;
  v39 = sub_E7594();
  v17 = *(v39 - 8);
  v38 = *(v17 + 56);
  v40 = v17 + 56;
  v38(v3, 1, 1, v39);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D58, &unk_F5EB0);
  v19 = sub_3C2A0(&qword_131EA0, &qword_131D58, &unk_F5EB0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v20 = sub_C7B2C(&qword_1317B0, &qword_1317A0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  sub_E6A54();
  sub_110AC(v3, &qword_131D20, "Ju");

  v21 = *(v0 + 40);
  *(swift_allocObject() + 16) = v21;
  v22 = v21;
  sub_E69B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EA8, &qword_F5FA8);
  v53 = v18;
  v54 = v15;
  v55 = v19;
  v56 = v20;
  v37 = &opaque type descriptor for <<opaque return type of Publisher.receiveAndSubscribe<A>(on:options:)>>;
  swift_getOpaqueTypeConformance2();
  sub_3C2A0(&qword_131EB0, &qword_131EA8, &qword_F5FA8, &protocol conformance descriptor for Future<A, B>);
  v23 = v42;
  v24 = v44;
  v25 = v36;
  sub_E6B54();

  (*(v46 + 8))(v25, v24);
  v26 = sub_E7584();
  v53 = v26;
  v38(v3, 1, 1, v39);
  v27 = sub_3C2A0(&qword_131EB8, &qword_131E88, &qword_F5F90, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v28 = v43;
  v29 = v47;
  sub_E6A54();
  sub_110AC(v3, &qword_131D20, "Ju");

  (*(v48 + 8))(v23, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EC0, &qword_F5FB0);
  v53 = v29;
  v54 = v15;
  v55 = v27;
  v56 = v20;
  swift_getOpaqueTypeConformance2();
  v30 = v45;
  v31 = v49;
  sub_E6AC4();
  (*(v50 + 8))(v28, v31);
  sub_3C2A0(&qword_131EC8, &qword_131E98, &qword_F5FA0, &protocol conformance descriptor for Publishers.Map<A, B>);

  v32 = v51;
  v33 = sub_E6B44();

  (*(v52 + 8))(v30, v32);
  return v33;
}

uint64_t sub_D8ED0@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EA8, &qword_F5FA8);
  v7 = sub_E7324();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  *(swift_allocObject() + 16) = a1;
  v8 = a1;
  result = sub_E6A34();
  *a2 = result;
  return result;
}

uint64_t sub_D8FF4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v4 = sub_E6974();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[7] = v5;
  *v5 = v2;
  v5[1] = sub_D90E8;

  return sub_D946C(a2);
}

uint64_t sub_D90E8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_D927C;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_D9210;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_D9210()
{
  **(v0 + 24) = *(v0 + 72);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_D927C(uint64_t a1)
{
  v19 = v1;
  sub_E6954();
  swift_errorRetain();
  v2 = sub_E6964();
  v3 = sub_E74B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 64);
    v6 = *(v1 + 40);
    v5 = *(v1 + 48);
    v7 = *(v1 + 32);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    *(v1 + 16) = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
    v10 = sub_E7084();
    v12 = sub_23E64(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v2, v3, "Failed to fetch purged episodes: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = *(v1 + 40);
    v13 = *(v1 + 48);
    v15 = *(v1 + 32);

    (*(v14 + 8))(v13, v15);
  }

  **(v1 + 24) = _swiftEmptyArrayStorage;

  v16 = *(v1 + 8);

  return v16();
}

uint64_t sub_D946C(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_E7724();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = sub_E5AB4();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_E5AC4();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v1[15] = swift_task_alloc();
  v5 = sub_E5A54();
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_D9690, 0, 0);
}

uint64_t sub_D9690()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 88);
  v32 = *(v0 + 96);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  sub_E5AA4();
  (*(v8 + 104))(v7, enum case for Calendar.Component.day(_:), v9);
  sub_E5A44();
  sub_E5A84();
  v10 = *(v2 + 8);
  *(v0 + 160) = v10;
  *(v0 + 168) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v3);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v5, v32);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    sub_110AC(*(v0 + 120), &qword_131EE0, &unk_F5BE0);
    sub_DB364();
    swift_allocError();
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 64);
    v14 = *(v0 + 48);
    v15 = *(v0 + 32);
    (*(*(v0 + 136) + 32))(*(v0 + 152), *(v0 + 120), *(v0 + 128));
    *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_E9EE0;
    *(v16 + 32) = [objc_opt_self() predicateForDownloadBehavior:5];
    v17 = kEpisodeLastCacheDeletePurge;
    isa = sub_E5A24().super.isa;
    v19 = [objc_opt_self() predicateForDateKey:v17 isGreaterThanDate:isa];

    *(v16 + 40) = v19;
    *(v0 + 184) = sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
    v20 = sub_E71E4().super.isa;

    v21 = objc_opt_self();
    *(v0 + 192) = v21;
    v22 = [v21 andPredicateWithSubpredicates:v20];
    *(v0 + 200) = v22;

    v23 = kMTEpisodeEntityName;
    *(v0 + 208) = kMTEpisodeEntityName;
    v24 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v23];
    *(v0 + 216) = v24;
    [v24 setPredicate:v22];
    v25 = swift_allocObject();
    *(v0 + 224) = v25;
    *(v25 + 16) = v15;
    *(v25 + 24) = v24;
    *(v0 + 312) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
    v26 = *(v14 + 104);
    *(v0 + 232) = v26;
    *(v0 + 240) = (v14 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v26(v13);
    v27 = v15;
    v28 = v24;
    v29 = swift_task_alloc();
    *(v0 + 248) = v29;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131EF0, &qword_F5FD8);
    *v29 = v0;
    v29[1] = sub_D9B18;
    v31 = *(v0 + 64);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 16, v31, sub_DB3F8, v25, v30);
  }
}

uint64_t sub_D9B18()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = v2[25];
    v4 = v2[8];
    v5 = v2[5];
    v6 = v2[6];

    (*(v6 + 8))(v4, v5);
    v7 = sub_DA1F0;
  }

  else
  {
    v8 = v2[8];
    v9 = v2[5];
    v10 = v2[6];
    v11 = *(v10 + 8);
    v2[33] = v11;
    v2[34] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v8, v9);

    v7 = sub_D9CAC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_D9CAC()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = sub_D7A14(*(v0 + 16));

  v4 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v1];
  *(v0 + 280) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_E9EE0;
  *(v5 + 32) = v2;

  if (v3 >> 62)
  {
    sub_E7A74();
  }

  else
  {
    sub_E7BE4();
  }

  v22 = *(v0 + 232);
  v21 = *(v0 + 312);
  v6 = *(v0 + 192);
  v7 = *(v0 + 56);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);

  isa = sub_E71E4().super.isa;

  v11 = [v6 orPredicateWithSubpredicates:isa];

  *(v5 + 40) = v11;
  v12 = sub_E71E4().super.isa;

  v13 = [v6 andPredicateWithSubpredicates:v12];

  [v4 setPredicate:v13];
  [v4 setResultType:1];
  v14 = swift_allocObject();
  *(v0 + 288) = v14;
  *(v14 + 16) = v9;
  *(v14 + 24) = v4;
  v22(v7, v21, v8);
  v15 = v9;
  v16 = v4;
  v17 = swift_task_alloc();
  *(v0 + 296) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130940, &qword_F35E0);
  *v17 = v0;
  v17[1] = sub_D9F64;
  v19 = *(v0 + 56);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 24, v19, sub_DB414, v14, v18);
}

uint64_t sub_D9F64()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  (*(v2 + 264))(*(v2 + 56), *(v2 + 40));

  if (v0)
  {
    v3 = sub_DA2D0;
  }

  else
  {
    v3 = sub_DA0F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_DA0F0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 160);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);

  v3(v4, v5);
  v6 = *(v0 + 24);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_DA1F0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);

  v2(v3, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_DA2D0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 160);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);

  v3(v4, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_DA3B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130940, &qword_F35E0);
  sub_3C2A0(&qword_1319A8, &qword_130940, &qword_F35E0, &protocol conformance descriptor for [A]);
  result = sub_E7404();
  if (result)
  {
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t RestorePurgedEpisodesTipProvider.tips.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131740, &unk_F5A60);
  v2 = *(v1 - 8);
  result = __chkstk_darwin(v1);
  v5 = v7 - v4;
  if (*(v0 + 32))
  {
    v7[1] = *(v0 + 32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131D90, &unk_F5ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131750, &qword_F58B0);
    sub_3C2A0(&unk_131DA0, &unk_131D90, &unk_F5ED0, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_E6AC4();

    sub_3C2A0(&unk_131760, &unk_131740, &unk_F5A60, &protocol conformance descriptor for Publishers.Map<A, B>);
    v6 = sub_E6A74();
    (*(v2 + 8))(v5, v1);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_DA634@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131CB0, &qword_F5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_E87F0;
  *(inited + 32) = 5;
  v5 = inited + 32;
  *(inited + 40) = v3;
  v6 = sub_B18B8(inited);
  swift_setDeallocating();

  result = sub_110AC(v5, qword_131A30, &qword_F5F80);
  *a2 = v6;
  return result;
}

uint64_t RestorePurgedEpisodesTipProvider.requestRefresh(for:)(uint64_t a1)
{
  result = sub_C6FB8(5u, a1);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D58, &unk_F5EB0);
    sub_3C2A0(&qword_131DB0, &qword_131D58, &unk_F5EB0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    return sub_E6A44();
  }

  return result;
}

uint64_t RestorePurgedEpisodesTipProvider.deinit()
{

  return v0;
}

uint64_t RestorePurgedEpisodesTipProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_DA814()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131740, &unk_F5A60);
  v2 = *(v1 - 8);
  result = __chkstk_darwin(v1);
  v5 = v7 - v4;
  if (*(*v0 + 32))
  {
    v7[1] = *(*v0 + 32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131D90, &unk_F5ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131750, &qword_F58B0);
    sub_3C2A0(&unk_131DA0, &unk_131D90, &unk_F5ED0, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_E6AC4();

    sub_3C2A0(&unk_131760, &unk_131740, &unk_F5A60, &protocol conformance descriptor for Publishers.Map<A, B>);
    v6 = sub_E6A74();
    (*(v2 + 8))(v5, v1);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_DA9E4(uint64_t a1)
{
  result = sub_C6FB8(5u, a1);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D58, &unk_F5EB0);
    sub_3C2A0(&qword_131DB0, &qword_131D58, &unk_F5EB0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    return sub_E6A44();
  }

  return result;
}

unint64_t sub_DAAC4@<X0>(unint64_t *a2@<X8>)
{
  sub_4ABC(0, &qword_131F00, MTEpisode_ptr);
  result = sub_E7734();
  if (!v2)
  {
    v5 = result;
    v6 = sub_B19C8(_swiftEmptyArrayStorage);
    v12 = v6;
    if (v5 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)); i; i = sub_E7AC4())
    {
      v6 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_E79B4();
        }

        else
        {
          if (v6 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_15;
          }

          v8 = *(v5 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v11 = v8;
        sub_DAC3C(&v12, &v11);

        ++v6;
        if (v10 == i)
        {
          v6 = v12;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_12:

    *a2 = v6;
  }

  return result;
}

void sub_DAC3C(uint64_t *a1, id *a2)
{
  v5 = sub_E59C4();
  v47 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_E6974();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = [*a2 podcast];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 objectID];
    v16 = [v14 episodeLimitResolvedValue];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *a1;
    sub_E3DB8(v16, v15, isUniquelyReferenced_nonNull_native);

    *a1 = v48;
  }

  else
  {
    v44 = v7;
    v45 = v8;
    v18 = v9;
    v46 = v2;
    sub_E6954();
    v19 = v12;
    v20 = sub_E6964();
    v21 = sub_E74B4();

    if (os_log_type_enabled(v20, v21))
    {
      v42 = v21;
      v43 = v20;
      v22 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48 = v41;
      v23 = v22;
      *v22 = 136315394;
      v24 = [v19 uuid];
      v25 = v18;
      if (v24)
      {
        v26 = v24;
        v27 = sub_E7064();
        v29 = v28;
      }

      else
      {
        v29 = 0xE700000000000000;
        v27 = 0x44495555206F4ELL;
      }

      v30 = v5;
      v31 = sub_23E64(v27, v29, &v48);

      *(v23 + 1) = v31;
      *(v23 + 6) = 2080;
      v32 = [v19 objectID];
      v33 = [v32 URIRepresentation];

      v34 = v44;
      sub_E5994();

      sub_DB430();
      v35 = sub_E7BB4();
      v37 = v36;
      (*(v47 + 8))(v34, v30);
      v38 = sub_23E64(v35, v37, &v48);

      *(v23 + 14) = v38;
      v39 = v43;
      _os_log_impl(&dword_0, v43, v42, "Unexpectedly found episode without a show: %s | %s", v23, 0x16u);
      swift_arrayDestroy();

      (*(v25 + 8))(v11, v45);
    }

    else
    {

      (*(v18 + 8))(v11, v45);
    }
  }
}

unint64_t sub_DB04C@<X0>(void *a2@<X8>)
{
  sub_4ABC(0, &qword_12E090, NSManagedObjectID_ptr);
  result = sub_E7734();
  if (!v2)
  {
    v5 = result;
    if (result >> 62)
    {
      goto LABEL_17;
    }

    for (i = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)); i; i = sub_E7AC4())
    {
      v13 = a2;
      result = sub_15D58(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v7 = 0;
      a2 = (&dword_0 + 1);
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_E79B4();
          goto LABEL_11;
        }

        if ((v7 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v8 = *(v5 + 8 * v7 + 32);
LABEL_11:
        v10 = _swiftEmptyArrayStorage[2];
        v9 = _swiftEmptyArrayStorage[3];
        if (v10 >= v9 >> 1)
        {
          v12 = v8;
          sub_15D58((v9 > 1), v10 + 1, 1);
          v8 = v12;
        }

        ++v7;
        _swiftEmptyArrayStorage[2] = v10 + 1;
        v11 = &_swiftEmptyArrayStorage[3 * v10];
        v11[4] = v8;
        v11[5] = 0;
        *(v11 + 48) = 1;
        if (i == v7)
        {

          *v13 = _swiftEmptyArrayStorage;
          return result;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    *a2 = _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_DB214(void *result)
{
  if (!*result)
  {
    v1 = result;
    result = sub_D87F0();
    *v1 = result;
  }

  return result;
}

uint64_t sub_DB24C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_DB2C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_588C;

  return sub_D8FF4(a1, v4);
}

unint64_t sub_DB364()
{
  result = qword_131EE8;
  if (!qword_131EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131EE8);
  }

  return result;
}

uint64_t sub_DB3B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_DB430()
{
  result = qword_131F08;
  if (!qword_131F08)
  {
    sub_E59C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131F08);
  }

  return result;
}

uint64_t sub_DB488(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131F10, &unk_F5FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_DB4F8()
{
  result = qword_131F18;
  if (!qword_131F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131F18);
  }

  return result;
}

unint64_t sub_DB560()
{
  result = qword_131F20;
  if (!qword_131F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_131F20);
  }

  return result;
}

uint64_t StayUpToDateTipProvider.__allocating_init(asPartOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  StayUpToDateTipProvider.init(asPartOf:)(a1);
  return v2;
}

uint64_t StayUpToDateTipProvider.init(asPartOf:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D20, "Ju");
  __chkstk_darwin(v4 - 8);
  v44 = &v42 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131F58, &qword_F60C8);
  v46 = *(v49 - 8);
  __chkstk_darwin(v49);
  v45 = &v42 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131F60, &qword_F60D0);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v42 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131F68, &qword_F60D8);
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131F70, &qword_F60E0);
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v53 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131F78, &qword_F60E8);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  v14 = sub_E7534();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipPublisher) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  sub_E6DA4();
  v18 = [v58 privateQueueContext];
  swift_unknownObjectRelease();
  *(v1 + 16) = v18;
  sub_4ABC(0, &qword_12CE20, NSUserDefaults_ptr);
  (*(v15 + 104))(v17, enum case for NSUserDefaults.Name.shared(_:), v14);
  sub_C7B2C(&qword_12D040, &qword_12CE20, NSUserDefaults_ptr, &protocol conformance descriptor for NSUserDefaults);
  v19 = v18;
  v57 = a1;
  sub_E6DB4();
  (*(v15 + 8))(v17, v14);
  *(v1 + 24) = v58;
  sub_4ABC(0, &qword_12E1D0, MTPodcast_ptr);
  v43 = v19;
  sub_E76E4();
  sub_DBF28(v13, v1 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_databasePublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131790, &qword_F5A90);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_observerSubscription) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_refreshSubject) = sub_E69D4();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FB0, &qword_F60F0);
  swift_allocObject();
  v22 = sub_E69D4();
  *(v1 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipSubject) = v22;
  v58 = v22;
  v23 = qword_12CD20;
  v42 = v22;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_131F30;
  v62 = qword_131F30;
  v25 = sub_E7594();
  v26 = v44;
  (*(*(v25 - 8) + 56))(v44, 1, 1, v25);
  v27 = sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  v28 = sub_3C2A0(&qword_131FC8, &qword_131FB0, &qword_F60F0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v29 = sub_C7B2C(&qword_1317B0, &qword_1317A0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v30 = v24;
  v31 = v45;
  sub_E6A54();
  sub_110AC(v26, &qword_131D20, "Ju");

  v58 = v21;
  v59 = v27;
  v60 = v28;
  v61 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v47;
  v34 = v49;
  sub_E6A64();
  (*(v46 + 8))(v31, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D70, &unk_F5EC0);
  v58 = v34;
  v59 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v35 = v50;
  v36 = v51;
  sub_E6AC4();
  (*(v48 + 8))(v33, v35);
  swift_allocObject();
  swift_weakInit();
  sub_3C2A0(&qword_131FD0, &qword_131F68, &qword_F60D8, &protocol conformance descriptor for Publishers.Map<A, B>);

  v37 = v54;
  v38 = v53;
  sub_E6A84();

  (*(v52 + 8))(v36, v37);

  sub_3C2A0(&qword_131FD8, &qword_131F70, &qword_F60E0, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  v39 = v56;
  v40 = sub_E6A74();

  (*(v55 + 8))(v38, v39);
  *(v2 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipPublisher) = v40;

  return v2;
}

uint64_t sub_DBF28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131F78, &qword_F60E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_DBF98@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  if (*a1 == 1)
  {
    v3 = 0;
    v4 = 0;
    memset(v15, 0, sizeof(v15));
  }

  else
  {
    v3 = &type metadata for StayUpToDateTip;
    v4 = sub_DF0B4();
  }

  v16 = v3;
  v17 = v4;
  sub_26324(v15, &v12, &qword_131F10, &unk_F5FE0);
  v9[0] = v12;
  v9[1] = v13;
  v10 = v14;
  if (*(&v13 + 1))
  {
    sub_4524(v9, v11);
    v5 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_23C14(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v7 = v5[2];
    v6 = v5[3];
    if (v7 >= v6 >> 1)
    {
      v5 = sub_23C14((v6 > 1), v7 + 1, 1, v5);
    }

    v5[2] = v7 + 1;
    sub_4524(v11, &v5[5 * v7 + 4]);
  }

  else
  {
    sub_110AC(v9, &qword_131F10, &unk_F5FE0);
    v5 = _swiftEmptyArrayStorage;
  }

  result = sub_110AC(v15, &qword_131F10, &unk_F5FE0);
  *a2 = v5;
  return result;
}

uint64_t sub_DC100(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_observerSubscription);
    os_unfair_lock_lock((v3 + 24));
    sub_DEEE8((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  return result;
}

uint64_t sub_DC184()
{
  sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  result = sub_E7584();
  qword_131F30 = result;
  return result;
}

uint64_t sub_DC1C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_DC208()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1320C8, &qword_F6170);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131F78, &qword_F60E8);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_E6714();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26324(v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_databasePublisher, v7, &qword_131F78, &qword_F60E8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_110AC(v7, &qword_131F78, &qword_F60E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1320D0, &qword_F6178);
    sub_E6A14();
    v12 = sub_DD22C(v4);
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v12 = sub_DC494(v11);
    (*(v9 + 8))(v11, v8);
  }

  return v12;
}

uint64_t sub_DC494(uint64_t a1)
{
  v61 = a1;
  v69 = *v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D20, "Ju");
  __chkstk_darwin(v2 - 8);
  v80 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1320D8, &qword_F6180);
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v71 = &v50 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1320E0, &qword_F6188);
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1320E8, &qword_F6190);
  v78 = *(v7 - 8);
  v79 = v7;
  __chkstk_darwin(v7);
  v76 = &v50 - v8;
  v51 = sub_E75B4();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1320F0, &qword_F6198);
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v12 = &v50 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1320F8, &qword_F61A0);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v14 = &v50 - v13;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132100, &qword_F61A8);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v16 = &v50 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132108, &qword_F61B0);
  v60 = *(v63 - 8);
  __chkstk_darwin(v63);
  v59 = &v50 - v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132110, &qword_F61B8);
  v64 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = &v50 - v18;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132118, &qword_F61C0);
  v70 = *(v81 - 8);
  __chkstk_darwin(v81);
  v68 = &v50 - v19;
  sub_E75A4();
  if (qword_12CD20 != -1)
  {
    swift_once();
  }

  v20 = qword_131F30;
  v83 = qword_131F30;
  sub_E6714();
  v65 = sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  sub_DEF20();
  v66 = sub_C7B2C(&qword_1317B0, &qword_1317A0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v58 = v20;
  sub_E6B24();
  (*(v50 + 8))(v10, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132128, &qword_F61C8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_E87F0;
  *(v21 + 32) = _swiftEmptyArrayStorage;
  sub_3C2A0(&qword_132130, &qword_1320F0, &qword_F6198, &protocol conformance descriptor for Publishers.Throttle<A, B>);
  v22 = v53;
  sub_E6AF4();

  (*(v52 + 8))(v12, v22);
  sub_3C2A0(&qword_132138, &qword_1320F8, &qword_F61A0, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  v23 = v55;
  sub_E6AC4();
  (*(v54 + 8))(v14, v23);
  v24 = v82;
  v83 = *(v82 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_refreshSubject);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
  sub_3C2A0(&unk_132140, &qword_132100, &qword_F61A8, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_3C2A0(&qword_131910, &qword_131FA0, &qword_F58A0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v25 = v59;
  v26 = v57;
  sub_E6AD4();
  (*(v56 + 8))(v16, v26);

  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = v27;
  v29[4] = v69;
  v30 = v28;
  v31 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132150, &unk_F61D0);
  sub_3C2A0(&qword_132158, &qword_132108, &qword_F61B0, &protocol conformance descriptor for Publishers.Merge<A, B>);
  v32 = v62;
  v33 = v63;
  sub_E6AC4();

  (*(v60 + 8))(v25, v33);
  sub_3C2A0(&qword_132160, &qword_132110, &qword_F61B8, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_3C2A0(&qword_132168, &qword_132150, &unk_F61D0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v34 = v67;
  v35 = v68;
  sub_E6B54();
  (*(v64 + 8))(v32, v34);
  sub_3C2A0(&qword_132170, &qword_132118, &qword_F61C0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  sub_DEF84();
  v36 = v71;
  sub_E6B34();
  *(swift_allocObject() + 16) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132188, &qword_F61E0);
  sub_3C2A0(&qword_132190, &qword_1320D8, &qword_F6180, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v37 = v73;
  v38 = v74;
  sub_E6AC4();

  (*(v72 + 8))(v36, v37);
  v39 = v58;
  v83 = v58;
  v40 = sub_E7594();
  v41 = v80;
  (*(*(v40 - 8) + 56))(v80, 1, 1, v40);
  v42 = sub_3C2A0(&qword_132198, &qword_1320E0, &qword_F6188, &protocol conformance descriptor for Publishers.Map<A, B>);
  v44 = v76;
  v43 = v77;
  v45 = v65;
  v46 = v66;
  sub_E6A54();
  sub_110AC(v41, &qword_131D20, "Ju");
  (*(v75 + 8))(v38, v43);

  swift_allocObject();
  swift_weakInit();
  v83 = v43;
  v84 = v45;
  v85 = v42;
  v86 = v46;
  swift_getOpaqueTypeConformance2();
  v47 = v79;
  v48 = sub_E6B44();

  (*(v78 + 8))(v44, v47);
  (*(v70 + 8))(v35, v81);
  return v48;
}

uint64_t sub_DD22C(uint64_t a1)
{
  v60 = a1;
  v68 = *v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131D20, "Ju");
  __chkstk_darwin(v2 - 8);
  v79 = &v49 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1321D0, &qword_F6200);
  v71 = *(v4 - 8);
  v72 = v4;
  __chkstk_darwin(v4);
  v70 = &v49 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1321D8, &qword_F6208);
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1321E0, &qword_F6210);
  v77 = *(v7 - 8);
  v78 = v7;
  __chkstk_darwin(v7);
  v75 = &v49 - v8;
  v50 = sub_E75B4();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1321E8, &qword_F6218);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v12 = &v49 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1321F0, &qword_F6220);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v14 = &v49 - v13;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1321F8, &qword_F6228);
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v16 = &v49 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132200, &qword_F6230);
  v59 = *(v62 - 8);
  __chkstk_darwin(v62);
  v58 = &v49 - v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132208, &qword_F6238);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v49 - v18;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132210, &qword_F6240);
  v69 = *(v80 - 8);
  __chkstk_darwin(v80);
  v67 = &v49 - v19;
  sub_E75A4();
  if (qword_12CD20 != -1)
  {
    swift_once();
  }

  v82 = qword_131F30;
  v66 = qword_131F30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1320C8, &qword_F6170);
  v57 = sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  sub_3C2A0(&qword_132218, &qword_1320C8, &qword_F6170, &protocol conformance descriptor for Empty<A, B>);
  v63 = sub_C7B2C(&qword_1317B0, &qword_1317A0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  sub_E6B24();
  (*(v49 + 8))(v10, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132128, &qword_F61C8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_E87F0;
  *(v20 + 32) = _swiftEmptyArrayStorage;
  sub_3C2A0(&qword_132220, &qword_1321E8, &qword_F6218, &protocol conformance descriptor for Publishers.Throttle<A, B>);
  v21 = v52;
  sub_E6AF4();

  (*(v51 + 8))(v12, v21);
  sub_3C2A0(&qword_132228, &qword_1321F0, &qword_F6220, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  v22 = v54;
  sub_E6AC4();
  (*(v53 + 8))(v14, v22);
  v23 = v81;
  v82 = *(v81 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_refreshSubject);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
  sub_3C2A0(&qword_132230, &qword_1321F8, &qword_F6228, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_3C2A0(&qword_131910, &qword_131FA0, &qword_F58A0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v24 = v58;
  v25 = v56;
  sub_E6AD4();
  (*(v55 + 8))(v16, v25);

  v26 = *(v23 + 16);
  v27 = *(v23 + 24);
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = v26;
  v28[4] = v68;
  v29 = v27;
  v30 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132150, &unk_F61D0);
  sub_3C2A0(&qword_132238, &qword_132200, &qword_F6230, &protocol conformance descriptor for Publishers.Merge<A, B>);
  v31 = v61;
  v32 = v62;
  sub_E6AC4();

  (*(v59 + 8))(v24, v32);
  sub_3C2A0(&qword_132240, &qword_132208, &qword_F6238, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_3C2A0(&qword_132168, &qword_132150, &unk_F61D0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v33 = v67;
  v34 = v65;
  sub_E6B54();
  (*(v64 + 8))(v31, v34);
  sub_3C2A0(&qword_132248, &qword_132210, &qword_F6240, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  sub_DEF84();
  v35 = v70;
  sub_E6B34();
  *(swift_allocObject() + 16) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132188, &qword_F61E0);
  sub_3C2A0(&qword_132250, &qword_1321D0, &qword_F6200, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v36 = v72;
  v37 = v73;
  sub_E6AC4();

  (*(v71 + 8))(v35, v36);
  v38 = v66;
  v82 = v66;
  v39 = sub_E7594();
  v40 = v79;
  (*(*(v39 - 8) + 56))(v79, 1, 1, v39);
  v41 = sub_3C2A0(&unk_132258, &qword_1321D8, &qword_F6208, &protocol conformance descriptor for Publishers.Map<A, B>);
  v43 = v75;
  v42 = v76;
  v44 = v57;
  v45 = v63;
  sub_E6A54();
  sub_110AC(v40, &qword_131D20, "Ju");
  (*(v74 + 8))(v37, v42);

  swift_allocObject();
  swift_weakInit();
  v82 = v42;
  v83 = v44;
  v84 = v41;
  v85 = v45;
  swift_getOpaqueTypeConformance2();
  v46 = v78;
  v47 = sub_E6B44();

  (*(v77 + 8))(v43, v46);
  (*(v69 + 8))(v33, v80);
  return v47;
}

uint64_t sub_DDFFC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v20 = a2;
  v22 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1321A0, &qword_F61E8);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1321A8, &qword_F61F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  sub_E70E4();
  v13 = sub_E7024();

  v14 = [a1 BOOLForKey:{v13, v20}];

  if (v14 || (sub_E70D4(), v15 = sub_E7024(), , v16 = [a1 BOOLForKey:v15], v15, v16))
  {
    v23 = 0;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132180, &qword_EC5A8);
    sub_E6A04();
    sub_3C2A0(&qword_1321C8, &qword_1321A8, &qword_F61F0, &protocol conformance descriptor for Just<A>);
    v17 = sub_E6A74();
    result = (*(v10 + 8))(v12, v9);
  }

  else
  {
    *(swift_allocObject() + 16) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_132180, &qword_EC5A8);
    v19 = sub_E76F4();

    v25 = v19;
    v23 = 0;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1321B0, &qword_F61F8);
    sub_3C2A0(&qword_1321B8, &qword_1321B0, &qword_F61F8, &protocol conformance descriptor for Future<A, B>);
    sub_E6A94();

    sub_3C2A0(&qword_1321C0, &qword_1321A0, &qword_F61E8, &protocol conformance descriptor for Publishers.ReplaceError<A>);
    v17 = sub_E6A74();
    result = (*(v21 + 8))(v8, v6);
  }

  *v22 = v17;
  return result;
}

void sub_DE394(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  if (*(a1 + 8))
  {
    v4 = 1;
  }

  else
  {
    v6 = *a1;
    sub_E70C4();
    v7 = sub_E7024();

    v8 = [a2 integerForKey:v7];

    v4 = v8 < v6;
  }

  *a3 = v4;
}

uint64_t sub_DE41C(char *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_E69C4();
  }

  return result;
}

uint64_t sub_DE4A4()
{
  v0 = sub_E5A54();
  __swift_allocate_value_buffer(v0, qword_131F38);
  __swift_project_value_buffer(v0, qword_131F38);
  return sub_E5A04();
}

void sub_DE4F8(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_4ABC(0, &qword_12E1D0, MTPodcast_ptr);
  v4 = [swift_getObjCClassFromMetadata() fetchRequest];
  v5 = objc_opt_self();
  if (qword_12CD28 != -1)
  {
    swift_once();
  }

  v6 = sub_E5A54();
  __swift_project_value_buffer(v6, qword_131F38);
  isa = sub_E5A24().super.isa;
  v8 = [v5 predicateForPodcastsFollowedSince:isa];

  [v4 setPredicate:v8];
  v12 = 0;
  v9 = [a1 countForFetchRequest:v4 error:&v12];
  v10 = v12;
  if (v12)
  {
    swift_willThrow();
    v10;
  }

  else
  {
    v11 = v9;

    *a2 = v11;
    *(a2 + 8) = 0;
  }
}

uint64_t StayUpToDateTipProvider.tips.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131740, &unk_F5A60);
  v2 = *(v1 - 8);
  result = __chkstk_darwin(v1);
  v5 = v7 - v4;
  if (*(v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipPublisher))
  {
    v7[1] = *(v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipPublisher);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131D90, &unk_F5ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131750, &qword_F58B0);
    sub_3C2A0(&unk_131DA0, &unk_131D90, &unk_F5ED0, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_E6AC4();

    sub_3C2A0(&unk_131760, &unk_131740, &unk_F5A60, &protocol conformance descriptor for Publishers.Map<A, B>);
    v6 = sub_E6A74();
    (*(v2 + 8))(v5, v1);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_DE858@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131CB0, &qword_F5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_E87F0;
  *(inited + 32) = 4;
  v5 = inited + 32;
  *(inited + 40) = v3;
  v6 = sub_B18B8(inited);
  swift_setDeallocating();

  result = sub_110AC(v5, qword_131A30, &qword_F5F80);
  *a2 = v6;
  return result;
}

uint64_t StayUpToDateTipProvider.requestRefresh(for:)(uint64_t a1)
{
  result = sub_C6FB8(4u, a1);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
    sub_3C2A0(&qword_1317D0, &qword_131FA0, &qword_F58A0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    return sub_E6A44();
  }

  return result;
}

uint64_t StayUpToDateTipProvider.deinit()
{
  sub_110AC(v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_databasePublisher, &qword_131F78, &qword_F60E8);

  return v0;
}

uint64_t StayUpToDateTipProvider.__deallocating_deinit()
{
  sub_110AC(v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_databasePublisher, &qword_131F78, &qword_F60E8);

  return swift_deallocClassInstance();
}

uint64_t sub_DEAE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131740, &unk_F5A60);
  v2 = *(v1 - 8);
  result = __chkstk_darwin(v1);
  v5 = v7 - v4;
  if (*(*v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipPublisher))
  {
    v7[1] = *(*v0 + OBJC_IVAR____TtC15PodcastsActions23StayUpToDateTipProvider_tipPublisher);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131D90, &unk_F5ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131750, &qword_F58B0);
    sub_3C2A0(&unk_131DA0, &unk_131D90, &unk_F5ED0, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_E6AC4();

    sub_3C2A0(&unk_131760, &unk_131740, &unk_F5A60, &protocol conformance descriptor for Publishers.Map<A, B>);
    v6 = sub_E6A74();
    (*(v2 + 8))(v5, v1);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_DECBC(uint64_t a1)
{
  result = sub_C6FB8(4u, a1);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131FA0, &qword_F58A0);
    sub_3C2A0(&qword_1317D0, &qword_131FA0, &qword_F58A0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    return sub_E6A44();
  }

  return result;
}

uint64_t type metadata accessor for StayUpToDateTipProvider(uint64_t a1)
{
  result = qword_132008;
  if (!qword_132008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_DEDA8(uint64_t a1)
{
  sub_DEE90(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_DEE90(uint64_t a1)
{
  if (!qword_132018)
  {
    sub_E6714();
    v1 = sub_E7814();
    if (!v2)
    {
      atomic_store(v1, &qword_132018);
    }
  }
}

void *sub_DEEE8(void *result)
{
  if (!*result)
  {
    v1 = result;
    result = sub_DC208();
    *v1 = result;
  }

  return result;
}

unint64_t sub_DEF20()
{
  result = qword_132120;
  if (!qword_132120)
  {
    sub_E6714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_132120);
  }

  return result;
}

unint64_t sub_DEF84()
{
  result = qword_132178;
  if (!qword_132178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_132180, &qword_EC5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_132178);
  }

  return result;
}

uint64_t sub_DF03C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_DF07C()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_DF0B4()
{
  result = qword_132268[0];
  if (!qword_132268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_132268);
  }

  return result;
}

void sub_DF11C(void *a1@<X8>)
{
  AMSDialogAction.ParameterKey.init(rawValue:)();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_DF14C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_DF1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_DF228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_DF298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t AMSDialogAction.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = [v4 parameters];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v9;
  v11 = sub_E6F74();

  *&v17[0] = a1;
  *(&v17[0] + 1) = a2;

  sub_E7924();
  if (!*(v11 + 16) || (v12 = sub_E0868(v16), (v13 & 1) == 0))
  {

    sub_E08AC(v16);
LABEL_6:
    memset(v17, 0, sizeof(v17));
    goto LABEL_7;
  }

  sub_26454(*(v11 + 56) + 32 * v12, v17);
  sub_E08AC(v16);

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1319B0, &qword_EAC58);
  v14 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v14 ^ 1u, 1, a3);
}

uint64_t sub_DF474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v3 parameters];
  if (v8)
  {
    v9 = v8;
    v10 = sub_E6F74();
  }

  else
  {
    v10 = sub_B1AB4(_swiftEmptyArrayStorage);
  }

  v19[5] = v10;
  sub_26324(a1, &v17, &qword_12CE38, &qword_E92E0);
  if (v18)
  {
    sub_4D9C(&v17, v19);
    *(&v15 + 1) = a3;
    sub_E7924();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D150, &qword_E9368);
    *&v15 = swift_allocObject();
    sub_48FC(v19, v15 + 16);
    sub_61B34(&v15, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_E3F0C(v14, &v17, isUniquelyReferenced_nonNull_native);
    sub_E08AC(&v17);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_110AC(&v17, &qword_12CE38, &qword_E92E0);
    *&v17 = a2;
    *(&v17 + 1) = a3;
    sub_E7924();
    sub_DFA78(v19, &v17);
    sub_E08AC(v19);
    sub_110AC(&v17, &qword_1319B0, &qword_EAC58);
  }

  isa = sub_E6F64().super.isa;

  [v4 setParameters:isa];

  return sub_110AC(a1, &qword_12CE38, &qword_E92E0);
}

uint64_t sub_DF6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  __chkstk_darwin(v8 - 8);
  v10 = v23 - v9;
  v11 = sub_E5B94();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v4 parameters];
  if (v15)
  {
    v16 = v15;
    v17 = sub_E6F74();
  }

  else
  {
    v17 = sub_B1AB4(_swiftEmptyArrayStorage);
  }

  v28 = v17;
  sub_26324(a1, v10, &qword_131220, &unk_F5580);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_110AC(v10, &qword_131220, &unk_F5580);
    *&v26 = a2;
    *(&v26 + 1) = a3;
    sub_E7924();
    sub_DFA78(v25, &v26);
    sub_E08AC(v25);
    sub_110AC(&v26, &qword_1319B0, &qword_EAC58);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    *&v26 = a2;
    *(&v26 + 1) = a3;
    sub_E7924();
    v27 = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
    (*(v12 + 16))(boxed_opaque_existential_1, v14, v11);
    sub_61B34(&v26, v24);
    v19 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23[1] = v19;
    sub_E3F0C(v24, v25, isUniquelyReferenced_nonNull_native);
    sub_E08AC(v25);
    (*(v12 + 8))(v14, v11);
  }

  isa = sub_E6F64().super.isa;

  [v4 setParameters:isa];

  return sub_110AC(a1, &qword_131220, &unk_F5580);
}

uint64_t AMSDialogAction.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_E4058(a1, a2, a3, a4);
  v5 = sub_E7814();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

double sub_DFA78@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_E0868(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_E39B0();
      v9 = v11;
    }

    sub_E08AC(*(v9 + 48) + 40 * v7);
    sub_61B34((*(v9 + 56) + 32 * v7), a2);
    sub_E3C14(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void (*AMSDialogAction.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[2] = a4;
  v9[3] = v4;
  *v9 = a2;
  v9[1] = a3;
  v11 = sub_E7814();
  v10[4] = v11;
  v12 = *(v11 - 8);
  v10[5] = v12;
  v13 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[6] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v10[6] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v10[7] = v14;
  AMSDialogAction.subscript.getter(a2, a3, a4, v14);
  return sub_DFC4C;
}

void sub_DFC4C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);

    sub_E4058(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {

    sub_E4058(v4, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

id AMSDialogAction.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  __chkstk_darwin(v2 - 8);
  v4 = &v12[-v3 - 8];
  if (a1[3])
  {
    v5 = sub_E7024();
  }

  else
  {
    v5 = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() actionWithTitle:v5 style:a1[9]];

  v7 = v6;
  v8 = sub_E7024();
  [v7 setIdentifier:v8];

  sub_48FC((a1 + 4), v12);
  sub_DF474(v12, 0xD000000000000033, 0x80000000000F9310);
  v9 = type metadata accessor for TipButton(0);
  sub_26324(a1 + *(v9 + 32), v4, &qword_131220, &unk_F5580);
  sub_DF6B8(v4, 0xD00000000000003ALL, 0x80000000000F9350);

  sub_E43F4(a1);
  return v7;
}

unint64_t sub_DFF24(uint64_t a1)
{
  v1 = a1;
  sub_E7CC4();
  sub_E7124();

  v2 = sub_E7CF4();

  return sub_E0900(v1, v2);
}

unint64_t sub_DFFE8(uint64_t a1)
{
  v1 = a1;
  sub_E7CC4();
  AppLocation.rawValue.getter(v1);
  sub_E7124();

  v2 = sub_E7CF4();

  return sub_E0A8C(v1, v2);
}

unint64_t sub_E0070(uint64_t a1)
{
  sub_E6014();
  sub_E45F8(&qword_130740, &protocol conformance descriptor for MediaRequest.ContentType);
  v2 = sub_E6FA4();

  return sub_E0E70(a1, v2);
}

unint64_t sub_E00F4(uint64_t a1)
{
  v1 = a1;
  sub_E7CC4();
  AudioActivity.rawValue.getter();
  sub_E7124();

  v2 = sub_E7CF4();

  return sub_E101C(v1, v2);
}

unint64_t sub_E0180(char a1)
{
  sub_E7CC4();
  sub_E7124();

  v2 = sub_E7CF4();

  return sub_E1844(a1 & 1, v2);
}

unint64_t sub_E0240(char a1)
{
  sub_E7CC4();
  sub_E7124();

  v2 = sub_E7CF4();

  return sub_E19A8(a1 & 1, v2);
}

unint64_t sub_E02E4(uint64_t a1)
{
  v1 = a1;
  sub_E7CC4();
  sub_E7124();

  v2 = sub_E7CF4();

  return sub_E1AEC(v1, v2);
}

unint64_t sub_E0398(uint64_t a1)
{
  v1 = a1;
  sub_E7CC4();
  sub_E7124();

  v2 = sub_E7CF4();

  return sub_E1C64(v1, v2);
}

unint64_t sub_E0494(uint64_t a1)
{
  v1 = a1;
  sub_E7CC4();
  sub_E7124();

  v2 = sub_E7CF4();

  return sub_E1E28(v1, v2);
}

unint64_t sub_E05D8(char a1)
{
  sub_E7CC4();
  sub_E7124();

  v2 = sub_E7CF4();

  return sub_E20A0(a1 & 1, v2);
}

unint64_t sub_E0684(char a1)
{
  sub_E7CC4();
  sub_E7124();

  v2 = sub_E7CF4();

  return sub_E21E8(a1 & 1, v2);
}

uint64_t sub_E0740(Swift::UInt64 a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_E7CC4();
  sub_E7CE4(a1);
  v3 = sub_E7CF4();

  return a2(a1, v3);
}

unint64_t sub_E07B8(uint64_t a1)
{
  v1 = a1;
  sub_E7CC4();
  sub_E7CD4(v1);
  v2 = sub_E7CF4();

  return sub_E2398(v1, v2);
}

unint64_t sub_E0824(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E7784(*(v2 + 40));

  return sub_E2408(a1, v4);
}

unint64_t sub_E0868(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E7904(*(v2 + 40));

  return sub_E24CC(a1, v4);
}

unint64_t sub_E0900(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x64616F6C6E776F64;
          v8 = 0xEA00000000006465;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE600000000000000;
          v7 = 0x74736574616CLL;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE500000000000000;
            if (v7 != 0x6465766173)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE500000000000000;
        v7 = 0x6465766173;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x64616F6C6E776F64;
      }

      else
      {
        v10 = 0x74736574616CLL;
      }

      if (v9 == 1)
      {
        v11 = 0xEA00000000006465;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_E7BD4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E0A8C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 5)
      {
        if (*(*(v2 + 48) + v4) > 8u)
        {
          if (v6 == 9)
          {
            v7 = 0x64616F6C6E776F64;
            v8 = 0xEA00000000006465;
          }

          else if (v6 == 10)
          {
            v7 = 0x796C746E65636572;
            v8 = 0xEF64657461647055;
          }

          else
          {
            v8 = 0xEA0000000000676ELL;
            v7 = 0x6979616C50776F6ELL;
          }
        }

        else if (v6 == 6)
        {
          v8 = 0xE700000000000000;
          v7 = 0x7972617262696CLL;
        }

        else if (v6 == 7)
        {
          v8 = 0xE600000000000000;
          v7 = 0x686372616573;
        }

        else
        {
          v7 = 0x7472616843706F74;
          v8 = 0xE900000000000073;
        }
      }

      else if (*(*(v2 + 48) + v4) > 2u)
      {
        if (v6 == 3)
        {
          v8 = 0xE800000000000000;
          v7 = 0x736C656E6E616863;
        }

        else if (v6 == 4)
        {
          v8 = 0xE500000000000000;
          v7 = 0x6465766173;
        }

        else
        {
          v7 = 0x704574736574616CLL;
          v8 = 0xEE007365646F7369;
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 0x6573776F7262;
        }

        else
        {
          v7 = 0x73776F6873;
        }

        if (v6 == 1)
        {
          v8 = 0xE600000000000000;
        }

        else
        {
          v8 = 0xE500000000000000;
        }
      }

      else
      {
        v8 = 0xE400000000000000;
        v7 = 1701670760;
      }

      v9 = 0xEA0000000000676ELL;
      v10 = 0x796C746E65636572;
      if (v5 == 10)
      {
        v9 = 0xEF64657461647055;
      }

      else
      {
        v10 = 0x6979616C50776F6ELL;
      }

      if (v5 == 9)
      {
        v10 = 0x64616F6C6E776F64;
        v9 = 0xEA00000000006465;
      }

      v11 = 0x7472616843706F74;
      if (v5 == 7)
      {
        v11 = 0x686372616573;
      }

      v12 = 0xE900000000000073;
      if (v5 == 7)
      {
        v12 = 0xE600000000000000;
      }

      if (v5 == 6)
      {
        v11 = 0x7972617262696CLL;
        v12 = 0xE700000000000000;
      }

      if (v5 <= 8)
      {
        v10 = v11;
        v9 = v12;
      }

      v13 = 0x704574736574616CLL;
      if (v5 == 4)
      {
        v13 = 0x6465766173;
      }

      v14 = 0xEE007365646F7369;
      if (v5 == 4)
      {
        v14 = 0xE500000000000000;
      }

      if (v5 == 3)
      {
        v13 = 0x736C656E6E616863;
        v14 = 0xE800000000000000;
      }

      v15 = 0x6573776F7262;
      if (v5 == 1)
      {
        v16 = 0xE600000000000000;
      }

      else
      {
        v15 = 0x73776F6873;
        v16 = 0xE500000000000000;
      }

      if (!v5)
      {
        v15 = 1701670760;
        v16 = 0xE400000000000000;
      }

      if (v5 <= 2)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = v5 <= 5 ? v13 : v10;
      v18 = v5 <= 5 ? v14 : v9;
      if (v7 == v17 && v8 == v18)
      {
        break;
      }

      v19 = sub_E7BD4();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E0E70(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_E6014();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_E45F8(&qword_130748, &protocol conformance descriptor for MediaRequest.ContentType);
      v15 = sub_E6FB4();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_E101C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEA0000000000676ELL;
      v8 = 0x6975636562726162;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE800000000000000;
          v8 = 0x7961446863616562;
          break;
        case 2:
          v7 = 0xE800000000000000;
          v8 = 0x676E696E61656C63;
          break;
        case 3:
          v11 = 0x74756D6D6F63;
          goto LABEL_38;
        case 4:
          v7 = 0xE700000000000000;
          v9 = 1802465123;
          goto LABEL_35;
        case 5:
          v7 = 0xE700000000000000;
          v9 = 1818458467;
          goto LABEL_35;
        case 6:
          v7 = 0xE500000000000000;
          v8 = 0x65636E6164;
          break;
        case 7:
          v7 = 0xE600000000000000;
          v8 = 0x676E696E6964;
          break;
        case 8:
          v7 = 0xE700000000000000;
          v9 = 1986622052;
          goto LABEL_35;
        case 9:
          v7 = 0xE800000000000000;
          v8 = 0x676E697375636F66;
          break;
        case 0xA:
          v7 = 0xE600000000000000;
          v8 = 0x676E696D6167;
          break;
        case 0xB:
          v11 = 0x6E6564726167;
          goto LABEL_38;
        case 0xC:
          v7 = 0xE400000000000000;
          v8 = 1953065320;
          break;
        case 0xD:
          v8 = 0x6341726F6F646E69;
          v7 = 0xEE00797469766974;
          break;
        case 0xE:
          v8 = 0x697461746964656DLL;
          break;
        case 0xF:
          v8 = 0x41726F6F6474756FLL;
          v7 = 0xEF79746976697463;
          break;
        case 0x10:
          v7 = 0xE800000000000000;
          v10 = 1953653104;
          goto LABEL_13;
        case 0x11:
          v7 = 0xE700000000000000;
          v9 = 1684104562;
          goto LABEL_35;
        case 0x12:
          v7 = 0xE800000000000000;
          v8 = 0x676E6978616C6572;
          break;
        case 0x13:
          v7 = 0xE800000000000000;
          v8 = 0x7069725464616F72;
          break;
        case 0x14:
          v7 = 0xE600000000000000;
          v8 = 0x676E69776F72;
          break;
        case 0x15:
          v7 = 0xE700000000000000;
          v9 = 1852732786;
          goto LABEL_35;
        case 0x16:
          v11 = 0x7265776F6873;
          goto LABEL_38;
        case 0x17:
          v7 = 0xE800000000000000;
          v8 = 0x676E697065656C73;
          break;
        case 0x18:
          v7 = 0xE800000000000000;
          v8 = 0x6874676E65727473;
          break;
        case 0x19:
          v7 = 0xE800000000000000;
          v10 = 1685419123;
LABEL_13:
          v8 = v10 | 0x676E697900000000;
          break;
        case 0x1A:
          v11 = 0x6C6576617274;
LABEL_38:
          v8 = v11 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000;
          v7 = 0xE900000000000067;
          break;
        case 0x1B:
          v7 = 0xE700000000000000;
          v9 = 1802264951;
          goto LABEL_35;
        case 0x1C:
          v7 = 0xE700000000000000;
          v9 = 1802661751;
LABEL_35:
          v8 = v9 | 0x676E6900000000;
          break;
        case 0x1D:
          v8 = 0xD000000000000014;
          v7 = 0x80000000000F64E0;
          break;
        case 0x1E:
          v8 = 0xD000000000000013;
          v7 = 0x80000000000F6500;
          break;
        case 0x1F:
          v8 = 0xD000000000000016;
          v7 = 0x80000000000F6520;
          break;
        case 0x20:
          v7 = 0xE400000000000000;
          v8 = 1634168697;
          break;
        default:
          break;
      }

      v12 = 0x6975636562726162;
      v13 = 0xEA0000000000676ELL;
      switch(a1)
      {
        case 1:
          v13 = 0xE800000000000000;
          if (v8 == 0x7961446863616562)
          {
            goto LABEL_90;
          }

          goto LABEL_91;
        case 2:
          v13 = 0xE800000000000000;
          v17 = 0x696E61656C63;
          goto LABEL_83;
        case 3:
          v16 = 0x74756D6D6F63;
          goto LABEL_95;
        case 4:
          v13 = 0xE700000000000000;
          v14 = 1802465123;
          goto LABEL_86;
        case 5:
          v13 = 0xE700000000000000;
          v14 = 1818458467;
          goto LABEL_86;
        case 6:
          v13 = 0xE500000000000000;
          if (v8 != 0x65636E6164)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 7:
          v13 = 0xE600000000000000;
          v18 = 1768843620;
          goto LABEL_72;
        case 8:
          v13 = 0xE700000000000000;
          v14 = 1986622052;
          goto LABEL_86;
        case 9:
          v13 = 0xE800000000000000;
          v17 = 0x697375636F66;
          goto LABEL_83;
        case 10:
          v13 = 0xE600000000000000;
          v18 = 1768776039;
          goto LABEL_72;
        case 11:
          v16 = 0x6E6564726167;
          goto LABEL_95;
        case 12:
          v13 = 0xE400000000000000;
          if (v8 != 1953065320)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 13:
          v13 = 0xEE00797469766974;
          if (v8 != 0x6341726F6F646E69)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 14:
          if (v8 != 0x697461746964656DLL)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 15:
          v13 = 0xEF79746976697463;
          if (v8 != 0x41726F6F6474756FLL)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 16:
          v13 = 0xE800000000000000;
          v15 = 1953653104;
          goto LABEL_52;
        case 17:
          v13 = 0xE700000000000000;
          v14 = 1684104562;
          goto LABEL_86;
        case 18:
          v13 = 0xE800000000000000;
          v17 = 0x6978616C6572;
          goto LABEL_83;
        case 19:
          v13 = 0xE800000000000000;
          if (v8 != 0x7069725464616F72)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 20:
          v13 = 0xE600000000000000;
          v18 = 1769434994;
LABEL_72:
          if (v8 != (v18 & 0xFFFF0000FFFFFFFFLL | 0x676E00000000))
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 21:
          v13 = 0xE700000000000000;
          v14 = 1852732786;
          goto LABEL_86;
        case 22:
          v16 = 0x7265776F6873;
          goto LABEL_95;
        case 23:
          v13 = 0xE800000000000000;
          v17 = 0x697065656C73;
          goto LABEL_83;
        case 24:
          v13 = 0xE800000000000000;
          if (v8 != 0x6874676E65727473)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 25:
          v13 = 0xE800000000000000;
          v15 = 1685419123;
LABEL_52:
          v17 = v15 & 0xFFFF0000FFFFFFFFLL | 0x697900000000;
LABEL_83:
          if (v8 != (v17 & 0xFFFFFFFFFFFFLL | 0x676E000000000000))
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 26:
          v16 = 0x6C6576617274;
LABEL_95:
          v13 = 0xE900000000000067;
          if (v8 != (v16 & 0xFFFFFFFFFFFFLL | 0x6E69000000000000))
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 27:
          v13 = 0xE700000000000000;
          v14 = 1802264951;
          goto LABEL_86;
        case 28:
          v13 = 0xE700000000000000;
          v14 = 1802661751;
LABEL_86:
          if (v8 != (v14 | 0x676E6900000000))
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 29:
          v12 = 0xD000000000000014;
          v13 = 0x80000000000F64E0;
          goto LABEL_89;
        case 30:
          v13 = 0x80000000000F6500;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 31:
          v13 = 0x80000000000F6520;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        case 32:
          v13 = 0xE400000000000000;
          if (v8 != 1634168697)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        default:
LABEL_89:
          if (v8 != v12)
          {
            goto LABEL_91;
          }

LABEL_90:
          if (v7 == v13)
          {

            return v4;
          }

LABEL_91:
          v19 = sub_E7BD4();

          if (v19)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_E1844(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6574736567677573;
    }

    else
    {
      v6 = 0x74696E4972657375;
    }

    if (a1)
    {
      v7 = 0xEE00707041794264;
    }

    else
    {
      v7 = 0xED00006465746169;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6574736567677573 : 0x74696E4972657375;
      v9 = *(*(v2 + 48) + v4) ? 0xEE00707041794264 : 0xED00006465746169;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_E7BD4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E19A8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x746165706572;
    }

    else
    {
      v6 = 0x656C6666756873;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x746165706572 : 0x656C6666756873;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_E7BD4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E1AEC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE400000000000000;
          v8 = 1818845556;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE500000000000000;
          v8 = 0x726574616CLL;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE400000000000000;
            if (v8 != 1954047342)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE400000000000000;
        v8 = 1954047342;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 1818845556;
      }

      else
      {
        v10 = 0x726574616CLL;
      }

      if (v9 == 1)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_E7BD4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E1C64(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = v6 == 2 ? 0x64616F6C6E776F64 : 0x704574736574616CLL;
      v8 = v6 == 2 ? 0xEA00000000006465 : 0xEE007365646F7369;
      v9 = *(*(v23 + 48) + v4) ? 0x6465766173 : 0x6F4E6E657473696CLL;
      v10 = *(*(v23 + 48) + v4) ? 0xE500000000000000 : 0xE900000000000077;
      v11 = *(*(v23 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0x64616F6C6E776F64 : 0x704574736574616CLL;
      v14 = v5 == 2 ? 0xEA00000000006465 : 0xEE007365646F7369;
      v15 = v5 ? 0x6465766173 : 0x6F4E6E657473696CLL;
      v16 = v5 ? 0xE500000000000000 : 0xE900000000000077;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_E7BD4();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E1E28(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v8 = 0x6E5573416B72616DLL;
          v9 = 0xEE00646579616C70;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x7478654E79616C70;
          }

          else
          {
            v8 = 0x616D6B6F6F626E75;
          }

          if (v7 == 4)
          {
            v9 = 0xE800000000000000;
          }

          else
          {
            v9 = 0xEA00000000006B72;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x6B72616D6B6F6F62;
        }

        else
        {
          v8 = 0x6C5073416B72616DLL;
        }

        if (v7 == 1)
        {
          v9 = 0xE800000000000000;
        }

        else
        {
          v9 = 0xEC00000064657961;
        }
      }

      else
      {
        v8 = 0x6575516F54646461;
        v9 = 0xEA00000000006575;
      }

      v10 = 0xEA00000000006B72;
      v11 = 0x7478654E79616C70;
      if (v6 == 4)
      {
        v10 = 0xE800000000000000;
      }

      else
      {
        v11 = 0x616D6B6F6F626E75;
      }

      if (v6 == 3)
      {
        v11 = 0x6E5573416B72616DLL;
        v10 = 0xEE00646579616C70;
      }

      v12 = 0x6C5073416B72616DLL;
      if (v6 == 1)
      {
        v12 = 0x6B72616D6B6F6F62;
      }

      v13 = 0xEC00000064657961;
      if (v6 == 1)
      {
        v13 = 0xE800000000000000;
      }

      if (!v6)
      {
        v12 = 0x6575516F54646461;
        v13 = 0xEA00000000006575;
      }

      v14 = v6 <= 2 ? v12 : v11;
      v15 = v6 <= 2 ? v13 : v10;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_E7BD4();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E20A0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x616D6B6F6F626E75;
    }

    else
    {
      v6 = 0x6B72616D6B6F6F62;
    }

    if (a1)
    {
      v7 = 0xEA00000000006B72;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x616D6B6F6F626E75 : 0x6B72616D6B6F6F62;
      v9 = *(*(v2 + 48) + v4) ? 0xEA00000000006B72 : 0xE800000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_E7BD4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E21E8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x776F6C6C6F666E75;
    }

    else
    {
      v6 = 0x776F6C6C6F66;
    }

    if (a1)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x776F6C6C6F666E75 : 0x776F6C6C6F66;
      v9 = *(*(v2 + 48) + v4) ? 0xE800000000000000 : 0xE600000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_E7BD4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E232C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_E2398(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_E2408(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_502C8();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_E7794();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_E24CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_E4564(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_E7914();
      sub_E08AC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_E2594(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v41 = sub_E64B4();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_130878, &unk_F33C0);
  v39 = v4;
  result = sub_E7AF4();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v38 + 72);
      v26 = v23 + v25 * v22;
      if (v39)
      {
        (*v16)(v40, v26, v41);
      }

      else
      {
        (*v36)(v40, v26, v41);
      }

      sub_E7CC4();
      sub_E7CE4(v24);
      result = sub_E7CF4();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v40, v41);
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_E28F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130728, &qword_F32B0);
  v30 = v4;
  result = sub_E7AF4();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_E7CC4();
      sub_E7CE4(v20);
      result = sub_E7CF4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_E2B88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131738, &qword_F5A40);
  v30 = v4;
  result = sub_E7AF4();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_E7CC4();
      sub_E7CD4(v20);
      result = sub_E7CF4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_E2E18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130718, &unk_F32A0);
  result = sub_E7AF4();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
    v14 = result + 64;
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
        v22 = v20;
      }

      result = sub_E7784(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
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
        return result;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_E307C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130708, &qword_F3290);
  result = sub_E7AF4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_61B34((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_E4564(v23, &v36);
        sub_26454(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_E7904(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_61B34(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void *sub_E3334()
{
  v1 = v0;
  v29 = sub_E64B4();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_130878, &unk_F33C0);
  v3 = *v0;
  v4 = sub_E7AE4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

  return result;
}

void *sub_E359C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130728, &qword_F32B0);
  v2 = *v0;
  v3 = sub_E7AE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

  return result;
}

void *sub_E36F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131738, &qword_F5A40);
  v2 = *v0;
  v3 = sub_E7AE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

  return result;
}

id sub_E3854()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130718, &unk_F32A0);
  v2 = *v0;
  v3 = sub_E7AE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
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

  return result;
}

void *sub_E39B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130708, &qword_F3290);
  v2 = *v0;
  v3 = sub_E7AE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = 40 * v17;
        sub_E4564(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_26454(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_61B34(v22, (*(v4 + 56) + v17));
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

  return result;
}

unint64_t sub_E3B54(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

_OWORD *sub_E3B98(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_61B34(a3, (a4[7] + 32 * a1));
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

uint64_t sub_E3C14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_E7894() + 1) & ~v5;
    do
    {
      sub_E4564(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_E7904(*(a2 + 40));
      result = sub_E08AC(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_E3DB8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_E0824(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 >= v13 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    v16 = result;
    sub_E3854();
    result = v16;
    goto LABEL_8;
  }

  sub_E2E18(v13, a3 & 1);
  result = sub_E0824(a2);
  if ((v14 & 1) == (v17 & 1))
  {
LABEL_8:
    v18 = *v4;
    if (v14)
    {
      *(v18[7] + 8 * result) = a1;
      return result;
    }

    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + 8 * result) = a2;
    *(v18[7] + 8 * result) = a1;
    v19 = v18[2];
    v12 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (!v12)
    {
      v18[2] = v20;

      return _objc_retain_x1();
    }

    goto LABEL_15;
  }

LABEL_16:
  sub_502C8();
  sub_E7C54();
  __break(1u);
  return _objc_retain_x1();
}

_OWORD *sub_E3F0C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_E0868(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_E39B0();
      goto LABEL_7;
    }

    sub_E307C(v13, a3 & 1);
    v19 = sub_E0868(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_E4564(a2, v21);
      return sub_E3B98(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_E7C54();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_61B34(a1, v17);
}

void sub_E4058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_E7814();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v15 = *(a4 - 8);
  __chkstk_darwin(v12);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v5;
  v18 = [v5 parameters];
  if (v18)
  {
    v33 = a4;
    v19 = v11;
    v20 = v15;
    v21 = v10;
    v22 = v17;
    v23 = a1;
    v24 = a2;
    v25 = a3;
    v26 = v18;
    v27 = sub_E6F74();

    a3 = v25;
    a2 = v24;
    a1 = v23;
    v17 = v22;
    v10 = v21;
    v15 = v20;
    v11 = v19;
    a4 = v33;
  }

  else
  {
    v27 = sub_B1AB4(_swiftEmptyArrayStorage);
  }

  v40 = v27;
  (*(v11 + 16))(v14, a1, v10);
  if ((*(v15 + 48))(v14, 1, a4) == 1)
  {
    (*(v11 + 8))(v14, v10);
    *&v38 = a2;
    *(&v38 + 1) = a3;
    sub_E7924();
    sub_DFA78(v37, &v38);
    sub_E08AC(v37);
    sub_110AC(&v38, &qword_1319B0, &qword_EAC58);
  }

  else
  {
    (*(v15 + 32))(v17, v14, a4);
    *&v38 = a2;
    *(&v38 + 1) = a3;
    sub_E7924();
    v39 = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
    (*(v15 + 16))(boxed_opaque_existential_1, v17, a4);
    sub_61B34(&v38, v36);
    v29 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v29;
    sub_E3F0C(v36, v37, isUniquelyReferenced_nonNull_native);
    sub_E08AC(v37);
    (*(v15 + 8))(v17, a4);
  }

  isa = sub_E6F64().super.isa;

  [v34 setParameters:isa];
}

uint64_t sub_E43F4(uint64_t a1)
{
  v2 = type metadata accessor for TipButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_E449C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a3;
  v7 = a3[1];

  sub_E4058(a1, v6, v7, v5);
}

uint64_t sub_E4510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_E45C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_E45F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_E6014();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id AMSDialogRequest.init<A>(from:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t, id))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131220, &unk_F5580);
  __chkstk_darwin(v8 - 8);
  v53 = &v46 - v9;
  v52 = type metadata accessor for TipButton(0);
  v49 = *(v52 - 8);
  v10 = __chkstk_darwin(v52);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __chkstk_darwin(v15 - 8);
  v17 = &v46 - v16;
  a4[4](a3, a4);
  v18 = sub_E7024();

  a4[6](a3, a4);
  if (v19)
  {
    v51 = a4;
    v20 = sub_E7024();
    a4 = v51;
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:v18 message:v20];

  v22 = v21;
  [v22 setStyle:a2];
  sub_BE0E4(a3, a4);
  v23 = sub_E7024();

  v50 = v22;
  [v22 setIdentifier:v23];

  a4[3](a3, a4);
  v24 = sub_E59C4();
  v25 = *(v24 - 8);
  v27 = 0;
  if ((*(v25 + 48))(v17, 1, v24) != 1)
  {
    sub_E5984(v26);
    v27 = v28;
    (*(v25 + 8))(v17, v24);
  }

  v29 = v50;
  [v50 setIconURL:v27];

  a4[5](a3, a4);
  if (v30)
  {
    v31 = sub_E7024();
  }

  else
  {
    v31 = 0;
  }

  [v29 setTitleAccessibilityLabel:v31];

  a4[7](a3, a4);
  if (v32)
  {
    v33 = sub_E7024();
  }

  else
  {
    v33 = 0;
  }

  [v29 setMessageAccessibilityLabel:v33];

  v34 = a4[8](a3, a4);
  v35 = *(v34 + 16);
  if (v35)
  {
    v47 = a1;
    v48 = a3;
    v55 = _swiftEmptyArrayStorage;
    sub_E7A14();
    v51 = objc_opt_self();
    v36 = *(v49 + 80);
    v46 = v34;
    v37 = v34 + ((v36 + 32) & ~v36);
    v38 = *(v49 + 72);
    do
    {
      sub_E4CBC(v37, v14);
      sub_E4CBC(v14, v12);
      if (*(v12 + 3))
      {
        v39 = sub_E7024();
      }

      else
      {
        v39 = 0;
      }

      v40 = [v51 actionWithTitle:v39 style:{*(v12 + 9), v46}];

      v41 = v40;
      v42 = sub_E7024();
      [v41 setIdentifier:v42];

      sub_48FC((v12 + 32), v54);
      sub_DF474(v54, 0xD000000000000033, 0x80000000000F9310);
      v43 = v53;
      sub_BD5BC(&v12[*(v52 + 32)], v53);
      sub_DF6B8(v43, 0xD00000000000003ALL, 0x80000000000F9350);

      sub_E43F4(v14);
      sub_E43F4(v12);
      sub_E79E4();
      sub_E7A24();
      sub_E7A34();
      sub_E79F4();
      v37 += v38;
      --v35;
    }

    while (v35);

    a1 = v47;
    a3 = v48;
    v29 = v50;
  }

  else
  {
  }

  sub_E4D20();
  isa = sub_E71E4().super.isa;

  [v29 setButtonActions:isa];

  (*(*(a3 - 8) + 8))(a1, a3);
  return v29;
}

uint64_t sub_E4CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_E4D20()
{
  result = qword_1322F0;
  if (!qword_1322F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1322F0);
  }

  return result;
}

uint64_t sub_E4D70@<X0>(uint64_t *a1@<X8>)
{
  sub_E6DF4();
  sub_E6DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFD0, &unk_E9ED0);
  sub_E6DA4();
  type metadata accessor for DonationRepository();
  v2 = swift_allocObject();
  v3 = sub_B15D4(_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1322F8, &unk_F6370);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *(v2 + 16) = v4;
  sub_4524(&v6, v2 + 24);

  *a1 = v2;
  return result;
}

uint64_t sub_E4E40@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E6234();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E6DF4();
  sub_E6DE4();
  type metadata accessor for DonationRepository();
  sub_E6DA4();
  v6 = v10[1];
  sub_E6DA4();
  sub_E6664();
  sub_E6DA4();

  v7 = v10[0];
  type metadata accessor for DonationController(0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = v6;
  result = (*(v3 + 32))(v8 + OBJC_IVAR____TtC15PodcastsActions18DonationController_donationService, v5, v2);
  *(v8 + OBJC_IVAR____TtC15PodcastsActions18DonationController_inMemoryStateRepository) = v7;
  *a1 = v8;
  return result;
}

uint64_t _s15PodcastsActions12DependenciesO03allC09JetEngine15BaseObjectGraphCyFZ_0()
{
  v0 = sub_E6BE4();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  sub_E5B14();

  sub_E5DA4();
  type metadata accessor for DonationRepository();
  sub_E6BD4();
  type metadata accessor for DonationController(0);
  sub_E6BD4();

  sub_E6DD4();

  sub_E6DC4();

  v7 = sub_E6DC4();

  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7;
}