uint64_t getEnumTagSinglePayload for ScrubberProxy.Action(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrubberProxy.Action(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
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

uint64_t sub_1C5AA14B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1C5AA1500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C5AA15B0(uint64_t a1)
{
  type metadata accessor for ScrubberInteractionViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1C5933874(319, &qword_1EDA45FE0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1C5AA0514(319, &qword_1EDA46760, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1C5AA0514(319, &qword_1EDA46750, MEMORY[0x1E697F610], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C5AA1710(uint64_t a1)
{
  type metadata accessor for ScrubberViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1C5933874(319, &qword_1EDA46720, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C5AA17D4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))(&a1[v6 + 8] & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1C5AA1934(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 8) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = *(v6 + 56);
        v19 = &a1[v9 + 8] & ~v9;

        v18(v19);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v17 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v17 = a2 - 1;
        }

        *a1 = v17;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_1C5AA1B1C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C5AA1B70(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C5AA1BCC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[64])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C5AA1C20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1C5AA1CBC(uint64_t a1)
{
  type metadata accessor for ScrubberViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1C5AA0514(319, &qword_1EDA46750, MEMORY[0x1E697F610], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1C5933874(319, &qword_1EC195EE0, &type metadata for ScrubberSensitivityInteractionDirection, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1C5AA1E4C()
{
  result = qword_1EC195EE8;
  if (!qword_1EC195EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195EE8);
  }

  return result;
}

unint64_t sub_1C5AA1F94()
{
  result = qword_1EC195F20;
  if (!qword_1EC195F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195EF8, &qword_1C5BE27D0);
    sub_1C5AA204C();
    sub_1C5924F54(&qword_1EC195F48, &qword_1EC195F18, &qword_1C5BE2830, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195F20);
  }

  return result;
}

unint64_t sub_1C5AA204C()
{
  result = qword_1EC195F28;
  if (!qword_1EC195F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195F00, &qword_1C5BE27D8);
    sub_1C5AA20D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195F28);
  }

  return result;
}

unint64_t sub_1C5AA20D8()
{
  result = qword_1EC195F30;
  if (!qword_1EC195F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195F38, &qword_1C5BE2860);
    sub_1C5AA2164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195F30);
  }

  return result;
}

unint64_t sub_1C5AA2164()
{
  result = qword_1EC195F40;
  if (!qword_1EC195F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195F40);
  }

  return result;
}

unint64_t sub_1C5AA21C4()
{
  result = qword_1EC195F70;
  if (!qword_1EC195F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195F70);
  }

  return result;
}

double sub_1C5AA2228()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 72) = result;
  return result;
}

uint64_t sub_1C5AA226C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  if (a2)
  {
    if (a5)
    {
      if (a1 == a4 && a2 == a5)
      {
        swift_bridgeObjectRetain_n();
      }

      else
      {
        v9 = sub_1C5BCBDE4();
        swift_bridgeObjectRetain_n();
        if ((v9 & 1) == 0)
        {
          v6 = 1;
          goto LABEL_12;
        }
      }

      v6 = *&a3 != *&a6;
LABEL_12:
      swift_bridgeObjectRelease_n();
      return v6;
    }
  }

  else if (!a5)
  {

    return v6;
  }

  return 1;
}

double sub_1C5AA2350(uint64_t a1)
{
  if (*(*(v1 + OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_viewModel) + 40) == a1)
  {

    sub_1C5A7DCE0(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1C5BE2838);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel, &unk_1C5BE27AC);

    sub_1C5BC7B64();
  }

  return result;
}

void sub_1C5AA24B4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithDuration:0.4 bounce:0.0];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v4 timingParameters:0.0];

  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C596D09C;
  v7[3] = &block_descriptor_514;
  v6 = _Block_copy(v7);

  [v5 addAnimations_];
  _Block_release(v6);
  [v5 startAnimation];
}

void sub_1C5AA25D0(float a1)
{
  v3 = sub_1C5BC7D64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_1EC1A6BC0);
  (*(v4 + 16))(v6, v7, v3);
  v8 = v1;
  v9 = sub_1C5BC7D44();
  v10 = sub_1C5BCB4C4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218496;
    v12 = a1;
    *(v11 + 4) = v12;
    *(v11 + 12) = 2048;
    *(v11 + 14) = 0;
    *(v11 + 22) = 2048;
    [v8 maxValue];
    *(v11 + 24) = v13;
    _os_log_impl(&dword_1C5922000, v9, v10, "MediaTimelineControl.Coordinator: received value %f (min=%f, max=%f)", v11, 0x20u);
    MEMORY[0x1C69510F0](v11, -1, -1);
  }

  else
  {

    v12 = a1;
  }

  (*(v4 + 8))(v6, v3);
  v16 = 1;

  v14.n128_f64[0] = v12;
  sub_1C5A7E450(&v16, v14);
}

double sub_1C5AA27F8()
{
  v1 = v0;
  v2 = sub_1C5BC7D64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_1EC1A6BC0);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1C5BC7D44();
  v8 = sub_1C5BCB4B4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C5922000, v7, v8, "MediaTimelineControl.Coordinator: finished decelerating", v9, 2u);
    MEMORY[0x1C69510F0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v1[OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_scrubState] = 0;
  v15 = 0;

  sub_1C5A820C8(&v15);

  [v1 currentValue];
  v11.n128_f64[0] = v10;
  v14 = 2;
  sub_1C5A7E450(&v14, v11);

  return result;
}

uint64_t sub_1C5AA2A04(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = *(*(v4 + OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_viewModel) + 16);
  swift_getKeyPath(byte_1C5BE2AA0);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);

  sub_1C5BC7B74();

  v9 = v5[3];
  v10 = v5[2];

  *&v7.f64[0] = a1.n128_u64[0];
  *&v7.f64[1] = a2.n128_u64[0];
  *&v8.f64[0] = a3.n128_u64[0];
  *&v8.f64[1] = a4.n128_u64[0];
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v10, v7), vceqq_f64(v9, v8)))) & 1) == 0)
  {

    sub_1C5A82BC8(a1, a2, a3, a4);
  }

  return result;
}

void sub_1C5AA2B38(double a1)
{
  v21 = MEMORY[0x1E69E7CD0];
  swift_getKeyPath(byte_1C5BE2948);
  v20 = v1;
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections, &unk_1C5BE24D8);
  sub_1C5BC7B74();

  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v3 + 16))
    {
      v8 = v3 + 32 + 24 * v5;
      v9 = *(v8 + 16);
      if (v9 >= 0.0 && v9 < a1)
      {
        v12 = *v8;
        v11 = *(v8 + 8);
        v13 = v21;
        if (*(v21 + 16) && (v14 = sub_1C5BCBF44(), v15 = -1 << *(v13 + 32), v16 = v14 & ~v15, ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
        {
          v17 = ~v15;
          while (*(*(v13 + 48) + 8 * v16) != v9)
          {
            v16 = (v16 + 1) & v17;
            if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
LABEL_16:

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1C5B76A90(0, *(v6 + 2) + 1, 1, v6);
          }

          v19 = *(v6 + 2);
          v18 = *(v6 + 3);
          if (v19 >= v18 >> 1)
          {
            v6 = sub_1C5B76A90((v18 > 1), v19 + 1, 1, v6);
          }

          *(v6 + 2) = v19 + 1;
          v7 = &v6[24 * v19];
          *(v7 + 4) = v12;
          *(v7 + 5) = v11;
          *(v7 + 6) = v9;
          sub_1C5B0D3CC(&v20, v9);
        }
      }

      if (++v5 == v4)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
  }
}

void sub_1C5AA2D90(uint64_t a1)
{
  if ((sub_1C5A878C0() & 0x100000000) == 0)
  {
    swift_getKeyPath(byte_1C5BE2AA0, 0.0);
    sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel, &unk_1C5BE24F4);
    sub_1C5BC7B74();
  }
}

unint64_t sub_1C5AA2F24()
{
  result = qword_1EC196028;
  if (!qword_1EC196028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196028);
  }

  return result;
}

unint64_t sub_1C5AA2F88()
{
  result = qword_1EC196038;
  if (!qword_1EC196038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196030, &qword_1C5BE2AF8);
    sub_1C5A9FE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196038);
  }

  return result;
}

unint64_t sub_1C5AA3038()
{
  result = qword_1EC196040;
  if (!qword_1EC196040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195D18, qword_1C5BE1D18);
    sub_1C5A9B150(&qword_1EC196048, type metadata accessor for ScrubberProxy, &protocol conformance descriptor for ScrubberProxy);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196040);
  }

  return result;
}

uint64_t objectdestroy_458Tm()
{

  sub_1C5942458(*(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_1C5AA3148()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 88);
  *(v1 + 88) = *(v0 + 24);
  return sub_1C5A8916C(v2);
}

uint64_t sub_1C5AA3184(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193058, &qword_1C5BD7418);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C5AA31F4()
{
  result = qword_1EC196080;
  if (!qword_1EC196080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196080);
  }

  return result;
}

uint64_t sub_1C5AA3248(void *a1)
{
  v3 = *(type metadata accessor for ScrubberTooltipModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C5A96D04(a1, v4);
}

unint64_t sub_1C5AA32B8()
{
  result = qword_1EC196148;
  if (!qword_1EC196148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196140, &qword_1C5BE2CD0);
    sub_1C5AA3344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196148);
  }

  return result;
}

unint64_t sub_1C5AA3344()
{
  result = qword_1EC196150;
  if (!qword_1EC196150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196158, &qword_1C5BE2CD8);
    sub_1C5AA33FC();
    sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980, &qword_1C5BD5EC0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196150);
  }

  return result;
}

unint64_t sub_1C5AA33FC()
{
  result = qword_1EC196160;
  if (!qword_1EC196160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196168, &unk_1C5BE2CE0);
    sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0, &unk_1C5BD9450, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196160);
  }

  return result;
}

void sub_1C5AA34E8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 56);
  *(v1 + 56) = *(v0 + 24);

  sub_1C5A9C47C(v2);
}

void sub_1C5AA3538()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = v2;
  sub_1C5A9BE38(v3, v4);
}

void sub_1C5AA357C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *(v1 + 24) = *(v0 + 24);
  *(v1 + 32) = v2;
  sub_1C5A9B7F4(v3, v4);
}

void sub_1C5AA35C0()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);

  sub_1C5A9CA60();
}

uint64_t sub_1C5AA3634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5AA36AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961D0, &qword_1C5BE2D38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C5AA371C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
  sub_1C5A7DCE0(v2);
}

void sub_1C5AA3754()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 57);
  *(v1 + 57) = *(v0 + 24);
  v3 = v2;
  sub_1C5A8800C(&v3);
}

void sub_1C5AA37A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = v2;
  sub_1C5A8A408();
}

void sub_1C5AA37DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 24);
  *(v1 + 40) = v2;
  sub_1C5A8A408();
}

void sub_1C5AA3884()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  *(v1 + 120) = *(v0 + 24);
  sub_1C5A85010(v2);
}

void sub_1C5AA3908()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 104);
  *(v1 + 104) = *(v0 + 24);
  sub_1C5A83EC4(v2);
}

double sub_1C5AA3980()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 64) = result;
  return result;
}

__n128 sub_1C5AA3990()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 32) = result;
  *(v1 + 48) = v3;
  return result;
}

void sub_1C5AA39C0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating);
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating) = *(v0 + 24);
  sub_1C5A8672C(v2);
}

void sub_1C5AA3A04()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession;
  v3 = *v2;
  v4 = *(v2 + 8);
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
  sub_1C5A85B30(v3, v4);
}

void sub_1C5AA3A54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 24) = v2;
}

void sub_1C5AA3AAC()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
}

uint64_t sub_1C5AA3AE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 64) = *(v0 + 24);
  *(v1 + 72) = v2;
  return sub_1C5A80680();
}

uint64_t objectdestroy_597Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1C5AA3B94()
{
  result = qword_1EC196240;
  if (!qword_1EC196240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196240);
  }

  return result;
}

unint64_t sub_1C5AA3BE8()
{
  result = qword_1EC196248;
  if (!qword_1EC196248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196248);
  }

  return result;
}

uint64_t sub_1C5AA3C6C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for Scrubber(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a2(a1, v9, v6, v7);
}

unint64_t sub_1C5AA3D1C()
{
  result = qword_1EC196260;
  if (!qword_1EC196260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1959B0, &qword_1C5BE1558);
    sub_1C5AA2164();
    sub_1C5953670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196260);
  }

  return result;
}

double sub_1C5AA3DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for Scrubber(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196270, &qword_1C5BDEB90) - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1C5A908F8(v4 + v8, v11, v5, v6);
}

void sub_1C5AA3EE0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

unint64_t sub_1C5AA3F48()
{
  result = qword_1EC196280;
  if (!qword_1EC196280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196280);
  }

  return result;
}

unint64_t sub_1C5AA3F9C()
{
  result = qword_1EC196288;
  if (!qword_1EC196288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196288);
  }

  return result;
}

uint64_t sub_1C5AA4060(uint64_t a1)
{
  result = sub_1C592535C(319, &qword_1EDA45E68, 0x1E69DD290);
  if (v2 <= 0x3F)
  {
    result = sub_1C5BCAB54();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C5AA40F8(uint64_t a1)
{
  sub_1C5933874(319, &qword_1EDA46720, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1C5AA0514(319, &qword_1EC196370, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C5AA4218(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1C5AA4260(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C5AA42D0()
{
  result = qword_1EC196378;
  if (!qword_1EC196378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195F88, &qword_1C5BE2938);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195F90, &qword_1C5BE2940);
    sub_1C5924F54(&unk_1EC195F98, &qword_1EC195F90, &qword_1C5BE2940, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    sub_1C5A9B150(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196378);
  }

  return result;
}

unint64_t sub_1C5AA43FC()
{
  result = qword_1EC196390;
  if (!qword_1EC196390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196398, &qword_1C5BE30D0);
    sub_1C5AA4488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196390);
  }

  return result;
}

unint64_t sub_1C5AA4488()
{
  result = qword_1EC1963A0;
  if (!qword_1EC1963A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195FB0, &qword_1C5BE29A0);
    sub_1C5924F54(&qword_1EC1963A8, &qword_1EC195FC0, &qword_1C5BE29B0, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EC1963B0, &qword_1EC195FB8, &qword_1C5BE29A8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1963A0);
  }

  return result;
}

unint64_t sub_1C5AA456C()
{
  result = qword_1EC1963B8;
  if (!qword_1EC1963B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196070, &qword_1C5BE2B70);
    sub_1C5924F54(&qword_1EC1963C0, &qword_1EC196068, &qword_1C5BE2B68, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EC1963C8, &qword_1EC196078, &qword_1C5BE2B78, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1963B8);
  }

  return result;
}

unint64_t sub_1C5AA4650()
{
  result = qword_1EC1963D0;
  if (!qword_1EC1963D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196098, &qword_1C5BE2BB8);
    sub_1C5924F54(&qword_1EC1963D8, &qword_1EC1960A8, &qword_1C5BE2BC8, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EC1963E0, &qword_1EC1960A0, &qword_1C5BE2BC0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1963D0);
  }

  return result;
}

unint64_t sub_1C5AA4734()
{
  result = qword_1EC1963E8;
  if (!qword_1EC1963E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1963F0, &qword_1C5BE30D8);
    sub_1C5AA32B8();
    sub_1C5A9B150(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1963E8);
  }

  return result;
}

unint64_t sub_1C5AA47F0()
{
  result = qword_1EC1963F8;
  if (!qword_1EC1963F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196400, &qword_1C5BE30E0);
    sub_1C5AA487C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1963F8);
  }

  return result;
}

unint64_t sub_1C5AA487C()
{
  result = qword_1EC196408;
  if (!qword_1EC196408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196410, &qword_1C5BE30E8);
    sub_1C5AA4908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196408);
  }

  return result;
}

unint64_t sub_1C5AA4908()
{
  result = qword_1EC196418;
  if (!qword_1EC196418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196420, &qword_1C5BE30F0);
    sub_1C5AA498C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196418);
  }

  return result;
}

unint64_t sub_1C5AA498C()
{
  result = qword_1EC196428;
  if (!qword_1EC196428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196430, qword_1C5BE30F8);
    sub_1C5924F54(&qword_1EC196190, &qword_1EC196188, &qword_1C5BE2CF0, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196428);
  }

  return result;
}

unint64_t sub_1C5AA4AA8()
{
  result = qword_1EC196450;
  if (!qword_1EC196450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196450);
  }

  return result;
}

unint64_t sub_1C5AA4B00()
{
  result = qword_1EC196458;
  if (!qword_1EC196458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196458);
  }

  return result;
}

unint64_t sub_1C5AA4B9C()
{
  result = qword_1EC196478;
  if (!qword_1EC196478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196478);
  }

  return result;
}

unint64_t sub_1C5AA4BF4()
{
  result = qword_1EC196480;
  if (!qword_1EC196480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196480);
  }

  return result;
}

unint64_t sub_1C5AA4C4C()
{
  result = qword_1EC196488;
  if (!qword_1EC196488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196488);
  }

  return result;
}

unint64_t sub_1C5AA4CE4()
{
  result = qword_1EC1964D0;
  if (!qword_1EC1964D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1964C8, &qword_1C5BE3598);
    sub_1C595E1AC();
    sub_1C5924F54(&unk_1EC1964E0, &qword_1EC194080, &qword_1C5BD9FF8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1964D0);
  }

  return result;
}

uint64_t sub_1C5AA4D9C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a2;
  v23 = a1;
  v6 = sub_1C5BC8894();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1964F8, &qword_1C5BE35D8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for ScrubberCompanionViewLayout.CompanionSubviews(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a5, v6, v15);
  sub_1C5A99A34(v9, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1C5924EF4(v12, &unk_1EC1964F8, &qword_1C5BE35D8);
  }

  sub_1C5AA592C(v12, v17, type metadata accessor for ScrubberCompanionViewLayout.CompanionSubviews);
  sub_1C5BC8B64();
  v28 = v19 & 1;
  v27 = v20 & 1;
  sub_1C5BC8714();
  sub_1C5BC8B64();
  v26 = v21 & 1;
  v25 = v22 & 1;
  sub_1C5BC8714();
  return sub_1C5AA5994(v17, type metadata accessor for ScrubberCompanionViewLayout.CompanionSubviews);
}

uint64_t sub_1C5AA5064(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v69 = sub_1C5BC8944();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = COERCE_DOUBLE(sub_1C5BC8444());
  v64 = *(*&v65 - 8);
  MEMORY[0x1EEE9AC00](*&v65);
  v63 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964F0, &qword_1C5BE35D0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v62 - v16;
  v70 = sub_1C5BC8744();
  v71 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v66 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C5BC8894();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1964F8, &qword_1C5BE35D8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v62 - v24;
  v26 = type metadata accessor for ScrubberCompanionViewLayout.CompanionSubviews(0);
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v22, a1, v19, v28);
  sub_1C5A99A34(v22, v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v31 = &unk_1EC1964F8;
    v32 = &qword_1C5BE35D8;
    v33 = v25;
    return sub_1C5924EF4(v33, v31, v32);
  }

  sub_1C5AA592C(v25, v30, type metadata accessor for ScrubberCompanionViewLayout.CompanionSubviews);
  sub_1C5BC8B64();
  v85 = v34 & 1;
  v84 = v35 & 1;
  sub_1C5BC8714();
  v37 = v36;
  sub_1C5BC8B64();
  v83 = v38 & 1;
  v82 = v39 & 1;
  sub_1C5BC8714();
  v62[1] = v41;
  if (v37 > v40)
  {
    v42 = v37;
  }

  else
  {
    v42 = v40;
  }

  v86.origin.x = a2;
  v86.origin.y = a3;
  v86.size.width = a4;
  v86.size.height = a5;
  CGRectGetMinX(v86);
  v87.origin.x = a2;
  v87.origin.y = a3;
  v87.size.width = a4;
  v87.size.height = a5;
  CGRectGetMinY(v87);
  sub_1C5BCAB94();
  *v62 = v42;
  v81 = 0;
  v80 = 0;
  sub_1C5BC8724();
  v88.origin.x = a2;
  v88.origin.y = a3;
  v88.size.width = a4;
  v88.size.height = a5;
  CGRectGetMaxX(v88);
  v89.origin.x = a2;
  v89.origin.y = a3;
  v89.size.width = a4;
  v89.size.height = a5;
  CGRectGetMinY(v89);
  sub_1C5BCABA4();
  v79 = 0;
  v78 = 0;
  sub_1C5BC8724();
  sub_1C59400B0(&v30[*(v26 + 24)], v17, &qword_1EC1964F0, &qword_1C5BE35D0);
  v43 = v70;
  if ((*(v71 + 48))(v17, 1, v70) == 1)
  {
    sub_1C5AA5994(v30, type metadata accessor for ScrubberCompanionViewLayout.CompanionSubviews);
    v31 = &qword_1EC1964F0;
    v32 = &qword_1C5BE35D0;
    v33 = v17;
    return sub_1C5924EF4(v33, v31, v32);
  }

  v45 = v66;
  (*(v71 + 32))(v66, v17, v43);
  sub_1C5BC8734();
  v46 = v63;
  sub_1C5BC8734();
  sub_1C5BC8434();
  v48 = v47;
  v49 = *(v64 + 8);
  v50 = v65;
  v49(v46, *&v65);
  v49(v14, *&v50);
  sub_1C5BC8734();
  sub_1C5BC8734();
  sub_1C5BC8434();
  v52 = v51;
  v49(v46, *&v50);
  v49(v14, *&v50);
  v65 = v48 + v52;
  sub_1C5BC8B64();
  v77 = v53 & 1;
  v76 = v54 & 1;
  v55 = v67;
  sub_1C5BC8704();
  v56 = sub_1C5BC8FA4();
  MEMORY[0x1C694CB90](v56);
  v57 = *(v68 + 8);
  v58 = v69;
  v57(v55, v69);
  sub_1C5BC8B64();
  v75 = v59 & 1;
  v74 = v60 & 1;
  sub_1C5BC8704();
  v61 = sub_1C5BC8FA4();
  MEMORY[0x1C694CB90](v61);
  v57(v55, v58);
  v90.origin.x = a2;
  v90.origin.y = a3;
  v90.size.width = a4;
  v90.size.height = a5;
  CGRectGetMidX(v90);
  v91.origin.x = a2;
  v91.origin.y = a3;
  v91.size.width = a4;
  v91.size.height = a5;
  CGRectGetMinY(v91);
  sub_1C5BCABB4();
  v92.origin.x = a2;
  v92.origin.y = a3;
  v92.size.width = a4;
  v92.size.height = a5;
  CGRectGetWidth(v92);
  v73 = 0;
  v72 = 1;
  sub_1C5BC8724();
  (*(v71 + 8))(v45, v43);
  return sub_1C5AA5994(v30, type metadata accessor for ScrubberCompanionViewLayout.CompanionSubviews);
}

uint64_t sub_1C5AA592C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5AA5994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C5AA5A08()
{
  result = qword_1EC196508;
  if (!qword_1EC196508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196508);
  }

  return result;
}

unint64_t sub_1C5AA5AD4()
{
  result = qword_1EC196510;
  if (!qword_1EC196510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196510);
  }

  return result;
}

void sub_1C5AA5B50(uint64_t a1)
{
  sub_1C5BC8744();
  if (v1 <= 0x3F)
  {
    sub_1C5AA0514(319, &qword_1EC196530, MEMORY[0x1E697E168], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C5AA5C14()
{
  result = qword_1EC196538;
  if (!qword_1EC196538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1964A0, &qword_1C5BE3548);
    sub_1C5AA5CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196538);
  }

  return result;
}

unint64_t sub_1C5AA5CA0()
{
  result = qword_1EC196540;
  if (!qword_1EC196540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196498, &qword_1C5BE3540);
    sub_1C5AA5D58();
    sub_1C5924F54(&qword_1EDA461E0, &qword_1EC192180, &qword_1C5BD4870, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196540);
  }

  return result;
}

unint64_t sub_1C5AA5D58()
{
  result = qword_1EC196548;
  if (!qword_1EC196548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196490, &qword_1C5BE3538);
    sub_1C5AA5E10();
    sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980, &qword_1C5BD5EC0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196548);
  }

  return result;
}

unint64_t sub_1C5AA5E10()
{
  result = qword_1EC196550;
  if (!qword_1EC196550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196558, &qword_1C5BE3638);
    sub_1C5AA5E94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196550);
  }

  return result;
}

unint64_t sub_1C5AA5E94()
{
  result = qword_1EC196560;
  if (!qword_1EC196560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196568, &unk_1C5BE3640);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1964C8, &qword_1C5BE3598);
    sub_1C5AA4CE4();
    swift_getOpaqueTypeConformance2();
    sub_1C595E1AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196560);
  }

  return result;
}

unint64_t sub_1C5AA5F5C()
{
  result = qword_1EC196570;
  if (!qword_1EC196570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196570);
  }

  return result;
}

double sub_1C5AA5FCC(_OWORD *a1)
{
  result = 0.0;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 281) = 0u;
  return result;
}

unint64_t sub_1C5AA6000()
{
  result = qword_1EC1965A0;
  if (!qword_1EC1965A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1965A8, &qword_1C5BE3790);
    sub_1C5AA608C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1965A0);
  }

  return result;
}

unint64_t sub_1C5AA608C()
{
  result = qword_1EC1965B0;
  if (!qword_1EC1965B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1965B8, &qword_1C5BE3798);
    sub_1C5AA6118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1965B0);
  }

  return result;
}

unint64_t sub_1C5AA6118()
{
  result = qword_1EC1965C0;
  if (!qword_1EC1965C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1965C8, &qword_1C5BE37A0);
    sub_1C5AA61A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1965C0);
  }

  return result;
}

unint64_t sub_1C5AA61A4()
{
  result = qword_1EC1965D0;
  if (!qword_1EC1965D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1965D8, &qword_1C5BE37A8);
    sub_1C5924F54(&qword_1EC1965E0, &qword_1EC1965E8, &qword_1C5BE37B0, MEMORY[0x1E6981870]);
    sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980, &qword_1C5BD5EC0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1965D0);
  }

  return result;
}

uint64_t sub_1C5AA6490(uint64_t a1)
{
  v2 = sub_1C5BC7894();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1C5AA65F0(v5);
}

uint64_t sub_1C5AA655C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  v4 = sub_1C5BC7894();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1C5AA65F0(uint64_t a1)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  v4 = sub_1C5BC7894();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t MarkupRenderer.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MarkupRenderer.init(_:)(a1);
  return v2;
}

uint64_t *MarkupRenderer.init(_:)(uint64_t a1)
{
  v3 = *v1;
  sub_1C5BC7884();
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 96), a1);
  return v1;
}

uint64_t sub_1C5AA67DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v19[-v6];
  v9 = *(v8 + 88);
  v11 = type metadata accessor for MarkupParser(0, v4, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19[-v13];
  sub_1C5BC7824();
  (*(v5 + 16))(v7, v2 + *(*v2 + 96), v4);
  MarkupParser.init(_:)(v7, v4, v9, v14, v15);
  v20 = v4;
  v21 = v9;
  v22 = a2;
  v17 = MarkupParser.parse(_:)(sub_1C5AA714C, v19, v11, v16);
  return (*(v12 + 8))(v14, v11, v17);
}

uint64_t sub_1C5AA69CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v64 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195738, &unk_1C5BE0D80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v58 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1965F0, &unk_1C5BE37F0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v60 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v57 - v18;
  v19 = sub_1C5BC7894();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v20 = sub_1C5BC7844();
  v62 = *(v20 - 8);
  v63 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1C5BC7884();
  sub_1C5BC7854();
  v61 = sub_1C5AA7418();
  v65 = v22;
  sub_1C5BC7864();
  if (v73)
  {
    v24 = 0;
  }

  else
  {
    v24 = v72;
  }

  v25 = type metadata accessor for MarkupParser.Element(0, a7, a8, v23);
  if (!sub_1C5BCB0F4())
  {
LABEL_37:
    v72 = v24;
    LOBYTE(v73) = 0;
    v54 = v65;
    sub_1C5BC7874();
    sub_1C5AA746C(v55);
    v56 = v63;
    sub_1C5BC7834();
    return (*(v62 + 8))(v54, v56);
  }

  v26 = 0;
  v27 = (a5 + 64);
  v68 = a5;
  while (1)
  {
    v28 = sub_1C5BCB0D4();
    result = sub_1C5BCB084();
    if ((v28 & 1) == 0)
    {
      break;
    }

    if (__OFADD__(v26, 1))
    {
      goto LABEL_39;
    }

    v69 = v26 + 1;
    v70 = v24;
    v30 = *(v27 - 4);
    v31 = *(v27 - 3);
    v32 = *(v27 - 1);
    v33 = *v27;
    v66 = *(v27 - 2);
    v67 = v30;
    v72 = v30;
    v73 = v31;
    v74 = v66;
    v75 = v32;
    v76 = v33;
    sub_1C5AB8D6C();

    v34 = sub_1C5BCB814();
    v36 = v35;

    v72 = v34;
    v73 = v36;
    v38 = sub_1C5BCAFC4();
    v39 = v37;
    if (v38 == 0x676E6F727473 && v37 == 0xE600000000000000 || (sub_1C5BCBDE4() & 1) != 0 || v38 == 98 && v39 == 0xE100000000000000 || (sub_1C5BCBDE4() & 1) != 0)
    {

      v24 = v70 | 2;
    }

    else
    {
      if ((v38 != 28005 || v39 != 0xE200000000000000) && (sub_1C5BCBDE4() & 1) == 0 && (v38 != 105 || v39 != 0xE100000000000000) && (sub_1C5BCBDE4() & 1) == 0)
      {
        if (v38 == 117 && v39 == 0xE100000000000000 || (sub_1C5BCBDE4() & 1) != 0)
        {

          v41 = v59;
          sub_1C5BC9C64();
          v42 = sub_1C5BC9C74();
          (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
          v43 = &qword_1EC1965F0;
          v44 = &unk_1C5BE37F0;
          sub_1C59400B0(v41, v60, &qword_1EC1965F0, &unk_1C5BE37F0);
          sub_1C5AA7518();
          goto LABEL_28;
        }

        if (v38 == 97 && v39 == 0xE100000000000000)
        {

LABEL_34:
          v72 = v67;
          v73 = v31;
          v74 = v66;
          v75 = v32;
          v76 = v33;
          v71[0] = 1717924456;
          v71[1] = 0xE400000000000000;
          v46 = sub_1C594A23C();
          v47 = MarkupParser.Element.subscript.getter(v71, v25, MEMORY[0x1E69E6158], v46);
          v49 = v48;
          v51 = v50;
          v53 = v52;

          if (v53)
          {
            MEMORY[0x1C694F120](v47, v49, v51, v53);

            v41 = v57;
            sub_1C5BC7A04();

            v43 = &qword_1EC195738;
            v44 = &unk_1C5BE0D80;
            sub_1C59400B0(v41, v58, &qword_1EC195738, &unk_1C5BE0D80);
            sub_1C5AA74C4();
LABEL_28:
            sub_1C5BC7874();
            sub_1C5924EF4(v41, v43, v44);
          }
        }

        else
        {
          v45 = sub_1C5BCBDE4();

          if (v45)
          {
            goto LABEL_34;
          }
        }

        v24 = v70;
        goto LABEL_15;
      }

      v24 = v70 | 1;
    }

LABEL_15:
    v40 = v69;
    ++v26;
    v27 += 5;
    if (v40 == sub_1C5BCB0F4())
    {
      goto LABEL_37;
    }
  }

  result = sub_1C5BCBAD4();
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t MarkupRenderer.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 104);
  v2 = sub_1C5BC7894();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MarkupRenderer.__deallocating_deinit()
{
  MarkupRenderer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5AA7274(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1C5BC7894();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1C5AA7418()
{
  result = qword_1EC1965F8;
  if (!qword_1EC1965F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1965F8);
  }

  return result;
}

unint64_t sub_1C5AA746C(__n128 a1)
{
  result = qword_1EC196600;
  if (!qword_1EC196600)
  {
    sub_1C5BC7844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196600);
  }

  return result;
}

unint64_t sub_1C5AA74C4()
{
  result = qword_1EC196608;
  if (!qword_1EC196608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196608);
  }

  return result;
}

unint64_t sub_1C5AA7518()
{
  result = qword_1EC196610;
  if (!qword_1EC196610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196610);
  }

  return result;
}

void *sub_1C5AA756C()
{
  sub_1C5A057E0();

  return sub_1C5BC8F44();
}

double sub_1C5AA75B4@<D0>(_OWORD *a1@<X8>)
{
  sub_1C5A057E0();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1C5AA7604(void *a1)
{
  sub_1C5A057E0();

  return sub_1C5BC8F54();
}

uint64_t MCUILoggingContext.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v7);
  v9 = sub_1C5BCAEA4();
  v11 = v10;
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  a3[1] = v11;
  return result;
}

uint64_t MCUILoggingContext.description.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0;
  }

  v2 = *v0;

  MEMORY[0x1C694F170](v2, v1);
  MEMORY[0x1C694F170](8254, 0xE200000000000000);

  return 60;
}

uint64_t sub_1C5AA77E0()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0;
  }

  v2 = *v0;

  MEMORY[0x1C694F170](v2, v1);
  MEMORY[0x1C694F170](8254, 0xE200000000000000);

  return 60;
}

double MCUINamespace<A>.loggingContext<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](a1).n128_u64[0];
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_1C5BE3800, v7);
  (*(v6 + 16))(v9, a1, a3);
  MCUILoggingContext.init<A>(_:)(v9, a3, &v12);
  v11 = v12;
  sub_1C5BC9DF4();

  return result;
}

unint64_t sub_1C5AA79A4()
{
  result = qword_1EC196620;
  if (!qword_1EC196620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196618, &qword_1C5BE3898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196620);
  }

  return result;
}

double MCUINamespace<A>.debugDimensions(labelPosition:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6[0] = *a1;
  KeyPath = swift_getKeyPath(a0_7);
  v8 = 0;
  v9 = swift_getKeyPath(byte_1C5BE3918);
  v10 = 0;
  MEMORY[0x1C694E550](v6, *(a2 + 16), &type metadata for DebugDimensionsModifier, a3);

  return result;
}

uint64_t sub_1C5AA7B14(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1C5BC8F44();
  return v3;
}

uint64_t sub_1C5AA7B5C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  a5();

  return sub_1C5BC8F54();
}

uint64_t DebugDimensionLabelPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

unint64_t sub_1C5AA7C4C()
{
  result = qword_1EC196638;
  if (!qword_1EC196638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196638);
  }

  return result;
}

unint64_t sub_1C5AA7CB0()
{
  result = qword_1EC196640;
  if (!qword_1EC196640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196640);
  }

  return result;
}

uint64_t sub_1C5AA7D04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
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

uint64_t sub_1C5AA7D4C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

void *sub_1C5AA7DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v35 = a1;
  v37 = a3;
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = *(a2 + 16);
  v8 = *(a2 + 8);
  v99 = v8;
  v9 = v100;

  if ((v9 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v99, &qword_1EC190FB8, &qword_1C5BD28F0);
    (*(v5 + 8))(v7, v4);
    v8 = v66[0];
  }

  v98 = *(a2 + 32);
  v11 = *(a2 + 24);
  v97 = v11;
  if (v98 == 1)
  {
    v87 = v11;
  }

  else
  {

    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    v34 = v4;
    v13 = a2;
    v14 = v12;
    sub_1C5BC7C54();

    a2 = v13;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v97, &qword_1EC190FB8, &qword_1C5BD28F0);
    (*(v5 + 8))(v7, v34);
    v11 = v87;
  }

  sub_1C59A60FC(v11, v8, v88);

  v15 = sub_1C5BCAA34();
  v17 = v16;
  sub_1C5AA8478(a2, v65);
  v53[5] = *&v65[80];
  v53[6] = *&v65[96];
  v53[4] = *&v65[64];
  *(&v89[5] + 8) = *&v65[80];
  *(&v89[6] + 8) = *&v65[96];
  *(&v89[4] + 8) = *&v65[64];
  v53[2] = *&v65[32];
  v53[3] = *&v65[48];
  *(v89 + 8) = *v65;
  *(&v89[3] + 8) = *&v65[48];
  *(&v89[2] + 8) = *&v65[32];
  v53[0] = *v65;
  v53[1] = *&v65[16];
  *&v54 = *&v65[112];
  *(&v54 + 1) = v15;
  v55 = v17;
  *(&v89[8] + 1) = v17;
  *(&v89[1] + 8) = *&v65[16];
  *(&v89[7] + 8) = v54;
  v56[2] = *&v65[32];
  v56[3] = *&v65[48];
  v56[0] = *v65;
  v56[1] = *&v65[16];
  v56[5] = *&v65[80];
  v56[6] = *&v65[96];
  v56[4] = *&v65[64];
  v57 = *&v65[112];
  v58 = v15;
  v59 = v17;
  sub_1C59400B0(v53, v66, &qword_1EC196658, &qword_1C5BE3B30);
  sub_1C5924EF4(v56, &qword_1EC196658, &qword_1C5BE3B30);
  v18 = sub_1C5BCAA64();
  v33 = v19;
  v34 = v18;
  v32 = sub_1C5BCA484();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v20 = a2;
  v36 = a2;
  v21 = v91;
  v22 = v92;
  LOBYTE(v15) = v94;
  v23 = v95;
  v30 = v96;
  v31 = v93;
  v24 = sub_1C5BCAA54();
  v26 = v25;
  sub_1C5AA85AC(v20, v65);
  v60[8] = *&v65[128];
  v60[9] = *&v65[144];
  v60[10] = *&v65[160];
  v60[11] = *&v65[176];
  v60[4] = *&v65[64];
  v60[5] = *&v65[80];
  v60[6] = *&v65[96];
  v60[7] = *&v65[112];
  v60[0] = *v65;
  v60[1] = *&v65[16];
  v60[2] = *&v65[32];
  v60[3] = *&v65[48];
  *&v61 = v24;
  *(&v61 + 1) = v26;
  v50 = *&v65[160];
  v51 = *&v65[176];
  v46 = *&v65[96];
  v47 = *&v65[112];
  v48 = *&v65[128];
  v49 = *&v65[144];
  v42 = *&v65[32];
  v43 = *&v65[48];
  v44 = *&v65[64];
  v45 = *&v65[80];
  v40 = *v65;
  v41 = *&v65[16];
  v52 = v61;
  v62[8] = *&v65[128];
  v62[9] = *&v65[144];
  v62[10] = *&v65[160];
  v62[11] = *&v65[176];
  v62[4] = *&v65[64];
  v62[5] = *&v65[80];
  v62[6] = *&v65[96];
  v62[7] = *&v65[112];
  v62[0] = *v65;
  v62[1] = *&v65[16];
  v38[0] = v22;
  v39 = v15;
  v62[2] = *&v65[32];
  v62[3] = *&v65[48];
  v63 = v24;
  v64 = v26;
  sub_1C59400B0(v60, v66, &qword_1EC196660, &qword_1C5BE3B38);
  sub_1C5924EF4(v62, &qword_1EC196660, &qword_1C5BE3B38);
  *&v65[200] = v49;
  *&v65[216] = v50;
  *&v65[232] = v51;
  *&v65[248] = v52;
  *&v65[136] = v45;
  *&v65[152] = v46;
  *&v65[168] = v47;
  *&v65[184] = v48;
  *&v65[72] = v41;
  *&v65[88] = v42;
  *&v65[104] = v43;
  *v65 = v32;
  *&v65[8] = v21;
  v65[16] = v38[0];
  *&v65[24] = v31;
  v65[32] = v39;
  *&v65[40] = v23;
  *&v65[48] = v30;
  *&v65[120] = v44;
  *&v65[56] = v40;
  *&v65[264] = v34;
  *&v65[272] = v33;
  v90[10] = v89[5];
  v90[11] = v89[6];
  v90[12] = v89[7];
  v90[13] = v89[8];
  v90[6] = v89[1];
  v90[7] = v89[2];
  v90[8] = v89[3];
  v90[9] = v89[4];
  v90[2] = v88[2];
  v90[3] = v88[3];
  v90[4] = v88[4];
  v90[5] = v89[0];
  v90[0] = v88[0];
  v90[1] = v88[1];
  memcpy(&v90[14], v65, 0x118uLL);
  v81 = v49;
  v82 = v50;
  v83 = v51;
  v84 = v52;
  v77 = v45;
  v78 = v46;
  v79 = v47;
  v80 = v48;
  v73 = v41;
  v74 = v42;
  v75 = v43;
  v76 = v44;
  v66[0] = v32;
  v66[1] = v21;
  v67 = v38[0];
  v68 = v31;
  v69 = v39;
  v70 = v23;
  v71 = v30;
  v72 = v40;
  v85 = v34;
  v86 = v33;
  sub_1C59400B0(v65, v38, &qword_1EC196668, &qword_1C5BE3B40);
  sub_1C5924EF4(v66, &qword_1EC196668, &qword_1C5BE3B40);
  LODWORD(v20) = 0x201u >> (8 * *v36);
  KeyPath = swift_getKeyPath(byte_1C5BE3B48);
  v28 = v37;
  result = memcpy(v37, v90, 0x1F8uLL);
  v28[63] = KeyPath;
  *(v28 + 512) = v20;
  return result;
}

void sub_1C5AA8478(char *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1C5BC86C4();
  if (v5 <= 0.0)
  {
    KeyPath = 0;
    v9 = 0;
    v10 = 0;
    v19 = 0;
    v18 = 0;
    v14 = 0uLL;
    v7 = 0;
    v16 = 0uLL;
    v17 = 255;
  }

  else
  {
    sub_1C5BC86C4();
    v7 = v6;
    KeyPath = swift_getKeyPath(byte_1C5BE3B70);
    v9 = swift_getKeyPath(byte_1C5BE3B98);
    v10 = swift_getKeyPath(byte_1C5BE3B48);
    v11 = sub_1C5BC9884();
    v12 = *a2;
    sub_1C5BC8174();
    *(&v14 + 1) = v13;
    *(&v16 + 1) = v15;
    v17 = 0;
    v18 = v11;
    v19 = qword_1C5BE3C60[v12];
  }

  *a3 = v7;
  *(a3 + 8) = KeyPath;
  *(a3 + 16) = v17;
  *(a3 + 24) = v9;
  *(a3 + 32) = 0;
  *(a3 + 40) = v10;
  *(a3 + 48) = 0;
  *(a3 + 56) = v18;
  *(a3 + 64) = v14;
  *(a3 + 80) = v16;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = v19;
}

double sub_1C5AA85AC@<D0>(char *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1C5BC86C4();
  if (v5 <= 0.0)
  {
    sub_1C5AA893C(&v44);
  }

  else
  {
    sub_1C5BC86C4();
    v7 = v6;
    KeyPath = swift_getKeyPath(byte_1C5BE3B70);
    v9 = swift_getKeyPath(byte_1C5BE3B98);
    v10 = swift_getKeyPath(byte_1C5BE3B48);
    v11 = sub_1C5BC9884();
    v12 = *a2;
    sub_1C5BC8174();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    sub_1C5BC86C4();
    sub_1C5BCAA54();
    sub_1C5BC85D4();
    *&v40[7] = v41;
    *&v40[23] = v42;
    *&v40[39] = v43;
    v21 = qword_1C5BE3C90[v12];
    sub_1C5BCABD4();
    *&v31 = v7;
    *(&v31 + 1) = KeyPath;
    LOBYTE(v32) = 0;
    *(&v32 + 1) = v9;
    LOBYTE(v33) = 0;
    *(&v33 + 1) = v10;
    LOBYTE(v34) = 0;
    BYTE8(v34) = v11;
    *&v35 = v14;
    *(&v35 + 1) = v16;
    *&v36 = v18;
    *(&v36 + 1) = v20;
    v37[0] = 0;
    *&v37[48] = *(&v43 + 1);
    *&v37[33] = *&v40[32];
    *&v37[17] = *&v40[16];
    *&v37[1] = *v40;
    *&v38 = v21;
    *(&v38 + 1) = 0xBFF921FB54442D18;
    *&v39 = v22;
    *(&v39 + 1) = v23;
    CGSizeMake();
    v52 = *&v37[32];
    v53 = *&v37[48];
    v54 = v38;
    v55 = v39;
    v48 = v35;
    v49 = v36;
    v50 = *v37;
    v51 = *&v37[16];
    v44 = v31;
    v45 = v32;
    v46 = v33;
    v47 = v34;
  }

  v24 = v53;
  a3[8] = v52;
  a3[9] = v24;
  v25 = v55;
  a3[10] = v54;
  a3[11] = v25;
  v26 = v49;
  a3[4] = v48;
  a3[5] = v26;
  v27 = v51;
  a3[6] = v50;
  a3[7] = v27;
  v28 = v45;
  *a3 = v44;
  a3[1] = v28;
  result = *&v46;
  v30 = v47;
  a3[2] = v46;
  a3[3] = v30;
  return result;
}

uint64_t sub_1C5AA87F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v15[0] = *v2;
  v15[1] = v5;
  v16 = *(v2 + 32);
  v6 = sub_1C5BCAA54();
  v8 = v7;
  v9 = swift_allocObject();
  v10 = *(v2 + 16);
  *(v9 + 16) = *v2;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v2 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196648, &qword_1C5BE3B18);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196650, &unk_1C5BE3B20) + 36);
  *v12 = sub_1C5AA88FC;
  *(v12 + 8) = v9;
  *(v12 + 16) = 0;
  *(v12 + 24) = v6;
  *(v12 + 32) = v8;
  return sub_1C5AA8904(v15, v14);
}

double sub_1C5AA893C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 255;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  return result;
}

unint64_t sub_1C5AA897C()
{
  result = qword_1EC196670;
  if (!qword_1EC196670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196670);
  }

  return result;
}

unint64_t sub_1C5AA89D0()
{
  result = qword_1EC196678;
  if (!qword_1EC196678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196678);
  }

  return result;
}

unint64_t sub_1C5AA8A44()
{
  result = qword_1EC196680;
  if (!qword_1EC196680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196650, &unk_1C5BE3B20);
    sub_1C5924F54(&qword_1EC196688, &qword_1EC196648, &qword_1C5BE3B18, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EC196690, &qword_1EC196698, &qword_1C5BE3BE0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196680);
  }

  return result;
}

uint64_t sub_1C5AA8B28(uint64_t a1)
{
  result = sub_1C5BCA484();
  qword_1EC196628 = result;
  return result;
}

uint64_t sub_1C5AA8B6C(uint64_t a1)
{
  result = sub_1C5BCA484();
  qword_1EC196630 = result;
  return result;
}

uint64_t sub_1C5AA8BB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C5BC76F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BC76C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 96) = a1;
  v12 = log2f(a1);
  if ((LODWORD(v12) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v12 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12 >= 1.8447e19)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v12 >= 0x40)
  {
    v13 = 0;
  }

  else
  {
    v13 = (1 << v12) / 2;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v31 = v5;
  if (v13)
  {
    v14 = sub_1C5BCB0C4();
    v30 = v4;
    v15 = v7;
    v16 = v14;
    *(v14 + 16) = v13;
    bzero((v14 + 32), 4 * v13);
    *(v2 + 16) = v16;
    v17 = sub_1C5BCB0C4();
    *(v17 + 16) = v13;
    bzero((v17 + 32), 4 * v13);
    *(v2 + 24) = v17;
    v18 = sub_1C5BCB0C4();
    *(v18 + 16) = v13;
    bzero((v18 + 32), 4 * v13);
    *(v2 + 32) = v18;
    v19 = sub_1C5BCB0C4();
    *(v19 + 16) = v13;
    bzero((v19 + 32), 4 * v13);
    *(v2 + 40) = v19;
    v20 = sub_1C5BCB0C4();
    *(v20 + 16) = v13;
    bzero((v20 + 32), 4 * v13);
    *(v2 + 48) = v20;
    v7 = v15;
    v4 = v30;
    v21 = sub_1C5BCB0C4();
    *(v21 + 16) = v13;
    bzero((v21 + 32), 4 * v13);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
    *(v2 + 16) = MEMORY[0x1E69E7CC0];
    *(v2 + 24) = v21;
    *(v2 + 32) = v21;
    *(v2 + 40) = v21;
    *(v2 + 48) = v21;
  }

  *(v2 + 56) = v21;
  *(v2 + 64) = 2.0 / v13;
  v22 = (*(v9 + 104))(v11, *MEMORY[0x1E69E5B00], v8);
  if (!v13)
  {
    goto LABEL_18;
  }

  MEMORY[0x1EEE9AC00](v22);
  *(&v29 - 4) = v11;
  *(&v29 - 24) = 0;
  v27 = v13;
  v23 = sub_1C5AC9AAC(v13, sub_1C5AA90AC);
  v24 = sub_1C5ABD9C4(v23);

  (*(v9 + 8))(v11, v8);
  *(v2 + 72) = v13;
  *(v2 + 80) = v24;
  (*(v31 + 104))(v7, *MEMORY[0x1E69E5B08], v4);
  type metadata accessor for DSPSplitComplex(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1966A0, &qword_1C5BE3D30);
  swift_allocObject();
  v25 = sub_1C5BC76D4();
  if (v25)
  {
    *(v2 + 88) = v25;
    return v2;
  }

LABEL_19:
  v28 = 0;
  v27 = 51;
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

void *sub_1C5AA8FFC()
{

  return v0;
}

uint64_t sub_1C5AA9054()
{
  sub_1C5AA8FFC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5AA90AC(uint64_t a1, void *a2)
{
  v4 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1966A8, &qword_1C5BE3D38);
  sub_1C5AA9134();
  result = sub_1C5BC76B4();
  *a2 = v4;
  return result;
}

unint64_t sub_1C5AA9134()
{
  result = qword_1EDA45D40;
  if (!qword_1EDA45D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966A8, &qword_1C5BE3D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45D40);
  }

  return result;
}

void sub_1C5AA9198(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *(a1 + 56));
  *&v16[10] = *(v9 + 58);
  v10 = v9[3];
  v15[2] = v9[2];
  *v16 = v10;
  v11 = v9[1];
  v15[0] = *v9;
  v15[1] = v11;
  if (v16[25])
  {
    v12 = v9[3];
    a2[2] = v9[2];
    a2[3] = v12;
    *(a2 + 57) = *(v9 + 57);
    v13 = v9[1];
    *a2 = *v9;
    a2[1] = v13;
  }

  else
  {

    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v15, &unk_1EC194DE0, &qword_1C5BDCD20);
    (*(v6 + 8))(v8, v5);
  }
}

double sub_1C5AA932C(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 60));
  v8 = *v7;
  if (v7[8] == 1)
  {
    return *v7;
  }

  sub_1C5BCB4E4();
  v10 = sub_1C5BC9844();
  sub_1C5BC7C54();

  sub_1C5BC8F24();
  swift_getAtKeyPath();
  v11 = sub_1C5942458(v8, 0);
  (*(v4 + 8))(v6, v3, v11);
  return *&v12[1];
}

uint64_t sub_1C5AA9484(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0, &qword_1C5BDA4D0);
  sub_1C5BCA694();
  return v2;
}

uint64_t NowPlayingQueueSection.body.getter@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838, &qword_1C5BD5C80);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v49 - v3;
  *(&v64 + 1) = *(a1 + 3);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966D0, &qword_1C5BE3D58);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966D8, &unk_1C5BE3D60);
  v58 = sub_1C5BC8AB4();
  sub_1C5BC97C4();
  v59 = sub_1C5BC8AB4();
  v57 = a1;
  *&v64 = *(a1 + 2);
  v60 = sub_1C5BC8AB4();
  v61 = sub_1C5BC8AB4();
  v4 = sub_1C5BCA934();
  v55 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v49 - v5;
  v62 = *(a1 + 5);
  v6 = MEMORY[0x1E697E5D8];
  v100 = v62;
  v101 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  v99 = v6;
  v96 = swift_getWitnessTable();
  v97 = v6;
  v94 = swift_getWitnessTable();
  v95 = v6;
  v7 = swift_getWitnessTable();
  v8 = sub_1C5924F54(&qword_1EC1966E0, &qword_1EC1966D0, &qword_1C5BE3D58, MEMORY[0x1E697F940]);
  v92 = v7;
  v93 = v8;
  v9 = swift_getWitnessTable();
  v10 = sub_1C5924F54(&qword_1EC1966E8, &qword_1EC1966D8, &unk_1C5BE3D60, MEMORY[0x1E69802E0]);
  v90 = v9;
  v91 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_1C5AAF53C(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v88 = v11;
  v89 = v12;
  v13 = v59;
  v14 = swift_getWitnessTable();
  v15 = *(v57 + 4);
  v16 = sub_1C5AA9E1C();
  v86 = v15;
  v87 = v16;
  v84 = swift_getWitnessTable();
  v85 = v12;
  v17 = v61;
  v18 = swift_getWitnessTable();
  v81 = v14;
  v82 = v18;
  v19 = v14;
  v83 = MEMORY[0x1E6981E60];
  v20 = swift_getWitnessTable();
  v21 = sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838, &qword_1C5BD5C80, MEMORY[0x1E69E6ED8]);
  v60 = v4;
  v77 = v4;
  v78 = v67;
  v50 = v20;
  v79 = v20;
  v80 = v21;
  v22 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v25 = &v49 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966F8, &unk_1C5BE9EB0);
  v51 = OpaqueTypeMetadata2;
  v26 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196700, &unk_1C5BE3D70);
  v54 = v26;
  v27 = sub_1C5BC8AB4();
  v58 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v52 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v57 = &v49 - v30;
  *&v31 = v15;
  *(&v31 + 1) = v62;
  v70[1] = v64;
  v70[2] = v31;
  v71 = v65;
  v68[1] = v64;
  v68[2] = v31;
  v69 = v65;
  v32 = v63;
  sub_1C5AAB260(sub_1C5AAA138, v70, sub_1C5AAAC78, v68, v13, v17, v19, v18);
  v33 = sub_1C5BC89B4();
  v34 = v66;
  (*(*(v33 - 8) + 104))();
  sub_1C5AAF53C(&qword_1EDA46688, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1C5BCADB4();
  if (result)
  {
    v36 = v60;
    v37 = v67;
    v38 = v50;
    sub_1C5BC9F54();
    sub_1C5924EF4(v34, &qword_1EC192838, &qword_1C5BD5C80);
    (*(v55 + 8))(v32, v36);
    v76 = sub_1C5BCA484();
    v77 = v36;
    v78 = v37;
    v79 = v38;
    v80 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = v51;
    v41 = v52;
    sub_1C5AAB330(&v76, MEMORY[0x1E69815C0], OpaqueTypeConformance2, MEMORY[0x1E6981580], v52, 0.0, 0.0, 0.0, 0.0);

    (*(v53 + 8))(v25, v40);
    v42 = MEMORY[0x1E697FDC0];
    v43 = sub_1C5924F54(&qword_1EC196708, &qword_1EC1966F8, &unk_1C5BE9EB0, MEMORY[0x1E697FDC0]);
    v74 = OpaqueTypeConformance2;
    v75 = v43;
    v44 = swift_getWitnessTable();
    v45 = sub_1C5924F54(&qword_1EC196710, &qword_1EC196700, &unk_1C5BE3D70, v42);
    v72 = v44;
    v73 = v45;
    v46 = swift_getWitnessTable();
    v47 = v57;
    sub_1C593EDC0(v41, v27, v46);
    v48 = *(v58 + 8);
    v48(v41, v27);
    sub_1C593EDC0(v47, v27, v46);
    return (v48)(v47, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C5AA9E1C()
{
  result = qword_1EC1966F0;
  if (!qword_1EC1966F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1966F0);
  }

  return result;
}

uint64_t sub_1C5AA9E70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v23[1] = a3;
  v5 = sub_1C5BC8AB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v23 - v7;
  sub_1C5BC97C4();
  v9 = sub_1C5BC8AB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = v23 - v15;
  KeyPath = swift_getKeyPath(asc_1C5BE4148, v14);
  v25 = 0;
  MEMORY[0x1C694E550](&KeyPath, a1, &type metadata for RowSeparatorModifier, a2);
  sub_1C5942458(KeyPath, v25);
  v17 = sub_1C5AA9E1C();
  v23[4] = a2;
  v23[5] = v17;
  WitnessTable = swift_getWitnessTable();
  sub_1C595BB1C(0xD000000000000014, 0x80000001C5BFA1F0, v5);
  (*(v6 + 8))(v8, v5);
  v19 = sub_1C5AAF53C(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v23[2] = WitnessTable;
  v23[3] = v19;
  v20 = swift_getWitnessTable();
  sub_1C593EDC0(v12, v9, v20);
  v21 = *(v10 + 8);
  v21(v12, v9);
  sub_1C593EDC0(v16, v9, v20);
  return (v21)(v16, v9);
}

uint64_t sub_1C5AAA150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v97 = a4;
  v101 = a2;
  v94 = a6;
  v11 = sub_1C5BC90D4();
  v92 = *(v11 - 8);
  v93 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v121 = a2;
  *(&v121 + 1) = a3;
  v122 = a4;
  v123 = a5;
  v13 = type metadata accessor for NowPlayingQueueSection(0, &v121);
  v89 = *(v13 - 8);
  v99 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v86 = &v68 - v14;
  v15 = sub_1C5BC8AB4();
  v76 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68 - v16;
  v70 = sub_1C5BC8AB4();
  v77 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v68 - v18;
  v74 = sub_1C5BC8AB4();
  v78 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v68 - v19;
  v75 = sub_1C5BC8AB4();
  v79 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v68 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966D0, &qword_1C5BE3D58);
  v81 = sub_1C5BC8AB4();
  v85 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v98 = &v68 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966D8, &unk_1C5BE3D60);
  v83 = sub_1C5BC8AB4();
  v87 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v68 - v22;
  sub_1C5BC97C4();
  v88 = sub_1C5BC8AB4();
  v90 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v82 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v84 = &v68 - v25;
  sub_1C5BC98C4();
  v69 = v13;
  sub_1C5AA9198(v13, &v121);
  sub_1C5AB043C();
  v95 = a3;
  v96 = a1;
  v100 = a5;
  sub_1C5BCA2F4();
  sub_1C5BC98E4();
  sub_1C5AA9198(v13, &v121);
  sub_1C5AB0588();
  v119 = a5;
  v120 = MEMORY[0x1E697E5D8];
  v26 = MEMORY[0x1E697E5D8];
  v27 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v29 = v71;
  sub_1C5BCA2F4();
  (*(v76 + 8))(v17, v15);
  sub_1C5BC98A4();
  v117 = WitnessTable;
  v118 = v26;
  v30 = v26;
  v31 = v70;
  v32 = swift_getWitnessTable();
  v33 = v72;
  sub_1C5BCA2F4();
  (*(v77 + 8))(v29, v31);
  sub_1C5BC98B4();
  v115 = v32;
  v116 = v30;
  v68 = v27;
  v34 = v74;
  v35 = swift_getWitnessTable();
  v36 = v73;
  sub_1C5BCA2F4();
  (*(v78 + 8))(v33, v34);
  sub_1C5BCAA34();
  v77 = v37;
  v102 = v101;
  v103 = a3;
  v38 = v96;
  v104 = v97;
  v105 = v100;
  v106 = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1968A8, &unk_1C5BE4118);
  v113 = v35;
  v114 = MEMORY[0x1E697E5D8];
  v39 = v75;
  v78 = swift_getWitnessTable();
  sub_1C5924F54(&qword_1EC1968B0, &qword_1EC1968A8, &unk_1C5BE4118, MEMORY[0x1E697E378]);
  sub_1C5BC9CE4();
  (*(v79 + 8))(v36, v39);
  v40 = v89;
  v79 = *(v89 + 16);
  v41 = v86;
  v42 = v69;
  (v79)(v86, v38, v69);
  v43 = (*(v40 + 80) + 48) & ~*(v40 + 80);
  v44 = swift_allocObject();
  v45 = v95;
  *(v44 + 2) = v101;
  *(v44 + 3) = v45;
  v46 = v97;
  v47 = v100;
  *(v44 + 4) = v97;
  *(v44 + 5) = v47;
  v48 = *(v40 + 32);
  v48(&v44[v43], v41, v42);
  (v79)(v41, v96, v42);
  v49 = swift_allocObject();
  v50 = v95;
  *(v49 + 2) = v101;
  *(v49 + 3) = v50;
  v51 = v100;
  *(v49 + 4) = v46;
  *(v49 + 5) = v51;
  v48(&v49[v43], v41, v42);
  v52 = sub_1C5924F54(&qword_1EC1966E0, &qword_1EC1966D0, &qword_1C5BE3D58, MEMORY[0x1E697F940]);
  v111 = v78;
  v112 = v52;
  v53 = v81;
  v54 = swift_getWitnessTable();
  v55 = v80;
  v56 = v98;
  sub_1C5BC9FE4();

  (*(v85 + 8))(v56, v53);
  v57 = v91;
  sub_1C5BC90C4();
  v58 = sub_1C5924F54(&qword_1EC1966E8, &qword_1EC1966D8, &unk_1C5BE3D60, MEMORY[0x1E69802E0]);
  v109 = v54;
  v110 = v58;
  v59 = v83;
  v60 = swift_getWitnessTable();
  v61 = v82;
  sub_1C5BCA134();
  (*(v92 + 8))(v57, v93);
  (*(v87 + 8))(v55, v59);
  v62 = sub_1C5AAF53C(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v107 = v60;
  v108 = v62;
  v63 = v88;
  v64 = swift_getWitnessTable();
  v65 = v84;
  sub_1C593EDC0(v61, v63, v64);
  v66 = *(v90 + 8);
  v66(v61, v63);
  sub_1C593EDC0(v65, v63, v64);
  return (v66)(v65, v63);
}

uint64_t sub_1C5AAAC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)@<X0>(uint64_t *a2@<X8>)@<X8>)
{
  v22 = a6;
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v12 = type metadata accessor for NowPlayingQueueSection(0, v23);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  (*(v13 + 16))(&v21 - v15, a1, v12, v14);
  v17 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a2;
  *(v18 + 3) = a3;
  *(v18 + 4) = a4;
  *(v18 + 5) = a5;
  result = (*(v13 + 32))(&v18[v17], v16, v12);
  v20 = v22;
  *v22 = sub_1C5AAFB60;
  v20[1] = v18;
  return result;
}

uint64_t sub_1C5AAADF0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v19 = sub_1C5BCA484();
  v13 = sub_1C5BCAA44();
  v15 = v14;
  v16 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1968B8, &qword_1C5BE4128) + 36);
  sub_1C5AAAEC8(a2, a3, a4, a5, a6, v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1968C0, &qword_1C5BE4130);
  v18 = &v16[*(result + 36)];
  *v18 = v13;
  v18[1] = v15;
  *a7 = v19;
  return result;
}

double sub_1C5AAAEC8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v22[1] = a1;
  v11 = type metadata accessor for NowPlayingContrastSensitiveBackdrop(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1C5BC9384();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5BC94A4();
  sub_1C5BC86D4();
  (*(v15 + 8))(v17, v14);
  *v13 = swift_getKeyPath(byte_1C5BE40E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  swift_storeEnumTagMultiPayload();
  *&v23 = a2;
  *(&v23 + 1) = a3;
  *&v24 = a4;
  *(&v24 + 1) = a5;
  v18 = type metadata accessor for NowPlayingQueueSection(0, &v23);
  sub_1C5AA9484(v18);
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  sub_1C5A48438(v13, a6);
  v19 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1968C8, &unk_1C5BE4138) + 36));
  v20 = v24;
  *v19 = v23;
  v19[1] = v20;
  result = *&v25;
  v19[2] = v25;
  return result;
}

void sub_1C5AAB0EC(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, BOOL *a5@<X8>)
{
  v10 = sub_1C5BC9384();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5BC94A4();
  sub_1C5BC86D4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  (*(v11 + 8))(v13, v10);
  v25.origin.x = v15;
  v25.origin.y = v17;
  v25.size.width = v19;
  v25.size.height = v21;
  MinY = CGRectGetMinY(v25);
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  v24[3] = a4;
  v23 = type metadata accessor for NowPlayingQueueSection(0, v24);
  *a5 = MinY <= sub_1C5AA932C(v23) + 20.0;
}

uint64_t sub_1C5AAB260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v9(v8);
  return sub_1C5BCA914();
}

uint64_t sub_1C5AAB330@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  v27[1] = a6;
  v27[2] = a5;
  v27[0] = a1;
  v16 = sub_1C5BCB804();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v27 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1966F8, &unk_1C5BE9EB0);
  v20 = sub_1C5BC8AB4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v27 - v22;
  *&v27[5] = a7;
  *&v27[6] = a8;
  *&v27[7] = a9;
  *&v27[8] = a10;
  v28 = 0;
  sub_1C5BC9EE4();
  v24 = *(a3 - 8);
  (*(v24 + 16))(v19, v27[0], a3);
  (*(v24 + 56))(v19, 0, 1, a3);
  v25 = sub_1C5924F54(&qword_1EC196708, &qword_1EC1966F8, &unk_1C5BE9EB0, MEMORY[0x1E697FDC0]);
  v27[3] = a4;
  v27[4] = v25;
  swift_getWitnessTable();
  sub_1C5BCA004();
  (*(v17 + 8))(v19, v16);
  return (*(v21 + 8))(v23, v20);
}

void *sub_1C5AAB5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v13 = type metadata accessor for NowPlayingQueueSection(0, &v21);
  (*(*(a4 - 8) + 32))(a7 + v13[13], a2, a4);
  v14 = a7 + v13[14];
  KeyPath = swift_getKeyPath(byte_1C5BE4058);
  v25 = 0;
  *v14 = KeyPath;
  *(v14 + 73) = 0;
  v16 = a7 + v13[15];
  *v16 = swift_getKeyPath(byte_1C5BE4098);
  *(v16 + 8) = 0;
  v17 = v13[16];
  *(a7 + v17) = swift_getKeyPath(byte_1C5BE40E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  swift_storeEnumTagMultiPayload();
  v18 = a7 + v13[17];
  v26 = 0;
  result = sub_1C5BCA684();
  v20 = v22;
  *v18 = v21;
  *(v18 + 8) = v20;
  return result;
}

void *NowPlayingQueueSection.init(content:header:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v19(v16);
  a2(v20);
  return sub_1C5AAB5D8(v18, v14, a3, a4, a5, a6, a7);
}

void *NowPlayingQueueSection<>.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10(v7);
  return sub_1C5AAB5D8(v9, v11, a2, MEMORY[0x1E6981E70], a3, MEMORY[0x1E6981E60], a4);
}

uint64_t NowPlayingQueueSection<>.init<A, B>(_:rowContent:header:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v54 = a6;
  v55 = a3;
  v50 = a5;
  v51 = a4;
  v48 = a2;
  v52 = a9;
  v53 = a1;
  v43 = a12;
  v41 = a8;
  v42 = a13;
  v47 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(v16 - 8);
  v17 = v46;
  MEMORY[0x1EEE9AC00](v18);
  v44 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v20;
  swift_getAssociatedTypeWitness();
  v40 = a14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = sub_1C5BC86A4();
  v45 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = a7;
  v58 = AssociatedTypeWitness;
  v59 = v23;
  v60 = v21;
  v61 = AssociatedConformanceWitness;
  v25 = sub_1C5BCA8C4();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v39 - v27;
  (*(v17 + 16))(v44, v53, a7, v26);
  v29 = swift_allocObject();
  v29[2] = v54;
  v29[3] = a7;
  v30 = v47;
  v29[4] = v41;
  v29[5] = v30;
  v32 = v42;
  v31 = v43;
  v29[6] = v21;
  v29[7] = v31;
  v33 = v40;
  v29[8] = v32;
  v29[9] = v33;
  v29[10] = v48;
  v29[11] = v55;

  WitnessTable = swift_getWitnessTable();
  v35 = sub_1C5BCA8B4();
  v36 = v49;
  v51(v35);
  v56 = WitnessTable;
  v37 = swift_getWitnessTable();
  sub_1C5AAB5D8(v28, v36, v25, v54, v37, v30, v52);

  return (*(v46 + 8))(v53, a7);
}

uint64_t sub_1C5AABC88@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7)
{
  v23[1] = a3;
  v24 = a2;
  v25 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C5BC86A4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v23 - v18;
  v24(a1, v17);
  sub_1C5BCA3E4();
  (*(v9 + 8))(v11, a4);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v15, v12, WitnessTable);
  v21 = *(v13 + 8);
  v21(v15, v12);
  sub_1C593EDC0(v19, v12, WitnessTable);
  return (v21)(v19, v12);
}

uint64_t NowPlayingQueueRow.init(item:artwork:title:subtitle:action:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = *(a15 - 8);
  (*(v20 + 16))(a8, a1, a15);
  v31[0] = a14;
  v31[1] = a15;
  v31[2] = a16;
  v31[3] = a17;
  v21 = type metadata accessor for NowPlayingQueueRow(0, v31);
  a2();
  result = (*(v20 + 8))(a1, a15);
  v23 = a8 + v21[14];
  *v23 = a3;
  *(v23 + 8) = a4;
  *(v23 + 16) = a5 & 1;
  *(v23 + 24) = a6;
  v24 = a8 + v21[15];
  *v24 = a7;
  *(v24 + 8) = a9;
  *(v24 + 16) = a10 & 1;
  *(v24 + 24) = a11;
  v25 = (a8 + v21[16]);
  *v25 = a12;
  v25[1] = a13;
  return result;
}

uint64_t NowPlayingQueueRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = *(a1 + 16);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A28, &unk_1C5BD67E0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A30, &qword_1C5BE3D80);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196718, &qword_1C5BE3D88);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v29 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196720, &qword_1C5BE3D90);
  v4 = sub_1C5BC8AB4();
  v5 = sub_1C5BC92E4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_1C5924F54(qword_1EC196728, &qword_1EC196720, &qword_1C5BE3D90, MEMORY[0x1E69805E8]);
  v6 = swift_getWitnessTable();
  v7 = sub_1C5AAF53C(&qword_1EDA462E0, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
  swift_getOpaqueTypeMetadata2();
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v25 = v7;
  swift_getOpaqueTypeConformance2();
  v8 = sub_1C5BCA6F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v18 - v13;
  v18[4] = v3;
  v19 = *(a1 + 24);
  v20 = *(a1 + 40);
  v21 = v18[0];

  sub_1C5BCA6E4();
  v15 = swift_getWitnessTable();
  sub_1C593EDC0(v11, v8, v15);
  v16 = *(v9 + 8);
  v16(v11, v8);
  sub_1C593EDC0(v14, v8, v15);
  return (v16)(v14, v8);
}

uint64_t sub_1C5AAC4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v67 = a5;
  v65 = a4;
  v63 = a3;
  v60 = a2;
  v64 = a1;
  v73 = a6;
  v74 = sub_1C5BC92E4();
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v71 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C5BC8C04();
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v68 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1C5BC96A4();
  v62 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v61 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A28, &unk_1C5BD67E0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A30, &qword_1C5BE3D80);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196718, &qword_1C5BE3D88);
  swift_getTupleTypeMetadata2();
  v53 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1C5BCA714();
  v54 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v46 - v11;
  v13 = sub_1C5BC8AB4();
  v55 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v48 = v46 - v14;
  v47 = swift_getWitnessTable();
  v86 = v47;
  v87 = MEMORY[0x1E697E5D8];
  v15 = swift_getWitnessTable();
  v80 = v13;
  v81 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v58 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v18 = v46 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196720, &qword_1C5BE3D90);
  v59 = OpaqueTypeMetadata2;
  v19 = sub_1C5BC8AB4();
  v57 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v56 = v46 - v20;
  v80 = v13;
  v81 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_1C5924F54(qword_1EC196728, &qword_1EC196720, &qword_1C5BE3D90, MEMORY[0x1E69805E8]);
  v46[1] = OpaqueTypeConformance2;
  v84 = OpaqueTypeConformance2;
  v85 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1C5AAF53C(&qword_1EDA462E0, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
  v80 = v19;
  v81 = v74;
  v51 = v23;
  v82 = v23;
  v83 = v24;
  v49 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v50 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v46 - v29;
  v75 = v60;
  v76 = v63;
  v77 = v65;
  v78 = v67;
  v79 = v64;
  sub_1C5BC8FC4();
  sub_1C5BCA704();
  sub_1C5BC98F4();
  v31 = v48;
  sub_1C5BCA2F4();
  (*(v54 + 8))(v12, v10);
  v32 = v61;
  sub_1C5BC9684();
  v67 = v18;
  sub_1C5BCA0C4();
  (*(v62 + 8))(v32, v66);
  (*(v55 + 8))(v31, v13);
  v33 = v68;
  sub_1C5BC8BF4();
  if (qword_1EC1907B0 != -1)
  {
    swift_once();
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196880, &qword_1C5BE4008);
  __swift_project_value_buffer(v34, qword_1EC1966B0);
  sub_1C5924F54(&qword_1EC196888, &qword_1EC196880, &qword_1C5BE4008, MEMORY[0x1E697DD00]);
  v35 = v56;
  v36 = v33;
  v37 = v59;
  v38 = v67;
  sub_1C5BC9E94();
  (*(v69 + 8))(v36, v70);
  (*(v58 + 8))(v38, v37);
  v39 = v71;
  v40 = v74;
  v41 = v51;
  v42 = v49;
  sub_1C5AF76C4(v19);
  sub_1C5BC9E04();
  (*(v72 + 8))(v39, v40);
  (*(v57 + 8))(v35, v19);
  v80 = v19;
  v81 = v40;
  v82 = v41;
  v83 = v42;
  v43 = swift_getOpaqueTypeConformance2();
  sub_1C593EDC0(v27, v25, v43);
  v44 = *(v50 + 8);
  v44(v27, v25);
  sub_1C593EDC0(v30, v25, v43);
  return (v44)(v30, v25);
}

uint64_t sub_1C5AACF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a6;
  v45 = a1;
  v10 = type metadata accessor for ArtworkCornerStyle(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C5BC8AB4();
  v37 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A28, &unk_1C5BD67E0);
  v17 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A30, &qword_1C5BE3D80);
  v36[1] = v17;
  v18 = sub_1C5BC8AB4();
  v38 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v41 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v42 = a5;
  v43 = v36 - v21;
  v56[0] = a2;
  v40 = a3;
  v56[1] = a3;
  v56[2] = a4;
  v56[3] = a5;
  type metadata accessor for NowPlayingQueueRow(0, v56);
  sub_1C5BCAA54();
  v39 = a2;
  sub_1C5BCA234();
  v22 = *(v11 + 28);
  v23 = *MEMORY[0x1E697F480];
  v24 = sub_1C5BC9044();
  (*(*(v24 - 8) + 104))(&v13[v22], v23, v24);
  *v13 = 0x4010000000000000;
  if (qword_1EDA4DAD0 != -1)
  {
    swift_once();
  }

  v51[0] = xmmword_1EDA5DB28;
  v51[1] = *algn_1EDA5DB38;
  v52 = qword_1EDA5DB48;
  v36[0] = a4;
  v50[6] = a4;
  v50[7] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  v26 = v41;
  sub_1C5AC1394(v13, v51, v14, WitnessTable, v41, 0.5);
  sub_1C5AAF784(v13, type metadata accessor for ArtworkCornerStyle);
  (*(v37 + 8))(v16, v14);
  v27 = sub_1C5924F54(&qword_1EC192A40, &qword_1EC192A28, &unk_1C5BD67E0, &unk_1C5BE52F0);
  v50[4] = WitnessTable;
  v50[5] = v27;
  v28 = swift_getWitnessTable();
  v29 = sub_1C5924F54(&qword_1EDA46180, &qword_1EC192A30, &qword_1C5BE3D80, MEMORY[0x1E6980A18]);
  v50[2] = v28;
  v50[3] = v29;
  v30 = swift_getWitnessTable();
  v31 = v43;
  sub_1C593EDC0(v26, v18, v30);
  v32 = v38;
  v37 = *(v38 + 8);
  (v37)(v26, v18);
  v33 = sub_1C5BC9134();
  v49[0] = 0;
  sub_1C5AAD578(v39, v40, v36[0], v42, v56);
  memcpy(v53, v56, 0x169uLL);
  memcpy(v54, v56, 0x169uLL);
  sub_1C59400B0(v53, v55, &qword_1EC196890, &unk_1C5BE4010);
  sub_1C5924EF4(v54, &qword_1EC196890, &unk_1C5BE4010);
  memcpy(v56 + 7, v53, 0x169uLL);
  v55[0] = v33;
  v55[1] = 0x4010000000000000;
  LOBYTE(v55[2]) = v49[0];
  memcpy(&v55[2] + 1, v56, 0x170uLL);
  (*(v32 + 16))(v26, v31, v18);
  v50[0] = v26;
  memcpy(v49, v55, 0x181uLL);
  v50[1] = v49;
  sub_1C59400B0(v55, v56, &qword_1EC196718, &qword_1C5BE3D88);
  v48[0] = v18;
  v48[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196718, &qword_1C5BE3D88);
  v46 = v30;
  v47 = sub_1C5924F54(&qword_1EC196898, &qword_1EC196718, &qword_1C5BE3D88, MEMORY[0x1E6981870]);
  sub_1C594226C(v50, 2uLL, v48);
  sub_1C5924EF4(v55, &qword_1EC196718, &qword_1C5BE3D88);
  v34 = v37;
  (v37)(v31, v18);
  memcpy(v56, v49, 0x181uLL);
  sub_1C5924EF4(v56, &qword_1EC196718, &qword_1C5BE3D88);
  return v34(v26, v18);
}

uint64_t sub_1C5AAD578@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v47 = a6;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170, &qword_1C5BDA000);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40[-v15];
  v103 = a2;
  v104 = a3;
  v105 = a4;
  v106 = a5;
  type metadata accessor for NowPlayingQueueRow(0, &v103);
  if (qword_1EC1907B8 != -1)
  {
    swift_once();
  }

  v17 = sub_1C5BC9C14();
  v52 = v18;
  v53 = v17;
  v20 = v19;
  v54 = v21;
  if (qword_1EC190668 != -1)
  {
    swift_once();
  }

  v22 = qword_1EC1A6AB0;
  v23 = sub_1C5BCA4C4();
  v103 = v22;
  v87[0] = v23;

  v51 = sub_1C5BC85E4();
  v50 = sub_1C5BC85E4();

  sub_1C5BCAA64();
  sub_1C5BC8BD4();
  v49 = v20 & 1;
  v130 = v20 & 1;
  KeyPath = swift_getKeyPath(a0_8);
  v131 = 0;
  sub_1C5BC9A44();
  v24 = sub_1C5BC9C14();
  v44 = v25;
  v45 = v24;
  v41 = v26;
  v46 = v27;

  if (qword_1EC190670 != -1)
  {
    swift_once();
  }

  v28 = qword_1EC1A6AB8;
  v29 = *(v43 + 36);
  v30 = *MEMORY[0x1E6981DB8];
  v31 = sub_1C5BCAB54();
  (*(*(v31 - 8) + 104))(v16 + v29, v30, v31);
  *v16 = v28;

  v32 = sub_1C5BCA524();
  sub_1C59400B0(v16, v13, &unk_1EC196170, &qword_1C5BDA000);
  v103 = v32;
  sub_1C59400B0(v13, v42, &unk_1EC196170, &qword_1C5BDA000);
  sub_1C5924F54(&qword_1EC192920, &unk_1EC196170, &qword_1C5BDA000, MEMORY[0x1E697FAF0]);

  v43 = sub_1C5BC85E4();
  v42 = sub_1C5BC85E4();

  sub_1C5924EF4(v13, &unk_1EC196170, &qword_1C5BDA000);
  sub_1C5924EF4(v16, &unk_1EC196170, &qword_1C5BDA000);
  sub_1C5BCAA64();
  sub_1C5BC8BD4();
  LOBYTE(v32) = v41 & 1;
  v120 = v41 & 1;
  v33 = swift_getKeyPath(a0_8);
  *&v63 = v53;
  *(&v63 + 1) = v52;
  LOBYTE(v64) = v49;
  *(&v64 + 1) = v129[0];
  DWORD1(v64) = *(v129 + 3);
  *(&v64 + 1) = v54;
  *&v65 = v51;
  v70 = v126;
  v71 = v127;
  v72 = v128;
  v66 = v122;
  v67 = v123;
  v68 = v124;
  v69 = v125;
  *(&v65 + 1) = v50;
  *&v73 = KeyPath;
  *(&v73 + 1) = 1;
  v55[8] = v127;
  v55[9] = v128;
  v55[4] = v123;
  v55[5] = v124;
  v55[6] = v125;
  v55[7] = v126;
  v55[0] = v63;
  v55[1] = v64;
  v55[2] = v65;
  v55[3] = v122;
  v55[10] = v73;
  v35 = v44;
  v34 = v45;
  *&v75 = v45;
  *(&v75 + 1) = v44;
  LOBYTE(v76) = v32;
  *(&v76 + 1) = *v119;
  DWORD1(v76) = *&v119[3];
  v36 = v46;
  *(&v76 + 1) = v46;
  v38 = v42;
  v37 = v43;
  *&v77 = v43;
  *(&v77 + 1) = v42;
  v82 = v60;
  v83 = v61;
  v84 = v62;
  v78 = v56;
  v79 = v57;
  v80 = v58;
  v81 = v59;
  *&v85 = v33;
  *(&v85 + 1) = 1;
  *(&v55[16] + 8) = v58;
  *(&v55[17] + 8) = v59;
  *(&v55[18] + 8) = v60;
  *(&v55[19] + 8) = v61;
  *(&v55[20] + 8) = v62;
  *(&v55[21] + 8) = v85;
  *(&v55[15] + 8) = v57;
  *(&v55[11] + 8) = v75;
  *(&v55[12] + 8) = v76;
  *(&v55[13] + 8) = v77;
  v121 = 0;
  v74 = 0;
  LOBYTE(v55[11]) = 0;
  v86 = 0;
  BYTE8(v55[22]) = 0;
  *(&v55[14] + 8) = v56;
  memcpy(v47, v55, 0x169uLL);
  v87[0] = v34;
  v87[1] = v35;
  v88 = v32;
  *v89 = *v119;
  *&v89[3] = *&v119[3];
  v90 = v36;
  v91 = v37;
  v97 = v60;
  v98 = v61;
  v99 = v62;
  v93 = v56;
  v94 = v57;
  v95 = v58;
  v96 = v59;
  v92 = v38;
  v100 = v33;
  v101 = 1;
  v102 = 0;
  sub_1C59400B0(&v63, &v103, &qword_1EC1968A0, &qword_1C5BE4050);
  sub_1C59400B0(&v75, &v103, &qword_1EC1968A0, &qword_1C5BE4050);
  sub_1C5924EF4(v87, &qword_1EC1968A0, &qword_1C5BE4050);
  v103 = v53;
  v104 = v52;
  LOBYTE(v105) = v49;
  *(&v105 + 1) = v129[0];
  HIDWORD(v105) = *(v129 + 3);
  v106 = v54;
  v107 = v51;
  v108 = v50;
  v113 = v126;
  v114 = v127;
  v115 = v128;
  v109 = v122;
  v110 = v123;
  v112 = v125;
  v111 = v124;
  v116 = KeyPath;
  v117 = 1;
  v118 = 0;
  return sub_1C5924EF4(&v103, &qword_1EC1968A0, &qword_1C5BE4050);
}

void sub_1C5AADDA0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1C5AAE518(319, &qword_1EDA467C8, &type metadata for DeviceMetrics, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1C5AAE518(319, &qword_1EC193518, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1C594F100(319);
          if (v5 <= 0x3F)
          {
            sub_1C5AAE518(319, &qword_1EDA4E188, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C5AADEF8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v36 = *(a3 + 24);
  v7 = *(v6 + 84);
  v8 = *(v36 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1C5BC90F4() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  if (v10 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v13;
  v16 = *(v8 + 64) + 7;
  v17 = *(v11 + 80) & 0xF8;
  v18 = ~v17 & 0xFFFFFFFFFFFFFFF8;
  v19 = v17 + 16;
  v20 = v12 + 8;
  if (v14 < a2)
  {
    v21 = ((v20 + ((v19 + ((((v16 + (v15 & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 81) & 0xFFFFFFFFFFFFFFF8)) & v18)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v22 = v21 & 0xFFFFFFF8;
    if ((v21 & 0xFFFFFFF8) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = a2 - v14 + 1;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *(a1 + v21);
        if (!v26)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v26 = *(a1 + v21);
        if (!v26)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      if (!v25)
      {
        goto LABEL_33;
      }

      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_33;
      }
    }

    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    v35 = v14 + (v29 | v28);
    return (v35 + 1);
  }

LABEL_33:
  if (v7 != v14)
  {
    v31 = ((a1 + v15) & ~v13);
    if (v9 == v14)
    {
      v30 = *(v8 + 48);
      v32 = v9;
      v33 = v36;
      goto LABEL_37;
    }

    v34 = *(((v20 + ((v19 + ((((v31 + v16) & 0xFFFFFFFFFFFFFFF8) + 81) & 0xFFFFFFFFFFFFFFF8)) & v18)) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v34 >= 0xFFFFFFFF)
    {
      LODWORD(v34) = -1;
    }

    v35 = v34 - 1;
    if (v35 < 0)
    {
      v35 = -1;
    }

    return (v35 + 1);
  }

  v30 = *(v6 + 48);
  v31 = a1;
  v32 = v7;
  v33 = v5;
LABEL_37:

  return v30(v31, v32, v33);
}

void sub_1C5AAE1DC(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v37 = *(a4 + 16);
  v7 = *(v37 - 8);
  v35 = *(a4 + 24);
  v36 = v7;
  v8 = *(v7 + 84);
  v9 = *(v35 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_1C5BC90F4() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v11;
  }

  v15 = *(v9 + 80);
  v16 = *(v7 + 64) + v15;
  v17 = *(v9 + 64) + 7;
  v18 = *(v12 + 80) & 0xF8;
  v19 = ~v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = v18 + 16;
  v21 = v13 + 8;
  v22 = ((v21 + ((v20 + ((((v17 + (v16 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 81) & 0xFFFFFFFFFFFFFFF8)) & v19)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 >= a3)
  {
    v25 = 0;
    v26 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_23;
    }

LABEL_28:
    if (((v21 + ((v20 + ((((v17 + (v16 & ~v15)) & 0xFFFFFFF8) + 81) & 0xFFFFFFF8)) & v19)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 1;
    }

    if (((v21 + ((v20 + ((((v17 + (v16 & ~v15)) & 0xFFFFFFF8) + 81) & 0xFFFFFFF8)) & v19)) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v28 = ~v14 + a2;
      bzero(a1, ((v21 + ((v20 + ((((v17 + (v16 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 81) & 0xFFFFFFFFFFFFFFF8)) & v19)) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v28;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        *(a1 + v22) = v27;
      }

      else
      {
        *(a1 + v22) = v27;
      }
    }

    else if (v25)
    {
      *(a1 + v22) = v27;
    }

    return;
  }

  if (((v21 + ((v20 + ((((v17 + (v16 & ~v15)) & 0xFFFFFFF8) + 81) & 0xFFFFFFF8)) & v19)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v23 = a3 - v14 + 1;
  }

  else
  {
    v23 = 2;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = a2 - v14;
  if (a2 > v14)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v22) = 0;
  }

  else if (v25)
  {
    *(a1 + v22) = 0;
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
  if (v8 == v14)
  {
    v29 = v37;
    v30 = *(v36 + 56);
    v31 = a1;
    v32 = a2;
    v33 = v8;
  }

  else
  {
    v31 = ((a1 + v16) & ~v15);
    if (v10 != v14)
    {
      v34 = ((v21 + ((v20 + ((((v31 + v17) & 0xFFFFFFFFFFFFFFF8) + 81) & 0xFFFFFFFFFFFFFFF8)) & v19)) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v34 = (a2 - 0x7FFFFFFF);
        v34[1] = 0;
      }

      else
      {
        v34[1] = a2;
      }

      return;
    }

    v30 = *(v9 + 56);
    v32 = a2;
    v33 = v10;
    v29 = v35;
  }

  v30(v31, v32, v33, v29);
}

void sub_1C5AAE518(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1C5AAE568(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_1C5927B74();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C5AAE61C(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))(a1);
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *(((v12 + v23) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_BYTE *sub_1C5AAE7FC(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((((((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = a3 - v12;
    if (((((((v11 + 7 + v14) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&result[v16] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *&result[v16] = 0;
      }

      else if (v20)
      {
        result[v16] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v12)
      {
        v25 = *(v5 + 56);

        return v25();
      }

      else
      {
        result = (&result[v13] & ~v10);
        if (v8 == v12)
        {
          v26 = *(v7 + 56);

          return v26(result);
        }

        else
        {
          v27 = (&result[v15] & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            v27[2] = 0;
            v27[3] = 0;
            *v27 = a2 & 0x7FFFFFFF;
            v27[1] = 0;
          }

          else
          {
            v27[3] = a2 - 1;
          }
        }
      }

      return result;
    }
  }

  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = ~v12 + a2;
    v24 = result;
    bzero(result, v16);
    result = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *&result[v16] = v22;
    }

    else
    {
      *&result[v16] = v22;
    }
  }

  else if (v20)
  {
    result[v16] = v22;
  }

  return result;
}

uint64_t sub_1C5AAEAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v57 = a3;
  v58 = a2;
  v65 = a4;
  v5 = sub_1C5BCA944();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196850, &qword_1C5BE3FE8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v52 - v12;
  v13 = sub_1C5BC8F34();
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C5BC9054();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C5BC94F4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196858, &qword_1C5BE3FF0);
  v24 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v52 - v28;
  v30 = *(v17 + 16);
  v61 = a1;
  v31.n128_f64[0] = v30(v19, a1, v16, v27);
  sub_1C5AAF1FC(1, v31);
  if (v57)
  {
    v32 = v58;
    if (v58 == 3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v33 = v58;
    sub_1C5950E48(v58, 0);
    sub_1C5BCB4E4();
    v34 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v35 = sub_1C5942458(v33, 0);
    (*(v52 + 8))(v15, v53, v35);
    v32 = v66[0];
    if (v66[0] == 3)
    {
      goto LABEL_6;
    }
  }

  if (!v32)
  {
    sub_1C5BCA484();
    goto LABEL_9;
  }

LABEL_6:
  if (qword_1EC190678 != -1)
  {
    swift_once();
  }

LABEL_9:
  sub_1C5BC8554();
  sub_1C5BCA0F4();

  (*(v21 + 8))(v23, v20);
  sub_1C5AAF53C(&qword_1EC196860, MEMORY[0x1E697F4E0], MEMORY[0x1E697F508]);
  if (sub_1C5BCB404())
  {
    v36 = 1;
    v37 = v62;
  }

  else
  {
    sub_1C5BCB424();
    sub_1C5AAF53C(&qword_1EC196868, MEMORY[0x1E697F4E0], MEMORY[0x1E697F4F0]);
    sub_1C5BCAD54();
    v38 = sub_1C5BCB484();
    v40 = v54;
    v39 = v55;
    v41 = v56;
    (*(v55 + 16))(v54);
    v38(v66, 0);
    sub_1C5BCA484();
    sub_1C5BC8554();
    v37 = v62;
    sub_1C5BCA0F4();

    (*(v39 + 8))(v40, v41);
    v36 = 0;
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196870, &qword_1C5BE3FF8);
  (*(*(v42 - 8) + 56))(v37, v36, 1, v42);
  v43 = v63;
  sub_1C59889A0(v37, v63);
  v44 = *(v24 + 16);
  v46 = v59;
  v45 = v60;
  v44(v60, v29, v59);
  v47 = v64;
  sub_1C5988A10(v43, v64);
  v48 = v65;
  v44(v65, v45, v46);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196878, &qword_1C5BE4000);
  sub_1C5988A10(v47, &v48[*(v49 + 48)]);
  sub_1C5988A80(v43);
  v50 = *(v24 + 8);
  v50(v29, v46);
  sub_1C5988A80(v47);
  return (v50)(v45, v46);
}

uint64_t sub_1C5AAF1FC(uint64_t result, __n128 a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  v4 = sub_1C5BC9054();
  sub_1C5AAF53C(&qword_1EC196860, MEMORY[0x1E697F4E0], MEMORY[0x1E697F508]);
  result = sub_1C5BCB3E4();
  if (__OFSUB__(result, v3))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1C5BCB3D4();
  sub_1C5BCB424();
  sub_1C5BCB3F4();
  if (v6)
  {
    sub_1C5BCB424();
  }

  else
  {
    v8 = v5;
  }

  result = sub_1C5BCB3D4();
  if (v8 >= v7)
  {
    sub_1C5BCB474();
    return (*(*(v4 - 8) + 8))(v2, v4);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1C5AAF368(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196830, &qword_1C5BE3FD8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = *v1;
  v7 = *(v1 + 8);
  (*(v8 + 16))(&v11 - v5, a1, v3, v4);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  sub_1C5950E48(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196838, &qword_1C5BE3FE0);
  sub_1C5924F54(&qword_1EC196840, &qword_1EC196830, &qword_1C5BE3FD8, MEMORY[0x1E697FDF8]);
  sub_1C5924F54(&qword_1EC196848, &qword_1EC196838, &qword_1C5BE3FE0, MEMORY[0x1E6981F48]);
  return sub_1C5BCA564();
}

uint64_t sub_1C5AAF53C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C5AAF5B4()
{
  v0 = sub_1C5BC8B84();
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196880, &qword_1C5BE4008);
  __swift_allocate_value_buffer(v4, qword_1EC1966B0);
  v5 = __swift_project_value_buffer(v4, qword_1EC1966B0);
  v6 = *(v1 + 28);
  v7 = *MEMORY[0x1E697F468];
  v8 = sub_1C5BC9044();
  (*(*(v8 - 8) + 104))(&v3[v6], v7, v8);
  __asm { FMOV            V0.2D, #8.0 }

  *v3 = _Q0;
  sub_1C5AAF6F0(v3, v5);
  *(v5 + *(v4 + 36)) = xmmword_1C5BE3D40;
  return sub_1C5AAF784(v3, MEMORY[0x1E697EAF0]);
}

uint64_t sub_1C5AAF6F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5BC8B84();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5AAF754(__n128 a1)
{
  if (_UISolariumEnabled())
  {
    result = sub_1C5BC9A04();
  }

  else
  {
    result = sub_1C5BC9924();
  }

  qword_1EC1966C8 = result;
  return result;
}

uint64_t sub_1C5AAF784(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C5AAF7F4(BOOL *a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7[0] = v1[2];
  v3 = v7[0];
  v7[1] = v4;
  v7[2] = v5;
  v7[3] = v6;
  type metadata accessor for NowPlayingQueueSection(0, v7);

  sub_1C5AAB0EC(v3, v4, v5, v6, a1);
}

uint64_t sub_1C5AAF8B0(_BYTE *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9 = v1[2];
  v3 = v9;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  type metadata accessor for NowPlayingQueueSection(0, &v9);
  LOBYTE(a1) = *a1;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v7 = type metadata accessor for NowPlayingQueueSection(0, &v9);
  return sub_1C5AA94E4(a1, v7);
}

uint64_t objectdestroy_37Tm_0()
{
  v2 = *(v0 + 40);
  v10 = *(v0 + 16);
  v1 = v10;
  v11 = *(v0 + 24);
  v9 = v11;
  v12 = v2;
  v3 = type metadata accessor for NowPlayingQueueSection(0, &v10);
  v4 = v0 + ((*(*(v3 - 1) + 80) + 48) & ~*(*(v3 - 1) + 80));
  (*(*(v1 - 8) + 8))(v4, v1);
  (*(*(v9 - 8) + 8))(v4 + v3[13]);
  v5 = v4 + v3[14];
  sub_1C596AC80(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 73));
  sub_1C5942458(*(v4 + v3[15]), *(v4 + v3[15] + 8));
  v6 = v3[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1C5BC90F4();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C5AAFB60@<X0>(uint64_t *a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v11[0] = v2[2];
  v4 = v11[0];
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v8 = *(type metadata accessor for NowPlayingQueueSection(0, v11) - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return sub_1C5AAADF0(v9, v4, v5, v6, v7, a2);
}

unint64_t sub_1C5AAFC1C()
{
  result = qword_1EC1968D0;
  if (!qword_1EC1968D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1968D8, &qword_1C5BE4190);
    sub_1C5924F54(&qword_1EC1968E0, &qword_1EC1968E8, &qword_1C5BE4198, MEMORY[0x1E697FE48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1968D0);
  }

  return result;
}

void sub_1C5AAFCD0(char a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = 5;
  if (a1)
  {
    v3 = 8;
  }

  v100 = v3;
  if (a1)
  {
    v4 = &unk_1F4517040;
  }

  else
  {
    v4 = &unk_1F4518870;
  }

  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_81;
  }

  v7 = sub_1C59D9728(v5);
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_79;
  }

  if (v7 < v4[2])
  {
    v91 = a2;
    if (a1)
    {
      v8 = &unk_1F4517040;
    }

    else
    {
      v8 = &unk_1F4518870;
    }

    v9 = &v8[16 * v7];
    v11 = *(v9 + 4);
    v10 = *(v9 + 5);
    swift_bridgeObjectRetain_n();
    v92 = v10;

    if (*(v11 + 16))
    {
      v12 = 0;
      v13 = 0;
      v14 = v100;
      v15 = 0.0;
      v16 = 0.0 / v100;
      v99 = v100 + 1;
      v17 = v11 + 48;
      v93 = v11 + 32;
      v18 = MEMORY[0x1E69E7CC0];
      __asm { FMOV            V2.2D, #-1.0 }

      v95 = _Q2;
      v97 = v11;
      while (2)
      {
        v101 = *(v93 + 16 * v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1C5B76938(0, *(v18 + 2) + 1, 1, v18);
        }

        v25 = *(v18 + 2);
        v24 = *(v18 + 3);
        v26 = (v25 + 1);
        v27 = v100;
        v28 = v95;
        v29 = v97;
        if (v25 >= v24 >> 1)
        {
          v40 = sub_1C5B76938((v24 > 1), v25 + 1, 1, v18);
          v29 = v97;
          v28 = v95;
          v27 = v100;
          v18 = v40;
        }

        v30 = 0;
        v31 = v15 / v14;
        *(v18 + 2) = v26;
        v32 = 40 * v25;
        v33 = &v18[40 * v25];
        *(v33 + 4) = v16;
        *(v33 + 5) = v31;
        *(v33 + 3) = vaddq_f64(vaddq_f64(v101, v101), v28);
        *(v33 + 8) = 0x3FE0000000000000;
        do
        {
          v34 = v30 + 1;
          if (v30 + 1 + v12 >= *(v29 + 16))
          {
            __break(1u);
LABEL_40:
            swift_bridgeObjectRelease_n();
            if (!*(v92 + 16))
            {
              goto LABEL_76;
            }

            v53 = 0;
            v54 = 0;
            v55 = v92 + 48;
            v13 = MEMORY[0x1E69E7CC0];
            v56 = 0.0;
LABEL_42:
            v104 = *(v92 + 32 + 16 * v53);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_1C5B76938(0, *(v13 + 2) + 1, 1, v13);
            }

            v57 = v95;
            v59 = *(v13 + 2);
            v58 = *(v13 + 3);
            v12 = v59 + 1;
            v27 = v100;
            v60 = v92;
            if (v59 >= v58 >> 1)
            {
              v71 = sub_1C5B76938((v58 > 1), v59 + 1, 1, v13);
              v57 = v95;
              v27 = v100;
              v13 = v71;
              v60 = v92;
            }

            v61 = 0;
            v62 = v56 / v14;
            *(v13 + 2) = v12;
            v63 = 40 * v59;
            v64 = &v13[40 * v59];
            *(v64 + 4) = v16;
            *(v64 + 5) = v62;
            *(v64 + 3) = vaddq_f64(vaddq_f64(v104, v104), v57);
            *(v64 + 8) = 0x3FE0000000000000;
            while (1)
            {
              v65 = v61 + 1;
              if (v61 + 1 + v53 >= *(v60 + 16))
              {
                break;
              }

              v66 = *(v55 + 16 * v61);
              v67 = *(v13 + 3);
              v68 = v59 + v61;
              v12 = v68 + 2;
              if (v65 + v59 >= v67 >> 1)
              {
                v105 = v66;
                v70 = sub_1C5B76938((v67 > 1), v68 + 2, 1, v13);
                v66 = v105;
                v57 = v95;
                v27 = v100;
                v13 = v70;
                v60 = v92;
              }

              *(v13 + 2) = v12;
              v69 = &v13[v63];
              *(v69 + 9) = v65 / v14;
              *(v69 + 10) = v62;
              *(v69 + 88) = vaddq_f64(vaddq_f64(v66, v66), v57);
              *(v69 + 13) = 0x3FE0000000000000;
              v63 += 40;
              v61 = v65;
              if (v27 == v65)
              {
                if (v54 == v27)
                {
                  v72 = 0;
                  v73 = 0;
                  v12 = MEMORY[0x1E69E7CC0];
                  v74 = v27;
                  while (v73 != v27)
                  {
                    v98 = v74;
                    v75 = v73;
                    v106 = v72;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v12 = sub_1C5B76834(0, *(v12 + 16) + 1, 1, v12);
                    }

                    v76 = v98;
                    v77 = 0;
                    v73 = v75 + 1;
                    v27 = v100;
                    v78 = v106;
                    v79 = v106 - 0xFFFFFFFFLL;
                    do
                    {
                      if (!&v77[v79])
                      {
                        __break(1u);
LABEL_73:
                        __break(1u);
LABEL_74:
                        __break(1u);
                        goto LABEL_75;
                      }

                      v80 = &v77[v76];
                      if (&v77[v76] > 0xFFFFFFFDLL)
                      {
                        goto LABEL_73;
                      }

                      v81 = v78 + v77;
                      v82 = &v77[v78 + 1];
                      v83 = v80 + 2;
                      if (((v82 | &v77[v78] | (v80 + 2) | (v80 + 1)) & 0x8000000000000000) != 0)
                      {
                        goto LABEL_74;
                      }

                      v85 = *(v12 + 16);
                      v84 = *(v12 + 24);
                      if (v85 >= v84 >> 1)
                      {
                        v87 = v12;
                        v88 = v73;
                        v96 = v79;
                        v89 = sub_1C5B76834((v84 > 1), v85 + 1, 1, v87);
                        v79 = v96;
                        v76 = v98;
                        v73 = v88;
                        v27 = v100;
                        v78 = v106;
                        v12 = v89;
                      }

                      *(v12 + 16) = v85 + 1;
                      v86 = (v12 + 32 * v85);
                      *(v86 + 8) = v81;
                      *(v86 + 9) = v82;
                      *(v86 + 10) = v83;
                      *(v86 + 11) = v76 + v77++ + 1;
                      *(v86 + 6) = 0;
                      *(v86 + 7) = 0;
                    }

                    while (v27 != v77);
                    v72 = v78 + v99;
                    v74 = &v76[v99];
                    if (v73 == v27)
                    {
                      goto LABEL_71;
                    }
                  }

                  goto LABEL_78;
                }

                v56 = ++v54;
                v53 += v99;
                v55 += 16 * v100 + 16;
                if (v53 < *(v60 + 16))
                {
                  goto LABEL_42;
                }

                goto LABEL_76;
              }
            }

LABEL_70:
            __break(1u);
LABEL_71:
            v90 = v27;

            *v91 = v18;
            v91[1] = v26;
            v91[2] = v90;
            v91[3] = v90;
            v91[4] = v13;
            v91[5] = v12;
            v91[6] = v90;
            v91[7] = v90;
            return;
          }

          v35 = *(v17 + 16 * v30);
          v36 = *(v18 + 3);
          v37 = v25 + v30;
          v26 = (v37 + 2);
          if (v34 + v25 >= v36 >> 1)
          {
            v102 = v35;
            v39 = sub_1C5B76938((v36 > 1), v37 + 2, 1, v18);
            v35 = v102;
            v29 = v97;
            v28 = v95;
            v27 = v100;
            v18 = v39;
          }

          *(v18 + 2) = v26;
          v38 = &v18[v32];
          *(v38 + 9) = v34 / v14;
          *(v38 + 10) = v31;
          *(v38 + 88) = vaddq_f64(vaddq_f64(v35, v35), v28);
          *(v38 + 13) = 0x3FE0000000000000;
          v32 += 40;
          v30 = v34;
        }

        while (v27 != v34);
        if (v13 == v27)
        {
          v41 = 0;
          v42 = 0;
          v26 = MEMORY[0x1E69E7CC0];
          v43 = v27;
          while (v42 != v27)
          {
            v103 = v41;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_1C5B76834(0, *(v26 + 2) + 1, 1, v26);
            }

            v44 = 0;
            v94 = v42 + 1;
            v27 = v100;
            v45 = v103;
            do
            {
              if (!&v44[v103 - 0xFFFFFFFFLL])
              {
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
                goto LABEL_70;
              }

              v46 = &v44[v43];
              if (&v44[v43] > 0xFFFFFFFDLL)
              {
                goto LABEL_68;
              }

              v13 = &v44[v45];
              v47 = &v44[v45 + 1];
              v48 = v46 + 2;
              if (((v47 | &v44[v45] | (v46 + 2) | (v46 + 1)) & 0x8000000000000000) != 0)
              {
                goto LABEL_69;
              }

              v50 = *(v26 + 2);
              v49 = *(v26 + 3);
              v12 = v50 + 1;
              if (v50 >= v49 >> 1)
              {
                v52 = sub_1C5B76834((v49 > 1), v50 + 1, 1, v26);
                v27 = v100;
                v45 = v103;
                v26 = v52;
              }

              *(v26 + 2) = v12;
              v51 = &v26[32 * v50];
              *(v51 + 8) = v13;
              *(v51 + 9) = v47;
              *(v51 + 10) = v48;
              *(v51 + 11) = v43 + v44++ + 1;
              *(v51 + 6) = 0;
              *(v51 + 7) = 0;
            }

            while (v27 != v44);
            v41 = v45 + v99;
            v43 += v99;
            v42 = v94;
            if (v94 == v27)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_77;
        }

        v15 = ++v13;
        v12 += v99;
        v17 += 16 * v100 + 16;
        if (v12 < *(v29 + 16))
        {
          continue;
        }

        break;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
  }

  __break(1u);
LABEL_81:
  sub_1C5BCBBC4();
  __break(1u);
}

double sub_1C5AB043C()
{
  v1 = *(v0 + 18);
  if (v1 <= 1)
  {
    v11 = *v0;
    v12 = *(v0 + 8);
    if (v1)
    {
      v13 = 1;
      v14 = *(v0 + 19);
      v15 = *(v0 + 35);
      *v16 = *(v0 + 51);
      *&v16[14] = *(v0 + 65);
      DeviceMetrics.padding.getter(&v10);
      v4 = *v0;
      v5 = *(v0 + 8);
      v6 = 1;
      v7 = *(v0 + 19);
      v8 = *(v0 + 35);
      v9[0] = *(v0 + 51);
      *(v9 + 14) = *(v0 + 65);
      DeviceMetrics.padding.getter(&v3);
    }

    else
    {
      v13 = 0;
      v14 = *(v0 + 19);
      v15 = *(v0 + 35);
      *v16 = *(v0 + 51);
      *&v16[14] = *(v0 + 65);
      DeviceMetrics.padding.getter(&v4);
    }
  }

  return 0.0;
}

double sub_1C5AB0588()
{
  v1 = *(v0 + 18);
  result = 16.0;
  if ((v1 - 2) >= 2)
  {
    v12 = *v0;
    v13 = *(v0 + 8);
    if (v1)
    {
      v14 = 1;
      v15 = *(v0 + 19);
      v16 = *(v0 + 35);
      *v17 = *(v0 + 51);
      *&v17[14] = *(v0 + 65);
      DeviceMetrics.padding.getter(v11);
      v5 = *v0;
      v6 = *(v0 + 8);
      v7 = 1;
      v8 = *(v0 + 19);
      v9 = *(v0 + 35);
      v10[0] = *(v0 + 51);
      *(v10 + 14) = *(v0 + 65);
      DeviceMetrics.padding.getter(v3);
      return v4 + -16.0 + 16.0;
    }

    else
    {
      v14 = 0;
      v15 = *(v0 + 19);
      v16 = *(v0 + 35);
      *v17 = *(v0 + 51);
      *&v17[14] = *(v0 + 65);
      DeviceMetrics.padding.getter(&v5);
      return 29.5;
    }
  }

  return result;
}

void sub_1C5AB06BC(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *(a1 + 36));
  *&v16[10] = *(v9 + 58);
  v10 = v9[3];
  v15[2] = v9[2];
  *v16 = v10;
  v11 = v9[1];
  v15[0] = *v9;
  v15[1] = v11;
  if (v16[25])
  {
    v12 = v9[3];
    a2[2] = v9[2];
    a2[3] = v12;
    *(a2 + 57) = *(v9 + 57);
    v13 = v9[1];
    *a2 = *v9;
    a2[1] = v13;
  }

  else
  {

    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v15, &unk_1EC194DE0, &qword_1C5BDCD20);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_1C5AB0850(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 40);
  v10 = *v9;
  v11 = *(v9 + 8);
  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (*(v9 + 32) == 1)
  {
    *a2 = v10;
    a2[1] = v11;
    a2[2] = v13;
    a2[3] = v12;

    sub_1C593E7D8(v10, v11, v13, v12);
  }

  else
  {

    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v15 = sub_1C596AC4C(v10, v11, v13, v12, 0);
    (*(v6 + 8))(v8, v5, v15);
  }
}

uint64_t NowPlayingQueue.init(content:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for NowPlayingQueue(0, a2, a3, a3);
  v7 = a4 + v6[9];
  *v7 = swift_getKeyPath(byte_1C5BE41A0);
  *(v7 + 73) = 0;
  v8 = a4 + v6[10];
  *v8 = swift_getKeyPath(byte_1C5BE41E0);
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  v9 = (a4 + v6[11]);
  type metadata accessor for NowPlayingViewModel.Lifecycle();
  sub_1C5931838(&qword_1EDA497D0, 255, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
  *v9 = sub_1C5BC8C84();
  v9[1] = v10;
  v11 = (a4 + v6[12]);
  _s5QueueCMa();
  sub_1C5931838(qword_1EDA4A0C0, v12, _s5QueueCMa, &unk_1C5BE4338);
  *v11 = sub_1C5BC8C84();
  v11[1] = v13;
  return a1();
}

double NowPlayingQueue.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55[2] = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v6 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v5);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v55[1] = v8;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  (*(v3 + 32))(v8 + v7, v6, a1);
  v76 = MEMORY[0x1E69E73E0];
  v77 = v9;
  v78 = MEMORY[0x1E69E73F0];
  v79 = v10;
  v11 = sub_1C5BC9AA4();
  WitnessTable = swift_getWitnessTable();
  v76 = v11;
  v77 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = v11;
  v77 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v76 = OpaqueTypeMetadata2;
  v77 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeMetadata2();
  v76 = OpaqueTypeMetadata2;
  v77 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v76 = v15;
  v77 = v16;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BD0, &qword_1C5BD6C00);
  v17 = sub_1C5BC8AB4();
  v76 = v15;
  v77 = v16;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = MEMORY[0x1E6980A18];
  v20 = sub_1C5924F54(&qword_1EDA460C8, &qword_1EC192BD0, &qword_1C5BD6C00, MEMORY[0x1E6980A18]);
  v74 = v18;
  v75 = v20;
  v21 = swift_getWitnessTable();
  v76 = v17;
  v77 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v76 = v17;
  v77 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v76 = v22;
  v77 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v76 = v22;
  v77 = v23;
  v25 = swift_getOpaqueTypeConformance2();
  v76 = v24;
  v77 = v25;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1968F0, &unk_1C5BE4210);
  v26 = sub_1C5BC8AB4();
  v76 = v24;
  v77 = v25;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = sub_1C5924F54(&qword_1EC1968F8, &qword_1EC1968F0, &unk_1C5BE4210, v19);
  v72 = v27;
  v73 = v28;
  v29 = swift_getWitnessTable();
  v76 = v26;
  v77 = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  v31 = sub_1C5BC88F4();
  v76 = v26;
  v77 = v29;
  v32 = swift_getOpaqueTypeConformance2();
  v76 = v30;
  v77 = v31;
  v33 = MEMORY[0x1E697C0D8];
  v78 = v32;
  v79 = MEMORY[0x1E697C0D8];
  v34 = swift_getOpaqueTypeMetadata2();
  v76 = v30;
  v77 = v31;
  v78 = v32;
  v79 = v33;
  v35 = swift_getOpaqueTypeConformance2();
  v76 = v34;
  v77 = v35;
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v36 = sub_1C5BC8AB4();
  v76 = v34;
  v77 = v35;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = MEMORY[0x1E697E5D8];
  v70 = v37;
  v71 = MEMORY[0x1E697E5D8];
  v68 = swift_getWitnessTable();
  v69 = v38;
  v66 = swift_getWitnessTable();
  v67 = v38;
  v39 = swift_getWitnessTable();
  v40 = sub_1C5931838(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v64 = v39;
  v65 = v40;
  v41 = swift_getWitnessTable();
  v42 = MEMORY[0x1E69805D0];
  v62 = v41;
  v63 = MEMORY[0x1E69805D0];
  v60 = swift_getWitnessTable();
  v61 = v42;
  v43 = swift_getWitnessTable();
  v44 = sub_1C593A9AC();
  v76 = v36;
  v77 = &type metadata for NowPlayingViewModel.Lifecycle.TransitionPhase;
  v78 = v43;
  v79 = v44;
  v45 = swift_getOpaqueTypeMetadata2();
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194470, qword_1C5BEBAC0);
  v76 = v36;
  v77 = &type metadata for NowPlayingViewModel.Lifecycle.TransitionPhase;
  v78 = v43;
  v79 = v44;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = sub_1C5AB32B4();
  v76 = v45;
  v77 = v46;
  v78 = v47;
  v79 = v48;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196900, &qword_1C5BE4220);
  sub_1C5BC8AB4();
  v76 = v45;
  v77 = v46;
  v78 = v47;
  v79 = v48;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = sub_1C5924F54(qword_1EC196908, &qword_1EC196900, &qword_1C5BE4220, MEMORY[0x1E697EC18]);
  v58 = v49;
  v59 = v50;
  swift_getWitnessTable();
  v56 = sub_1C5BC8B94();
  v57 = v51;
  v52 = sub_1C5BC8BA4();
  v53 = swift_getWitnessTable();
  sub_1C593EDC0(&v56, v52, v53);

  v56 = v76;
  v57 = v77;
  sub_1C593EDC0(&v56, v52, v53);

  return result;
}

uint64_t sub_1C5AB135C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v305 = a4;
  v302 = a2;
  v286 = a1;
  v290 = a5;
  v289 = sub_1C5BC8AF4();
  v288 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289);
  v285 = v7;
  v287 = v195 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_1C5BC88F4();
  v284 = *(v291 - 8);
  MEMORY[0x1EEE9AC00](v291);
  v283 = v195 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = sub_1C5BC94E4();
  v281 = *(v282 - 8);
  MEMORY[0x1EEE9AC00](v282);
  v280 = v195 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = sub_1C5BC93D4();
  v279 = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v295);
  v246 = v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = a3;
  v306 = type metadata accessor for NowPlayingQueue(0, a3, a4, v11);
  v303 = *(v306 - 8);
  v300 = *(v303 + 64);
  MEMORY[0x1EEE9AC00](v306);
  v301 = v195 - v12;
  *&v314 = MEMORY[0x1E69E73E0];
  *(&v314 + 1) = a3;
  *&v315 = MEMORY[0x1E69E73F0];
  *(&v315 + 1) = a4;
  v13 = sub_1C5BC9AA4();
  v275 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v242 = v195 - v14;
  WitnessTable = swift_getWitnessTable();
  *&v314 = v13;
  v241 = v13;
  *(&v314 + 1) = WitnessTable;
  v16 = WitnessTable;
  v243 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v272 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v240 = v195 - v18;
  *&v314 = v13;
  *(&v314 + 1) = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v236 = OpaqueTypeMetadata2;
  v237 = OpaqueTypeConformance2;
  *&v314 = OpaqueTypeMetadata2;
  *(&v314 + 1) = OpaqueTypeConformance2;
  v20 = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeMetadata2();
  v265 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v234 = v195 - v22;
  *&v314 = OpaqueTypeMetadata2;
  *(&v314 + 1) = v20;
  v23 = swift_getOpaqueTypeConformance2();
  *&v314 = v21;
  v223 = v21;
  v224 = v23;
  *(&v314 + 1) = v23;
  v24 = v23;
  v239 = swift_getOpaqueTypeMetadata2();
  v259 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v230 = v195 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BD0, &qword_1C5BD6C00);
  v26 = sub_1C5BC8AB4();
  v251 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v231 = v195 - v27;
  *&v314 = v21;
  *(&v314 + 1) = v24;
  v28 = swift_getOpaqueTypeConformance2();
  v226 = v28;
  v29 = MEMORY[0x1E6980A18];
  v30 = sub_1C5924F54(&qword_1EDA460C8, &qword_1EC192BD0, &qword_1C5BD6C00, MEMORY[0x1E6980A18]);
  v331 = v28;
  v332 = v30;
  v31 = swift_getWitnessTable();
  *&v314 = v26;
  v32 = v26;
  v219 = v26;
  *(&v314 + 1) = v31;
  v33 = v31;
  v221 = v31;
  v34 = swift_getOpaqueTypeMetadata2();
  v233 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v220 = v195 - v35;
  *&v314 = v32;
  *(&v314 + 1) = v33;
  v36 = swift_getOpaqueTypeConformance2();
  *&v314 = v34;
  v37 = v34;
  v215 = v34;
  v216 = v36;
  *(&v314 + 1) = v36;
  v38 = v36;
  v39 = swift_getOpaqueTypeMetadata2();
  v229 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v214 = v195 - v40;
  *&v314 = v37;
  *(&v314 + 1) = v38;
  v41 = swift_getOpaqueTypeConformance2();
  *&v314 = v39;
  v42 = v39;
  v206 = v39;
  v207 = v41;
  *(&v314 + 1) = v41;
  v43 = v41;
  v217 = swift_getOpaqueTypeMetadata2();
  v228 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v212 = v195 - v44;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1968F0, &unk_1C5BE4210);
  v45 = sub_1C5BC8AB4();
  v227 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v211 = v195 - v46;
  *&v314 = v42;
  *(&v314 + 1) = v43;
  v47 = swift_getOpaqueTypeConformance2();
  v208 = v47;
  v48 = sub_1C5924F54(&qword_1EC1968F8, &qword_1EC1968F0, &unk_1C5BE4210, v29);
  v329 = v47;
  v330 = v48;
  v49 = swift_getWitnessTable();
  *&v314 = v45;
  v50 = v45;
  v204 = v45;
  v205 = v49;
  *(&v314 + 1) = v49;
  v51 = v49;
  v52 = swift_getOpaqueTypeMetadata2();
  v218 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v202 = v195 - v53;
  *&v314 = v50;
  *(&v314 + 1) = v51;
  v54 = swift_getOpaqueTypeConformance2();
  *&v314 = v52;
  v199 = v52;
  v55 = v291;
  *(&v314 + 1) = v291;
  *&v315 = v54;
  v56 = v54;
  v200 = v54;
  *(&v315 + 1) = MEMORY[0x1E697C0D8];
  v57 = MEMORY[0x1E697C0D8];
  v58 = swift_getOpaqueTypeMetadata2();
  *&v293 = v58;
  v210 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v198 = v195 - v59;
  *&v314 = v52;
  *(&v314 + 1) = v55;
  *&v315 = v56;
  *(&v315 + 1) = v57;
  *(&v293 + 1) = swift_getOpaqueTypeConformance2();
  *&v314 = v58;
  *(&v314 + 1) = *(&v293 + 1);
  v60 = swift_getOpaqueTypeMetadata2();
  v222 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v196 = v195 - v61;
  v225 = v62;
  v63 = sub_1C5BC8AB4();
  v244 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v238 = v195 - v64;
  v65 = sub_1C5BC8AB4();
  v255 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v248 = v195 - v66;
  v67 = sub_1C5BC8AB4();
  v252 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v245 = v195 - v68;
  sub_1C5BC97C4();
  v69 = sub_1C5BC8AB4();
  v261 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v253 = v195 - v70;
  v71 = sub_1C5BC8AB4();
  v270 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v268 = v195 - v72;
  v73 = sub_1C5BC8AB4();
  v277 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v294 = v195 - v74;
  v314 = v293;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = MEMORY[0x1E697E5D8];
  v195[1] = v75;
  v327 = v75;
  v328 = MEMORY[0x1E697E5D8];
  v247 = v63;
  v197 = swift_getWitnessTable();
  v325 = v197;
  v326 = v76;
  v260 = v65;
  v201 = swift_getWitnessTable();
  v323 = v201;
  v324 = v76;
  v256 = v67;
  v77 = swift_getWitnessTable();
  v78 = sub_1C5931838(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v203 = v77;
  v321 = v77;
  v322 = v78;
  v264 = v69;
  v79 = swift_getWitnessTable();
  v80 = MEMORY[0x1E69805D0];
  v209 = v79;
  v319 = v79;
  v320 = MEMORY[0x1E69805D0];
  v273 = v71;
  v213 = swift_getWitnessTable();
  v317 = v213;
  v318 = v80;
  v81 = swift_getWitnessTable();
  v82 = sub_1C593A9AC();
  *&v314 = v73;
  *(&v314 + 1) = &type metadata for NowPlayingViewModel.Lifecycle.TransitionPhase;
  *&v315 = v81;
  *(&v315 + 1) = v82;
  v83 = swift_getOpaqueTypeMetadata2();
  v266 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v258 = v195 - v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194470, qword_1C5BEBAC0);
  v278 = v73;
  *&v314 = v73;
  *(&v314 + 1) = &type metadata for NowPlayingViewModel.Lifecycle.TransitionPhase;
  v235 = v81;
  *&v315 = v81;
  v232 = v82;
  *(&v315 + 1) = v82;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = sub_1C5AB32B4();
  v271 = v83;
  *&v314 = v83;
  v257 = v85;
  *(&v314 + 1) = v85;
  v249 = v87;
  v250 = v86;
  *&v315 = v86;
  *(&v315 + 1) = v87;
  v88 = swift_getOpaqueTypeMetadata2();
  v263 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v254 = v195 - v89;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196900, &qword_1C5BE4220);
  v269 = v88;
  v276 = sub_1C5BC8AB4();
  v274 = *(v276 - 8);
  MEMORY[0x1EEE9AC00](v276);
  v262 = v195 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v91);
  v267 = v195 - v92;
  v307 = v304;
  v308 = v305;
  v93 = v302;
  v309 = v302;
  v94 = v242;
  v95 = v304;
  v96 = v305;
  sub_1C5BC9A94();
  v97 = v303;
  v98 = *(v303 + 16);
  v99 = v301;
  v100 = v93;
  v101 = v306;
  v299 = v303 + 16;
  v298 = v98;
  v98(v301, v100, v306);
  v102 = *(v97 + 80);
  v103 = (v102 + 32) & ~v102;
  v297 = v103 + v300;
  v296 = v102 | 7;
  v104 = swift_allocObject();
  *(v104 + 16) = v95;
  *(v104 + 24) = v96;
  v105 = *(v97 + 32);
  v300 = v103;
  v303 = v97 + 32;
  v292 = v105;
  v105(v104 + v103, v99, v101);
  v107 = v240;
  v106 = v241;
  sub_1C5BCA0A4();

  (*(v275 + 8))(v94, v106);
  v108 = sub_1C5BC98B4();
  v109 = v246;
  sub_1C5BC93A4();
  v110 = v234;
  v111 = v236;
  MEMORY[0x1C694E150](v108, 0x4050000000000000, 0, v109, v236, v237);
  v112 = *(v279 + 8);
  v113 = v295;
  v112(v109, v295);
  (*(v272 + 8))(v107, v111);
  v114 = sub_1C5BC98B4();
  sub_1C5BC93B4();
  v115 = v230;
  v116 = v223;
  MEMORY[0x1C694E150](v114, 0x4050000000000000, 0, v109, v223, v224);
  v112(v109, v113);
  (*(v265 + 8))(v110, v116);
  swift_getKeyPath(byte_1C5BE4378);
  *&v314 = 0;
  v117 = v231;
  v118 = v239;
  sub_1C5BC9DF4();

  (*(v259 + 8))(v115, v118);
  sub_1C5BC98F4();
  v119 = v219;
  v120 = v220;
  sub_1C5BC9E24();
  (*(v251 + 8))(v117, v119);
  sub_1C5BC98C4();
  v121 = v306;
  sub_1C5AB06BC(v306, &v314);
  sub_1C5AB043C();
  v122 = v214;
  v123 = v215;
  sub_1C5BC9E24();
  (*(v233 + 8))(v120, v123);
  sub_1C5BC98E4();
  sub_1C5AB06BC(v121, &v314);
  sub_1C5AB043C();
  v124 = v212;
  v125 = v206;
  sub_1C5BC9E24();
  (*(v229 + 8))(v122, v125);
  v126 = v280;
  sub_1C5BC94D4();
  v127 = v211;
  v128 = v217;
  sub_1C5BCA1A4();
  (*(v281 + 8))(v126, v282);
  (*(v228 + 8))(v124, v128);
  v129 = sub_1C5BC98A4();
  v130 = v109;
  sub_1C5BC93B4();
  v131 = v202;
  v132 = v204;
  MEMORY[0x1C694E150](v129, 0x4028000000000000, 0, v130, v204, v205);
  v112(v130, v295);
  v133 = v196;
  (*(v227 + 8))(v127, v132);
  v134 = v283;
  sub_1C5BC88E4();
  v136 = v198;
  v135 = v199;
  v137 = v291;
  sub_1C5BCA3C4();
  (*(v284 + 8))(v134, v137);
  (*(v218 + 8))(v131, v135);
  v138 = v293;
  sub_1C5BCA174();
  (*(v210 + 8))(v136, v138);
  sub_1C5BC98A4();
  *(&v315 + 1) = &type metadata for Features;
  v316 = sub_1C5A2E158();
  v139 = swift_allocObject();
  *&v314 = v139;
  *(v139 + 16) = "MediaCoreUI";
  *(v139 + 24) = 11;
  *(v139 + 32) = 2;
  *(v139 + 40) = "HoveringChapterPicker";
  *(v139 + 48) = 21;
  *(v139 + 56) = 2;
  v140 = v302;
  LOBYTE(v129) = sub_1C5BC7C14();
  __swift_destroy_boxed_opaque_existential_0(&v314);
  if ((v129 & 1) == 0)
  {
    sub_1C5AB06BC(v306, &v314);
    sub_1C5B4B500(&v314);
  }

  v141 = v238;
  v142 = v225;
  sub_1C5BCA2F4();
  (*(v222 + 8))(v133, v142);
  sub_1C5BC98C4();
  sub_1C5AB06BC(v306, &v314);
  v143 = v247;
  v144 = v248;
  sub_1C5BCA2F4();
  (*(v244 + 8))(v141, v143);
  sub_1C5BC98E4();
  sub_1C5AB06BC(v306, &v314);
  v145 = v245;
  v146 = v260;
  sub_1C5BCA2F4();
  (*(v255 + 8))(v144, v146);
  v147 = v253;
  v148 = v256;
  sub_1C595BB1C(0xD000000000000010, 0x80000001C5BFA2E0, v256);
  (*(v252 + 8))(v145, v148);
  v149 = v301;
  v150 = v306;
  v298(v301, v140, v306);
  v151 = swift_allocObject();
  v152 = v305;
  *(v151 + 16) = v304;
  *(v151 + 24) = v152;
  v153 = v292;
  v292(v151 + v300, v149, v150);
  v154 = v268;
  v155 = v264;
  sub_1C5BCA324();

  (*(v261 + 8))(v147, v155);
  v156 = v149;
  v157 = v149;
  v158 = v150;
  v159 = v150;
  v160 = v298;
  v298(v157, v140, v158);
  v161 = v297;
  v162 = swift_allocObject();
  v163 = v305;
  *(v162 + 16) = v304;
  *(v162 + 24) = v163;
  v153(v162 + v300, v156, v159);
  v164 = v273;
  sub_1C5BC9E34();

  (*(v270 + 8))(v154, v164);
  v165 = v302;
  LOBYTE(v314) = *(sub_1C5AB4430(v159) + 16);
  v166 = v301;
  v160(v301, v165, v159);
  v167 = v288;
  v168 = v287;
  v169 = v289;
  (*(v288 + 16))(v287, v286, v289);
  v170 = (v161 + *(v167 + 80)) & ~*(v167 + 80);
  v171 = swift_allocObject();
  v172 = v305;
  *(v171 + 16) = v304;
  *(v171 + 24) = v172;
  v173 = v292;
  v292(v171 + v300, v166, v159);
  (*(v167 + 32))(v171 + v170, v168, v169);
  v174 = v258;
  v175 = v278;
  v176 = v294;
  sub_1C5BCA344();

  (*(v277 + 8))(v176, v175);
  v177 = v302;
  sub_1C5AB0850(v159, &v314);
  v312 = v314;
  v313 = v315;
  v178 = v301;
  v298(v301, v177, v159);
  v179 = swift_allocObject();
  v180 = v305;
  *(v179 + 16) = v304;
  *(v179 + 24) = v180;
  v173(v179 + v300, v178, v159);
  v181 = v254;
  v182 = v271;
  v183 = v257;
  v185 = v249;
  v184 = v250;
  sub_1C5BCA344();

  sub_1C593E820(v312, *(&v312 + 1), v313, *(&v313 + 1));
  (*(v266 + 8))(v174, v182);
  sub_1C5BCAA44();
  *&v314 = v182;
  *(&v314 + 1) = v183;
  *&v315 = v184;
  *(&v315 + 1) = v185;
  v186 = swift_getOpaqueTypeConformance2();
  sub_1C5AB4650();
  v187 = v262;
  v188 = v269;
  sub_1C5BCA2C4();
  (*(v263 + 8))(v181, v188);
  v189 = sub_1C5924F54(qword_1EC196908, &qword_1EC196900, &qword_1C5BE4220, MEMORY[0x1E697EC18]);
  v310 = v186;
  v311 = v189;
  v190 = v276;
  v191 = swift_getWitnessTable();
  v192 = v267;
  sub_1C593EDC0(v187, v190, v191);
  v193 = *(v274 + 8);
  v193(v187, v190);
  sub_1C593EDC0(v192, v190, v191);
  return (v193)(v192, v190);
}

uint64_t sub_1C5AB3218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for NowPlayingQueue(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1C5AB135C(a1, v9, v6, v7, a3);
}

unint64_t sub_1C5AB32B4()
{
  result = qword_1EDA4AE90;
  if (!qword_1EDA4AE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194470, qword_1C5BEBAC0);
    sub_1C593AA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4AE90);
  }

  return result;
}

uint64_t sub_1C5AB3338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C593EDC0(v8, v9, v10);
  sub_1C593EDC0(v7, a2, a3);
  return (*(v5 + 8))(v7, a2);
}

double sub_1C5AB3414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_1C5BC8394() & 1) == 0 && (sub_1C5BC8394())
  {
    v9 = type metadata accessor for NowPlayingQueue(0, a4, a5, v8);
    v10 = sub_1C5AB46A4(v9);
    KeyPath = swift_getKeyPath(byte_1C5BE43F0);
    v12 = swift_getKeyPath(byte_1C5BE4418);

    sub_1C5B3EC04(1, v10, KeyPath, v12);
    MEMORY[0x1EEE9AC00](v13);
    sub_1C5BCAB14();
    sub_1C5BC87F4();
  }

  return result;
}

double sub_1C5AB352C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for NowPlayingQueue(0, a2, a3, a4);
  sub_1C5AB0850(v4, &v12);
  v5 = v13;
  if (v13 == 1)
  {
    v6 = byte_1C5BE43D0;
    v7 = byte_1C5BE43A8;
  }

  else
  {
    sub_1C593E820(v12, v13, v14, v15);
    v6 = byte_1C5BE4418;
    v7 = byte_1C5BE43F0;
  }

  v8 = sub_1C5AB46A4(v4);
  KeyPath = swift_getKeyPath(v7);
  v10 = swift_getKeyPath(v6);

  return sub_1C5B3EC04(v5 == 1, v8, KeyPath, v10);
}

double sub_1C5AB360C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for NowPlayingQueue(0, a2, a3, a4);
  v5 = sub_1C5AB46A4(v4);
  KeyPath = swift_getKeyPath(byte_1C5BE43A8);
  v7 = swift_getKeyPath(byte_1C5BE43D0);

  return sub_1C5B3EC04(0, v5, KeyPath, v7);
}

double sub_1C5AB368C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for NowPlayingQueue(0, a3, a4, a4);
  v5 = *(sub_1C5AB4430(v4) + 16);
  if ((v5 - 1) >= 3)
  {
    if ((v5 - 4) >= 2)
    {
      sub_1C5BC8AE4();
      v10 = sub_1C5AB46A4(v4);
      KeyPath = swift_getKeyPath(byte_1C5BE43F0, 0x657551664F706F74, 0xEA00000000006575);
      v12 = swift_getKeyPath(byte_1C5BE4418);

      return sub_1C5B3EC04(0, v10, KeyPath, v12);
    }

    else
    {
      v7 = sub_1C5AB46A4(v4);
      v8 = swift_getKeyPath(byte_1C5BE43F0);
      v9 = swift_getKeyPath(byte_1C5BE4418);

      return sub_1C5B3EC04(0, v7, v8, v9);
    }
  }

  return result;
}

double sub_1C5AB37F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for NowPlayingQueue(0, a2, a3, a4);
  sub_1C5AB0850(v4, &v13);
  if (v14 == 1)
  {
    v5 = sub_1C5AB46A4(v4);
    KeyPath = swift_getKeyPath(byte_1C5BE43A8);
    v7 = swift_getKeyPath(byte_1C5BE43D0);

    return sub_1C5B3EC04(1, v5, KeyPath, v7);
  }

  else
  {
    sub_1C593E820(v13, v14, v15, v16);
    v9 = sub_1C5AB46A4(v4);
    v10 = swift_getKeyPath(byte_1C5BE43F0);
    v11 = swift_getKeyPath(byte_1C5BE4418);

    sub_1C5B3EC04(0, v9, v10, v11);
    MEMORY[0x1EEE9AC00](v12);
    sub_1C5BCAB14();
    sub_1C5BC87F4();
  }

  return result;
}

void sub_1C5AB3980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = type metadata accessor for NowPlayingQueue(0, a2, a3, a4);
  v6 = sub_1C5AB46A4(v5);
  KeyPath = swift_getKeyPath(byte_1C5BE43A8);
  v8 = swift_getKeyPath(byte_1C5BE43D0);

  sub_1C5B3EC04(v4, v6, KeyPath, v8);
}

uint64_t sub_1C5AB3A00@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath(byte_1C5BE41A0);
  _s5DebugCMa(0);
  sub_1C5931838(&qword_1EDA4A208, 255, _s5DebugCMa, &unk_1C5BE6138);
  result = sub_1C5BC8C84();
  *a1 = KeyPath;
  *(a1 + 73) = 0;
  *(a1 + 80) = result;
  *(a1 + 88) = v4;
  return result;
}

double sub_1C5AB3AA4@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1C5BCA484();
  if (qword_1EC1909E8 != -1)
  {
    swift_once();
  }

  sub_1C5BCAA54();
  sub_1C5BC85D4();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  result = *&v9;
  *(a2 + 40) = v9;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  return result;
}

uint64_t sub_1C5AB3B78(uint64_t a1)
{
  v1 = sub_1C5BC8FC4();
  sub_1C5AB3AA4(v6);
  *&v5[55] = v6[3];
  *&v5[39] = v6[2];
  *&v5[23] = v6[1];
  *&v5[7] = v6[0];
  *&v4[17] = *&v5[16];
  *&v4[33] = *&v5[32];
  *&v4[49] = *&v5[48];
  v5[71] = v7;
  *&v3 = v1;
  *(&v3 + 1) = 0x4028000000000000;
  v4[0] = 0;
  *&v4[65] = *&v5[64];
  *&v4[1] = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196998, &qword_1C5BE4370);
  sub_1C5924F54(&qword_1EC1969A0, &qword_1EC196998, &qword_1C5BE4370, MEMORY[0x1E69817F8]);
  sub_1C5BCA094();
  v8[2] = *&v4[16];
  v8[3] = *&v4[32];
  v9[0] = *&v4[48];
  *(v9 + 9) = *&v4[57];
  v8[0] = v3;
  v8[1] = *v4;
  return sub_1C5924EF4(v8, &qword_1EC196998, &qword_1C5BE4370);
}

uint64_t sub_1C5AB3D48@<X0>(uint64_t *a2@<X8>)
{
  _s5QueueCMa();
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

void sub_1C5AB3DC8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C5AB41DC();
    if (v2 <= 0x3F)
    {
      sub_1C5927D2C(319);
      if (v3 <= 0x3F)
      {
        sub_1C5936C70(319);
        if (v4 <= 0x3F)
        {
          sub_1C5AB422C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C5AB3E98(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 121) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 121) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1C5AB3FF8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 121) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 121) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
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

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v19 = ((((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 121) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v19 = a2 - 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 121) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 121) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 121) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1C5AB41DC()
{
  if (!qword_1EDA467C8)
  {
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA467C8);
    }
  }
}

void sub_1C5AB422C(uint64_t a1)
{
  if (!qword_1EC196990)
  {
    _s5QueueCMa();
    sub_1C5931838(qword_1EDA4A0C0, v1, _s5QueueCMa, &unk_1C5BE4338);
    v2 = sub_1C5BC8C94();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC196990);
    }
  }
}

double sub_1C5AB42F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for NowPlayingQueue(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_1C5AB3414(a1, a2, v10, v7, v8);
}

double sub_1C5AB4390(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  v7 = *a1;
  v8 = *a2;
  KeyPath = swift_getKeyPath(a5);
  v10 = swift_getKeyPath(a6);

  return sub_1C5B3EC04(v7, v8, KeyPath, v10);
}

uint64_t sub_1C5AB4430(uint64_t a1)
{
  result = *(v1 + *(a1 + 44));
  if (!result)
  {
    type metadata accessor for NowPlayingViewModel.Lifecycle();
    sub_1C5931838(&qword_1EDA497D0, 255, type metadata accessor for NowPlayingViewModel.Lifecycle, &unk_1C5BF23D8);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

double sub_1C5AB44B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for NowPlayingQueue(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1C5BC8AF4() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1C5AB368C(v4 + v8, v11, v5, v6);
}

uint64_t sub_1C5AB45B8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for NowPlayingQueue(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

unint64_t sub_1C5AB4650()
{
  result = qword_1EC1969A8;
  if (!qword_1EC1969A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1969A8);
  }

  return result;
}

uint64_t sub_1C5AB46A4(uint64_t a1)
{
  result = *(v1 + *(a1 + 48));
  if (!result)
  {
    _s5QueueCMa();
    sub_1C5931838(qword_1EDA4A0C0, v3, _s5QueueCMa, &unk_1C5BE4338);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

unint64_t sub_1C5AB4770()
{
  result = qword_1EC1969B0;
  if (!qword_1EC1969B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1969B8, &qword_1C5BE4438);
    sub_1C5924F54(&qword_1EC1969A0, &qword_1EC196998, &qword_1C5BE4370, MEMORY[0x1E69817F8]);
    sub_1C5931838(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1969B0);
  }

  return result;
}

double MarkupParser.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t x3_0@<X3>)
{
  v9 = *(type metadata accessor for MarkupParser(0, a2, a3, x3_0) + 36);
  if (qword_1EDA4B6C0 != -1)
  {
    swift_once();
  }

  *(a4 + v9) = qword_1EDA4B6C8;
  (*(*(a2 - 8) + 32))(a4, a1, a2);

  return result;
}

uint64_t MarkupParser.Element.name.getter(uint64_t a1)
{
  v1 = sub_1C5AB8D6C();

  return v1;
}

uint64_t MarkupParser.Element.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = *(v4 + 32);
  (*(v8 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v9 = sub_1C5BCAFC4();
  if (*(v7 + 16))
  {
    v11 = sub_1C596FC1C(v9, v10, sub_1C596FFBC);
    v13 = v12;

    if (v13)
    {
      v14 = *(*(v7 + 56) + 32 * v11);

      return v14;
    }
  }

  else
  {
  }

  return 0;
}

double MarkupParser.parse(_:)(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MarkupParser.Parser(0, *(a3 + 16), *(a3 + 24), a4);
  v8 = *(v4 + *(a3 + 36));
  swift_allocObject();

  sub_1C5AB862C(v4, v8, v9, v10);
  sub_1C5AB4BA4(a1, a2);

  return result;
}

void sub_1C5AB4BA4(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128), uint64_t a2)
{
  v3 = v2;
  v330 = a2;
  v331 = a1;
  v329 = *v2;
  swift_beginAccess();
  swift_beginAccess();
  v4 = v2[3] >> 14;
  if (v4 > v2[7] >> 14)
  {
    v333 = 0;
    while (1)
    {
      v13 = v3[9];
      v12 = v3[10];
      v14 = v3[11];
      v15 = v3[12];
      v17 = v3[13];
      v16 = v3[14];
      v18 = *(v3 + 120);
      if (v18 <= 2)
      {
        break;
      }

      if (v18 == 3)
      {
        v50 = sub_1C5BCB864();
        v52 = v51;
        v53 = v50 == 38 && v51 == 0xE100000000000000;
        if (v53 || (v54 = v50, (sub_1C5BCBDE4() & 1) != 0) || v54 == 32 && v52 == 0xE100000000000000 || (sub_1C5BCBDE4() & 1) != 0 || v54 == 60 && v52 == 0xE100000000000000 || (sub_1C5BCBDE4() & 1) != 0)
        {

          v56 = sub_1C5AB6784(v55);
          v58 = v57;
          v60 = v59;
          v62 = v61;
          v63 = v3[8];

          (v331)(v56, v58, v60, v62, v63);

          v3[16] = v3[7];
          v64 = v3[9];
          v65 = v3[10];
          v66 = v3[11];
          v67 = v3[12];
          v68 = v3[13];
          v69 = v3[14];
          *(v3 + 9) = 0u;
          *(v3 + 13) = 0u;
          *(v3 + 11) = 0u;
          goto LABEL_113;
        }

        if (v54 == 59 && v52 == 0xE100000000000000)
        {
        }

        else
        {
          v270 = sub_1C5BCBDE4();

          if ((v270 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v271 = v3[4];
        v272 = v13;
        if (v3[7] >> 14 < sub_1C5BCB824() >> 14)
        {
          goto LABEL_209;
        }

        v273 = sub_1C5BCB884();
        v275 = v274;
        v277 = v276;
        v279 = v278;
        if (sub_1C5BCB854() < 1)
        {
        }

        else
        {
          v335 = v271;
          v281 = v3[6];
          v282 = *(v329 + 80);
          v283 = *(v329 + 88);
          *&v341 = v273;
          *(&v341 + 1) = v275;
          *&v342 = v277;
          *(&v342 + 1) = v279;
          v343 = v281;
          v284 = type metadata accessor for MarkupParser.EntityDecoder(0, v282, v283, v280);

          sub_1C5AB68EC(v284);
          v286 = v285;
          v345[0] = v341;
          v345[1] = v342;
          sub_1C5AB9560(v345);
          v344 = v343;
          sub_1C5AB95B4(&v344);
          if (v286)
          {
            if (v272 >> 14 < v3[16] >> 14)
            {
              goto LABEL_210;
            }

            v287 = sub_1C5BCB884();
            v289 = v288;
            v291 = v290;
            v293 = v292;
            v294 = v3[8];

            v295 = v331;
            (v331)(v287, v289, v291, v293, v294);

            v296 = sub_1C5BCAFD4();
            v298 = v297;
            v300 = v299;
            v302 = v301;

            v303 = v3[8];

            (v295)(v296, v298, v300, v302, v303);

            goto LABEL_170;
          }
        }

        goto LABEL_173;
      }

      if (v18 == 4)
      {
        v335 = v3[10];
        v28 = v13;
        v29 = *(v13 + 16);
        v30 = *(v28 + 24);
        v332 = *(v28 + 32);
        v31 = *(v28 + 48);
        v328 = *(v28 + 40);
        v327 = v31;
        v326 = *(v28 + 56);
        v325 = *(v28 + 64);
        v32 = v28;

        if (sub_1C5BCB864() == 32 && v33 == 0xE100000000000000)
        {
        }

        else
        {
          v34 = sub_1C5BCBDE4();

          if ((v34 & 1) == 0)
          {
            v35 = v3[10];
            v324 = v3[9];
            v334 = v14;
            v36 = v3[11];
            v323 = v3[12];
            v37 = v3[14];
            v322 = v3[13];
            v321 = v37;
            v3[9] = v29;
            v3[10] = v30;
            v38 = v332;
            v39 = v328;
            v3[11] = v332;
            v3[12] = v39;
            v40 = v327;
            v41 = v326;
            v3[13] = v327;
            v3[14] = v41;
            v42 = *(v3 + 120);
            v43 = v325;
            *(v3 + 120) = v325;
            sub_1C5AB9494(v29, v30, v38, v39, v40, v41, v43);
            sub_1C5AB9374(v324, v35, v36, v323, v322, v321, v42);
            sub_1C5AB9374(v32, v335, v334, v15, v17, v16, 4u);
            goto LABEL_7;
          }
        }

        v3[16] = sub_1C5BCB824();
        v5 = v32;
        v6 = v335;
        v7 = v14;
        v8 = v15;
        v9 = v17;
        v10 = v16;
        v11 = 4;
        goto LABEL_5;
      }

      if (!(v14 | v12 | v13 | v15 | v17 | v16))
      {
        v102 = sub_1C5BCB864();
        v104 = v101;
        v105 = v102 == 60 && v101 == 0xE100000000000000;
        v106 = v105;
        if (v105 || (sub_1C5BCBDE4() & 1) != 0)
        {
          v107 = sub_1C5AB66F8(v103);
          if (v108)
          {
            if (v107 == 47 && v108 == 0xE100000000000000)
            {

LABEL_115:

              v154 = sub_1C5AB6784(v153);
              v156 = v155;
              v158 = v157;
              v160 = v159;
              v161 = v3[8];

              (v331)(v154, v156, v158, v160, v161);

              v162 = v3[9];
              v163 = v3[10];
              v164 = v3[11];
              v165 = v3[12];
              v166 = v3[13];
              v167 = v3[14];
              v3[9] = 2;
              *(v3 + 5) = 0u;
              *(v3 + 6) = 0u;
              v3[14] = 0;
              v168 = *(v3 + 120);
              *(v3 + 120) = 5;
              sub_1C5AB9374(v162, v163, v164, v165, v166, v167, v168);
              v3[7] = sub_1C5BCB824();
LABEL_147:
              v3[16] = sub_1C5BCB824();
              goto LABEL_6;
            }

            v152 = sub_1C5BCBDE4();

            if (v152)
            {
              goto LABEL_115;
            }
          }

          if (v106)
          {
            goto LABEL_214;
          }
        }

        if (sub_1C5BCBDE4())
        {
LABEL_214:
          sub_1C5AB66F8(v109);
          if (!v169)
          {
            goto LABEL_138;
          }

          if (v106)
          {
            goto LABEL_121;
          }
        }

        if (sub_1C5BCBDE4())
        {
LABEL_121:
          v171 = sub_1C5AB66F8(v170);
          if (!v172)
          {
            goto LABEL_145;
          }

          if (v171 == 32 && v172 == 0xE100000000000000)
          {
          }

          else
          {
            v212 = sub_1C5BCBDE4();

            if ((v212 & 1) == 0)
            {
LABEL_145:

              v213 = v3[9];
              v214 = v3[10];
              v215 = v3[11];
              v216 = v3[12];
              v217 = v3[13];
              v218 = v3[14];
              v3[9] = 1;
              *(v3 + 5) = 0u;
              *(v3 + 6) = 0u;
              v3[14] = 0;
              v219 = *(v3 + 120);
              *(v3 + 120) = 5;
              v220.n128_f64[0] = sub_1C5AB9374(v213, v214, v215, v216, v217, v218, v219);
              sub_1C5AB6784(v220);
              v221 = sub_1C5BCB854();

              if (v221 >= 1)
              {
                v223 = sub_1C5AB6784(v222);
                v225 = v224;
                v227 = v226;
                v229 = v228;
                v230 = v3[8];

                (v331)(v223, v225, v227, v229, v230);
              }

              goto LABEL_147;
            }
          }
        }

        if (v102 == 38 && v104 == 0xE100000000000000)
        {
        }

        else
        {
          v231 = sub_1C5BCBDE4();

          if ((v231 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v5 = v3[9];
        v6 = v3[10];
        v7 = v3[11];
        v8 = v3[12];
        v9 = v3[13];
        v10 = v3[14];
        v3[9] = v3[7];
        *(v3 + 5) = 0u;
        *(v3 + 6) = 0u;
        v3[14] = 0;
        v11 = *(v3 + 120);
        *(v3 + 120) = 3;
        goto LABEL_5;
      }

      v75 = v14 | v12 | v15 | v17 | v16;
      if (v13 == 1 && !v75)
      {
        v77 = sub_1C5BCB864();
        v78 = v76;
        if ((v77 != 32 || v76 != 0xE100000000000000) && (sub_1C5BCBDE4() & 1) == 0)
        {
          if (v77 == 47 && v78 == 0xE100000000000000 || (sub_1C5BCBDE4() & 1) != 0)
          {
            v201 = sub_1C5AB66F8(v79);
            if (v202)
            {
              if (v201 == 62 && v202 == 0xE100000000000000)
              {

LABEL_175:

                v3[17] = sub_1C5AB6784(v261);
                v3[18] = v262;
                v3[19] = v263;
                v3[20] = v264;

                goto LABEL_112;
              }

              v260 = sub_1C5BCBDE4();

              if (v260)
              {
                goto LABEL_175;
              }
            }
          }

          if (v77 == 62 && v78 == 0xE100000000000000)
          {

LABEL_180:
            v3[17] = sub_1C5AB6784(v265);
            v3[18] = v267;
            v3[19] = v268;
            v3[20] = v269;

            v3[16] = sub_1C5BCB824();
            v64 = v3[9];
            v65 = v3[10];
            v66 = v3[11];
            v67 = v3[12];
            v68 = v3[13];
            v69 = v3[14];
            v3[9] = 3;
            v3[14] = 0;
            *(v3 + 5) = 0u;
            *(v3 + 6) = 0u;
LABEL_113:
            v151 = *(v3 + 120);
            *(v3 + 120) = 5;
            sub_1C5AB9374(v64, v65, v66, v67, v68, v69, v151);
            goto LABEL_7;
          }

          v266 = sub_1C5BCBDE4();

          if (v266)
          {
            goto LABEL_180;
          }

          goto LABEL_6;
        }

        v3[17] = sub_1C5AB6784(v80);
        v3[18] = v81;
        v3[19] = v82;
        v3[20] = v83;

        goto LABEL_66;
      }

      if (v13 == 2 && !v75)
      {
        if (sub_1C5BCB864() == 62 && v110 == 0xE100000000000000)
        {

LABEL_130:
          v190 = sub_1C5AB6784(v111);
          v191 = v3[9];
          v192 = v3[10];
          v193 = v3[11];
          v194 = v3[12];
          v195 = v3[13];
          v196 = v3[14];
          v3[9] = v190;
          v3[10] = v197;
          v3[11] = v198;
          v3[12] = v199;
          v3[13] = 0;
          v3[14] = 0;
          v200 = *(v3 + 120);
          *(v3 + 120) = 0;
          sub_1C5AB9374(v191, v192, v193, v194, v195, v196, v200);
          goto LABEL_7;
        }

        v189 = sub_1C5BCBDE4();

        if (v189)
        {
          goto LABEL_130;
        }

        goto LABEL_6;
      }

      if (v13 == 3 && !v75)
      {
        v112 = v3[17];
        v113 = v3[18];
        v115 = v3[19];
        v114 = v3[20];

        v116 = sub_1C5BCB874();
        if (!v114)
        {
          goto LABEL_150;
        }

        if (v115 == v118 && v114 == v119 && v112 >> 16 == v116 >> 16 && v113 >> 16 == v117 >> 16)
        {

          goto LABEL_140;
        }

        LOBYTE(v319) = 0;
        v203 = sub_1C5BCBD54();

        if (v203)
        {
LABEL_140:
          v204 = sub_1C5BCB874();
          v206 = v205;
          v208 = v207;
          v210 = v209;
          v211 = v3[8];

          (v331)(v204, v206, v208, v210, v211);

          *(v3 + 17) = 0u;
          *(v3 + 19) = 0u;
          v3[21] = MEMORY[0x1E69E7CC8];
LABEL_150:
        }

        v232 = v3[20];
        if (v232)
        {
          v233 = v3[19];
          v234 = v3[21];
          v337 = *(v3 + 17);
          v338 = v233;
          v339 = v232;
          v340 = v234;
          swift_beginAccess();
          type metadata accessor for MarkupParser.Element(255, *(v329 + 80), *(v329 + 88), v235);
          sub_1C5BCB144();

          sub_1C5BCB104();
          swift_endAccess();
          *(v3 + 17) = 0u;
          *(v3 + 19) = 0u;
          v3[21] = MEMORY[0x1E69E7CC8];
        }

        v237 = sub_1C5BCB864();
        v239 = v236;
        if (v237 == 47 && v236 == 0xE100000000000000 || (sub_1C5BCBDE4() & 1) != 0)
        {
          v240 = sub_1C5AB66F8(v238);
          if (v241)
          {
            if (v240 == 62 && v241 == 0xE100000000000000)
            {

              goto LABEL_167;
            }

            v258 = sub_1C5BCBDE4();

            if (v258)
            {
LABEL_167:

              v3[7] = sub_1C5BCB824();
              goto LABEL_172;
            }
          }
        }

        if (v237 == 62 && v239 == 0xE100000000000000)
        {
LABEL_170:

          goto LABEL_172;
        }

        v259 = sub_1C5BCBDE4();

        if (v259)
        {
LABEL_172:
          v3[16] = sub_1C5BCB824();
        }

LABEL_173:
        v5 = v3[9];
        v6 = v3[10];
        v7 = v3[11];
        v8 = v3[12];
        v9 = v3[13];
        v10 = v3[14];
        *(v3 + 9) = 0u;
        *(v3 + 11) = 0u;
        *(v3 + 13) = 0u;
LABEL_29:
        v11 = *(v3 + 120);
        *(v3 + 120) = 5;
LABEL_5:
        sub_1C5AB9374(v5, v6, v7, v8, v9, v10, v11);
        goto LABEL_6;
      }

      v174 = sub_1C5BCB864();
      v175 = v173;
      if (v174 == 61 && v173 == 0xE100000000000000 || (sub_1C5BCBDE4() & 1) != 0)
      {

        v176 = swift_allocObject();
        sub_1C5AB67A8(v177);
        *(v176 + 16) = v178;
        *(v176 + 24) = v179;
        *(v176 + 32) = v180;
        *(v176 + 40) = v181;
        *(v176 + 48) = 0;
        *(v176 + 56) = 0;
        *(v176 + 64) = 1;
        v182 = v3[9];
        v183 = v3[10];
        v184 = v3[11];
        v185 = v3[12];
        v186 = v3[13];
        v187 = v3[14];
        v3[9] = v176;
        *(v3 + 5) = 0u;
        *(v3 + 6) = 0u;
        v3[14] = 0;
        v188 = *(v3 + 120);
        *(v3 + 120) = 4;
        sub_1C5AB9374(v182, v183, v184, v185, v186, v187, v188);
        goto LABEL_147;
      }

      if (v174 == 62 && v175 == 0xE100000000000000 || (sub_1C5BCBDE4() & 1) != 0)
      {
LABEL_163:

LABEL_164:
        sub_1C5AB6784(v242);
        v243 = sub_1C5BCB854();

        if (v243 >= 1)
        {
          v245 = sub_1C5AB6784(v244);
          v246 = MEMORY[0x1C694F120](v245);
          v248 = v247;

          v250 = sub_1C5AB6784(v249);
          v252 = v251;
          v254 = v253;
          v256 = v255;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v336[0] = v3[21];
          sub_1C5B3C934(v250, v252, v254, v256, v246, v248, isUniquelyReferenced_nonNull_native);

          v3[21] = v336[0];
          goto LABEL_111;
        }

LABEL_112:
        v64 = v3[9];
        v65 = v3[10];
        v66 = v3[11];
        v67 = v3[12];
        v68 = v3[13];
        v69 = v3[14];
        v3[9] = 3;
        *(v3 + 5) = 0u;
        *(v3 + 6) = 0u;
        v3[14] = 0;
        goto LABEL_113;
      }

      if (v174 == 47 && v175 == 0xE100000000000000)
      {

LABEL_195:
        v306 = sub_1C5AB66F8(v304);
        if (v307)
        {
          if (v306 == 62 && v307 == 0xE100000000000000)
          {
            goto LABEL_163;
          }

          v308 = sub_1C5BCBDE4();

          if (v308)
          {
            goto LABEL_164;
          }
        }

        goto LABEL_6;
      }

      v305 = sub_1C5BCBDE4();

      if (v305)
      {
        goto LABEL_195;
      }

LABEL_6:
      v3[7] = sub_1C5BCB824();
LABEL_7:
      v4 = v3[3] >> 14;
      if (v4 <= v3[7] >> 14)
      {
        goto LABEL_200;
      }
    }

    if (!*(v3 + 120))
    {
      v335 = &v321;
      v336[0] = v3[8];
      v334 = v336[0];
      MEMORY[0x1EEE9AC00](v336[0]);
      v44 = v15;
      v45 = v13;
      v46 = *(v329 + 80);
      v47 = *(v329 + 88);
      *(&v321 - 6) = v46;
      *(&v321 - 5) = v47;
      *(&v321 - 4) = v45;
      *(&v321 - 3) = v12;
      v319 = v14;
      v320 = v44;

      sub_1C5AB9494(v45, v12, v14, v44, v17, v16, 0);
      type metadata accessor for MarkupParser.Element(255, v46, v47, v48);
      sub_1C5BCB144();
      swift_getWitnessTable();
      v49 = v333;
      sub_1C5BCAD64();
      v333 = v49;
      sub_1C5AB9374(v45, v12, v14, v44, v17, v16, 0);

      if ((BYTE8(v337) & 1) == 0)
      {
        swift_beginAccess();
        sub_1C5BCB114();
        swift_endAccess();
      }

      v3[16] = sub_1C5BCB824();
      v5 = v3[9];
      v6 = v3[10];
      v7 = v3[11];
      v8 = v3[12];
      v9 = v3[13];
      v10 = v3[14];
      *(v3 + 9) = 0u;
      *(v3 + 13) = 0u;
      *(v3 + 11) = 0u;
      goto LABEL_29;
    }

    if (v18 == 1)
    {

      v19 = sub_1C5BCB864();
      v21 = v20;
      v22 = v19 == 34 && v20 == 0xE100000000000000;
      if (v22 || (v23 = v19, (sub_1C5BCBDE4() & 1) != 0) || v23 == 39 && v21 == 0xE100000000000000)
      {

LABEL_19:
        v3[16] = sub_1C5BCB824();
        v24 = sub_1C5BCB864();
        v25 = v3[9];
        v26 = v3[10];
        v7 = v3[11];
        v8 = v3[12];
        v9 = v3[13];
        v10 = v3[14];
        v3[9] = v13;
        v3[10] = v12;
        v3[11] = v14;
        v3[12] = v15;
        v3[13] = v24;
        v3[14] = v27;
        v11 = *(v3 + 120);
        *(v3 + 120) = 2;
        v5 = v25;
        v6 = v26;
        goto LABEL_5;
      }

      v120 = sub_1C5BCBDE4();

      if (v120)
      {
        goto LABEL_19;
      }

      v121 = swift_allocObject();
      *(v121 + 16) = v13;
      *(v121 + 24) = v12;
      *(v121 + 32) = v14;
      *(v121 + 40) = v15;
      *(v121 + 48) = 0;
      *(v121 + 56) = 0;
      *(v121 + 64) = 2;
      v100 = v3[9];
      v6 = v3[10];
      v7 = v3[11];
      v8 = v3[12];
      v9 = v3[13];
      v10 = v3[14];
      v3[9] = v121;
      v3[14] = 0;
      *(v3 + 5) = 0u;
      *(v3 + 6) = 0u;
      v11 = *(v3 + 120);
    }

    else
    {
      v332 = v3[9];
      v335 = v12;
      v334 = v14;

      v70 = sub_1C5BCB864();
      v72 = v70;
      v73 = v71;
      if (v16 && (v17 == v70 && v16 == v71 || (sub_1C5BCBDE4() & 1) != 0))
      {

        v74 = v334;
      }

      else
      {
        v74 = v334;
        if ((v72 != 32 || v73 != 0xE100000000000000) && (sub_1C5BCBDE4() & 1) == 0 || v16)
        {

          if (v72 == 47 && v73 == 0xE100000000000000 || (sub_1C5BCBDE4() & 1) != 0)
          {
            v85 = sub_1C5AB66F8(v84);
            if (v86)
            {
              if (v85 == 62 && v86 == 0xE100000000000000)
              {

                goto LABEL_100;
              }

              v122 = sub_1C5BCBDE4();

              if (v122)
              {
                goto LABEL_98;
              }
            }
          }

          if (v72 == 62 && v73 == 0xE100000000000000)
          {
LABEL_98:

LABEL_100:
            v124 = MEMORY[0x1C694F120](v332, v335, v74, v15);
            v126 = v125;

            v128 = sub_1C5AB6784(v127);
            v130 = v129;
            v132 = v131;
            v134 = v133;
            swift_beginAccess();
            v135 = swift_isUniquelyReferenced_nonNull_native();
            v336[0] = v3[21];
            v136 = v336[0];
            v137 = sub_1C596FC1C(v124, v126, sub_1C596FFBC);
            v139 = *(v136 + 16);
            v140 = (v138 & 1) == 0;
            v141 = __OFADD__(v139, v140);
            v142 = v139 + v140;
            if (v141)
            {
              goto LABEL_206;
            }

            v143 = v138;
            if (*(v136 + 24) >= v142)
            {
              if ((v135 & 1) == 0)
              {
                v309 = v137;
                sub_1C5AF5BCC();
                v137 = v309;
              }
            }

            else
            {
              sub_1C5AF321C(v142, v135);
              v137 = sub_1C596FC1C(v124, v126, sub_1C596FFBC);
              if ((v143 & 1) != (v144 & 1))
              {
                goto LABEL_211;
              }
            }

            v145 = v336[0];
            if (v143)
            {
              v146 = (*(v336[0] + 56) + 32 * v137);
              *v146 = v128;
              v146[1] = v130;
              v146[2] = v132;
              v146[3] = v134;
            }

            else
            {
              *(v336[0] + 8 * (v137 >> 6) + 64) |= 1 << v137;
              v147 = (v145[6] + 16 * v137);
              *v147 = v124;
              v147[1] = v126;
              v148 = (v145[7] + 32 * v137);
              *v148 = v128;
              v148[1] = v130;
              v148[2] = v132;
              v148[3] = v134;
              v149 = v145[2];
              v141 = __OFADD__(v149, 1);
              v150 = v149 + 1;
              if (v141)
              {
                goto LABEL_208;
              }

              v145[2] = v150;
            }

            v3[21] = v145;
LABEL_111:
            swift_endAccess();
            goto LABEL_112;
          }

          v123 = sub_1C5BCBDE4();

          if (v123)
          {
            goto LABEL_100;
          }

LABEL_138:

          goto LABEL_6;
        }
      }

      v87 = MEMORY[0x1C694F120](v332, v335, v74, v15);
      v89 = v88;

      v91 = sub_1C5AB6784(v90);
      v93 = v92;
      v95 = v94;
      v97 = v96;
      swift_beginAccess();
      v98 = swift_isUniquelyReferenced_nonNull_native();
      v336[0] = v3[21];
      sub_1C5B3C934(v91, v93, v95, v97, v87, v89, v98);

      v3[21] = v336[0];
      swift_endAccess();
LABEL_66:
      v3[16] = sub_1C5BCB824();
      v99 = swift_allocObject();
      *(v99 + 16) = 4;
      *(v99 + 24) = 0u;
      *(v99 + 40) = 0u;
      *(v99 + 56) = 0;
      *(v99 + 64) = 5;
      v100 = v3[9];
      v6 = v3[10];
      v7 = v3[11];
      v8 = v3[12];
      v9 = v3[13];
      v10 = v3[14];
      v3[9] = v99;
      v3[14] = 0;
      *(v3 + 5) = 0u;
      *(v3 + 6) = 0u;
      v11 = *(v3 + 120);
    }

    *(v3 + 120) = 4;
    v5 = v100;
    goto LABEL_5;
  }

LABEL_200:
  if (v4 < v3[16] >> 14)
  {
    __break(1u);
LABEL_206:
    __break(1u);
  }

  else
  {
    sub_1C5BCB884();
    v310 = sub_1C5BCB854();

    if (v310 < 1)
    {
      return;
    }

    if (v4 >= v3[16] >> 14)
    {
      v311 = sub_1C5BCB884();
      v313 = v312;
      v315 = v314;
      v317 = v316;
      v318 = v3[8];

      (v331)(v311, v313, v315, v317, v318);

      return;
    }
  }

  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  sub_1C5BCBE84();
  __break(1u);
}

void MarkupParser.entityMap.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
}

uint64_t sub_1C5AB669C()
{
  v0 = sub_1C59AE410(&unk_1F4513BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC196A80, &qword_1C5BE4658);
  result = swift_arrayDestroy();
  qword_1EDA4B6C8 = v0;
  return result;
}

uint64_t sub_1C5AB66F8(__n128 a1)
{
  if (sub_1C5BCB824() >> 14 >= *(v1 + 24) >> 14)
  {
    return 0;
  }

  sub_1C5BCB824();
  return sub_1C5BCB864();
}

unint64_t sub_1C5AB6784(__n128 a1)
{
  result = *(v1 + 128);
  if (*(v1 + 56) >> 14 >= result >> 14)
  {
    return sub_1C5BCB884();
  }

  __break(1u);
  return result;
}

void sub_1C5AB67A8(__n128 a1)
{
  v2 = sub_1C5AB6784(a1);
  if ((v3 ^ v2) < 0x4000)
  {
LABEL_2:

    sub_1C5AB6784(v4);
    return;
  }

  v5 = v2;
  while (1)
  {
    v6 = sub_1C5BCB834();
    if (sub_1C5BCB864() != 32 || v7 != 0xE100000000000000)
    {
      break;
    }

LABEL_5:
    if ((v6 ^ v5) < 0x4000)
    {
      goto LABEL_2;
    }
  }

  v9 = sub_1C5BCBDE4();

  if (v9)
  {
    goto LABEL_5;
  }

  if (v6 >> 14 < *(v1 + 128) >> 14)
  {
    __break(1u);
  }

  else
  {
    sub_1C5BCB824();
    sub_1C5BCB884();
  }
}

void sub_1C5AB68EC(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *v1;
  v4 = v1[1];
  *(v2 + 16) = *v1;
  v5 = v1[3];
  v25 = v1[2];
  if (sub_1C5AB6D04(v1, v2) == 35 && v6 == 0xE100000000000000)
  {

LABEL_11:
    v14 = sub_1C5BCB824();
    swift_beginAccess();
    *(v2 + 16) = v14;
    if (sub_1C5AB6D04(v1, v2) == 120 && v15 == 0xE100000000000000)
    {
      goto LABEL_13;
    }

    v16 = sub_1C5BCBDE4();

    if (v16)
    {
      goto LABEL_15;
    }

    if (sub_1C5AB6D04(v1, v2) == 88 && v23 == 0xE100000000000000)
    {
LABEL_13:
    }

    else
    {
      v24 = sub_1C5BCBDE4();

      if ((v24 & 1) == 0)
      {
        if (v4 >> 14 >= v14 >> 14)
        {
          v18 = sub_1C5BCB884();
          v22 = 10;
          goto LABEL_17;
        }

LABEL_26:
        __break(1u);
        return;
      }
    }

LABEL_15:
    v17 = sub_1C5BCB824();
    *(v2 + 16) = v17;
    if (v4 >> 14 >= v17 >> 14)
    {
      v18 = sub_1C5BCB884();
      v22 = 16;
LABEL_17:
      sub_1C5AB8BCC(v18, v19, v20, v21, v22);

      return;
    }

    __break(1u);
    goto LABEL_26;
  }

  v8 = sub_1C5BCBDE4();

  if (v8)
  {
    goto LABEL_11;
  }

  v9 = v1[4];
  v10 = MEMORY[0x1C694F120](v3, v4, v25, v5);
  if (*(v9 + 16))
  {
    sub_1C596FC1C(v10, v11, sub_1C596FFBC);
    v13 = v12;

    if (v13)
    {
    }
  }

  else
  {
  }
}

uint64_t sub_1C5AB6BE0(void *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[3];
  if (v6)
  {
    if (a1[2] == a4 && v6 == a5 && *a1 >> 16 == a2 >> 16 && a1[1] >> 16 == a3 >> 16)
    {
      return 1;
    }

    else
    {
      return sub_1C5BCBD54() & 1;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1C5AB6C78()
{

  sub_1C5AB9374(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return v0;
}

uint64_t sub_1C5AB6CD4()
{
  sub_1C5AB6C78();

  return swift_deallocClassInstance();
}

unint64_t sub_1C5AB6D70(uint64_t a1)
{
  sub_1C5BC7B04();
  v2 = MEMORY[0x1E69695A8];
  sub_1C5AB944C(&qword_1EC196A58, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v3 = sub_1C5BCAD34();
  return sub_1C5AB77FC(a1, v3, MEMORY[0x1E69695A8], &qword_1EC196A60, v2, MEMORY[0x1E69695C8]);
}

unint64_t sub_1C5AB6E44(uint64_t a1)
{
  sub_1C5BCBF54();
  sub_1C5BC7B04();
  sub_1C5AB944C(&qword_1EC196A58, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C5BCAD44();
  v2 = sub_1C5BCBF94();

  return sub_1C5AB72D4(a1, v2);
}

unint64_t sub_1C5AB6EF8(double a1)
{
  v2 = sub_1C5BCBF44();

  return sub_1C5AB7430(v2, a1);
}

unint64_t sub_1C5AB6F44(char a1)
{
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](a1 & 1);
  v2 = sub_1C5BCBF94();
  return sub_1C5AB7498(a1 & 1, v2);
}

unint64_t sub_1C5AB6FAC(uint64_t a1)
{
  v2 = sub_1C5BCBF44();

  return sub_1C5AB7508(a1, v2);
}

unint64_t sub_1C5AB6FF0(uint64_t a1)
{
  sub_1C5BCBF54();
  sub_1C5BC7A24();
  sub_1C5AB944C(&qword_1EC192578, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1C5BCAD44();
  v2 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  sub_1C5BCAD44();
  sub_1C5BC37A0(*(a1 + *(v2 + 24)), *(a1 + *(v2 + 24) + 8));
  v3 = sub_1C5BCBF94();

  return sub_1C5AB7574(a1, v3);
}

unint64_t sub_1C5AB70E8(uint64_t a1)
{
  v2 = sub_1C5BCB734();

  return sub_1C5AB7738(a1, v2);
}

unint64_t sub_1C5AB712C(uint64_t a1)
{
  sub_1C5BCAE74();
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v2 = sub_1C5BCBF94();

  return sub_1C5AB7A64(a1, v2);
}

unint64_t sub_1C5AB71BC(uint64_t a1)
{
  sub_1C5BC7A24();
  v2 = MEMORY[0x1E6968FB0];
  sub_1C5AB944C(&qword_1EC192578, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v3 = sub_1C5BCAD34();
  return sub_1C5AB77FC(a1, v3, MEMORY[0x1E6968FB0], &qword_1EC196A48, v2, MEMORY[0x1E6968FC8]);
}

unint64_t sub_1C5AB7290(uint64_t a1)
{
  v2 = sub_1C5BCB9F4();

  return sub_1C5AB799C(a1, v2);
}

unint64_t sub_1C5AB72D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FittedText(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_1C5AB96D4(*(v2 + 48) + v11 * v9, v7, type metadata accessor for FittedText);
      v12 = _s11MediaCoreUI10FittedTextV2eeoiySbAC_ACtFZ_0();
      sub_1C5AB973C(v7, type metadata accessor for FittedText);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1C5AB7430(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C5AB7498(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C5AB7508(uint64_t a1, uint64_t a2)
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

unint64_t sub_1C5AB7574(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1C5AB96D4(*(v2 + 48) + v12 * v10, v8, type metadata accessor for MotionAssetDownload.AssetKey);
      if (sub_1C5BC79D4() & 1) != 0 && (sub_1C5BC79D4())
      {
        v13 = &v8[*(v5 + 24)];
        v14 = *v13;
        v15 = v13[1];
        sub_1C5AB973C(v8, type metadata accessor for MotionAssetDownload.AssetKey);
        v16 = (a1 + *(v5 + 24));
        if (v14 == *v16 && v15 == v16[1])
        {
          return v10;
        }
      }

      else
      {
        sub_1C5AB973C(v8, type metadata accessor for MotionAssetDownload.AssetKey);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1C5AB7738(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1C5AB9400();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1C5BCB744();

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

unint64_t sub_1C5AB77FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_1C5AB944C(v24, v25, v26);
      v20 = sub_1C5BCADB4();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1C5AB799C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C59E6618(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C694FC40](v9, a1);
      sub_1C59E652C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C5AB7A64(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1C5BCAE74();
      v8 = v7;
      if (v6 == sub_1C5BCAE74() && v8 == v9)
      {
        break;
      }

      v11 = sub_1C5BCBDE4();

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

void sub_1C5AB7B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v76 = a1;
  v77 = a2;
  v78 = a3;
  v79 = a4;
  sub_1C5AB961C();

  v6 = sub_1C5BCAFC4();
  v9 = v6;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v9 = sub_1C5AB80F0(v6, v7, v8);
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v9 & 0x1000000000000000) != 0)
    {
      v10 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v11 = v9 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = sub_1C5BCBB04();
      v11 = v75;
    }

    v12 = *v10;
    if (v12 == 43)
    {
      if (v11 >= 1)
      {
        v25 = v11 - 1;
        if (v25)
        {
          v26 = a5 + 48;
          v27 = a5 + 55;
          v28 = a5 + 87;
          if (a5 > 10)
          {
            v26 = 58;
          }

          else
          {
            v28 = 97;
            v27 = 65;
          }

          if (v10)
          {
            v29 = 0;
            v30 = v10 + 1;
            v19 = 1;
            do
            {
              v31 = *v30;
              if (v31 < 0x30 || v31 >= v26)
              {
                if (v31 < 0x41 || v31 >= v27)
                {
                  if (v31 < 0x61 || v31 >= v28)
                  {
                    goto LABEL_129;
                  }

                  v32 = -87;
                }

                else
                {
                  v32 = -55;
                }
              }

              else
              {
                v32 = -48;
              }

              v33 = v29 * a5;
              if ((v33 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v34 = v31 + v32;
              v24 = __CFADD__(v33, v34);
              v29 = v33 + v34;
              if (v24)
              {
                goto LABEL_128;
              }

              ++v30;
              --v25;
            }

            while (v25);
LABEL_47:
            v19 = 0;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v19 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v12 != 45)
    {
      if (v11)
      {
        v35 = a5 + 48;
        v36 = a5 + 55;
        v37 = a5 + 87;
        if (a5 > 10)
        {
          v35 = 58;
        }

        else
        {
          v37 = 97;
          v36 = 65;
        }

        if (v10)
        {
          v38 = 0;
          v19 = 1;
          do
          {
            v39 = *v10;
            if (v39 < 0x30 || v39 >= v35)
            {
              if (v39 < 0x41 || v39 >= v36)
              {
                if (v39 < 0x61 || v39 >= v37)
                {
                  goto LABEL_129;
                }

                v40 = -87;
              }

              else
              {
                v40 = -55;
              }
            }

            else
            {
              v40 = -48;
            }

            v41 = v38 * a5;
            if ((v41 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v42 = v39 + v40;
            v24 = __CFADD__(v41, v42);
            v38 = v41 + v42;
            if (v24)
            {
              goto LABEL_128;
            }

            ++v10;
            --v11;
          }

          while (v11);
          v19 = 0;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v11 >= 1)
    {
      v13 = v11 - 1;
      if (v13)
      {
        v14 = a5 + 48;
        v15 = a5 + 55;
        v16 = a5 + 87;
        if (a5 > 10)
        {
          v14 = 58;
        }

        else
        {
          v16 = 97;
          v15 = 65;
        }

        if (v10)
        {
          v17 = 0;
          v18 = v10 + 1;
          v19 = 1;
          while (1)
          {
            v20 = *v18;
            if (v20 < 0x30 || v20 >= v14)
            {
              if (v20 < 0x41 || v20 >= v15)
              {
                if (v20 < 0x61 || v20 >= v16)
                {
                  goto LABEL_129;
                }

                v21 = -87;
              }

              else
              {
                v21 = -55;
              }
            }

            else
            {
              v21 = -48;
            }

            v22 = v17 * a5;
            if ((v22 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v23 = v20 + v21;
            v24 = v22 >= v23;
            v17 = v22 - v23;
            if (!v24)
            {
              goto LABEL_128;
            }

            ++v18;
            if (!--v13)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        LOBYTE(v76) = v19;
        return;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v45 = HIBYTE(v7) & 0xF;
  v76 = v9;
  v77 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v9 != 43)
  {
    if (v9 != 45)
    {
      if (v45)
      {
        v66 = 0;
        v67 = a5 + 48;
        v68 = a5 + 55;
        v69 = a5 + 87;
        if (a5 > 10)
        {
          v67 = 58;
        }

        else
        {
          v69 = 97;
          v68 = 65;
        }

        v70 = &v76;
        v19 = 1;
        while (1)
        {
          v71 = *v70;
          if (v71 < 0x30 || v71 >= v67)
          {
            if (v71 < 0x41 || v71 >= v68)
            {
              if (v71 < 0x61 || v71 >= v69)
              {
                goto LABEL_129;
              }

              v72 = -87;
            }

            else
            {
              v72 = -55;
            }
          }

          else
          {
            v72 = -48;
          }

          v73 = v66 * a5;
          if ((v73 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v74 = v71 + v72;
          v24 = __CFADD__(v73, v74);
          v66 = v73 + v74;
          if (v24)
          {
            goto LABEL_128;
          }

          v70 = (v70 + 1);
          if (!--v45)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v45)
    {
      v46 = v45 - 1;
      if (v46)
      {
        v47 = 0;
        v48 = a5 + 48;
        v49 = a5 + 55;
        v50 = a5 + 87;
        if (a5 > 10)
        {
          v48 = 58;
        }

        else
        {
          v50 = 97;
          v49 = 65;
        }

        v51 = &v76 + 1;
        v19 = 1;
        while (1)
        {
          v52 = *v51;
          if (v52 < 0x30 || v52 >= v48)
          {
            if (v52 < 0x41 || v52 >= v49)
            {
              if (v52 < 0x61 || v52 >= v50)
              {
                goto LABEL_129;
              }

              v53 = -87;
            }

            else
            {
              v53 = -55;
            }
          }

          else
          {
            v53 = -48;
          }

          v54 = v47 * a5;
          if ((v54 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v55 = v52 + v53;
          v24 = v54 >= v55;
          v47 = v54 - v55;
          if (!v24)
          {
            goto LABEL_128;
          }

          ++v51;
          if (!--v46)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v45)
  {
    v56 = v45 - 1;
    if (v56)
    {
      v57 = 0;
      v58 = a5 + 48;
      v59 = a5 + 55;
      v60 = a5 + 87;
      if (a5 > 10)
      {
        v58 = 58;
      }

      else
      {
        v60 = 97;
        v59 = 65;
      }

      v61 = &v76 + 1;
      v19 = 1;
      do
      {
        v62 = *v61;
        if (v62 < 0x30 || v62 >= v58)
        {
          if (v62 < 0x41 || v62 >= v59)
          {
            if (v62 < 0x61 || v62 >= v60)
            {
              goto LABEL_129;
            }

            v63 = -87;
          }

          else
          {
            v63 = -55;
          }
        }

        else
        {
          v63 = -48;
        }

        v64 = v57 * a5;
        if ((v64 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v65 = v62 + v63;
        v24 = __CFADD__(v64, v65);
        v57 = v64 + v65;
        if (v24)
        {
          goto LABEL_128;
        }

        ++v61;
        --v56;
      }

      while (v56);
LABEL_127:
      v19 = 0;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
}

uint64_t sub_1C5AB80F0(uint64_t a1, unint64_t a2, __n128 a3)
{
  v3 = sub_1C5BCAFD4();
  v7 = sub_1C5AB8170(v3, v4, v5, v6);

  return v7;
}

uint64_t sub_1C5AB8170(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1C5BCB844();
    if (!v9 || (v10 = v9, v11 = sub_1C592B0FC(v9, 0), v12 = sub_1C5AB82C8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1C5BCAEF4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C5BCAEF4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1C5BCBB04();
LABEL_4:

  return sub_1C5BCAEF4();
}

unint64_t sub_1C5AB82C8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1C5AB84E8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C5BCAF84();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1C5BCBB04();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1C5AB84E8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1C5BCAF54();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}