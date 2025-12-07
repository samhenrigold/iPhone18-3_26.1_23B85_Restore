uint64_t sub_1D18F21EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D18F2E7C(a1);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = sub_1D18F2FE8(a1);
    result = sub_1D18F32E8(a1, type metadata accessor for ActionService);
    if (v8)
    {
      *a2 = v6;
      a2[1] = v7;
      a2[2] = v8;
      return result;
    }
  }

  else
  {
    result = sub_1D18F32E8(a1, type metadata accessor for ActionService);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

double sub_1D18F2298(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for ActionService(0) + 60));
  v10 = v1;
  v9 = -94;
  result = sub_1D1CE53A4(&v9);
  if (v3)
  {
    v10 = v1;
    v9 = 55;
    result = sub_1D1CE53A4(&v9);
    if ((v5 & 1) == 0)
    {
      v6 = v4;
      v10 = v1;
      v9 = 29;
      result = sub_1D1CE53A4(&v9);
      if ((v8 & 1) == 0)
      {
        return (v6 + v7) * 0.5;
      }
    }
  }

  return result;
}

double sub_1D18F2360(uint64_t a1)
{
  v2 = *(type metadata accessor for ActionService(0) + 60);
  v7 = *(a1 + v2);
  v6 = -105;
  v8 = StaticCharacteristicsBag.int(for:)(&v6);
  if (!v8.is_nil)
  {
    value = v8.value;
    sub_1D18F2414(a1);
    if (value == 2)
    {
      v7 = *(a1 + v2);
      v5 = 29;
    }

    else
    {
      if (value != 1)
      {
        return result;
      }

      v7 = *(a1 + v2);
      v5 = 55;
    }

    v6 = v5;
    return sub_1D1CE53A4(&v6);
  }

  return result;
}

uint64_t sub_1D18F2414(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v5 = *(a1 + *(type metadata accessor for ActionService(0) + 60));
  v28 = v5;
  HIBYTE(v27) = 55;
  sub_1D1CE53A4(&v27 + 7);
  if ((v7 & 1) == 0)
  {
    v28 = v5;
    HIBYTE(v27) = 29;
    v8 = v6;
    sub_1D1CE53A4(&v27 + 7);
    if (v9)
    {
      return v8;
    }
  }

  v28 = v5;
  HIBYTE(v27) = 29;
  sub_1D1CE53A4(&v27 + 7);
  if ((v11 & 1) == 0)
  {
    v28 = v5;
    HIBYTE(v27) = 55;
    v8 = v10;
    sub_1D1CE53A4(&v27 + 7);
    if (v12)
    {
      return v8;
    }
  }

  if (!*(v5 + 16))
  {
    v20 = type metadata accessor for StaticCharacteristic(0);
    (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
LABEL_12:
    sub_1D18F31D4(v4);
    return 0;
  }

  v14 = sub_1D171D140(55);
  if (v15)
  {
    v16 = v14;
    v17 = *(v5 + 56);
    v18 = type metadata accessor for StaticCharacteristic(0);
    v19 = *(v18 - 8);
    sub_1D18F3284(v17 + *(v19 + 72) * v16, v4);
    (*(v19 + 56))(v4, 0, 1, v18);
  }

  else
  {
    v18 = type metadata accessor for StaticCharacteristic(0);
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  }

  type metadata accessor for StaticCharacteristic(0);
  if ((*(*(v18 - 8) + 48))(v4, 1, v18) == 1)
  {
    goto LABEL_12;
  }

  v21 = &v4[*(v18 + 44)];
  v23 = *v21;
  v22 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  v26 = v21[4];
  sub_1D18F323C(*v21, v22, v24, v25, v26);
  sub_1D18F32E8(v4, type metadata accessor for StaticCharacteristic);
  if (v25 >> 8 == 0xFFFFFFFF)
  {
    return 0;
  }

  sub_1D18F3260(v23, v22, v24, v25, v26);
  if ((v25 & 0xC000000000000000) == 0x4000000000000000)
  {
    return v22;
  }

  else
  {
    return 0;
  }
}

uint64_t static TemperatureStringIcon.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_1D1E6904C() & 1) != 0)
  {
    return sub_1D1E6732C() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t TemperatureStringIcon.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E678EC();
  sub_1D1E6737C();
  return sub_1D1E6926C();
}

uint64_t sub_1D18F2834(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_1D1E6904C() & 1) != 0)
  {
    return sub_1D1E6732C() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D18F2898()
{
  sub_1D1E6920C();
  sub_1D1E678EC();
  sub_1D1E6737C();
  return sub_1D1E6926C();
}

uint64_t sub_1D18F2934(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E678EC();
  sub_1D1E6737C();
  return sub_1D1E6926C();
}

uint64_t _s13HomeDataModel21TemperatureStringIconV4text4with16temperatureScaleSSSgAA13StaticServiceV_AA17ClimateSummarizerO0dJ0OtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 + 104);
  v17 = *(a1 + v5);
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3550 == v6)
  {
    goto LABEL_3;
  }

  v7 = sub_1D1E6904C();

  if ((v7 & 1) == 0)
  {
    v16 = *(a1 + v5);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3070 == v11)
    {
LABEL_3:

      goto LABEL_5;
    }

    v12 = sub_1D1E6904C();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_5:
  v15 = *(a1 + *(v4 + 128));
  v14 = 44;
  sub_1D1CE53A4(&v14);
  if (v9)
  {
    return static String.hfLocalized(_:)(0xD00000000000001FLL, 0x80000001D1EBE000);
  }

  v13 = v3;
  return static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v13, v8);
}

uint64_t _s13HomeDataModel21TemperatureStringIconV9textColor4with7context7SwiftUI0H0VSgAA13StaticServiceV_AC7ContextOtFZ_0(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 + 104);
  LOBYTE(v17) = *(a1 + v5);
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3550 == v6)
  {
  }

  else
  {
    v7 = sub_1D1E6904C();

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v8 = *(a1 + *(v4 + 128));
  v17 = v8;
  v16 = -104;
  v18 = StaticCharacteristicsBag.int(for:)(&v16);
  if (!v18.is_nil)
  {
    value = v18.value;
    v17 = v8;
    v16 = 34;
    v19 = StaticCharacteristicsBag.int(for:)(&v16);
    if (!v19.is_nil)
    {
      if (v19.value == 2)
      {
        if (value)
        {
          return sub_1D1E6735C();
        }
      }

      else if (v19.value == 1)
      {
        if (value)
        {
          return sub_1D1E673EC();
        }
      }

      else
      {
        if (v19.value)
        {
          return 0;
        }

        if (value)
        {
          if ((v3 & 1) == 0)
          {
            return sub_1D1E673BC();
          }

          return sub_1D1E673AC();
        }
      }

      if ((v3 & 1) == 0)
      {
        return sub_1D1E6736C();
      }

      return sub_1D1E673CC();
    }
  }

LABEL_7:
  LOBYTE(v17) = *(a1 + v5);
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3070 == v10)
  {

LABEL_11:
    v12 = *(a1 + *(v4 + 128));
    v17 = v12;
    v16 = 3;
    v13 = sub_1D1CE4920(&v16);
    if (v13 == 2)
    {
      return 0;
    }

    v14 = v13;
    v17 = v12;
    v16 = 33;
    v20 = StaticCharacteristicsBag.int(for:)(&v16);
    if (v20.is_nil)
    {
      return 0;
    }

    if (v14)
    {
      if (v20.value >= 2uLL)
      {
        if (v20.value != 2)
        {
          if (v20.value != 3)
          {
            return 0;
          }

          return sub_1D1E6735C();
        }

        return sub_1D1E673EC();
      }

      return sub_1D1E673AC();
    }

    return sub_1D1E673CC();
  }

  v11 = sub_1D1E6904C();

  if (v11)
  {
    goto LABEL_11;
  }

  return 0;
}

unint64_t sub_1D18F2D28()
{
  result = qword_1EC646A40;
  if (!qword_1EC646A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646A40);
  }

  return result;
}

unint64_t sub_1D18F2D80()
{
  result = qword_1EC646A48;
  if (!qword_1EC646A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646A48);
  }

  return result;
}

uint64_t sub_1D18F2DD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D18F2E1C(uint64_t result, int a2, int a3)
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

uint64_t sub_1D18F2E7C(uint64_t a1)
{
  v2 = *(type metadata accessor for ActionService(0) + 44);
  v15[2] = *(a1 + v2);
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3550 == v3)
  {

LABEL_5:
    sub_1D18F2298(a1);
    if (v6)
    {
      return static String.hfLocalized(_:)(0xD00000000000001FLL, 0x80000001D1EBE000);
    }

    v8 = v5;
    v14 = 0;
    v9 = &v14;
    return static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v9, v8);
  }

  v4 = sub_1D1E6904C();

  if (v4)
  {
    goto LABEL_5;
  }

  v15[1] = *(a1 + v2);
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3070 == v10)
  {
  }

  else
  {
    v11 = sub_1D1E6904C();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1D18F2360(a1);
  if (v13)
  {
    return static String.hfLocalized(_:)(0xD00000000000001FLL, 0x80000001D1EBE000);
  }

  v8 = v12;
  v15[0] = 0;
  v9 = v15;
  return static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(v9, v8);
}

uint64_t sub_1D18F2FE8(uint64_t a1)
{
  v2 = type metadata accessor for ActionService(0);
  v3 = *(v2 + 44);
  LOBYTE(v14) = *(a1 + v3);
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3550 == v4)
  {
  }

  else
  {
    v5 = sub_1D1E6904C();

    if ((v5 & 1) == 0)
    {
      LOBYTE(v14) = *(a1 + v3);
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3070 == v8)
      {
      }

      else
      {
        v9 = sub_1D1E6904C();

        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      v10 = *(a1 + *(v2 + 60));
      v14 = v10;
      v13 = -105;
      v16 = StaticCharacteristicsBag.int(for:)(&v13);
      if (v16.is_nil)
      {
        return 0;
      }

      value = v16.value;
      v14 = v10;
      v13 = 3;
      v12 = sub_1D1CE4920(&v13);
      if (v12 == 2)
      {
        return 0;
      }

      if ((v12 & 1) == 0)
      {
        return sub_1D1E6736C();
      }

      if (value != 2)
      {
        if (value == 1)
        {
          return sub_1D1E673EC();
        }

        if (value)
        {
          return 0;
        }

        return sub_1D1E673AC();
      }

      return sub_1D1E6735C();
    }
  }

  v14 = *(a1 + *(v2 + 60));
  v13 = -104;
  v15 = StaticCharacteristicsBag.int(for:)(&v13);
  if (v15.is_nil)
  {
    return 0;
  }

  v7 = v15.value;
  result = 0;
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        return result;
      }

      return sub_1D1E673AC();
    }

    return sub_1D1E6735C();
  }

  if (!v7)
  {
    return sub_1D1E6736C();
  }

  if (v7 == 1)
  {
    return sub_1D1E673EC();
  }

  return result;
}

uint64_t sub_1D18F31D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D18F323C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 >> 8 != 0xFFFFFFFF)
  {
    return sub_1D18F3250(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1D18F3250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_1D18F3260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 >> 8 != 0xFFFFFFFF)
  {
    return sub_1D18F3274(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1D18F3274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_1D18F3284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCharacteristic(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18F32E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D18F3358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1D18D63F8(MEMORY[0x1E69E7CC0]);
  v7 = v6;
  v8 = *(a2 + 16);
  if (!v8)
  {

LABEL_32:
    *a3 = a1;
    a3[1] = v7;
    return result;
  }

  v57 = a2;
  v58 = v6;
  v54 = a3;
  v55 = *(a2 + 16);
  v9 = 0;
  v10 = a2 + 32;
  v11 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  v12 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  while (v9 < *(a2 + 16))
  {
    sub_1D18F5324(v10, &v61);
    v13 = v62;
    v14 = [v62 v11[319]];
    v15 = [v14 v12[320]];

    if (v61 != a1)
    {
      sub_1D18F5380(&v61);
      goto LABEL_4;
    }

    v16 = v8;
    v17 = a1;
    v18 = [v13 cluster];
    v19 = [v18 unsignedIntValue];

    ClusterKind.init(rawValue:)(v19);
    v59 = v60[0];
    if (v60[0] == 30)
    {
      sub_1D18F5380(&v61);
      v12 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      v8 = v16;
      a2 = v57;
      goto LABEL_4;
    }

    v20 = [v13 attribute];
    v21 = [v20 unsignedIntValue];

    sub_1D18C20AC(&v63, v60);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_1D171D15C(v15);
    v25 = v58[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_34;
    }

    v28 = v23;
    v56 = v21;
    if (v58[3] >= v27)
    {
      v31 = v17;
      if (isUniquelyReferenced_nonNull_native)
      {
        v32 = v58;
        if ((v23 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_1D17395FC();
        v32 = v58;
        if ((v28 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_1D17293EC(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_1D171D15C(v15);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_39;
      }

      v24 = v29;
      v31 = v17;
      v32 = v58;
      if ((v28 & 1) == 0)
      {
LABEL_16:
        v33 = sub_1D18D9B40(MEMORY[0x1E69E7CC0]);
        v32[(v24 >> 6) + 8] |= 1 << v24;
        *(v32[6] + 2 * v24) = v15;
        *(v32[7] + 8 * v24) = v33;
        v34 = v32[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_36;
        }

        v32[2] = v36;
      }
    }

    v37 = v31;
    v58 = v32;
    v38 = v32[7];
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v38 + 8 * v24);
    *(v38 + 8 * v24) = 0x8000000000000000;
    v42 = sub_1D171D278(v59);
    v43 = *(v40 + 16);
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_35;
    }

    v46 = v41;
    if (*(v40 + 24) >= v45)
    {
      if ((v39 & 1) == 0)
      {
        sub_1D17395E8();
      }
    }

    else
    {
      sub_1D1729150(v45, v39);
      v47 = sub_1D171D278(v59);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_38;
      }

      v42 = v47;
    }

    v12 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    *(v38 + 8 * v24) = v40;

    v49 = *(v38 + 8 * v24);
    a1 = v37;
    a2 = v57;
    v8 = v55;
    if ((v46 & 1) == 0)
    {
      v50 = sub_1D18D9B68(MEMORY[0x1E69E7CC0]);
      v49[(v42 >> 6) + 8] |= 1 << v42;
      *(v49[6] + v42) = v59;
      *(v49[7] + 8 * v42) = v50;
      v51 = v49[2];
      v35 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v35)
      {
        goto LABEL_37;
      }

      v49[2] = v52;
    }

    sub_1D1B0DC1C(v60, v56);
    sub_1D18F5380(&v61);
    v11 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
LABEL_4:
    ++v9;
    v10 += 56;
    if (v8 == v9)
    {

      a3 = v54;
      v7 = v58;
      goto LABEL_32;
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
  sub_1D1E690FC();
  __break(1u);
LABEL_39:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

void *sub_1D18F3768@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D18D9B40(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

unint64_t sub_1D18F3798@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D18D9B68(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

void *sub_1D18F37C8()
{
  result = sub_1D18D63F8(MEMORY[0x1E69E7CC0]);
  qword_1EC6BE118 = 0;
  unk_1EC6BE120 = result;
  return result;
}

uint64_t AttributeValueSet.value<A>(for:in:as:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>, uint64_t a3@<X0>, void *a4@<X1>)
{
  AttributeValueSet.value(for:in:)(a3, a4, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  v6 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v6 ^ 1u, 1, a1);
}

double AttributeValueSet.value(for:in:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *(v3 + 8);
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = (*(v9 + 16))(v8, v9);
  if (!*(v7 + 16))
  {
    goto LABEL_11;
  }

  v11 = sub_1D171D15C(v10);
  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

  v13 = *(*(v7 + 56) + 8 * v11);
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  v16 = *(v15 + 24);

  v16(&v23, v14, v15);
  if (!*(v13 + 16) || (v17 = sub_1D171D278(v23), (v18 & 1) == 0) || (v19 = *(*(v13 + 56) + 8 * v17), , , !*(v19 + 16)) || (v20 = sub_1D171D4E0(a1), (v21 & 1) == 0))
  {

LABEL_11:
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_1D1741970(*(v19 + 56) + 32 * v20, a3);

  return result;
}

{
  return AttributeValueSet.value(for:in:)(a1, a2, a3);
}

uint64_t AttributeValueSet.value<A>(for:in:as:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = v5[1];
  *&v39 = *v5;
  *(&v39 + 1) = v10;
  AttributeValueSet.value(for:in:)(a1, a2, v43);
  sub_1D18C20AC(v43, &v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  v11 = swift_dynamicCast();
  v12 = *(a4 - 8);
  (*(v12 + 56))(a5, v11 ^ 1u, 1, a4);
  sub_1D18C20AC(v43, &v39);
  if (!v40)
  {
    sub_1D18F49A8(v43);
    v35 = &v39;
    return sub_1D18F49A8(v35);
  }

  sub_1D1742194(&v39, v42);
  if ((*(v12 + 48))(a5, 1, a4) != 1)
  {
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v42);
    v35 = v43;
    return sub_1D18F49A8(v35);
  }

  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 24))(&v39, v13, v14);
  v15 = sub_1D1A38104(a1, &v39);
  v17 = v16;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v18 = sub_1D1E6709C();
  __swift_project_value_buffer(v18, qword_1EE07A0B0);
  sub_1D1741970(v42, v41);
  sub_1D17419CC(a2, &v39);

  v19 = sub_1D1E6707C();
  v20 = sub_1D1E6833C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v38 = v22;
    *v21 = 136446978;
    v23 = sub_1D1B1312C(v15, v17, &v38);

    *(v21 + 4) = v23;
    *(v21 + 12) = 2082;
    v24 = sub_1D1E6940C();
    v26 = sub_1D1B1312C(v24, v25, &v38);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2082;
    sub_1D1741970(v41, &v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    v27 = sub_1D1E678BC();
    v29 = v28;
    __swift_destroy_boxed_opaque_existential_1(v41);
    v30 = sub_1D1B1312C(v27, v29, &v38);

    *(v21 + 24) = v30;
    *(v21 + 32) = 2082;
    __swift_project_boxed_opaque_existential_1(&v39, v40);
    v31 = sub_1D1E68FAC();
    v33 = v32;
    __swift_destroy_boxed_opaque_existential_1(&v39);
    v34 = sub_1D1B1312C(v31, v33, &v38);

    *(v21 + 34) = v34;
    _os_log_impl(&dword_1D16EC000, v19, v20, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v21, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v22, -1, -1);
    MEMORY[0x1D3893640](v21, -1, -1);

    goto LABEL_7;
  }

  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1D18F49A8(v43);
  return __swift_destroy_boxed_opaque_existential_1(&v39);
}

BOOL AttributeValueSet.supports(attribute:in:)(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  v6 = __swift_project_boxed_opaque_existential_1(a2, v4);

  return sub_1D18F51E0(a1, v6, v2, v4, v5);
}

BOOL AttributeValueSet.supports(attribute:in:)(int a1, void *a2)
{
  v4 = v2[1];
  v20[0] = *v2;
  v20[1] = v4;
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  v12 = sub_1D18F5DF8(v7, v20, v5, v6, v8, v9, v10, v11, v20[0]);
  v13 = *(v12 + 16);
  v14 = 32;
  do
  {
    v15 = v13;
    if (v13-- == 0)
    {
      break;
    }

    v17 = *(v12 + v14);
    v14 += 4;
  }

  while (v17 != a1);
  v18 = v15 != 0;

  return v18;
}

void *AttributeValueSet.values(for:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = sub_1D18D63F8(MEMORY[0x1E69E7CC0]);
  if (!*(a1 + 16))
  {
    return v4;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = a1 + 32;
  v120 = v3 + 64;
  v121 = a1 + 32;
  v122 = *(a1 + 16);
  while (1)
  {
    v9 = (v8 + 12 * v7);
    v128 = *(v9 + 3);
    v129 = *(v9 + 1);
    v133 = *(v9 + 8);
    v123 = v7;
    if (v9[1])
    {
      v10 = *(v3 + 16);
      if (v10)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643130, &qword_1D1E81F40);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = 0;
        v14 = 0;
        v15 = v12 - 32;
        v16 = v11;
        v11[2] = v10;
        v11[3] = (v15 + (v15 >> 63)) & 0xFFFFFFFFFFFFFFFELL;
        v17 = 1 << *(v3 + 32);
        if (v17 < 64)
        {
          v18 = ~(-1 << v17);
        }

        else
        {
          v18 = -1;
        }

        v19 = v18 & *(v3 + 64);
        v20 = v11 + 4;
        v21 = (v17 + 63) >> 6;
        if (v19)
        {
          goto LABEL_13;
        }

        do
        {
LABEL_9:
          v22 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_122;
          }

          if (v22 >= v21)
          {
            goto LABEL_130;
          }

          v19 = *(v120 + 8 * v22);
          ++v13;
        }

        while (!v19);
        v13 = v22;
LABEL_13:
        while (1)
        {
          ++v14;
          *v20 = *(*(v3 + 48) + ((v13 << 7) | (2 * __clz(__rbit64(v19)))));
          if (v14 == v10)
          {
            break;
          }

          v19 &= v19 - 1;
          ++v20;
          if (!v19)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        v16 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v23 = *v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643130, &qword_1D1E81F40);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D1E739C0;
      *(v16 + 32) = v23;
    }

    v125 = *(v16 + 16);
    if (v125)
    {
      break;
    }

LABEL_114:

    v7 = v123 + 1;
    v8 = v121;
    if (v123 + 1 == v122)
    {
      sub_1D17169C0(v5, 0);
      sub_1D17169C0(v6, 0);
      return v4;
    }
  }

  v24 = 0;
  v126 = v16 + 32;
  v124 = v16;
  while (1)
  {
    if (v24 >= *(v16 + 16))
    {
      goto LABEL_128;
    }

    v25 = *(v126 + 2 * v24);
    v127 = v24;
    if (v128 == 30)
    {
      if (*(v3 + 16) && (v26 = sub_1D171D15C(v25), (v27 & 1) != 0) && (v28 = *(*(v3 + 56) + 8 * v26), (v29 = *(v28 + 16)) != 0))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433F8, &unk_1D1E910E0);
        v30 = swift_allocObject();
        v31 = _swift_stdlib_malloc_size(v30);
        v32 = 0;
        v33 = 0;
        *(v30 + 16) = v29;
        *(v30 + 24) = 2 * v31 - 64;
        v34 = 1 << *(v28 + 32);
        if (v34 < 64)
        {
          v35 = ~(-1 << v34);
        }

        else
        {
          v35 = -1;
        }

        v36 = v35 & *(v28 + 64);
        v37 = (v30 + 32);
        v38 = (v34 + 63) >> 6;
        if (v36)
        {
          goto LABEL_34;
        }

        do
        {
LABEL_30:
          v39 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_126;
          }

          if (v39 >= v38)
          {
            goto LABEL_131;
          }

          v36 = *(v28 + 64 + 8 * v39);
          ++v32;
        }

        while (!v36);
        v32 = v39;
LABEL_34:
        while (1)
        {
          ++v33;
          *v37 = *(*(v28 + 48) + (__clz(__rbit64(v36)) | (v32 << 6)));
          if (v33 == v29)
          {
            break;
          }

          v36 &= v36 - 1;
          ++v37;
          if (!v36)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433F8, &unk_1D1E910E0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D1E739C0;
      *(v30 + 32) = v128;
    }

    v131 = *(v30 + 16);
    if (v131)
    {
      break;
    }

LABEL_20:

    v24 = v127 + 1;
    v16 = v124;
    if (v127 + 1 == v125)
    {
      goto LABEL_114;
    }
  }

  v40 = 0;
  v132 = v30 + 32;
  v130 = v30;
  while (1)
  {
    v134 = v40;
    if (v40 >= *(v30 + 16))
    {
      goto LABEL_127;
    }

    v138 = *(v132 + v40);
    if (v133)
    {
      if (*(v3 + 16) && (v41 = sub_1D171D15C(v25), (v42 & 1) != 0) && (v43 = *(*(v3 + 56) + 8 * v41), *(v43 + 16)) && (v44 = sub_1D171D278(v138), (v45 & 1) != 0) && (v46 = *(*(v43 + 56) + 8 * v44), (v47 = *(v46 + 16)) != 0))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433F0, &unk_1D1E71870);
        v48 = swift_allocObject();
        v49 = _swift_stdlib_malloc_size(v48);
        v50 = 0;
        v51 = 0;
        v52 = v49 - 32;
        if (v49 < 32)
        {
          v52 = v49 - 29;
        }

        *(v48 + 16) = v47;
        *(v48 + 24) = 2 * (v52 >> 2);
        v53 = 1 << *(v46 + 32);
        if (v53 < 64)
        {
          v54 = ~(-1 << v53);
        }

        else
        {
          v54 = -1;
        }

        v55 = v54 & *(v46 + 64);
        v56 = (v48 + 32);
        v57 = (v53 + 63) >> 6;
        if (v55)
        {
          goto LABEL_59;
        }

        do
        {
LABEL_55:
          v58 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_121;
          }

          if (v58 >= v57)
          {
            goto LABEL_129;
          }

          v55 = *(v46 + 64 + 8 * v58);
          ++v50;
        }

        while (!v55);
        v50 = v58;
LABEL_59:
        while (1)
        {
          ++v51;
          *v56 = *(*(v46 + 48) + ((v50 << 8) | (4 * __clz(__rbit64(v55)))));
          if (v51 == v47)
          {
            break;
          }

          v55 &= v55 - 1;
          ++v56;
          if (!v55)
          {
            goto LABEL_55;
          }
        }
      }

      else
      {
        v48 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433F0, &unk_1D1E71870);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1D1E739C0;
      *(v48 + 32) = v129;
    }

    v136 = *(v48 + 16);
    if (v136)
    {
      break;
    }

LABEL_41:

    v30 = v130;
    v40 = v134 + 1;
    if (v134 + 1 == v131)
    {
      goto LABEL_20;
    }
  }

  v59 = 0;
  v135 = v48 + 32;
  while (v59 < *(v48 + 16))
  {
    v139 = *(v135 + 4 * v59);
    if (*(v3 + 16) && (v61 = sub_1D171D15C(v25), (v62 & 1) != 0) && (v63 = *(*(v3 + 56) + 8 * v61), *(v63 + 16)) && (v64 = sub_1D171D278(v138), (v65 & 1) != 0) && (v66 = *(*(v63 + 56) + 8 * v64), *(v66 + 16)) && (v67 = sub_1D171D4E0(v139), (v68 & 1) != 0))
    {
      sub_1D1741970(*(v66 + 56) + 32 * v67, v143);
    }

    else
    {
      memset(v143, 0, 32);
    }

    sub_1D18C20AC(v143, &v141);
    sub_1D17169C0(v5, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v140[0] = v4;
    v71 = sub_1D171D15C(v25);
    v72 = v4[2];
    v73 = (v70 & 1) == 0;
    v74 = v72 + v73;
    if (__OFADD__(v72, v73))
    {
      goto LABEL_118;
    }

    v75 = v70;
    if (v4[3] >= v74)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v78 = *&v140[0];
        if (v70)
        {
          goto LABEL_87;
        }
      }

      else
      {
        sub_1D17395FC();
        v78 = *&v140[0];
        if (v75)
        {
          goto LABEL_87;
        }
      }
    }

    else
    {
      sub_1D17293EC(v74, isUniquelyReferenced_nonNull_native);
      v76 = sub_1D171D15C(v25);
      if ((v75 & 1) != (v77 & 1))
      {
        goto LABEL_133;
      }

      v71 = v76;
      v78 = *&v140[0];
      if (v75)
      {
        goto LABEL_87;
      }
    }

    v79 = sub_1D18D9B40(MEMORY[0x1E69E7CC0]);
    v78[(v71 >> 6) + 8] |= 1 << v71;
    *(v78[6] + 2 * v71) = v25;
    *(v78[7] + 8 * v71) = v79;
    v80 = v78[2];
    v81 = __OFADD__(v80, 1);
    v82 = v80 + 1;
    if (v81)
    {
      goto LABEL_123;
    }

    v78[2] = v82;
LABEL_87:
    v83 = v48;
    v84 = v25;
    v85 = v3;
    v137 = v78;
    v86 = v78[7];
    sub_1D17169C0(v6, 0);
    v87 = swift_isUniquelyReferenced_nonNull_native();
    *&v140[0] = *(v86 + 8 * v71);
    v88 = *&v140[0];
    *(v86 + 8 * v71) = 0x8000000000000000;
    v90 = sub_1D171D278(v138);
    v91 = *(v88 + 16);
    v92 = (v89 & 1) == 0;
    v93 = v91 + v92;
    if (__OFADD__(v91, v92))
    {
      goto LABEL_119;
    }

    v94 = v89;
    if (*(v88 + 24) >= v93)
    {
      if ((v87 & 1) == 0)
      {
        sub_1D17395E8();
        v88 = *&v140[0];
      }
    }

    else
    {
      sub_1D1729150(v93, v87);
      v88 = *&v140[0];
      v95 = sub_1D171D278(v138);
      if ((v94 & 1) != (v96 & 1))
      {
        goto LABEL_132;
      }

      v90 = v95;
    }

    *(v86 + 8 * v71) = v88;

    v97 = *(v86 + 8 * v71);
    v3 = v85;
    v25 = v84;
    if ((v94 & 1) == 0)
    {
      v98 = sub_1D18D9B68(MEMORY[0x1E69E7CC0]);
      v97[(v90 >> 6) + 8] |= 1 << v90;
      *(v97[6] + v90) = v138;
      *(v97[7] + 8 * v90) = v98;
      v99 = v97[2];
      v81 = __OFADD__(v99, 1);
      v100 = v99 + 1;
      if (v81)
      {
        goto LABEL_124;
      }

      v97[2] = v100;
    }

    v101 = v97[7];
    if (v142)
    {
      sub_1D1742194(&v141, v140);
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v103 = *(v101 + 8 * v90);
      *(v101 + 8 * v90) = 0x8000000000000000;
      v104 = sub_1D171D4E0(v139);
      v106 = v103[2];
      v107 = (v105 & 1) == 0;
      v81 = __OFADD__(v106, v107);
      v108 = v106 + v107;
      if (v81)
      {
        goto LABEL_120;
      }

      v109 = v105;
      if (v103[3] >= v108)
      {
        v48 = v83;
        if ((v102 & 1) == 0)
        {
          v118 = v104;
          sub_1D173946C();
          v104 = v118;
        }
      }

      else
      {
        sub_1D1728EBC(v108, v102);
        v104 = sub_1D171D4E0(v139);
        if ((v109 & 1) != (v110 & 1))
        {
          goto LABEL_134;
        }

        v48 = v83;
      }

      v4 = v137;
      if (v109)
      {
        v60 = (v103[7] + 32 * v104);
        __swift_destroy_boxed_opaque_existential_1(v60);
        sub_1D1742194(v140, v60);
      }

      else
      {
        v103[(v104 >> 6) + 8] |= 1 << v104;
        *(v103[6] + 4 * v104) = v139;
        sub_1D1742194(v140, (v103[7] + 32 * v104));
        v116 = v103[2];
        v81 = __OFADD__(v116, 1);
        v117 = v116 + 1;
        if (v81)
        {
          goto LABEL_125;
        }

        v103[2] = v117;
      }

      *(v101 + 8 * v90) = v103;
    }

    else
    {
      sub_1D18F49A8(&v141);
      v111 = sub_1D171D4E0(v139);
      if (v112)
      {
        v113 = v111;
        v114 = swift_isUniquelyReferenced_nonNull_native();
        v115 = *(v101 + 8 * v90);
        *(v101 + 8 * v90) = 0x8000000000000000;
        if (!v114)
        {
          sub_1D173946C();
        }

        sub_1D1742194((*(v115 + 56) + 32 * v113), v140);
        sub_1D1750920(v113, v115);
        *(v101 + 8 * v90) = v115;
      }

      else
      {
        memset(v140, 0, sizeof(v140));
      }

      sub_1D18F49A8(v140);
      v48 = v83;
      v4 = v137;
    }

    ++v59;
    sub_1D18F49A8(v143);
    v6 = sub_1D18F3798;
    v5 = sub_1D18F3768;
    if (v136 == v59)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
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
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  sub_1D1E690FC();
  __break(1u);
LABEL_133:
  sub_1D1E690FC();
  __break(1u);
LABEL_134:
  type metadata accessor for MTRAttributeIDType(0);
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D18F49A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D18F4A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44[3] = a5;
  v44[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
  *&v37 = a3;
  *(&v37 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v44, v43);
  sub_1D18C20AC(v43, &v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  v13 = swift_dynamicCast();
  if ((v13 & 1) == 0)
  {
    v41 = 0;
  }

  v42 = v13 ^ 1;
  sub_1D18C20AC(v43, &v37);
  if (v38)
  {
    sub_1D1742194(&v37, v40);
    if (v42)
    {
      (*(a6 + 24))(&v37, a5, a6);
      v14 = sub_1D1A38104(a1, &v37);
      v16 = v15;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v17 = sub_1D1E6709C();
      __swift_project_value_buffer(v17, qword_1EE07A0B0);
      sub_1D1741970(v40, v39);
      sub_1D17419CC(v44, &v37);

      v18 = sub_1D1E6707C();
      v19 = sub_1D1E6833C();

      if (!os_log_type_enabled(v18, v19))
      {

        __swift_destroy_boxed_opaque_existential_1(v39);
        __swift_destroy_boxed_opaque_existential_1(v40);
        sub_1D18F49A8(v43);
        __swift_destroy_boxed_opaque_existential_1(&v37);
        goto LABEL_12;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = v21;
      *v20 = 136446978;
      v22 = sub_1D1B1312C(v14, v16, &v36);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_1D1B1312C(0x3233746E4955, 0xE600000000000000, &v36);
      *(v20 + 22) = 2082;
      sub_1D1741970(v39, &v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v23 = sub_1D1E678BC();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1(v39);
      v26 = sub_1D1B1312C(v23, v25, &v36);

      *(v20 + 24) = v26;
      *(v20 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v37, v38);
      v27 = sub_1D1E68FAC();
      v29 = v28;
      __swift_destroy_boxed_opaque_existential_1(&v37);
      v30 = sub_1D1B1312C(v27, v29, &v36);

      *(v20 + 34) = v30;
      _os_log_impl(&dword_1D16EC000, v18, v19, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v20, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v40);
    v31 = v43;
  }

  else
  {
    sub_1D18F49A8(v43);
    v31 = &v37;
  }

  sub_1D18F49A8(v31);
LABEL_12:
  v32 = v41;
  v33 = v42;
  __swift_destroy_boxed_opaque_existential_1(v44);
  LOBYTE(v44[0]) = v33;
  return v32 | (v33 << 32);
}

uint64_t sub_1D18F4DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41[3] = a5;
  v41[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
  *&v35 = a3;
  *(&v35 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v41, v40);
  sub_1D18C20AC(v40, &v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A50, &unk_1D1E910D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39 = 0;
  }

  sub_1D18C20AC(v40, &v35);
  if (v36)
  {
    sub_1D1742194(&v35, v38);
    if (!v39)
    {
      (*(a6 + 24))(&v35, a5, a6);
      v13 = sub_1D1A38104(a1, &v35);
      v15 = v14;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v16 = sub_1D1E6709C();
      __swift_project_value_buffer(v16, qword_1EE07A0B0);
      sub_1D1741970(v38, v37);
      sub_1D17419CC(v41, &v35);

      v17 = sub_1D1E6707C();
      v18 = sub_1D1E6833C();

      if (!os_log_type_enabled(v17, v18))
      {

        __swift_destroy_boxed_opaque_existential_1(v37);
        __swift_destroy_boxed_opaque_existential_1(v38);
        sub_1D18F49A8(v40);
        __swift_destroy_boxed_opaque_existential_1(&v35);
        goto LABEL_12;
      }

      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136446978;
      v21 = sub_1D1B1312C(v13, v15, &v34);

      *(v19 + 4) = v21;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_1D1B1312C(0x49553C7961727241, 0xED00003E3233746ELL, &v34);
      *(v19 + 22) = 2082;
      sub_1D1741970(v37, &v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v22 = sub_1D1E678BC();
      v24 = v23;
      __swift_destroy_boxed_opaque_existential_1(v37);
      v25 = sub_1D1B1312C(v22, v24, &v34);

      *(v19 + 24) = v25;
      *(v19 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v35, v36);
      v26 = sub_1D1E68FAC();
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_1(&v35);
      v29 = sub_1D1B1312C(v26, v28, &v34);

      *(v19 + 34) = v29;
      _os_log_impl(&dword_1D16EC000, v17, v18, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v20, -1, -1);
      MEMORY[0x1D3893640](v19, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v38);
    v30 = v40;
  }

  else
  {
    sub_1D18F49A8(v40);
    v30 = &v35;
  }

  sub_1D18F49A8(v30);
LABEL_12:
  v31 = v39;
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v31;
}

BOOL sub_1D18F51E0(uint64_t a1, uint64_t a2, const char **a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = a3[1];
  v25[0] = *a3;
  v25[1] = v12;
  v17 = sub_1D18F5DF8(v11, v25, a4, a5, v13, v14, v15, v16, v25[0]);
  v18 = *(v17 + 16);
  v19 = 32;
  do
  {
    v20 = v18;
    if (v18-- == 0)
    {
      break;
    }

    v22 = *(v17 + v19);
    v19 += 4;
  }

  while (v22 != v8);
  v23 = v20 != 0;

  (*(v9 + 8))(v11, a4);
  return v23;
}

unint64_t AttributeValueSet.clusterFeatureMap(at:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);
  v5 = sub_1D18F5E08(v4, v1, v2, v3);
  return v5 | ((HIDWORD(v5) & 1) << 32);
}

uint64_t sub_1D18F5448(void *a1, uint64_t a2, const char *a3, ...)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  return sub_1D18F5F10(v8, v3, v6, v7, a2, a3);
}

uint64_t AttributeValueSet.primaryDeviceType.getter@<X0>(char *a1@<X8>)
{

  v1 = DescriptorClusterDecoder.endpointIDs.getter();

  result = sub_1D18C01E0(v2, v1);
  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      v4 = v11;
      do
      {
LABEL_8:

        v12 = DescriptorClusterDecoder.deviceTypes.getter();

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D177E688(0, v10[2] + 1, 1, v10);
          v10 = result;
        }

        v14 = v10[2];
        v13 = v10[3];
        if (v14 >= v13 >> 1)
        {
          result = sub_1D177E688((v13 > 1), v14 + 1, 1, v10);
          v10 = result;
        }

        v8 &= v8 - 1;
        v10[2] = v14 + 1;
        v10[v14 + 4] = v12;
      }

      while (v8);
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  v16 = v10[2];
  if (v16)
  {
    v17 = 0;
    while (v17 < v10[2])
    {
      v18 = v17 + 1;

      result = sub_1D17A4778(v19);
      v17 = v18;
      if (v16 == v18)
      {
        v15 = v22;
        goto LABEL_19;
      }
    }

    goto LABEL_23;
  }

LABEL_19:

  v20 = sub_1D17846F8(v15);

  static MatterDeviceType.primaryDeviceType(for:)(v20, a1);
}

Swift::String_optional __swiftcall AttributeValueSet.defaultName(in:)(Swift::UInt16 in)
{
  v4 = *v1;
  v3 = v1[1];
  v21 = *v1;
  v22 = v3;
  v23 = in;
  v24 = 0;
  v25 = 0;
  v26 = 0;

  v5 = DescriptorClusterDecoder.availableClusterKinds.getter();
  v6 = sub_1D17198DC(7, v5);

  if (!v6)
  {
    goto LABEL_10;
  }

  v25 = &type metadata for BasicClusterPath;
  v26 = sub_1D18F6128();
  LOWORD(v21) = in;
  BYTE2(v21) = 7;
  AttributeValueSet.value(for:in:)(0, &v21, &v19);
  __swift_destroy_boxed_opaque_existential_1(&v21);
  if (!v20)
  {
    sub_1D18F49A8(&v19);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A68, &qword_1D1E81F90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v21 = v4;
    v22 = v3;
    v23 = in;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v8 = DescriptorClusterDecoder.availableClusterKinds.getter();
    v9 = sub_1D17198DC(8, v8);

    if (!v9)
    {
      goto LABEL_19;
    }

    v25 = &type metadata for BasicClusterPath;
    v26 = sub_1D18F6128();
    LOWORD(v21) = in;
    BYTE2(v21) = 8;
    AttributeValueSet.value(for:in:)(0, &v21, &v19);
    __swift_destroy_boxed_opaque_existential_1(&v21);
    if (!v20)
    {

      sub_1D18F49A8(&v19);
      goto LABEL_20;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A60, &qword_1D1E81F88);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_19:

LABEL_20:
      v11 = 0;
      v10 = 0;
      goto LABEL_30;
    }

    v7 = v21;
    if (v21 >> 62)
    {
      v11 = sub_1D1E6873C();
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v11 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_30;
      }

      goto LABEL_17;
    }

LABEL_28:
    v12 = MEMORY[0x1D3891EF0](0, v7);
    goto LABEL_18;
  }

  v7 = v21;
  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

  if (!sub_1D1E6873C())
  {
LABEL_25:

    goto LABEL_19;
  }

LABEL_6:
  if ((v7 & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_17:
  v12 = *(v7 + 32);
LABEL_18:
  v13 = v12;

  v14 = [v13 value];

  v15 = sub_1D1E6781C();
  v17 = v16;

  v10 = v17;
  v11 = v15;
LABEL_30:
  result.value._object = v10;
  result.value._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_1D18F5A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClusterPath(0);
  v41[3] = v8;
  v41[4] = sub_1D18F617C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  sub_1D18F61D4(a2, boxed_opaque_existential_1);
  *&v34 = a3;
  *(&v34 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v41, v40);
  sub_1D18C20AC(v40, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  v10 = swift_dynamicCast();
  if ((v10 & 1) == 0)
  {
    v38 = 0;
  }

  v39 = v10 ^ 1;
  sub_1D18C20AC(v40, &v34);
  if (v35)
  {
    sub_1D1742194(&v34, v37);
    if (v39)
    {
      LOBYTE(v34) = *(boxed_opaque_existential_1 + *(v8 + 20));
      v11 = sub_1D1A38104(a1, &v34);
      v13 = v12;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v14 = sub_1D1E6709C();
      __swift_project_value_buffer(v14, qword_1EE07A0B0);
      sub_1D1741970(v37, v36);
      sub_1D17419CC(v41, &v34);

      v15 = sub_1D1E6707C();
      v16 = sub_1D1E6833C();

      if (!os_log_type_enabled(v15, v16))
      {

        __swift_destroy_boxed_opaque_existential_1(v36);
        __swift_destroy_boxed_opaque_existential_1(v37);
        sub_1D18F49A8(v40);
        __swift_destroy_boxed_opaque_existential_1(&v34);
        goto LABEL_12;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v17 = 136446978;
      v19 = sub_1D1B1312C(v11, v13, &v33);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_1D1B1312C(0x3631746E4955, 0xE600000000000000, &v33);
      *(v17 + 22) = 2082;
      sub_1D1741970(v36, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v20 = sub_1D1E678BC();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v36);
      v23 = sub_1D1B1312C(v20, v22, &v33);

      *(v17 + 24) = v23;
      *(v17 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v34, v35);
      v24 = ClusterPath.description.getter();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_1(&v34);
      v27 = sub_1D1B1312C(v24, v26, &v33);

      *(v17 + 34) = v27;
      _os_log_impl(&dword_1D16EC000, v15, v16, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v17, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v18, -1, -1);
      MEMORY[0x1D3893640](v17, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
    v28 = v40;
  }

  else
  {
    sub_1D18F49A8(v40);
    v28 = &v34;
  }

  sub_1D18F49A8(v28);
LABEL_12:
  v29 = v38;
  v30 = v39;
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v29 | (v30 << 16);
}

unint64_t sub_1D18F5E08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = sub_1D18F4A10(65532, v9, *a2, a2[1], a3, a4);
  (*(v7 + 8))(v9, a3);
  return v10 | ((HIDWORD(v10) & 1) << 32);
}

uint64_t sub_1D18F5F10(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, ...)
{
  v27[3] = a3;
  v27[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v13 = sub_1D18F4DF0(a5, boxed_opaque_existential_1, *a2, a2[1], a3, a4);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v15 = sub_1D1E6709C();
    __swift_project_value_buffer(v15, qword_1EE07A0B0);
    sub_1D17419CC(v27, v26);
    v16 = sub_1D1E6707C();
    v17 = sub_1D1E6833C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315138;
      __swift_project_boxed_opaque_existential_1(v26, v26[3]);
      v20 = sub_1D1E68FAC();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v26);
      v23 = sub_1D1B1312C(v20, v22, &v25);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1D16EC000, v16, v17, a6, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1D3893640](v19, -1, -1);
      MEMORY[0x1D3893640](v18, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    v14 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v14;
}

unint64_t sub_1D18F6128()
{
  result = qword_1EC646A58;
  if (!qword_1EC646A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646A58);
  }

  return result;
}

unint64_t sub_1D18F617C()
{
  result = qword_1EC646A70;
  if (!qword_1EC646A70)
  {
    type metadata accessor for ClusterPath(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646A70);
  }

  return result;
}

uint64_t sub_1D18F61D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClusterPath(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MatterClusterDecoder.value(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  (*(a3 + 8))(&v11, a2, a3);
  v8 = (*(a3 + 16))(a2, a3);
  (*(a3 + 24))(v10 + 2, a2, a3);
  v10[3] = &type metadata for BasicClusterPath;
  v10[4] = sub_1D18F6128();
  LOWORD(v10[0]) = v8;
  AttributeValueSet.value(for:in:)(a1, v10, a4);
  __swift_destroy_boxed_opaque_existential_1(v10);
}

{
  (*(a3 + 8))(&v11, a2, a3);
  v8 = (*(a3 + 16))(a2, a3);
  (*(a3 + 24))(v10 + 2, a2, a3);
  v10[3] = &type metadata for BasicClusterPath;
  v10[4] = sub_1D18F6128();
  LOWORD(v10[0]) = v8;
  AttributeValueSet.value(for:in:)(a1, v10, a4);
  __swift_destroy_boxed_opaque_existential_1(v10);
}

unint64_t MatterClusterDecoder.clusterPath.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = (*(a2 + 16))();
  (*(v3 + 24))(&v8, a1, v3);
  LOBYTE(v3) = v8;
  *(a3 + 24) = &type metadata for BasicClusterPath;
  result = sub_1D18F6128();
  *(a3 + 32) = result;
  *a3 = v6;
  *(a3 + 2) = v3;
  return result;
}

uint64_t MatterClusterDecoder.value(for:in:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  (*(a4 + 8))(&v9, a3, a4);
  AttributeValueSet.value(for:in:)(a1, a2, a5);
}

uint64_t MatterClusterDecoder.supportedAttributes.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(v24);
  v23[0] = v24[0];
  v23[1] = v24[1];
  v4 = (*(a2 + 16))(a1, a2);
  (*(a2 + 24))(v22 + 2, a1, a2);
  v22[3] = &type metadata for BasicClusterPath;
  v5 = sub_1D18F6128();
  v22[4] = v5;
  LOWORD(v22[0]) = v4;
  v6 = __swift_project_boxed_opaque_existential_1(v22, &type metadata for BasicClusterPath);
  v11 = sub_1D18F5DF8(v6, v23, &type metadata for BasicClusterPath, v5, v7, v8, v9, v10, v21);

  __swift_destroy_boxed_opaque_existential_1(v22);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = (v11 + 32);
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      v16 = *v13++;
      v15 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1D177DE70(0, *(v14 + 2) + 1, 1, v14);
      }

      v18 = *(v14 + 2);
      v17 = *(v14 + 3);
      if (v18 >= v17 >> 1)
      {
        v14 = sub_1D177DE70((v17 > 1), v18 + 1, 1, v14);
      }

      *(v14 + 2) = v18 + 1;
      *&v14[4 * v18 + 32] = v15;
      --v12;
    }

    while (v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v19 = sub_1D17852A8(v14);

  return v19;
}

uint64_t MatterClusterDecoder.supports(attribute:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  (*(a3 + 8))(v12, a2, a3);
  v11[0] = v12[0];
  v11[1] = v12[1];
  v6 = (*(v3 + 16))(a2, v3);
  (*(v3 + 24))(v10 + 2, a2, v3);
  v10[3] = &type metadata for BasicClusterPath;
  v7 = sub_1D18F6128();
  v10[4] = v7;
  LOWORD(v10[0]) = v6;
  v8 = __swift_project_boxed_opaque_existential_1(v10, &type metadata for BasicClusterPath);
  LOBYTE(v3) = sub_1D18F51E0(a1, v8, v11, &type metadata for BasicClusterPath, v7);

  __swift_destroy_boxed_opaque_existential_1(v10);
  return v3 & 1;
}

Swift::Bool __swiftcall MatterClusterDecoder.supports(attribute:)(Swift::UInt32 attribute)
{
  v3 = v2;
  v4 = v1;
  (*(v2 + 8))(v26);
  v7 = v26[0];
  v6 = v26[1];
  v8 = (*(v3 + 16))(v4, v3);
  (*(v3 + 24))(v25 + 2, v4, v3);
  v25[3] = &type metadata for BasicClusterPath;
  v9 = sub_1D18F6128();
  v25[4] = v9;
  LOWORD(v25[0]) = v8;
  v24[0] = v7;
  v24[1] = v6;
  v10 = __swift_project_boxed_opaque_existential_1(v25, &type metadata for BasicClusterPath);
  v15 = sub_1D18F5DF8(v10, v24, &type metadata for BasicClusterPath, v9, v11, v12, v13, v14, v23);
  v16 = *(v15 + 16);
  v17 = 32;
  do
  {
    v18 = v16;
    if (v16-- == 0)
    {
      break;
    }

    v20 = *(v15 + v17);
    v17 += 4;
  }

  while (v20 != attribute);
  v21 = v18 != 0;

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v21;
}

uint64_t AttributeValueSet.descriptorCluster(for:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v3 = v2[1];
  if ((a1 & 0x10000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1;
  }

  *(a2 + 18) = 0;
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
}

char *DescriptorClusterDecoder.endpointIDs.getter()
{
  v1 = *(v0 + 16);
  v17[0] = *v0;
  v17[1] = v1;
  v18 = *(v0 + 32);
  v2 = sub_1D18F766C(3, v1 | (BYTE2(v1) << 16), v17, &qword_1EC646A88, &qword_1D1E82058);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_19:

    v16 = sub_1D1784650(v3);

    return v16;
  }

  v5 = sub_1D1E6873C();
  if (!v5)
  {
    goto LABEL_19;
  }

LABEL_6:
  result = sub_1D178D614(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v5; ++i)
      {
        v8 = [MEMORY[0x1D3891EF0](i v4)];
        swift_unknownObjectRelease();
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1D178D614((v9 > 1), v10 + 1, 1);
        }

        *(v3 + 16) = v10 + 1;
        *(v3 + 2 * v10 + 32) = v8;
      }
    }

    else
    {
      v11 = 32;
      do
      {
        v12 = [*(v4 + v11) unsignedShortValue];
        v14 = *(v3 + 16);
        v13 = *(v3 + 24);
        if (v14 >= v13 >> 1)
        {
          v15 = v12;
          sub_1D178D614((v13 > 1), v14 + 1, 1);
          v12 = v15;
        }

        *(v3 + 16) = v14 + 1;
        *(v3 + 2 * v14 + 32) = v12;
        v11 += 8;
        --v5;
      }

      while (v5);
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t DescriptorClusterDecoder.deviceTypes.getter()
{
  v1 = *(v0 + 16);
  v35[0] = *v0;
  v35[1] = v1;
  v36 = *(v0 + 32);
  v2 = sub_1D18F766C(0, v1 | (BYTE2(v1) << 16), v35, &qword_1EC646A80, &unk_1D1E82048);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!(v3 >> 62))
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_29:
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

LABEL_28:
  v5 = sub_1D1E6873C();
  if (!v5)
  {
    goto LABEL_29;
  }

LABEL_6:
  v6 = 0;
  v33 = v3 & 0xC000000000000001;
  v7 = MEMORY[0x1E69E7CC0];
  v31 = v4;
  v32 = v3;
  do
  {
    v30 = v7;
    v8 = v6;
    while (1)
    {
      if (v33)
      {
        v9 = MEMORY[0x1D3891EF0](v8, v3);
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_27;
        }

        v9 = *(v3 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v11 = [v9 deviceType];
      v12 = [v11 unsignedIntValue];

      MatterDeviceType.init(rawValue:)(v12);
      v13 = v34;
      if (v34 != 28)
      {
        break;
      }

      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v14 = sub_1D1E6709C();
      __swift_project_value_buffer(v14, qword_1EE07A0B0);
      v15 = v10;
      v16 = sub_1D1E6707C();
      v17 = sub_1D1E6833C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v34 = v19;
        *v18 = 136315138;
        sub_1D18F7B2C();
        v15 = v15;
        v20 = sub_1D1E678BC();
        v22 = v5;
        v23 = sub_1D1B1312C(v20, v21, &v34);

        *(v18 + 4) = v23;
        v5 = v22;
        _os_log_impl(&dword_1D16EC000, v16, v17, "(MatterDescriptorCluster): deviceType is nil. Are we missing a definition? (%s)", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        v24 = v19;
        v4 = v31;
        v3 = v32;
        MEMORY[0x1D3893640](v24, -1, -1);
        MEMORY[0x1D3893640](v18, -1, -1);
      }

      ++v8;
      if (v6 == v5)
      {
        v7 = v30;
        goto LABEL_30;
      }
    }

    v7 = v30;
    v25 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D177E1AC(0, *(v30 + 2) + 1, 1, v30);
    }

    v27 = *(v7 + 2);
    v26 = *(v7 + 3);
    if (v27 >= v26 >> 1)
    {
      v7 = sub_1D177E1AC((v26 > 1), v27 + 1, 1, v7);
    }

    *(v7 + 2) = v27 + 1;
    v7[v27 + 32] = v13;
    v5 = v25;
  }

  while (v6 != v25);
LABEL_30:

  v28 = sub_1D17846F8(v7);

  return v28;
}

char DescriptorClusterDecoder.availableClusterKinds.getter()
{
  v0 = DescriptorClusterDecoder.availableClusterIDs.getter();
  v1 = v0;
  v2 = v0 + 56;
  v3 = 1 << v0[32];
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v0 + 7);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      LOBYTE(v7) = ClusterKind.init(rawValue:)(*(*(v1 + 6) + ((v8 << 8) | (4 * v10))));
      if (v20 != 30)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
    if ((v7 & 1) == 0)
    {
      v7 = sub_1D177DE5C(0, *(v9 + 16) + 1, 1, v9);
      v9 = v7;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v14 = v12 + 1;
    if (v12 >= v13 >> 1)
    {
      v19 = v12 + 1;
      v15 = v9;
      v16 = *(v9 + 16);
      v7 = sub_1D177DE5C((v13 > 1), v12 + 1, 1, v15);
      v12 = v16;
      v14 = v19;
      v9 = v7;
    }

    *(v9 + 16) = v14;
    *(v9 + v12 + 32) = v20;
  }

  while (v5);
LABEL_6:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      v17 = sub_1D17846C4(v9);

      LOBYTE(v7) = v17;
      return v7;
    }

    v5 = *&v2[8 * v11];
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_4;
    }
  }

  __break(1u);
  return v7;
}

uint64_t DescriptorClusterDecoder.valueSet.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t *DescriptorClusterDecoder.init(valueSet:endpointID:)@<X0>(uint64_t *result@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = result[1];
  *(a3 + 18) = 0;
  *a3 = v3;
  *(a3 + 8) = v4;
  *(a3 + 16) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

uint64_t sub_1D18F70B4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t DescriptorClusterDecoder.value<A>(for:in:as:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (*(v5 + 24))
  {
    v10 = *(v5 + 32);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    MatterDevice.readValue(for:in:)(a1, a2, ObjectType, v10);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
    v12 = swift_dynamicCast();
    return (*(*(a4 - 8) + 56))(a5, v12 ^ 1u, 1, a4);
  }

  else
  {

    AttributeValueSet.value<A>(for:in:as:)(a1, a2, a4, a5);
  }
}

char *DescriptorClusterDecoder.availableClusterIDs.getter()
{
  v1 = *(v0 + 16);
  v17[0] = *v0;
  v17[1] = v1;
  v18 = *(v0 + 32);
  v2 = sub_1D18F766C(1, v1 | (BYTE2(v1) << 16), v17, &qword_1EC646A88, &qword_1D1E82058);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_19:

    v16 = sub_1D17845DC(v3);

    return v16;
  }

  v5 = sub_1D1E6873C();
  if (!v5)
  {
    goto LABEL_19;
  }

LABEL_6:
  result = sub_1D178D5B4(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v5; ++i)
      {
        v8 = [MEMORY[0x1D3891EF0](i v4)];
        swift_unknownObjectRelease();
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1D178D5B4((v9 > 1), v10 + 1, 1);
        }

        *(v3 + 16) = v10 + 1;
        *(v3 + 4 * v10 + 32) = v8;
      }
    }

    else
    {
      v11 = 32;
      do
      {
        v12 = [*(v4 + v11) unsignedIntValue];
        v14 = *(v3 + 16);
        v13 = *(v3 + 24);
        if (v14 >= v13 >> 1)
        {
          v15 = v12;
          sub_1D178D5B4((v13 > 1), v14 + 1, 1);
          v12 = v15;
        }

        *(v3 + 16) = v14 + 1;
        *(v3 + 4 * v14 + 32) = v12;
        v11 += 8;
        --v5;
      }

      while (v5);
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t MatterDevice.descriptorCluster(for:)@<X0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643378, &qword_1D1E717E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D1E739C0;
  if ((a1 & 0x10000) != 0)
  {
    LOWORD(a1) = 0;
  }

  *(v6 + 32) = a1;
  *(v6 + 34) = 0;
  *(v6 + 36) = 0;
  *(v6 + 40) = 1;
  (*(a2 + 120))(v10);

  v8 = v10[0];
  v9 = v10[1];
  *(a3 + 18) = 0;
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 16) = a1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

uint64_t MatterDevice.rootDescriptorCluster.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643378, &qword_1D1E717E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D1E739C0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 1;
  (*(a1 + 120))(v8);

  v6 = v8[0];
  v7 = v8[1];
  *(a2 + 18) = 0;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

char *MatterDevice.allEndpointIDs.getter(uint64_t a1, uint64_t a2)
{
  MatterDevice.rootDescriptorCluster.getter(a2, &v4);
  v2 = DescriptorClusterDecoder.endpointIDs.getter();

  swift_unknownObjectRelease();
  return v2;
}

BOOL MatterDevice.supportsDiagnosticsLogs.getter(uint64_t a1, uint64_t a2)
{
  MatterDevice.rootDescriptorCluster.getter(a2, &v5);
  v2 = DescriptorClusterDecoder.availableClusterKinds.getter();

  swift_unknownObjectRelease();
  v3 = sub_1D17198DC(4, v2);

  return v3;
}

uint64_t sub_1D18F766C(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = HIWORD(a2);
  v16[3] = &type metadata for BasicClusterPath;
  v16[4] = sub_1D18F6128();
  LOWORD(v16[0]) = a2;
  BYTE2(v16[0]) = v10;
  if (a3[3])
  {
    v11 = a3[4];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    MatterDevice.readValue(for:in:)(a1, v16, ObjectType, v11);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    if (swift_dynamicCast())
    {
      v13 = v15;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = sub_1D18F778C(a1, a2 & 0xFFFFFF, *a3, a3[1], a4, a5);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

uint64_t sub_1D18F778C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = a2;
  v12 = HIWORD(a2);
  v44[3] = &type metadata for BasicClusterPath;
  v44[4] = sub_1D18F6128();
  LOWORD(v44[0]) = v10;
  BYTE2(v44[0]) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  *&v38 = a3;
  *(&v38 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v44, v43);
  sub_1D18C20AC(v43, &v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v42 = 0;
  }

  sub_1D18C20AC(v43, &v38);
  if (v39)
  {
    sub_1D1742194(&v38, v41);
    if (!v42)
    {
      LOBYTE(v38) = BYTE2(v44[0]);
      v13 = sub_1D1A38104(a1, &v38);
      v15 = v14;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v16 = sub_1D1E6709C();
      __swift_project_value_buffer(v16, qword_1EE07A0B0);
      sub_1D1741970(v41, v40);
      sub_1D17419CC(v44, &v38);

      v17 = sub_1D1E6707C();
      v18 = sub_1D1E6833C();

      if (!os_log_type_enabled(v17, v18))
      {

        __swift_destroy_boxed_opaque_existential_1(v40);
        __swift_destroy_boxed_opaque_existential_1(v41);
        sub_1D18F49A8(v43);
        __swift_destroy_boxed_opaque_existential_1(&v38);
        goto LABEL_12;
      }

      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136446978;
      v21 = sub_1D1B1312C(v13, v15, &v37);

      *(v19 + 4) = v21;
      *(v19 + 12) = 2082;
      v22 = sub_1D1E6940C();
      v24 = sub_1D1B1312C(v22, v23, &v37);

      *(v19 + 14) = v24;
      *(v19 + 22) = 2082;
      sub_1D1741970(v40, &v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v25 = sub_1D1E678BC();
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_1(v40);
      v28 = sub_1D1B1312C(v25, v27, &v37);

      *(v19 + 24) = v28;
      *(v19 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v38, v39);
      v29 = BasicClusterPath.description.getter();
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_1(&v38);
      v32 = sub_1D1B1312C(v29, v31, &v37);

      *(v19 + 34) = v32;
      _os_log_impl(&dword_1D16EC000, v17, v18, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v20, -1, -1);
      MEMORY[0x1D3893640](v19, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v41);
    v33 = v43;
  }

  else
  {
    sub_1D18F49A8(v43);
    v33 = &v38;
  }

  sub_1D18F49A8(v33);
LABEL_12:
  v34 = v42;
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v34;
}

unint64_t sub_1D18F7B2C()
{
  result = qword_1EC646A78;
  if (!qword_1EC646A78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC646A78);
  }

  return result;
}

uint64_t sub_1D18F7B78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D18F7BC0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_1D18F7C28@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 path];
  v7 = [a1 error];
  if ([a1 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v16[0] = v12;
  v16[1] = v13;
  if (*(&v13 + 1))
  {
    v8 = __swift_project_boxed_opaque_existential_1(v16, *(&v13 + 1));
    *(&v15 + 1) = *(&v13 + 1);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
    (*(*(*(&v13 + 1) - 8) + 16))(boxed_opaque_existential_1, v8, *(&v13 + 1));

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {

    sub_1D1741A30(v16, &qword_1EC649700, &qword_1D1E6E910);
    v14 = 0u;
    v15 = 0u;
  }

  result = v14;
  v11 = v15;
  *a3 = a2;
  *(a3 + 8) = v6;
  *(a3 + 16) = result;
  *(a3 + 32) = v11;
  *(a3 + 48) = v7;
  return result;
}

double sub_1D18F7D84@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D1E6781C();
  if (!a1[2])
  {
    goto LABEL_9;
  }

  v10 = sub_1D171D2F0(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_10:

    sub_1D1741A30(a3, &qword_1EC649700, &qword_1D1E6E910);
LABEL_11:
    *(a4 + 48) = 0;
    result = 0.0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    return result;
  }

  sub_1D1741970(a1[7] + 32 * v10, &v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D1741A30(a3, &qword_1EC649700, &qword_1D1E6E910);
LABEL_13:

    goto LABEL_11;
  }

  v13 = sub_1D1E6781C();
  if (!a1[2])
  {

    goto LABEL_9;
  }

  v15 = sub_1D171D2F0(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  sub_1D1741970(a1[7] + 32 * v15, &v57);
  sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D1741A30(a3, &qword_1EC649700, &qword_1D1E6E910);

    goto LABEL_13;
  }

  v18 = v55;
  sub_1D18F847C(v55, v18, a3, &v55);

  v19 = v56;
  if (v56)
  {
    v20 = __swift_project_boxed_opaque_existential_1(&v55, v56);
    *(&v58 + 1) = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v57);
    (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v20, v19);
    __swift_destroy_boxed_opaque_existential_1(&v55);
  }

  else
  {
    sub_1D1741A30(&v55, &qword_1EC649700, &qword_1D1E6E910);
    v57 = 0u;
    v58 = 0u;
  }

  v59 = v57;
  v60 = v58;
  v23 = sub_1D1E6781C();
  if (!a1[2])
  {

    goto LABEL_26;
  }

  v25 = sub_1D171D2F0(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_26:

    goto LABEL_27;
  }

  sub_1D1741970(a1[7] + 32 * v25, &v57);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:

    goto LABEL_28;
  }

  v28 = v55;
  sub_1D1741B10(0, &qword_1EC645B90, 0x1E696ACD0);
  sub_1D1741B10(0, &qword_1EC646A90, 0x1E696ABC0);
  v29 = sub_1D1E6836C();
  v38 = v29;
  if (v29)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v40 = sub_1D1E6709C();
    __swift_project_value_buffer(v40, qword_1EE07A0B0);
    v54 = v18;
    v53 = v38;
    v41 = sub_1D1E6707C();
    v42 = sub_1D1E6833C();

    if (os_log_type_enabled(v41, v42))
    {
      log = v41;
      v43 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v57 = v52;
      *v43 = 136446466;
      *&v55 = v53;
      v44 = v53;
      v45 = sub_1D1E678BC();
      v47 = sub_1D1B1312C(v45, v46, &v57);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2082;
      *&v55 = v54;
      v48 = sub_1D1E678BC();
      v50 = sub_1D1B1312C(v48, v49, &v57);

      *(v43 + 14) = v50;
      _os_log_impl(&dword_1D16EC000, log, v42, "Manually decoded error: (%{public}s), path: (%{public}s)", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v52, -1, -1);
      MEMORY[0x1D3893640](v43, -1, -1);

      sub_1D174E7C4(v28, *(&v28 + 1));
    }

    else
    {

      sub_1D174E7C4(v28, *(&v28 + 1));
    }

    sub_1D1741A30(a3, &qword_1EC649700, &qword_1D1E6E910);
    goto LABEL_29;
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v30 = sub_1D1E6709C();
  __swift_project_value_buffer(v30, qword_1EE07A0B0);
  sub_1D1741854(v28, *(&v28 + 1));
  v31 = sub_1D1E6707C();
  v32 = sub_1D1E6833C();
  sub_1D174E7C4(v28, *(&v28 + 1));
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v55 = v34;
    *v33 = 136446210;
    v57 = v28;
    sub_1D1741854(v28, *(&v28 + 1));
    v35 = sub_1D1E678BC();
    v37 = sub_1D1B1312C(v35, v36, &v55);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_1D16EC000, v31, v32, "Report contained error data but failed to decode: %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1D3893640](v34, -1, -1);
    MEMORY[0x1D3893640](v33, -1, -1);

    sub_1D174E7C4(v28, *(&v28 + 1));
  }

  else
  {
    sub_1D174E7C4(v28, *(&v28 + 1));
  }

LABEL_28:
  sub_1D1741A30(a3, &qword_1EC649700, &qword_1D1E6E910);
  v38 = 0;
LABEL_29:
  *a4 = a2;
  *(a4 + 8) = v18;
  result = *&v59;
  v39 = v60;
  *(a4 + 16) = v59;
  *(a4 + 32) = v39;
  *(a4 + 48) = v38;
  return result;
}

double sub_1D18F847C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  sub_1D1741C08(a3, &v17, &qword_1EC649700, &qword_1D1E6E910);
  if (v18)
  {
    goto LABEL_2;
  }

  sub_1D1741A30(&v17, &qword_1EC649700, &qword_1D1E6E910);
  v8 = [a2 attribute];
  v9 = [v8 unsignedIntValue];

  v10 = [a2 cluster];
  LODWORD(v8) = [v10 unsignedIntValue];

  ClusterKind.init(rawValue:)(v8);
  v11 = v19[0];
  if (LOBYTE(v19[0]) != 30 && sub_1D19B5758(v9, v19))
  {
    LOBYTE(v19[0]) = v11;
    sub_1D19B0CEC(a1, &v17, v9);
    if (v18)
    {
LABEL_2:
      sub_1D16EEE38(&v17, v19);
      sub_1D16EEE38(v19, a4);
      return result;
    }

    sub_1D1741A30(&v17, &qword_1EC649700, &qword_1D1E6E910);
  }

  v12 = sub_1D1E6781C();
  if (*(a1 + 16))
  {
    v14 = sub_1D171D2F0(v12, v13);
    v16 = v15;

    if (v16)
    {
      sub_1D1741970(*(a1 + 56) + 32 * v14, a4);
      return result;
    }
  }

  else
  {
  }

  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

double sub_1D18F8630@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16) && (v6 = sub_1D171D2F0(0xD000000000000011, 0x80000001D1EBE020), (v7 & 1) != 0))
  {
    sub_1D1741970(*(a1 + 56) + 32 * v6, &v14);
    sub_1D1741970(&v14, v13);

    sub_1D18F7D84(v8, a2, v13, a3);
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    v10 = objc_allocWithZone(MEMORY[0x1E696F578]);

    v12 = sub_1D1A10510(v11);

    *&result = sub_1D18F7C28(v12, a2, a3).n128_u64[0];
  }

  return result;
}

uint64_t MTRAttributePath.attributeID.getter()
{
  v1 = [v0 attribute];
  v2 = [v1 unsignedIntValue];

  return v2;
}

HomeDataModel::ClusterKind_optional MTRAttributePath.clusterKind.getter()
{
  v1 = [v0 cluster];
  v2 = [v1 unsignedIntValue];

  return ClusterKind.init(rawValue:)(v2);
}

uint64_t sub_1D18F8A98()
{
  v1 = v0;
  v2 = *(v0 + 8);
  v3 = [v2 endpoint];
  v4 = [v3 unsignedIntValue];

  v5 = [v2 cluster];
  v6 = [v5 unsignedIntValue];

  ClusterKind.init(rawValue:)(v6);
  v7 = [v2 attribute];
  v8 = [v7 unsignedIntValue];

  if (LOBYTE(v29[0]) == 30)
  {
    v9 = [v2 cluster];
    [v9 unsignedIntValue];

    v10 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v10);

    v12 = 0x2D6E776F6E6B6E75;
    v11 = 0xE800000000000000;
    *&v29[0] = 0x2D6E776F6E6B6E75;
    *(&v29[0] + 1) = 0xE800000000000000;
    v13 = [v2 attribute];
    v14 = [v13 unsignedIntValue];

    LODWORD(v27) = v14;
    v15 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v15);

    v17 = 0x2D6E776F6E6B6E75;
    v16 = 0xE800000000000000;
    v18 = *(v1 + 48);
    if (v18)
    {
LABEL_3:
      *&v29[0] = 0;
      *(&v29[0] + 1) = 0xE000000000000000;
      v19 = v18;
      v20 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v20);

      MEMORY[0x1D3890F70](46, 0xE100000000000000);
      MEMORY[0x1D3890F70](v12, v11);

      MEMORY[0x1D3890F70](46, 0xE100000000000000);
      MEMORY[0x1D3890F70](v17, v16);

      MEMORY[0x1D3890F70](540945696, 0xE400000000000000);
      *&v27 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
      sub_1D1E68ABC();

      return *&v29[0];
    }
  }

  else
  {
    v12 = sub_1D1E6789C();
    v11 = v22;
    v17 = sub_1D1A38104(v8, v29);
    v16 = v23;
    v18 = *(v1 + 48);
    if (v18)
    {
      goto LABEL_3;
    }
  }

  sub_1D1741C08(v1 + 16, &v27, &qword_1EC645D58, &unk_1D1E7E530);
  if (!v28)
  {
    sub_1D1741A30(&v27, &qword_1EC645D58, &unk_1D1E7E530);
    LODWORD(v27) = v4;
    *&v29[0] = sub_1D1E68FAC();
    *(&v29[0] + 1) = v26;
    MEMORY[0x1D3890F70](46, 0xE100000000000000);
    MEMORY[0x1D3890F70](v12, v11);

    MEMORY[0x1D3890F70](46, 0xE100000000000000);
    MEMORY[0x1D3890F70](v17, v16);

    MEMORY[0x1D3890F70](0x7974706D6520, 0xE600000000000000);
    return *&v29[0];
  }

  sub_1D16EEE38(&v27, v29);
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  v24 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v24);

  MEMORY[0x1D3890F70](46, 0xE100000000000000);
  MEMORY[0x1D3890F70](v12, v11);

  MEMORY[0x1D3890F70](46, 0xE100000000000000);
  MEMORY[0x1D3890F70](v17, v16);

  MEMORY[0x1D3890F70](2112800, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  sub_1D1E68ABC();
  v25 = v27;
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v25;
}

uint64_t get_enum_tag_for_layout_string_s8Sendable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D18F8F8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D18F8FD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void ActionCommand.init(command:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 accessory];
  v5 = sub_1D1E682DC();
  v7 = v6;

  if ((v7 & 1) != 0 || (v8 = [a1 clusterID], v9 = objc_msgSend(v8, sel_unsignedIntValue), v8, ClusterKind.init(rawValue:)(v9), LOBYTE(v46[0]) == 30) || (v10 = objc_msgSend(a1, sel_expectedValues)) == 0)
  {
    type metadata accessor for ActionCommand.Error(0);
    sub_1D18FA678(&qword_1EC6434B0, type metadata accessor for ActionCommand.Error, &protocol conformance descriptor for ActionCommand.Error);
    swift_allocError();
    *v19 = [a1 clusterID];
LABEL_7:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return;
  }

  v11 = v10;
  v36 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v12 = sub_1D1E67C1C();

  v13 = [a1 commandID];
  v14 = [v13 unsignedIntValue];

  v15 = sub_1D18F96EC(v12, &unk_1EC64A340, &qword_1D1E71800);

  v16.value._rawValue = [a1 commandFields];
  if (v16.value._rawValue)
  {
    rawValue = v16.value._rawValue;
    v18 = sub_1D1E675FC();
  }

  else
  {
    v18 = 0;
  }

  v16.value._rawValue = v18;
  MatterCommandFields.init(commandFields:)(v16);
  if (LOBYTE(v46[0]) - 24 >= 4)
  {
    if (LOBYTE(v46[0]) == 11)
    {
      v40 = v15;
      v20 = v14;
      v35 = a2;
      v21 = &type metadata for StaticOnOffCluster.Command;
      v22 = sub_1D18FA3A8();
    }

    else
    {
      if (LOBYTE(v46[0]) != 17)
      {

        goto LABEL_20;
      }

      v40 = v15;
      v20 = v14;
      v35 = a2;
      v21 = &type metadata for StaticColorControlCluster.Command;
      v22 = sub_1D18FA3FC();
    }
  }

  else
  {
    v40 = v15;
    v20 = v14;
    v35 = a2;
    v21 = &type metadata for StaticRVCClusterGroup.Command;
    v22 = sub_1D18FA450();
  }

  v23 = v22;
  v42 = v46[0];
  v41 = v47;
  v24 = *(v22 + 16);
  v38 = sub_1D1E685AC();
  v39 = &v35;
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v26 = &v35 - v25;

  v24(&v42, v20, v40, &v41, v21, v23);
  Description = v21[-1].Description;
  if (Description[6](v26, 1, v21) == 1)
  {

    (*(v37 + 8))(v26, v38);
LABEL_20:
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    goto LABEL_21;
  }

  *(&v44 + 1) = v21;
  v45 = v23;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v43);
  Description[4](boxed_opaque_existential_1, v26, v21);

  if (!*(&v44 + 1))
  {
LABEL_21:
    sub_1D1741A30(&v43, &qword_1EC646A98, &unk_1D1E858B0);
    type metadata accessor for ActionCommand.Error(0);
    sub_1D18FA678(&qword_1EC6434B0, type metadata accessor for ActionCommand.Error, &protocol conformance descriptor for ActionCommand.Error);
    swift_allocError();
    goto LABEL_7;
  }

  sub_1D16EEE20(&v43, v46);
  v29 = [a1 accessory];
  v30 = [v29 uniqueIdentifier];

  v31 = v35;
  sub_1D1E66A5C();

  v32 = type metadata accessor for ActionCommand(0);
  *(v31 + v32[5]) = v36;
  v33 = [a1 endpointID];
  v34 = [v33 unsignedShortValue];

  *(v31 + v32[6]) = v34;
  sub_1D16EEE20(v46, v31 + v32[7]);
}

uint64_t sub_1D18F95E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1D178CFF0(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      v4 += 4;
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D178CFF0((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1D1742194(&v8, (v2 + 32 * v6 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D18F96EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D178CFB0(0, v3, 0);
    v4 = v13;
    v8 = a1 + 32;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
      swift_dynamicCast();
      v10 = *(v13 + 16);
      v9 = *(v13 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D178CFB0((v9 > 1), v10 + 1, 1);
      }

      *(v13 + 16) = v10 + 1;
      *(v13 + 8 * v10 + 32) = v12;
      v8 += 8;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1D18F9814(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1D178D010(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D178D010((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D18F9944(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1D178CFF0(0, v1, 0);
    v2 = v9;
    v4 = a1 + 56;
    do
    {
      sub_1D18F098C(*(v4 - 24), *(v4 - 16));

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D178CFF0((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v4 += 32;
      *(v2 + 16) = v6 + 1;
      sub_1D1742194(&v8, (v2 + 32 * v6 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D18F9A64(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D178CFF0(0, v1, 0);
    v2 = v18;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[3];
      v6 = v4[1];
      v15 = v4[2];
      v16 = v5;
      v7 = v4[3];
      v17[0] = v4[4];
      *(v17 + 9) = *(v4 + 73);
      v8 = v4[1];
      v14[0] = *v4;
      v14[1] = v8;
      v12[8] = v15;
      v12[9] = v7;
      v13[0] = v4[4];
      *(v13 + 9) = *(v4 + 73);
      v12[6] = v14[0];
      v12[7] = v6;
      sub_1D18A9844(v14, v12);
      swift_dynamicCast();
      v18 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D178CFF0((v9 > 1), v10 + 1, 1);
        v2 = v18;
      }

      *(v2 + 16) = v10 + 1;
      sub_1D1742194(v12, (v2 + 32 * v10 + 32));
      v4 += 6;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D18F9BB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1D1E6899C();
    v4 = a1 + 32;
    do
    {
      v4 += 4;
      sub_1D1E692CC();
      sub_1D1E6896C();
      sub_1D1E689AC();
      sub_1D1E689BC();
      sub_1D1E6897C();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

char *sub_1D18F9C80(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_1D1E6873C();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D178CFF0(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x1D3891EF0](i, a1);
        sub_1D1741B10(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1D178CFF0((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_1D1742194(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_1D1741B10(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D178CFF0((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_1D1742194(v16, (v7 + 32 * v15 + 32));
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

void *sub_1D18F9E6C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D1E6873C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D178DA90(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1D3891EF0](v5, a1);
        v8 = *(v17 + 16);
        v7 = *(v17 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1D178DA90((v7 > 1), v8 + 1, 1);
        }

        ++v5;
        v9 = sub_1D18FBA88();
        *(v17 + 16) = v8 + 1;
        v10 = v17 + 16 * v8;
        *(v10 + 32) = v6;
        *(v10 + 40) = v9;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      do
      {
        v12 = *(v17 + 16);
        v13 = *(v17 + 24);
        v14 = *v11;
        if (v12 >= v13 >> 1)
        {
          sub_1D178DA90((v13 > 1), v12 + 1, 1);
        }

        v15 = sub_1D18FBA88();
        *(v17 + 16) = v12 + 1;
        v16 = v17 + 16 * v12;
        *(v16 + 32) = v14;
        *(v16 + 40) = v15;
        ++v11;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18F9FDC(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D178CF40(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1D18FBAF0(v8, v5, type metadata accessor for StaticService);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D178CF40((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_1D18FA678(&qword_1EC646AF0, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_1D18FBAF0(v5, boxed_opaque_existential_1, type metadata accessor for StaticService);
      *(v7 + 16) = v11 + 1;
      sub_1D16EEE20(&v14, v7 + 40 * v11 + 32);
      sub_1D18FBB58(v5, type metadata accessor for StaticService);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t ActionCommand.accessoryID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ActionCommand.init(accessoryID:nodeID:endpointID:matterCommand:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1D1E66A7C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for ActionCommand(0);
  *(a5 + v11[5]) = a2;
  *(a5 + v11[6]) = a3;
  v12 = a5 + v11[7];

  return sub_1D16EEE20(a4, v12);
}

unint64_t sub_1D18FA3A8()
{
  result = qword_1EC646AA0;
  if (!qword_1EC646AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646AA0);
  }

  return result;
}

unint64_t sub_1D18FA3FC()
{
  result = qword_1EC646AA8;
  if (!qword_1EC646AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646AA8);
  }

  return result;
}

unint64_t sub_1D18FA450()
{
  result = qword_1EC646AB0;
  if (!qword_1EC646AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646AB0);
  }

  return result;
}

uint64_t ActionCommand.expectedValues()()
{
  v1 = type metadata accessor for ActionCommand(0);
  v2 = (v0 + *(v1 + 28));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  return MatterCommand.expectedValues(endpointID:)(*(v0 + *(v1 + 24)), v3, v4);
}

BOOL static ActionCommand.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ActionCommand(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]) || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v5 = (a1 + v4[7]);
  v6 = v5[3];
  v7 = v5[4];
  v8 = v4;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  return MatterCommand.isEqual(_:)((a2 + v8[7]), v6, v7);
}

uint64_t ActionCommand.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D18FA678(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for ActionCommand(0);
  MEMORY[0x1D3892890](*(v1 + *(v2 + 20)));
  sub_1D1E6923C();
  __swift_project_boxed_opaque_existential_1((v1 + *(v2 + 28)), *(v1 + *(v2 + 28) + 24));
  return sub_1D1E676EC();
}

uint64_t sub_1D18FA678(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ActionCommand.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D18FA678(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for ActionCommand(0);
  MEMORY[0x1D3892890](*(v0 + *(v1 + 20)));
  sub_1D1E6923C();
  __swift_project_boxed_opaque_existential_1((v0 + *(v1 + 28)), *(v0 + *(v1 + 28) + 24));
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

BOOL sub_1D18FA7A8(uint64_t a1, uint64_t a2, int *a3)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *(a1 + a3[5]) != *(a2 + a3[5]) || *(a1 + a3[6]) != *(a2 + a3[6]))
  {
    return 0;
  }

  v6 = (a1 + a3[7]);
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  return MatterCommand.isEqual(_:)((a2 + a3[7]), v7, v8);
}

uint64_t sub_1D18FA844(int *a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D18FA678(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v1 + a1[5]));
  sub_1D1E6923C();
  __swift_project_boxed_opaque_existential_1((v1 + a1[7]), *(v1 + a1[7] + 24));
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D18FA924(uint64_t a1, int *a2)
{
  sub_1D1E66A7C();
  sub_1D18FA678(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v2 + a2[5]));
  sub_1D1E6923C();
  __swift_project_boxed_opaque_existential_1((v2 + a2[7]), *(v2 + a2[7] + 24));
  return sub_1D1E676EC();
}

uint64_t sub_1D18FA9F0(uint64_t a1, int *a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D18FA678(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v2 + a2[5]));
  sub_1D1E6923C();
  __swift_project_boxed_opaque_existential_1((v2 + a2[7]), *(v2 + a2[7] + 24));
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t ActionCommand.init(template:endpoint:accessoryID:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v58 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v46 - v7;
  v56 = type metadata accessor for StaticRVCClusterGroup(0);
  v9 = *(v56 - 8);
  v10 = MEMORY[0x1EEE9AC00](v56);
  v54 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v46 - v12;
  v13 = sub_1D1E66A7C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v53 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - v17;
  v19 = type metadata accessor for StaticEndpoint(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430F0, &qword_1D1E71450);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v46 - v23;
  sub_1D17419CC(a1, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646AB8, &qword_1D1E858C0);
  if (!swift_dynamicCast())
  {
    (*(v14 + 8))(v57, v13);
    sub_1D18FBB58(v58, type metadata accessor for StaticEndpoint);
    __swift_destroy_boxed_opaque_existential_1(a1);
    goto LABEL_11;
  }

  v51 = v24;
  v52 = a4;
  v49 = v65;
  v50 = v66;
  sub_1D18FBAF0(v58, v21, type metadata accessor for StaticEndpoint);
  v47 = *(v14 + 16);
  v47(v18, v57, v13);
  v25 = &v21[*(v19 + 20)];
  v26 = type metadata accessor for EndpointPath(0);
  v27 = *(v26 + 24);
  v48 = *&v25[*(v26 + 20)];
  v28 = *&v25[v27];
  sub_1D18FB784(&v21[*(v19 + 40)], v8);
  if ((*(v9 + 48))(v8, 1, v56) == 1)
  {
    sub_1D18FB7F4(v49, *(&v49 + 1), v50);
    v29 = *(v14 + 8);
    v29(v57, v13);
    sub_1D18FBB58(v58, type metadata accessor for StaticEndpoint);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v29(v18, v13);
    sub_1D18FBB58(v21, type metadata accessor for StaticEndpoint);
    sub_1D1741A30(v8, &qword_1EC644778, &unk_1D1E75B10);
LABEL_8:
    v40 = type metadata accessor for ActionCommand(0);
    v39 = v51;
    (*(*(v40 - 1) + 56))(v51, 1, 1, v40);
    goto LABEL_9;
  }

  v30 = v18;
  v31 = v8;
  v32 = v55;
  sub_1D18FB82C(v31, v55, type metadata accessor for StaticRVCClusterGroup);
  v59 = v49;
  v60 = v50;
  v33 = v54;
  sub_1D18FBAF0(v32, v54, type metadata accessor for StaticRVCClusterGroup);
  StaticRVCClusterGroup.Command.init(commandTemplate:cluster:)(&v59, v33, &v63);
  v34 = v64;
  if (v64 == 255)
  {
    v41 = *(v14 + 8);
    v41(v57, v13);
    sub_1D18FBB58(v58, type metadata accessor for StaticEndpoint);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1D18FBB58(v32, type metadata accessor for StaticRVCClusterGroup);
    v41(v18, v13);
    sub_1D18FBB58(v21, type metadata accessor for StaticEndpoint);
    goto LABEL_8;
  }

  LODWORD(v56) = v28;
  v35 = v63;
  v36 = v53;
  v37 = v30;
  v47(v53, v30, v13);
  v61 = &type metadata for StaticRVCClusterGroup.Command;
  v62 = sub_1D18FA450();
  *&v59 = v35;
  BYTE8(v59) = v34;
  v38 = *(v14 + 8);
  v38(v57, v13);
  sub_1D18FBB58(v58, type metadata accessor for StaticEndpoint);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1D18FBB58(v55, type metadata accessor for StaticRVCClusterGroup);
  v38(v37, v13);
  sub_1D18FBB58(v21, type metadata accessor for StaticEndpoint);
  v39 = v51;
  (*(v14 + 32))(v51, v36, v13);
  v40 = type metadata accessor for ActionCommand(0);
  *(v39 + v40[5]) = v48;
  *(v39 + v40[6]) = v56;
  sub_1D16EEE20(&v59, v39 + v40[7]);
  (*(*(v40 - 1) + 56))(v39, 0, 1, v40);
LABEL_9:
  type metadata accessor for ActionCommand(0);
  v42 = *(v40 - 1);
  if (!(*(v42 + 48))(v39, 1, v40))
  {
    v45 = v52;
    sub_1D18FB82C(v39, v52, type metadata accessor for ActionCommand);
    __swift_destroy_boxed_opaque_existential_1(v67);
    return (*(v42 + 56))(v45, 0, 1, v40);
  }

  sub_1D1741A30(v39, &qword_1EC6430F0, &qword_1D1E71450);
  a4 = v52;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v67);
  v43 = type metadata accessor for ActionCommand(0);
  return (*(*(v43 - 8) + 56))(a4, 1, 1, v43);
}

uint64_t ActionCommand.init(template:endpoint:accessoryID:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v44 = a4;
  v6 = sub_1D1E66A7C();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for StaticRVCClusterGroup(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v36 - v16;
  v17 = *a1;
  v18 = a1[1];
  v19 = *(a1 + 16);
  v20 = type metadata accessor for StaticEndpoint(0);
  v21 = a2 + *(v20 + 20);
  v22 = type metadata accessor for EndpointPath(0);
  v23 = *(v22 + 24);
  v37 = *(v21 + *(v22 + 20));
  v38 = *(v21 + v23);
  v24 = a2;
  sub_1D18FB784(a2 + *(v20 + 40), v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D18FB7F4(v17, v18, v19);
    (*(v40 + 8))(v42, v41);
    sub_1D18FBB58(a2, type metadata accessor for StaticEndpoint);
    sub_1D1741A30(v10, &qword_1EC644778, &unk_1D1E75B10);
  }

  else
  {
    v25 = v41;
    v26 = v42;
    v27 = v40;
    v28 = v43;
    sub_1D18FB82C(v10, v43, type metadata accessor for StaticRVCClusterGroup);
    *&v45 = v17;
    *(&v45 + 1) = v18;
    v46 = v19;
    sub_1D18FBAF0(v28, v15, type metadata accessor for StaticRVCClusterGroup);
    StaticRVCClusterGroup.Command.init(commandTemplate:cluster:)(&v45, v15, &v49);
    v29 = v50;
    if (v50 != 255)
    {
      v30 = v49;
      v31 = v39;
      (*(v27 + 16))(v39, v26, v25);
      v47 = &type metadata for StaticRVCClusterGroup.Command;
      v48 = sub_1D18FA450();
      *&v45 = v30;
      BYTE8(v45) = v29;
      (*(v27 + 8))(v26, v25);
      sub_1D18FBB58(v24, type metadata accessor for StaticEndpoint);
      sub_1D18FBB58(v43, type metadata accessor for StaticRVCClusterGroup);
      v32 = v44;
      (*(v27 + 32))(v44, v31, v25);
      v33 = type metadata accessor for ActionCommand(0);
      *(v32 + v33[5]) = v37;
      *(v32 + v33[6]) = v38;
      sub_1D16EEE20(&v45, v32 + v33[7]);
      return (*(*(v33 - 1) + 56))(v32, 0, 1, v33);
    }

    (*(v27 + 8))(v26, v25);
    sub_1D18FBB58(v24, type metadata accessor for StaticEndpoint);
    sub_1D18FBB58(v43, type metadata accessor for StaticRVCClusterGroup);
  }

  v35 = type metadata accessor for ActionCommand(0);
  return (*(*(v35 - 8) + 56))(v44, 1, 1, v35);
}

uint64_t sub_1D18FB784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18FB7F4(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  if (v3 == 2)
  {
    return sub_1D1771B5C(result, a2);
  }

  if (v3 == 1)
  {
    return sub_1D18FB818(result, a2, a3 & 0x1F);
  }

  return result;
}

uint64_t sub_1D18FB818(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1D18FB82C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D18FB904(uint64_t a1)
{
  result = sub_1D1E66A7C();
  if (v2 <= 0x3F)
  {
    result = sub_1D18FB9A0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D18FB9A0()
{
  result = qword_1EC646AD8;
  if (!qword_1EC646AD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC646AD8);
  }

  return result;
}

uint64_t sub_1D18FBA04(uint64_t a1)
{
  result = sub_1D1741B10(319, &qword_1EC6445D0, 0x1E696AD98);
  if (v2 <= 0x3F)
  {
    result = sub_1D1E66A7C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D18FBA88()
{
  result = qword_1EE079C10;
  if (!qword_1EE079C10)
  {
    sub_1D1741B10(255, &qword_1EE07B620, 0x1E696CB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE079C10);
  }

  return result;
}

uint64_t sub_1D18FBAF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D18FBB58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D18FBBB8(uint64_t result, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v13 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 64); ; i += 5)
    {
      v9 = *(i - 1);
      v8 = *i;
      v10 = *(i - 3);
      v11 = *(i - 2);
      v12[0] = *(i - 4);
      v12[1] = v10;
      v12[2] = v11;
      v12[3] = v9;
      v12[4] = v8;

      a2(&v13, v12);

      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v13;
      }
    }
  }

  return result;
}

uint64_t sub_1D18FBCA4(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v10)) | (v14 << 6);
      v16 = *(*(a4 + 56) + 8 * v15);
      v17[0] = *(*(a4 + 48) + v15);
      v18 = v16;

      a2(&v19, v17);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v19;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D18FBDE8(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v22 = sub_1D1E66A7C();
  v7 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v10 = a4 + 56;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 56);
  v14 = (v11 + 63) >> 6;
  v19[1] = v7 + 16;
  v21 = (v7 + 8);
  v23 = a4;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
      v18 = v22;
LABEL_9:
      (*(v7 + 16))(v9, *(v23 + 48) + *(v7 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v18);
      v20(&v24, v9);
      if (v4)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v21)(v9, v18);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    (*v21)(v9, v18);
  }

  else
  {
LABEL_5:
    v18 = v22;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        return v24;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D18FC000(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v22 = sub_1D1E66A7C();
  v7 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v10 = a4 + 56;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 56);
  v14 = (v11 + 63) >> 6;
  v19[1] = v7 + 16;
  v21 = (v7 + 8);
  v23 = a4;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
      v18 = v22;
LABEL_9:
      (*(v7 + 16))(v9, *(v23 + 48) + *(v7 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v18);
      v20(&v24, v9);
      if (v4)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v21)(v9, v18);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    (*v21)(v9, v18);
  }

  else
  {
LABEL_5:
    v18 = v22;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        return v24;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D18FC220(uint64_t a1, uint64_t (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = *(*(a4 + 48) + (__clz(__rbit64(v10)) | (v14 << 6)));
      result = a2(&v16, &v15);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v16;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D18FC33C(uint64_t a1, void (*a2)(uint64_t *, id *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v22 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1900E74();
    sub_1D1900EC0(&qword_1EE079CE8, sub_1D1900E74, MEMORY[0x1E69E81B8]);
    sub_1D1E681BC();
    v6 = v21[1];
    v7 = v21[2];
    v8 = v21[3];
    v9 = v21[4];
    v10 = v21[5];
  }

  else
  {
    v11 = -1 << *(a4 + 32);
    v7 = a4 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a4 + 56);

    v9 = 0;
  }

  v20 = v6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      while (1)
      {
        v21[0] = v18;
        a2(&v22, v21);
        if (v5)
        {
          break;
        }

        v9 = v16;
        v10 = v17;
        v6 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_1D1E6877C())
        {
          goto LABEL_19;
        }

        sub_1D1900E74();
        swift_dynamicCast();
        v18 = v21[0];
        v16 = v9;
        v17 = v10;
        if (!v21[0])
        {
          goto LABEL_20;
        }
      }

      sub_1D1716918(v20);
    }

    else
    {
LABEL_20:
      v6 = v20;
LABEL_19:
      sub_1D1716918(v6);
    }
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D18FC598(uint64_t a1, void (*a2)(uint64_t *, void **), uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  while (v10)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(*(a4 + 48) + 8 * v16);
    sub_1D1741970(*(a4 + 56) + 32 * v16, &v20);
    v19 = v17;
    v18 = v17;
    a2(&v21, &v19);
    result = sub_1D1741A30(&v19, &qword_1EC646C38, &qword_1D1E82548);
    if (v4)
    {
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return v21;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18FC6E4(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v26 - v8;
  v30 = a1;
  v10 = a4 + 64;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 64);
  v14 = (v11 + 63) >> 6;
  v28 = a4;

  v16 = 0;
  while (v13)
  {
    v29 = v5;
    v17 = v16;
LABEL_10:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v17 << 6);
    v20 = v28;
    v21 = *(v28 + 48);
    v22 = sub_1D1E66A7C();
    (*(*(v22 - 8) + 16))(v9, v21 + *(*(v22 - 8) + 72) * v19, v22);
    v23 = *(v20 + 56);
    v24 = type metadata accessor for StaticAccessory(0);
    sub_1D1900E0C(v23 + *(*(v24 - 8) + 72) * v19, &v9[*(v26 + 48)], type metadata accessor for StaticAccessory);
    v25 = v29;
    v27(&v30, v9);
    v5 = v25;
    result = sub_1D1741A30(v9, &qword_1EC644B30, &qword_1D1E77280);
    if (v25)
    {
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      return v30;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v29 = v5;
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t ActionEndpoint.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ActionEndpoint(uint64_t a1)
{
  result = qword_1EC646C10;
  if (!qword_1EC646C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActionEndpoint.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionEndpoint(0) + 24));

  return v1;
}

uint64_t ActionEndpoint.deviceTypes.getter()
{
  type metadata accessor for ActionEndpoint(0);
}

uint64_t ActionEndpoint.clusters.getter()
{
  type metadata accessor for ActionEndpoint(0);
}

uint64_t ActionEndpoint.clusters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActionEndpoint(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ActionEndpoint.linkedEndpointIDs.getter()
{
  type metadata accessor for ActionEndpoint(0);
}

void *sub_1D18FCCF0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for ActionEndpoint(0);
  result = static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(v6 + 44)), &v11);
  if (v11 == 23)
  {
    sub_1D18FB784(v1 + *(v6 + 52), v5);
    v8 = type metadata accessor for StaticRVCClusterGroup(0);
    if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
    {
      result = sub_1D1741A30(v5, &qword_1EC644778, &unk_1D1E75B10);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
    }

    else
    {
      *(a1 + 24) = v8;
      *(a1 + 32) = &protocol witness table for StaticRVCClusterGroup;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      return sub_1D1900F78(v5, boxed_opaque_existential_1, type metadata accessor for StaticRVCClusterGroup);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void *ActionEndpoint.primaryDeviceType.getter@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ActionEndpoint(0) + 44));

  return static MatterDeviceType.primaryDeviceType(for:)(v3, a1);
}

uint64_t ActionEndpoint.init(staticEndpoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D1E66A7C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = type metadata accessor for StaticEndpoint(0);
  v6 = *(a1 + v5[12]);
  v7 = type metadata accessor for ActionEndpoint(0);
  *(a2 + v7[5]) = v6;
  v8 = (a1 + v5[6]);
  v9 = *v8;
  v10 = v8[1];
  v11 = (a2 + v7[6]);
  *v11 = v9;
  v11[1] = v10;
  *(a2 + v7[7]) = 1;
  sub_1D1900E0C(a1 + v5[5], a2 + v7[8], type metadata accessor for EndpointPath);
  sub_1D1900E0C(a1 + v5[13], a2 + v7[9], type metadata accessor for MatterTileMetadata);
  *(a2 + v7[11]) = *(a1 + v5[8]);
  *(a2 + v7[12]) = *(a1 + v5[9]);
  sub_1D1900E0C(a1 + v5[10], a2 + v7[13], type metadata accessor for StaticClusterGroups);
  *(a2 + v7[14]) = *(a1 + v5[11]);
  v12 = *(a1 + v5[7]);

  result = sub_1D1900FE0(a1, type metadata accessor for StaticEndpoint);
  *(a2 + v7[10]) = v12;
  return result;
}

uint64_t ActionEndpoint.init(staticEndpoint:overridingAttributes:)@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646AF8, &unk_1D1E97C50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v71 = &v63 - v6;
  v70 = type metadata accessor for StaticCluster(0);
  v72 = *(v70 - 8);
  v7 = MEMORY[0x1EEE9AC00](v70);
  v67 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v63 - v9;
  v10 = sub_1D1E66A7C();
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = type metadata accessor for StaticEndpoint(0);
  v68 = *(a1 + v11[12]);
  v12 = v68;
  v13 = type metadata accessor for ActionEndpoint(0);
  *(a3 + v13[5]) = v12;
  v14 = (a1 + v11[6]);
  v15 = *v14;
  v16 = v14[1];
  v17 = (a3 + v13[6]);
  *v17 = v15;
  v17[1] = v16;
  *(a3 + v13[7]) = 1;
  sub_1D1900E0C(a1 + v11[5], a3 + v13[8], type metadata accessor for EndpointPath);
  sub_1D1900E0C(a1 + v11[13], a3 + v13[9], type metadata accessor for MatterTileMetadata);
  *(a3 + v13[11]) = *(a1 + v11[8]);
  v18 = v13[12];
  *(a3 + v18) = *(a1 + v11[9]);
  v19 = v13[13];

  v20 = v69;
  StaticClusterGroups.copyApplying(overridingAttributes:)(v69, a3 + v19);
  *(a3 + v13[14]) = *(a1 + v11[11]);
  v21 = v11[7];
  v63 = a1;
  v22 = v13[10];
  v23 = a3;
  *(a3 + v22) = *(a1 + v21);
  v24 = sub_1D18D9C84(MEMORY[0x1E69E7CC0]);
  v74 = a3;
  v25 = v18;

  v26 = sub_1D18FBCA4(v24, sub_1D19000A8, v73, v20);

  v27 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 64);
  v31 = (v28 + 63) >> 6;
  v69 = (v72 + 56);

  v32 = 0;
  v64 = a3;
  v68 = v26;
  if (v30)
  {
    while (1)
    {
LABEL_8:
      while (1)
      {
        v34 = v25;
        v35 = __clz(__rbit64(v30));
        v30 &= v30 - 1;
        v36 = *(*(v26 + 48) + (v35 | (v32 << 6)));
        if (*(v26 + 16))
        {
          v37 = sub_1D171D278(v36);
          if (v38)
          {
            break;
          }
        }

        v51 = sub_1D171D278(v36);
        if (v52)
        {
          v53 = v51;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = *(v23 + v25);
          v75 = v55;
          v56 = v71;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1D1739780();
            v55 = v75;
          }

          sub_1D1900F78(*(v55 + 56) + *(v72 + 72) * v53, v56, type metadata accessor for StaticCluster);
          sub_1D1750AB4(v53, v55);
          v57 = 0;
          *(v23 + v25) = v55;
        }

        else
        {
          v57 = 1;
          v56 = v71;
        }

        (*v69)(v56, v57, 1, v70);
        sub_1D1741A30(v56, &qword_1EC646AF8, &unk_1D1E97C50);
        v26 = v68;
        if (!v30)
        {
          goto LABEL_4;
        }
      }

      v39 = *(v26 + 56);
      v66 = *(v72 + 72);
      v40 = v65;
      sub_1D1900E0C(v39 + v66 * v37, v65, type metadata accessor for StaticCluster);
      sub_1D1900F78(v40, v67, type metadata accessor for StaticCluster);
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v75 = *(v23 + v25);
      v42 = v75;
      v43 = sub_1D171D278(v36);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v47 = __OFADD__(v45, v46);
      v48 = v45 + v46;
      if (v47)
      {
        goto LABEL_31;
      }

      v49 = v44;
      if (v42[3] < v48)
      {
        break;
      }

      if (v41)
      {
        goto LABEL_22;
      }

      v59 = v43;
      sub_1D1739780();
      v25 = v34;
      v43 = v59;
      v58 = v75;
      if (v49)
      {
LABEL_23:
        sub_1D19000C4(v67, v58[7] + v43 * v66, type metadata accessor for StaticCluster);
        goto LABEL_27;
      }

LABEL_25:
      v58[(v43 >> 6) + 8] |= 1 << v43;
      *(v58[6] + v43) = v36;
      sub_1D1900F78(v67, v58[7] + v43 * v66, type metadata accessor for StaticCluster);
      v60 = v58[2];
      v47 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v47)
      {
        goto LABEL_32;
      }

      v58[2] = v61;
LABEL_27:
      v23 = v64;
      *(v64 + v25) = v58;
      if (!v30)
      {
        goto LABEL_4;
      }
    }

    sub_1D1729800(v48, v41);
    v43 = sub_1D171D278(v36);
    if ((v49 & 1) != (v50 & 1))
    {
      goto LABEL_33;
    }

LABEL_22:
    v25 = v34;
    v58 = v75;
    if (v49)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

LABEL_4:
  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v31)
    {
      sub_1D1900FE0(v63, type metadata accessor for StaticEndpoint);
    }

    v30 = *(v27 + 8 * v33);
    ++v32;
    if (v30)
    {
      v32 = v33;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D18FD6B0(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = v3;
  v77 = a3;
  v7 = type metadata accessor for StaticColorControlCluster(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646AF8, &unk_1D1E97C50);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v65 - v14;
  v16 = type metadata accessor for StaticCluster(0);
  v80 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v67 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v72 = &v65 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v71 = &v65 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v73 = &v65 - v23;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455C8, &qword_1D1E79B78);
  v24 = MEMORY[0x1EEE9AC00](v79);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v65 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v30);
  v65 = v32;
  v66 = &v65 - v31;
  v33 = *a2;
  v34 = *(a2 + 1);
  v78 = v4;
  v74 = v15;
  v75 = v16;
  v69 = v34;
  v70 = v9;
  v68 = v13;
  if (v33 - 19) <= 0xA && ((0x5E1u >> (v33 - 19)))
  {
    LOBYTE(v33) = byte_1D1E825CC[(v33 - 19)];
  }

  v76 = a1;
  v35 = *a1;
  v36 = *a1 + 64;
  v37 = 1 << *(*a1 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(*a1 + 64);
  v40 = (v37 + 63) >> 6;

  v42 = 0;
  v81 = v33;
  if (v39)
  {
    while (1)
    {
      v43 = v42;
LABEL_11:
      v44 = __clz(__rbit64(v39)) | (v43 << 6);
      v45 = *(*(v35 + 48) + v44);
      sub_1D1900E0C(*(v35 + 56) + *(v80 + 72) * v44, &v29[*(v79 + 48)], type metadata accessor for StaticCluster);
      *v29 = v45;
      sub_1D1900F08(v29, v26);
      if (dword_1D1E82554[*v26] == dword_1D1E82554[v81])
      {
        break;
      }

      v39 &= v39 - 1;
      result = sub_1D1741A30(v26, &qword_1EC6455C8, &qword_1D1E79B78);
      v42 = v43;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    v56 = v65;
    sub_1D1900F08(v26, v65);
    v57 = v66;
    sub_1D1900F08(v56, v66);
    v58 = *(v79 + 48);
    v59 = v67;
    sub_1D1900E0C(v57 + v58, v67, type metadata accessor for StaticCluster);
    v60 = v75;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v61 = v59;
      v62 = v70;
      sub_1D1900F78(v61, v70, type metadata accessor for StaticColorControlCluster);
      v63 = v68;
      StaticColorControlCluster.copyApplying(overridingAttributes:)(v69, v68);
      sub_1D1900FE0(v62, type metadata accessor for StaticColorControlCluster);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v64 = v57 + v58;
      v63 = v68;
      sub_1D1900E0C(v64, v68, type metadata accessor for StaticCluster);
      sub_1D1900FE0(v59, type metadata accessor for StaticCluster);
    }

    (*(v80 + 56))(v63, 0, 1, v60);
    sub_1D1B0DD20(v63, v81);
    return sub_1D1741A30(v57, &qword_1EC6455C8, &qword_1D1E79B78);
  }

  else
  {
    while (1)
    {
LABEL_8:
      v43 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        return result;
      }

      if (v43 >= v40)
      {
        break;
      }

      v39 = *(v36 + 8 * v43);
      ++v42;
      if (v39)
      {
        goto LABEL_11;
      }
    }

    result = type metadata accessor for ActionEndpoint(0);
    v46 = *(v77 + *(result + 48));
    if (*(v46 + 16))
    {
      result = sub_1D171D278(v81);
      if (v47)
      {
        v48 = *(v46 + 56) + *(v80 + 72) * result;
        v49 = v71;
        sub_1D1900E0C(v48, v71, type metadata accessor for StaticCluster);
        v50 = v73;
        sub_1D1900F78(v49, v73, type metadata accessor for StaticCluster);
        v51 = v72;
        sub_1D1900E0C(v50, v72, type metadata accessor for StaticCluster);
        v52 = v75;
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v53 = v51;
          v54 = v70;
          sub_1D1900F78(v53, v70, type metadata accessor for StaticColorControlCluster);
          v55 = v74;
          StaticColorControlCluster.copyApplying(overridingAttributes:)(v69, v74);
          sub_1D1900FE0(v54, type metadata accessor for StaticColorControlCluster);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v55 = v74;
          sub_1D1900E0C(v50, v74, type metadata accessor for StaticCluster);
          sub_1D1900FE0(v51, type metadata accessor for StaticCluster);
        }

        (*(v80 + 56))(v55, 0, 1, v52);
        sub_1D1B0DD20(v55, v81);
        return sub_1D1900FE0(v50, type metadata accessor for StaticCluster);
      }
    }
  }

  return result;
}

void ClusterKind.primaryClusterKind.getter(_BYTE *a1@<X8>)
{
  v2 = *v1;
  if (v2 - 19) <= 0xA && ((0x5E1u >> (v2 - 19)))
  {
    LOBYTE(v2) = byte_1D1E825CC[(v2 - 19)];
  }

  *a1 = v2;
}

uint64_t sub_1D18FDDF8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 1701667182;
    v8 = 0x6168636165527369;
    if (a1 != 3)
    {
      v8 = 0x746E696F70646E65;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x7344496D6F6F72;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x7372657473756C63;
    v2 = 0x4772657473756C63;
    if (a1 != 9)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x617461646174656DLL;
    v4 = 0x7453656369766564;
    if (a1 != 6)
    {
      v4 = 0x7954656369766564;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D18FDF7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1900A78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D18FDFB0(uint64_t a1)
{
  v2 = sub_1D190012C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18FDFEC(uint64_t a1)
{
  v2 = sub_1D190012C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionEndpoint.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B00, &qword_1D1E821F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D190012C();
  sub_1D1E6930C();
  LOBYTE(v12) = 0;
  sub_1D1E66A7C();
  sub_1D1900EC0(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for ActionEndpoint(0);
    v12 = *(v3 + v9[5]);
    HIBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1900308(&qword_1EC646B10, &qword_1EE07B258, MEMORY[0x1E69695B0], MEMORY[0x1E69E64F0]);
    sub_1D1E68F1C();
    LOBYTE(v12) = 2;
    sub_1D1E68ECC();
    LOBYTE(v12) = 3;
    sub_1D1E68EDC();
    LOBYTE(v12) = 4;
    type metadata accessor for EndpointPath(0);
    sub_1D1900EC0(&qword_1EC646B18, type metadata accessor for EndpointPath, &protocol conformance descriptor for EndpointPath);
    sub_1D1E68F1C();
    LOBYTE(v12) = 5;
    type metadata accessor for MatterTileMetadata(0);
    sub_1D1900EC0(&qword_1EC646B20, type metadata accessor for MatterTileMetadata, &protocol conformance descriptor for MatterTileMetadata);
    sub_1D1E68F1C();
    v12 = *(v3 + v9[10]);
    HIBYTE(v11) = 6;
    type metadata accessor for MTRDeviceState(0);
    sub_1D1900EC0(&qword_1EC646B28, type metadata accessor for MTRDeviceState, &protocol conformance descriptor for MTRDeviceState);
    sub_1D1E68F1C();
    v12 = *(v3 + v9[11]);
    HIBYTE(v11) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
    sub_1D1900180(&qword_1EC646B30, sub_1D18F16D8, MEMORY[0x1E69E64F0]);
    sub_1D1E68F1C();
    v12 = *(v3 + v9[12]);
    HIBYTE(v11) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B38, &qword_1D1E82200);
    sub_1D19001F8();
    sub_1D1E68F1C();
    LOBYTE(v12) = 9;
    type metadata accessor for StaticClusterGroups(0);
    sub_1D1900EC0(&qword_1EC646B58, type metadata accessor for StaticClusterGroups, &protocol conformance descriptor for StaticClusterGroups);
    sub_1D1E68F1C();
    v12 = *(v3 + v9[14]);
    HIBYTE(v11) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B60, &qword_1D1E82208);
    sub_1D19004B4(&qword_1EC646B68, MEMORY[0x1E69E7600], MEMORY[0x1E69E64F0]);
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ActionEndpoint.hash(into:)(__int128 *a1)
{
  sub_1D1E66A7C();
  sub_1D1900EC0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for ActionEndpoint(0);
  sub_1D176D4E8(a1, *(v1 + v3[5]));
  sub_1D1E678EC();
  sub_1D1E6922C();
  v4 = v1 + v3[8];
  sub_1D1E676EC();
  v5 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v4 + *(v5 + 20)));
  sub_1D1E6923C();
  MatterTileMetadata.hash(into:)(a1);
  MEMORY[0x1D3892850](*(v1 + v3[10]));
  sub_1D176DB8C(a1, *(v1 + v3[11]));
  sub_1D185BAEC(a1, *(v1 + v3[12]));
  StaticClusterGroups.hash(into:)(a1);
  v6 = *(v1 + v3[14]);

  return sub_1D176E508(a1, v6);
}

uint64_t ActionEndpoint.hashValue.getter()
{
  sub_1D1E6920C();
  ActionEndpoint.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t ActionEndpoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = type metadata accessor for StaticClusterGroups(0);
  MEMORY[0x1EEE9AC00](v31);
  v32 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MatterTileMetadata(0);
  MEMORY[0x1EEE9AC00](v33);
  v34 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1EEE9AC00](v35);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B70, &qword_1D1E82210);
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = type metadata accessor for ActionEndpoint(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D190012C();
  v40 = v11;
  v15 = v41;
  sub_1D1E692FC();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v6;
  v28 = v12;
  v41 = a1;
  v29 = v14;
  LOBYTE(v43) = 0;
  sub_1D1900EC0(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v16 = v37;
  sub_1D1E68D7C();
  v17 = v29;
  (*(v36 + 32))(v29, v16, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  v42 = 1;
  sub_1D1900308(&qword_1EC646B78, &qword_1EC644B20, MEMORY[0x1E69695D0], MEMORY[0x1E69E6510]);
  sub_1D1E68D7C();
  v37 = v7;
  v18 = v28;
  *&v17[v28[5]] = v43;
  LOBYTE(v43) = 2;
  v26[1] = 0;
  v19 = sub_1D1E68D2C();
  v20 = &v17[v18[6]];
  *v20 = v19;
  v20[1] = v21;
  LOBYTE(v43) = 3;
  v17[v18[7]] = sub_1D1E68D3C() & 1;
  LOBYTE(v43) = 4;
  sub_1D1900EC0(&qword_1EC646B80, type metadata accessor for EndpointPath, &protocol conformance descriptor for EndpointPath);
  v23 = v27;
  sub_1D1E68D7C();
  sub_1D1900F78(v23, &v17[v18[8]], type metadata accessor for EndpointPath);
  LOBYTE(v43) = 5;
  sub_1D1900EC0(&qword_1EC646B88, type metadata accessor for MatterTileMetadata, &protocol conformance descriptor for MatterTileMetadata);
  v24 = v34;
  sub_1D1E68D7C();
  sub_1D1900F78(v24, &v17[v18[9]], type metadata accessor for MatterTileMetadata);
  type metadata accessor for MTRDeviceState(0);
  v42 = 6;
  sub_1D1900EC0(&qword_1EC646B90, type metadata accessor for MTRDeviceState, &protocol conformance descriptor for MTRDeviceState);
  sub_1D1E68D7C();
  *&v17[v18[10]] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
  v42 = 7;
  sub_1D1900180(&qword_1EC646B98, sub_1D18F1924, MEMORY[0x1E69E6510]);
  sub_1D1E68D7C();
  *&v17[v18[11]] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B38, &qword_1D1E82200);
  v42 = 8;
  sub_1D19003A4();
  sub_1D1E68D7C();
  *&v17[v18[12]] = v43;
  LOBYTE(v43) = 9;
  sub_1D1900EC0(&qword_1EC646BB8, type metadata accessor for StaticClusterGroups, &protocol conformance descriptor for StaticClusterGroups);
  sub_1D1E68D7C();
  sub_1D1900F78(v32, &v29[v28[13]], type metadata accessor for StaticClusterGroups);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B60, &qword_1D1E82208);
  v42 = 10;
  sub_1D19004B4(&qword_1EC646BC0, MEMORY[0x1E69E7628], MEMORY[0x1E69E6510]);
  sub_1D1E68D7C();
  (*(v38 + 8))(v40, v39);
  v25 = v29;
  *&v29[v28[14]] = v43;
  sub_1D1900E0C(v25, v30, type metadata accessor for ActionEndpoint);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_1D1900FE0(v25, type metadata accessor for ActionEndpoint);
}

uint64_t sub_1D18FF34C()
{
  sub_1D1E6920C();
  ActionEndpoint.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D18FF390(uint64_t a1)
{
  sub_1D1E6920C();
  ActionEndpoint.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t ActionEndpoint.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D1E669FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ActionEndpoint.foregroundColor.getter()
{
  v1 = type metadata accessor for ActionEndpoint(0);
  static MatterDeviceType.primaryDeviceType(for:)(*(v0 + *(v1 + 44)), v3);
  if (v3[0] != 28)
  {
    return MatterDeviceType.foregroundColor.getter();
  }

  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t _s13HomeDataModel14ActionEndpointV7roomIDsShy10Foundation4UUIDVGvg_0()
{
  type metadata accessor for ActionEndpoint(0);
}

uint64_t sub_1D18FF59C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for StateSnapshot(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

void ActionEndpoint.tileIcon.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ActionEndpoint(0);
  static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(v3 + 44)), &v12);
  if (v12 == 28)
  {
    if (qword_1EC642238 != -1)
    {
      swift_once();
    }

    v4 = *&qword_1EC646788;
    v10[2] = *&qword_1EC646788;
    v10[3] = xmmword_1EC646798;
    v5 = xmmword_1EC6467A8;
    *v11 = xmmword_1EC6467A8;
    v6 = *(&xmmword_1EC6467A8 + 9);
    *&v11[9] = *(&xmmword_1EC6467A8 + 9);
    v7 = xmmword_1EC646768;
    v8 = xmmword_1EC646778;
    v10[0] = xmmword_1EC646768;
    v10[1] = xmmword_1EC646778;
    *(a1 + 48) = xmmword_1EC646798;
    *(a1 + 64) = v5;
    *(a1 + 16) = v8;
    *(a1 + 32) = v4;
    *(a1 + 73) = v6;
    *a1 = v7;
    sub_1D18A9844(v10, &v9);
  }

  else
  {
    LOBYTE(v10[0]) = v12;
    Icon.init(deviceType:)(a1, v10);
  }
}

uint64_t ActionEndpoint.statusString(with:associatedMatterDevice:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13[-v2 - 8];
  v4 = type metadata accessor for StaticRVCClusterGroup(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for ActionEndpoint(0);
  static MatterDeviceType.primaryDeviceType(for:)(*(v0 + *(v8 + 44)), v13);
  result = 0;
  if (v13[0] == 23)
  {
    sub_1D18FCCF0(v13);
    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646BD0, &qword_1D1E82238);
      v10 = swift_dynamicCast();
      (*(v5 + 56))(v3, v10 ^ 1u, 1, v4);
      if ((*(v5 + 48))(v3, 1, v4) != 1)
      {
        sub_1D1900F78(v3, v7, type metadata accessor for StaticRVCClusterGroup);
        v11 = StaticRVCClusterGroup.actionStatusString.getter();
        sub_1D1900FE0(v7, type metadata accessor for StaticRVCClusterGroup);
        return v11;
      }
    }

    else
    {
      sub_1D1741A30(v13, &qword_1EC646BC8, &qword_1D1E82230);
      (*(v5 + 56))(v3, 1, 1, v4);
    }

    sub_1D1741A30(v3, &qword_1EC644778, &unk_1D1E75B10);
    return 0;
  }

  return result;
}

BOOL ActionEndpoint.isActivated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v21 - v2;
  v4 = type metadata accessor for StaticRVCClusterGroup(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionEndpoint(0);
  static MatterDeviceType.primaryDeviceType(for:)(*(v0 + *(v8 + 44)), &v25);
  if (v25 != 23)
  {
    return 0;
  }

  sub_1D18FCCF0(&v22);
  if (!*(&v23 + 1))
  {
    v14 = &qword_1EC646BC8;
    v15 = &qword_1D1E82230;
    v16 = &v22;
LABEL_12:
    sub_1D1741A30(v16, v14, v15);
    return 0;
  }

  sub_1D16EEE20(&v22, v24);
  sub_1D17419CC(v24, &v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646BD0, &qword_1D1E82238);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    (*(v5 + 56))(v3, 1, 1, v4);
    v14 = &qword_1EC644778;
    v15 = &unk_1D1E75B10;
    v16 = v3;
    goto LABEL_12;
  }

  (*(v5 + 56))(v3, 0, 1, v4);
  sub_1D1900F78(v3, v7, type metadata accessor for StaticRVCClusterGroup);
  v9 = v7[*(v4 + 20)];
  v10 = v9 > 6;
  v11 = (1 << v9) & 0x6E;
  if (v10 || v11 == 0)
  {
    v18 = &v7[*(v4 + 24)];
    v19 = v18[1];
    v22 = *v18;
    v23 = v19;
    if (StaticRVCClusterGroup.RunMode.isCleaning.getter())
    {
      __swift_destroy_boxed_opaque_existential_1(v24);
      v13 = 1;
    }

    else
    {
      v20 = v18[1];
      v21[0] = *v18;
      v21[1] = v20;
      v13 = StaticRVCClusterGroup.RunMode.isMapping.getter();
      __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    v13 = 0;
  }

  sub_1D1900FE0(v7, type metadata accessor for StaticRVCClusterGroup);
  return v13;
}

uint64_t sub_1D18FFC34(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_1D18FFC6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D1E669FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1D18FFCD8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static MatterDeviceType.primaryDeviceType(for:)(*(v2 + *(a1 + 44)), &v12);
  if (v12 == 28)
  {
    if (qword_1EC642238 != -1)
    {
      swift_once();
    }

    v4 = *&qword_1EC646788;
    v10[2] = *&qword_1EC646788;
    v10[3] = xmmword_1EC646798;
    v5 = xmmword_1EC6467A8;
    *v11 = xmmword_1EC6467A8;
    v6 = *(&xmmword_1EC6467A8 + 9);
    *&v11[9] = *(&xmmword_1EC6467A8 + 9);
    v7 = xmmword_1EC646768;
    v8 = xmmword_1EC646778;
    v10[0] = xmmword_1EC646768;
    v10[1] = xmmword_1EC646778;
    *(a2 + 48) = xmmword_1EC646798;
    *(a2 + 64) = v5;
    *(a2 + 16) = v8;
    *(a2 + 32) = v4;
    *(a2 + 73) = v6;
    *a2 = v7;
    sub_1D18A9844(v10, &v9);
  }

  else
  {
    LOBYTE(v10[0]) = v12;
    Icon.init(deviceType:)(a2, v10);
  }
}

uint64_t sub_1D18FFDA4(uint64_t a1)
{
  static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(a1 + 44)), v3);
  if (v3[0] != 28)
  {
    return MatterDeviceType.foregroundColor.getter();
  }

  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

HomeDataModel::IconSymbol ActionEndpoint.statusIcon.getter@<W0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ActionEndpoint(0);
  result = static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(v3 + 44)), &v12);
  v5 = v12;
  v6 = v1 + *(v3 + 36);
  v7 = *(v6 + 24);
  if (v7)
  {
    v8 = *(v6 + 16);

    v9._countAndFlagsBits = v8;
    v9._object = v7;
    result = IconSymbol.init(rawValue:)(v9).value;
    v10 = v11;
  }

  else
  {
    v10 = 92;
  }

  *a1 = v5;
  *(a1 + 8) = 32;
  *(a1 + 9) = v10;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t _s13HomeDataModel14ActionEndpointV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ActionEndpoint(0);
  if ((sub_1D17A6E98(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v10 = v4[8];
  v11 = a1 + v10;
  v12 = a2 + v10;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v13 = type metadata accessor for EndpointPath(0);
  if (*(v11 + *(v13 + 20)) != *(v12 + *(v13 + 20)) || *(v11 + *(v13 + 24)) != *(v12 + *(v13 + 24)) || !_s13HomeDataModel18MatterTileMetadataV2eeoiySbAC_ACtFZ_0(a1 + v4[9], a2 + v4[9]) || *(a1 + v4[10]) != *(a2 + v4[10]) || (sub_1D17A7F14(*(a1 + v4[11]), *(a2 + v4[11])) & 1) == 0 || (sub_1D184C184(*(a1 + v4[12]), *(a2 + v4[12])) & 1) == 0 || !_s13HomeDataModel19StaticClusterGroupsV2eeoiySbAC_ACtFZ_0(a1 + v4[13], a2 + v4[13]))
  {
    return 0;
  }

  v14 = v4[14];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);

  return sub_1D17A8098(v15, v16);
}

uint64_t sub_1D19000C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D190012C()
{
  result = qword_1EC646B08;
  if (!qword_1EC646B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646B08);
  }

  return result;
}

uint64_t sub_1D1900180(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643410, &qword_1D1E71890);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D19001F8()
{
  result = qword_1EC646B40;
  if (!qword_1EC646B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646B38, &qword_1D1E82200);
    sub_1D19002B4();
    sub_1D1900EC0(&qword_1EC646B50, type metadata accessor for StaticCluster, &protocol conformance descriptor for StaticCluster);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646B40);
  }

  return result;
}

unint64_t sub_1D19002B4()
{
  result = qword_1EC646B48;
  if (!qword_1EC646B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646B48);
  }

  return result;
}

uint64_t sub_1D1900308(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1900EC0(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D19003A4()
{
  result = qword_1EC646BA0;
  if (!qword_1EC646BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646B38, &qword_1D1E82200);
    sub_1D1900460();
    sub_1D1900EC0(&qword_1EC646BB0, type metadata accessor for StaticCluster, &protocol conformance descriptor for StaticCluster);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646BA0);
  }

  return result;
}

unint64_t sub_1D1900460()
{
  result = qword_1EC646BA8;
  if (!qword_1EC646BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646BA8);
  }

  return result;
}

uint64_t sub_1D19004B4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646B60, &qword_1D1E82208);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D19005B0(void *a1)
{
  a1[1] = sub_1D1900EC0(&qword_1EC646BE0, type metadata accessor for ActionEndpoint, &protocol conformance descriptor for ActionEndpoint);
  a1[2] = sub_1D1900EC0(&qword_1EC646BE8, type metadata accessor for ActionEndpoint, &protocol conformance descriptor for ActionEndpoint);
  a1[3] = sub_1D1900EC0(&qword_1EC646BF0, type metadata accessor for ActionEndpoint, &protocol conformance descriptor for ActionEndpoint);
  a1[4] = sub_1D1900EC0(&qword_1EC646BF8, type metadata accessor for ActionEndpoint, &protocol conformance descriptor for ActionEndpoint);
  a1[5] = sub_1D1900EC0(&qword_1EC646C00, type metadata accessor for ActionEndpoint, &protocol conformance descriptor for ActionEndpoint);
  result = sub_1D1900EC0(&qword_1EC646C08, type metadata accessor for ActionEndpoint, &protocol conformance descriptor for ActionEndpoint);
  a1[6] = result;
  return result;
}

void sub_1D19006FC(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D1791340(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for EndpointPath(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MatterTileMetadata(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for MTRDeviceState(319);
          if (v5 <= 0x3F)
          {
            sub_1D1900840(319);
            if (v6 <= 0x3F)
            {
              sub_1D190089C(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for StaticClusterGroups(319);
                if (v8 <= 0x3F)
                {
                  sub_1D1900908();
                  if (v9 <= 0x3F)
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

void sub_1D1900840(uint64_t a1)
{
  if (!qword_1EE07B6B8)
  {
    sub_1D1785A60();
    v1 = sub_1D1E681FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE07B6B8);
    }
  }
}

void sub_1D190089C(uint64_t a1)
{
  if (!qword_1EE07B788)
  {
    type metadata accessor for StaticCluster(255);
    sub_1D1785A0C();
    v1 = sub_1D1E6769C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE07B788);
    }
  }
}

void sub_1D1900908()
{
  if (!qword_1EE07B698)
  {
    v0 = sub_1D1E681FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B698);
    }
  }
}

unint64_t sub_1D1900974()
{
  result = qword_1EC646C20;
  if (!qword_1EC646C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646C20);
  }

  return result;
}

unint64_t sub_1D19009CC()
{
  result = qword_1EC646C28;
  if (!qword_1EC646C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646C28);
  }

  return result;
}

unint64_t sub_1D1900A24()
{
  result = qword_1EC646C30;
  if (!qword_1EC646C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646C30);
  }

  return result;
}

uint64_t sub_1D1900A78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7344496D6F6F72 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168636165527369 && a2 == 0xEB00000000656C62 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xEC00000068746150 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7453656369766564 && a2 == 0xEB00000000657461 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEB00000000736570 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7372657473756C63 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4772657473756C63 && a2 == 0xED00007370756F72 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EBE040 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1D1900E0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1900E74()
{
  result = qword_1EE079CF0;
  if (!qword_1EE079CF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE079CF0);
  }

  return result;
}

uint64_t sub_1D1900EC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1900F08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455C8, &qword_1D1E79B78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1900F78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1900FE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ActionMatterDevice.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ActionMatterDevice(uint64_t a1)
{
  result = qword_1EC646CB0;
  if (!qword_1EC646CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActionMatterDevice.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionMatterDevice(0) + 24));

  return v1;
}

uint64_t ActionMatterDevice.deviceTypes.getter()
{
  type metadata accessor for ActionMatterDevice(0);
}

uint64_t ActionMatterDevice.homeId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActionMatterDevice(0) + 36);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActionMatterDevice.roomId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActionMatterDevice(0) + 40);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActionMatterDevice.actionEndpoints.getter()
{
  type metadata accessor for ActionMatterDevice(0);
}

void *ActionMatterDevice.primaryDeviceType.getter@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ActionMatterDevice(0) + 32));

  return static MatterDeviceType.primaryDeviceType(for:)(v3, a1);
}

uint64_t ActionMatterDevice.mainActionEndpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-v4];
  v6 = *(v1 + *(type metadata accessor for ActionMatterDevice(0) + 44));
  v13 = v1;

  sub_1D1746B24(sub_1D1903ECC, v6, v5);

  v7 = type metadata accessor for ActionEndpoint(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) == 1)
  {

    sub_1D1771D3C(v10, a1);

    result = v9(v5, 1, v7);
    if (result != 1)
    {
      return sub_1D1741A30(v5, &qword_1EC646C40, &unk_1D1E825E0);
    }
  }

  else
  {
    sub_1D19042B4(v5, a1, type metadata accessor for ActionEndpoint);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  return result;
}

BOOL sub_1D1901590(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + *(type metadata accessor for ActionEndpoint(0) + 44));
  v4 = *(a2 + *(type metadata accessor for ActionMatterDevice(0) + 32));

  v6 = *(sub_1D1E63F58(v4, v3, v5) + 2);

  return v6 != 0;
}

uint64_t ActionMatterDevice.init(staticDevice:overridingEndpoints:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v54 = &v47 - v6;
  v7 = type metadata accessor for StaticEndpoint(0);
  v53 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
  v12 = MEMORY[0x1EEE9AC00](v51);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v47 - v15);
  v17 = sub_1D1E66A7C();
  v55 = *(*(v17 - 8) + 16);
  (v55)(a3, a1, v17);
  v18 = type metadata accessor for StaticMatterDevice(0);
  v19 = *(a1 + v18[5]);
  v20 = type metadata accessor for ActionMatterDevice(0);
  *(a3 + v20[5]) = v19;
  v21 = (a1 + v18[6]);
  v22 = *v21;
  v52 = v21[1];
  v23 = v52;
  v24 = (a3 + v20[6]);
  *v24 = v22;
  v24[1] = v23;
  *(a3 + v20[7]) = 1;
  v50 = *(a1 + v18[8]);
  *(a3 + v20[8]) = v50;
  v25 = v55;
  (v55)(a3 + v20[9], a1 + v18[9], v17);
  v25(a3 + v20[10], a1 + v18[10], v17);
  v26 = v18[15];
  v47 = v20;
  v27 = v20[12];
  v49 = a3;
  sub_1D190431C(a1 + v26, a3 + v27, type metadata accessor for MatterTileMetadata);
  v28 = v18[14];
  v48 = a1;
  v29 = *(a1 + v28);
  v58 = sub_1D18D9E5C(MEMORY[0x1E69E7CC0]);
  v30 = v29 + 64;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v29 + 64);
  v34 = (v31 + 63) >> 6;
  v55 = v29;
  swift_bridgeObjectRetain_n();

  v36 = 0;
  v52 = v11;
  if (v33)
  {
LABEL_8:
    while (1)
    {
      v38 = __clz(__rbit64(v33)) | (v36 << 6);
      v39 = *(*(v55 + 48) + 2 * v38);
      v40 = v51;
      sub_1D190431C(*(v55 + 56) + *(v53 + 72) * v38, v16 + *(v51 + 48), type metadata accessor for StaticEndpoint);
      *v16 = v39;
      sub_1D1904000(v16, v14);
      v41 = *v14;
      sub_1D1904384(v14 + *(v40 + 48), type metadata accessor for StaticEndpoint);
      sub_1D1904000(v16, v14);
      sub_1D19042B4(v14 + *(v40 + 48), v11, type metadata accessor for StaticEndpoint);
      if (!*(v56 + 16))
      {
        break;
      }

      v42 = sub_1D171D15C(v41);
      if ((v43 & 1) == 0)
      {
        break;
      }

      v44 = *(*(v56 + 56) + 8 * v42);

      sub_1D190431C(v11, v57, type metadata accessor for StaticEndpoint);
      if (!v44)
      {
        goto LABEL_13;
      }

LABEL_14:
      v33 &= v33 - 1;
      v45 = v54;
      ActionEndpoint.init(staticEndpoint:overridingAttributes:)(v57, v44, v54);
      v46 = type metadata accessor for ActionEndpoint(0);
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      sub_1D1B0E988(v45, v41);
      v11 = v52;
      sub_1D1904384(v52, type metadata accessor for StaticEndpoint);
      result = sub_1D1741A30(v16, &qword_1EC6448D0, &qword_1D1E76600);
      if (!v33)
      {
        goto LABEL_4;
      }
    }

    sub_1D190431C(v11, v57, type metadata accessor for StaticEndpoint);
LABEL_13:
    v44 = sub_1D18DA034(MEMORY[0x1E69E7CC0]);
    goto LABEL_14;
  }

LABEL_4:
  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v34)
    {
      sub_1D1904384(v48, type metadata accessor for StaticMatterDevice);

      *(v49 + v47[11]) = v58;
      return result;
    }

    v33 = *(v30 + 8 * v37);
    ++v36;
    if (v33)
    {
      v36 = v37;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1901B98(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 1701667182;
    if (a1 != 2)
    {
      v6 = 0x6574617473;
    }

    if (a1)
    {
      v5 = 0x644965646F6ELL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x64496D6F6F72;
    v2 = 0x6E456E6F69746361;
    if (a1 != 7)
    {
      v2 = 0x617461646174656DLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7954656369766564;
    if (a1 != 4)
    {
      v3 = 0x6449656D6F68;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D1901CAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1904878(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1901CE0(uint64_t a1)
{
  v2 = sub_1D1904070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1901D1C(uint64_t a1)
{
  v2 = sub_1D1904070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionMatterDevice.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C48, &unk_1D1E825F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1904070();
  sub_1D1E6930C();
  LOBYTE(v13) = 0;
  sub_1D1E66A7C();
  sub_1D1904598(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for ActionMatterDevice(0);
    LOBYTE(v13) = 1;
    sub_1D1E68F6C();
    LOBYTE(v13) = 2;
    sub_1D1E68ECC();
    v13 = *(v3 + v9[7]);
    v12 = 3;
    type metadata accessor for MTRDeviceState(0);
    sub_1D1904598(&qword_1EC646B28, type metadata accessor for MTRDeviceState, &protocol conformance descriptor for MTRDeviceState);
    sub_1D1E68F1C();
    v13 = *(v3 + v9[8]);
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
    sub_1D1904180(&qword_1EC646B30, sub_1D18F16D8, MEMORY[0x1E69E64F0]);
    sub_1D1E68F1C();
    LOBYTE(v13) = 5;
    sub_1D1E68F1C();
    LOBYTE(v13) = 6;
    sub_1D1E68F1C();
    v13 = *(v3 + v9[11]);
    v12 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C58, &qword_1D1E82600);
    sub_1D19040C4();
    sub_1D1E68F1C();
    LOBYTE(v13) = 8;
    type metadata accessor for MatterTileMetadata(0);
    sub_1D1904598(&qword_1EC646B20, type metadata accessor for MatterTileMetadata, &protocol conformance descriptor for MatterTileMetadata);
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ActionMatterDevice.hash(into:)(__int128 *a1)
{
  sub_1D1E66A7C();
  sub_1D1904598(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for ActionMatterDevice(0);
  MEMORY[0x1D3892890](*(v1 + v3[5]));
  sub_1D1E678EC();
  MEMORY[0x1D3892850](*(v1 + v3[7]));
  sub_1D176DB8C(a1, *(v1 + v3[8]));
  sub_1D1E676EC();
  sub_1D1E676EC();
  sub_1D185ACDC(a1, *(v1 + v3[11]));
  return MatterTileMetadata.hash(into:)(a1);
}

uint64_t ActionMatterDevice.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1904598(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for ActionMatterDevice(0);
  MEMORY[0x1D3892890](*(v0 + v1[5]));
  sub_1D1E678EC();
  MEMORY[0x1D3892850](*(v0 + v1[7]));
  sub_1D176DB8C(v3, *(v0 + v1[8]));
  sub_1D1E676EC();
  sub_1D1E676EC();
  sub_1D185ACDC(v3, *(v0 + v1[11]));
  MatterTileMetadata.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t ActionMatterDevice.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = type metadata accessor for MatterTileMetadata(0);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1D1E66A7C();
  v35 = *(v38 - 8);
  v4 = MEMORY[0x1EEE9AC00](v38);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v31 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v31 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C68, &unk_1D1E82608);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ActionMatterDevice(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1904070();
  v39 = v12;
  v16 = v41;
  sub_1D1E692FC();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v13;
  v31 = v15;
  LOBYTE(v43) = 0;
  v18 = sub_1D1904598(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1D1E68D7C();
  v41 = v18;
  v19 = *(v35 + 32);
  v20 = v31;
  v19(v31, v37, v38);
  LOBYTE(v43) = 1;
  *&v20[v17[5]] = sub_1D1E68DCC();
  LOBYTE(v43) = 2;
  v21 = sub_1D1E68D2C();
  v22 = v20;
  v23 = a1;
  v24 = &v22[v17[6]];
  *v24 = v21;
  v24[1] = v25;
  type metadata accessor for MTRDeviceState(0);
  v42 = 3;
  sub_1D1904598(&qword_1EC646B90, type metadata accessor for MTRDeviceState, &protocol conformance descriptor for MTRDeviceState);
  sub_1D1E68D7C();
  v26 = v17;
  *&v31[v17[7]] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
  v42 = 4;
  sub_1D1904180(&qword_1EC646B98, sub_1D18F1924, MEMORY[0x1E69E6510]);
  sub_1D1E68D7C();
  *&v31[v17[8]] = v43;
  LOBYTE(v43) = 5;
  v37 = v9;
  v27 = v38;
  sub_1D1E68D7C();
  v19(&v31[v26[9]], v37, v27);
  LOBYTE(v43) = 6;
  sub_1D1E68D7C();
  v19(&v31[v26[10]], v6, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C58, &qword_1D1E82600);
  v42 = 7;
  sub_1D19041F8();
  sub_1D1E68D7C();
  *&v31[v26[11]] = v43;
  LOBYTE(v43) = 8;
  sub_1D1904598(&qword_1EC646B88, type metadata accessor for MatterTileMetadata, &protocol conformance descriptor for MatterTileMetadata);
  v28 = v34;
  sub_1D1E68D7C();
  (*(v36 + 8))(v39, v40);
  v29 = v31;
  sub_1D19042B4(v28, &v31[v26[12]], type metadata accessor for MatterTileMetadata);
  sub_1D190431C(v29, v32, type metadata accessor for ActionMatterDevice);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_1D1904384(v29, type metadata accessor for ActionMatterDevice);
}

uint64_t sub_1D1902C94(__int128 *a1, int *a2)
{
  sub_1D1E66A7C();
  sub_1D1904598(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v2 + a2[5]));
  sub_1D1E678EC();
  MEMORY[0x1D3892850](*(v2 + a2[7]));
  sub_1D176DB8C(a1, *(v2 + a2[8]));
  sub_1D1E676EC();
  sub_1D1E676EC();
  sub_1D185ACDC(a1, *(v2 + a2[11]));
  return MatterTileMetadata.hash(into:)(a1);
}

uint64_t sub_1D1902DB0(uint64_t a1, int *a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1904598(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v2 + a2[5]));
  sub_1D1E678EC();
  MEMORY[0x1D3892850](*(v2 + a2[7]));
  sub_1D176DB8C(v5, *(v2 + a2[8]));
  sub_1D1E676EC();
  sub_1D1E676EC();
  sub_1D185ACDC(v5, *(v2 + a2[11]));
  MatterTileMetadata.hash(into:)(v5);
  return sub_1D1E6926C();
}

uint64_t ActionMatterDevice.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D1E669FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ActionMatterDevice.foregroundColor.getter()
{
  v1 = type metadata accessor for ActionMatterDevice(0);
  static MatterDeviceType.primaryDeviceType(for:)(*(v0 + *(v1 + 32)), v3);
  if (v3[0] != 28)
  {
    return MatterDeviceType.foregroundColor.getter();
  }

  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t ActionMatterDevice.roomIds.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D1E739C0;
  v5 = type metadata accessor for ActionMatterDevice(0);
  (*(v2 + 16))(v4 + v3, v0 + *(v5 + 40), v1);
  v6 = sub_1D179BE14(v4);
  swift_setDeallocating();
  (*(v2 + 8))(v4 + v3, v1);
  swift_deallocClassInstance();
  return v6;
}

void ActionMatterDevice.tileIcon.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ActionMatterDevice(0);
  static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(v3 + 32)), &v12);
  if (v12 == 28)
  {
    if (qword_1EC642238 != -1)
    {
      swift_once();
    }

    v4 = *&qword_1EC646788;
    v10[2] = *&qword_1EC646788;
    v10[3] = xmmword_1EC646798;
    v5 = xmmword_1EC6467A8;
    *v11 = xmmword_1EC6467A8;
    v6 = *(&xmmword_1EC6467A8 + 9);
    *&v11[9] = *(&xmmword_1EC6467A8 + 9);
    v7 = xmmword_1EC646768;
    v8 = xmmword_1EC646778;
    v10[0] = xmmword_1EC646768;
    v10[1] = xmmword_1EC646778;
    *(a1 + 48) = xmmword_1EC646798;
    *(a1 + 64) = v5;
    *(a1 + 16) = v8;
    *(a1 + 32) = v4;
    *(a1 + 73) = v6;
    *a1 = v7;
    sub_1D18A9844(v10, &v9);
  }

  else
  {
    LOBYTE(v10[0]) = v12;
    Icon.init(deviceType:)(a1, v10);
  }
}

uint64_t ActionMatterDevice.statusString(with:associatedMatterDevice:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14[-v5];
  v7 = *(v0 + *(type metadata accessor for ActionMatterDevice(0) + 44));
  v15 = v0;

  sub_1D1746B24(sub_1D1904B4C, v7, v4);

  v8 = type metadata accessor for ActionEndpoint(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v4, 1, v8) == 1)
  {

    sub_1D1771D3C(v11, v6);

    if (v10(v4, 1, v8) != 1)
    {
      sub_1D1741A30(v4, &qword_1EC646C40, &unk_1D1E825E0);
    }
  }

  else
  {
    sub_1D19042B4(v4, v6, type metadata accessor for ActionEndpoint);
    (*(v9 + 56))(v6, 0, 1, v8);
  }

  if (v10(v6, 1, v8) == 1)
  {
    sub_1D1741A30(v6, &qword_1EC646C40, &unk_1D1E825E0);
    return 0;
  }

  else
  {
    v13 = ActionEndpoint.statusString(with:associatedMatterDevice:)();
    sub_1D1904384(v6, type metadata accessor for ActionEndpoint);
    return v13;
  }
}

BOOL ActionMatterDevice.isActivated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14[-v5];
  v7 = *(v0 + *(type metadata accessor for ActionMatterDevice(0) + 44));
  v15 = v0;

  sub_1D1746B24(sub_1D1904B4C, v7, v4);

  v8 = type metadata accessor for ActionEndpoint(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v4, 1, v8) == 1)
  {

    sub_1D1771D3C(v11, v6);

    if (v10(v4, 1, v8) != 1)
    {
      sub_1D1741A30(v4, &qword_1EC646C40, &unk_1D1E825E0);
    }
  }

  else
  {
    sub_1D19042B4(v4, v6, type metadata accessor for ActionEndpoint);
    (*(v9 + 56))(v6, 0, 1, v8);
  }

  if (v10(v6, 1, v8) == 1)
  {
    sub_1D1741A30(v6, &qword_1EC646C40, &unk_1D1E825E0);
    return 0;
  }

  else
  {
    v12 = ActionEndpoint.isActivated.getter();
    sub_1D1904384(v6, type metadata accessor for ActionEndpoint);
  }

  return v12;
}

uint64_t ActionMatterDevice.isTransitioning.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13[-v5];
  v7 = *(v0 + *(type metadata accessor for ActionMatterDevice(0) + 44));
  v14 = v0;

  sub_1D1746B24(sub_1D1904B4C, v7, v4);

  v8 = type metadata accessor for ActionEndpoint(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v4, 1, v8) == 1)
  {

    sub_1D1771D3C(v11, v6);

    if (v10(v4, 1, v8) != 1)
    {
      sub_1D1741A30(v4, &qword_1EC646C40, &unk_1D1E825E0);
    }
  }

  else
  {
    sub_1D19042B4(v4, v6, type metadata accessor for ActionEndpoint);
    (*(v9 + 56))(v6, 0, 1, v8);
  }

  sub_1D1741A30(v6, &qword_1EC646C40, &unk_1D1E825E0);
  return 0;
}

void sub_1D190396C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static MatterDeviceType.primaryDeviceType(for:)(*(v2 + *(a1 + 32)), &v12);
  if (v12 == 28)
  {
    if (qword_1EC642238 != -1)
    {
      swift_once();
    }

    v4 = *&qword_1EC646788;
    v10[2] = *&qword_1EC646788;
    v10[3] = xmmword_1EC646798;
    v5 = xmmword_1EC6467A8;
    *v11 = xmmword_1EC6467A8;
    v6 = *(&xmmword_1EC6467A8 + 9);
    *&v11[9] = *(&xmmword_1EC6467A8 + 9);
    v7 = xmmword_1EC646768;
    v8 = xmmword_1EC646778;
    v10[0] = xmmword_1EC646768;
    v10[1] = xmmword_1EC646778;
    *(a2 + 48) = xmmword_1EC646798;
    *(a2 + 64) = v5;
    *(a2 + 16) = v8;
    *(a2 + 32) = v4;
    *(a2 + 73) = v6;
    *a2 = v7;
    sub_1D18A9844(v10, &v9);
  }

  else
  {
    LOBYTE(v10[0]) = v12;
    Icon.init(deviceType:)(a2, v10);
  }
}

uint64_t sub_1D1903A38(uint64_t a1)
{
  static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(a1 + 32)), v3);
  if (v3[0] != 28)
  {
    return MatterDeviceType.foregroundColor.getter();
  }

  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_1D1903ADC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D1E739C0;
  (*(v4 + 16))(v6 + v5, v1 + *(a1 + 40), v3);
  v7 = sub_1D179BE14(v6);
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  return v7;
}

BOOL sub_1D1903C04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  ActionMatterDevice.mainActionEndpoint.getter(&v6 - v1);
  v3 = type metadata accessor for ActionEndpoint(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    sub_1D1741A30(v2, &qword_1EC646C40, &unk_1D1E825E0);
    return 0;
  }

  else
  {
    v4 = ActionEndpoint.isActivated.getter();
    sub_1D1904384(v2, type metadata accessor for ActionEndpoint);
  }

  return v4;
}

uint64_t sub_1D1903D08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - v1;
  ActionMatterDevice.mainActionEndpoint.getter(&v4 - v1);
  sub_1D1741A30(v2, &qword_1EC646C40, &unk_1D1E825E0);
  return 0;
}

uint64_t sub_1D1903DA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  ActionMatterDevice.mainActionEndpoint.getter(&v6 - v1);
  v3 = type metadata accessor for ActionEndpoint(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    sub_1D1741A30(v2, &qword_1EC646C40, &unk_1D1E825E0);
    return 0;
  }

  else
  {
    v5 = ActionEndpoint.statusString(with:associatedMatterDevice:)();
    sub_1D1904384(v2, type metadata accessor for ActionEndpoint);
    return v5;
  }
}

uint64_t _s13HomeDataModel18ActionMatterDeviceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ActionMatterDevice(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_1D1E6904C() & 1) == 0 || *(a1 + v5[7]) != *(a2 + v5[7]) || (sub_1D17A7F14(*(a1 + v5[8]), *(a2 + v5[8])) & 1) == 0 || (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1D184BB9C(*(a1 + v5[11]), *(a2 + v5[11])) & 1) == 0)
  {
    return 0;
  }

  v11 = v5[12];

  return static MatterTileMetadata.== infix(_:_:)(a1 + v11, a2 + v11);
}

uint64_t sub_1D1904000(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1904070()
{
  result = qword_1EC646C50;
  if (!qword_1EC646C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646C50);
  }

  return result;
}

unint64_t sub_1D19040C4()
{
  result = qword_1EC646C60;
  if (!qword_1EC646C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646C58, &qword_1D1E82600);
    sub_1D1904598(&qword_1EC646BF8, type metadata accessor for ActionEndpoint, &protocol conformance descriptor for ActionEndpoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646C60);
  }

  return result;
}

uint64_t sub_1D1904180(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643410, &qword_1D1E71890);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D19041F8()
{
  result = qword_1EC646C70;
  if (!qword_1EC646C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646C58, &qword_1D1E82600);
    sub_1D1904598(&qword_1EC646BF0, type metadata accessor for ActionEndpoint, &protocol conformance descriptor for ActionEndpoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646C70);
  }

  return result;
}

uint64_t sub_1D19042B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D190431C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1904384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1904474(void *a1)
{
  a1[1] = sub_1D1904598(&qword_1EC646C80, type metadata accessor for ActionMatterDevice, &protocol conformance descriptor for ActionMatterDevice);
  a1[2] = sub_1D1904598(&qword_1EC646C88, type metadata accessor for ActionMatterDevice, &protocol conformance descriptor for ActionMatterDevice);
  a1[3] = sub_1D1904598(&qword_1EC646C90, type metadata accessor for ActionMatterDevice, &protocol conformance descriptor for ActionMatterDevice);
  a1[4] = sub_1D1904598(&qword_1EC646C98, type metadata accessor for ActionMatterDevice, &protocol conformance descriptor for ActionMatterDevice);
  a1[5] = sub_1D1904598(&qword_1EC646CA0, type metadata accessor for ActionMatterDevice, &protocol conformance descriptor for ActionMatterDevice);
  result = sub_1D1904598(&qword_1EC646CA8, type metadata accessor for ActionMatterDevice, &protocol conformance descriptor for ActionMatterDevice);
  a1[6] = result;
  return result;
}

uint64_t sub_1D1904598(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D1904608(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MTRDeviceState(319);
    if (v2 <= 0x3F)
    {
      sub_1D1900840(319);
      if (v3 <= 0x3F)
      {
        sub_1D19046F8(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for MatterTileMetadata(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D19046F8(uint64_t a1)
{
  if (!qword_1EC646CC0)
  {
    type metadata accessor for ActionEndpoint(255);
    v1 = sub_1D1E6769C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC646CC0);
    }
  }
}

unint64_t sub_1D1904774()
{
  result = qword_1EC646CC8;
  if (!qword_1EC646CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646CC8);
  }

  return result;
}

unint64_t sub_1D19047CC()
{
  result = qword_1EC646CD0;
  if (!qword_1EC646CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646CD0);
  }

  return result;
}

unint64_t sub_1D1904824()
{
  result = qword_1EC646CD8;
  if (!qword_1EC646CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646CD8);
  }

  return result;
}

uint64_t sub_1D1904878(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644965646F6ELL && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEB00000000736570 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6449656D6F68 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64496D6F6F72 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E456E6F69746361 && a2 == 0xEF73746E696F7064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

id HMMatterCommand.init(commandId:endpointId:clusterId:accessory:commandFields:expectedValues:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1D1E692CC();
  v10 = sub_1D1E692AC();
  v11 = sub_1D1E692CC();
  if (a5)
  {
    v12 = sub_1D1E675DC();
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1D18F9814(a6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v14 = sub_1D1E67BFC();

  v15 = [v13 initWithCommandID:v9 endpointID:v10 clusterID:v11 accessory:a4 commandFields:v12 expectedValues:v14];

  return v15;
}

id HMMatterCommand.init(actionCommand:)(uint64_t a1)
{
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE07DC60;
  v3 = sub_1D1E66A2C();
  v4 = [v2 accessoryFor_];

  if (v4)
  {
    v5 = type metadata accessor for ActionCommand(0);
    v6 = (a1 + *(v5 + 28));
    v7 = v6[3];
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v7);
    if (((*(v8 + 24))(v7, v8) & 0x100000000) != 0)
    {
      sub_1D1905F20(a1, type metadata accessor for ActionCommand);
    }

    else
    {
      v9 = *(a1 + *(v5 + 24));
      v10 = v6[3];
      v11 = v6[4];
      __swift_project_boxed_opaque_existential_1(v6, v10);
      (*(v11 + 40))(&v27, v10, v11);
      v12 = v6[3];
      v13 = v6[4];
      __swift_project_boxed_opaque_existential_1(v6, v12);
      (*(v13 + 64))(&v26, v12, v13);
      if (v26)
      {
        v14 = MatterCommandFields.asDictionary()();
      }

      else
      {
        v14 = 0;
      }

      v15 = v6[3];
      v16 = v6[4];
      __swift_project_boxed_opaque_existential_1(v6, v15);
      v17 = MatterCommand.expectedValues(endpointID:)(v9, v15, v16);
      v18 = sub_1D1E692CC();
      v19 = sub_1D1E692AC();
      v20 = sub_1D1E692CC();
      if (v14)
      {
        v21 = sub_1D1E675DC();
      }

      else
      {
        v21 = 0;
      }

      v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_1D18F9814(v17);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      v23 = sub_1D1E67BFC();

      v24 = [v22 initWithCommandID:v18 endpointID:v19 clusterID:v20 accessory:v4 commandFields:v21 expectedValues:v23];

      sub_1D1905F20(a1, type metadata accessor for ActionCommand);
      if (v24)
      {

        return v24;
      }
    }
  }

  else
  {
    sub_1D1905F20(a1, type metadata accessor for ActionCommand);
  }

  return 0;
}

uint64_t HMMatterCommand.effectedEndpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v36 - v5;
  v7 = type metadata accessor for StaticMatterDevice(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v36 - v12;
  v14 = [v1 accessory];
  v15 = sub_1D1E682DC();
  v17 = v16;

  if (v17)
  {
    goto LABEL_12;
  }

  v36[0] = a1;
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v18 = qword_1EE07DC60;
  swift_getKeyPath();
  v36[1] = v18;
  sub_1D18CE6D8();
  sub_1D1E66CAC();

  v19 = v18 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentMatterSnapshot;
  swift_beginAccess();
  v20 = *(v19 + *(type metadata accessor for MatterStateSnapshot(0) + 24));
  a1 = v36[0];
  if (!*(v20 + 16))
  {
    goto LABEL_12;
  }

  v21 = sub_1D17420B0(v15);
  if ((v22 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1D1905FE8(*(v20 + 56) + *(v8 + 72) * v21, v11, type metadata accessor for StaticMatterDevice);
  sub_1D1905F80(v11, v13, type metadata accessor for StaticMatterDevice);
  v23 = *&v13[*(v7 + 56)];
  v24 = [v2 endpointID];
  v25 = [v24 unsignedShortValue];

  if (*(v23 + 16) && (v26 = sub_1D171D15C(v25), (v27 & 1) != 0))
  {
    v28 = v26;
    v29 = *(v23 + 56);
    v30 = type metadata accessor for StaticEndpoint(0);
    v31 = *(v30 - 8);
    v32 = v29 + *(v31 + 72) * v28;
    a1 = v36[0];
    sub_1D1905FE8(v32, v6, type metadata accessor for StaticEndpoint);
    (*(v31 + 56))(v6, 0, 1, v30);
  }

  else
  {
    v30 = type metadata accessor for StaticEndpoint(0);
    (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
  }

  sub_1D1905F20(v13, type metadata accessor for StaticMatterDevice);
  type metadata accessor for StaticEndpoint(0);
  v33 = *(v30 - 8);
  if ((*(v33 + 48))(v6, 1, v30) == 1)
  {
    sub_1D1741A30(v6, &qword_1EC644780, &qword_1D1E91AA0);
LABEL_12:
    v34 = type metadata accessor for StaticEndpoint(0);
    return (*(*(v34 - 8) + 56))(a1, 1, 1, v34);
  }

  sub_1D1905F80(v6, a1, type metadata accessor for StaticEndpoint);
  return (*(v33 + 56))(a1, 0, 1, v30);
}

double HMMatterCommand.associatedMatterTemplate.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StaticMatterDevice(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  v11 = [v1 accessory];
  v12 = sub_1D1E682DC();
  v14 = v13;

  if (v14)
  {
    goto LABEL_7;
  }

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE07DC60;
  swift_getKeyPath();
  v21[1] = v15;
  sub_1D18CE6D8();
  sub_1D1E66CAC();

  v16 = v15 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentMatterSnapshot;
  swift_beginAccess();
  v17 = *(v16 + *(type metadata accessor for MatterStateSnapshot(0) + 24));
  if (*(v17 + 16) && (v18 = sub_1D17420B0(v12), (v19 & 1) != 0))
  {
    sub_1D1905FE8(*(v17 + 56) + *(v5 + 72) * v18, v8, type metadata accessor for StaticMatterDevice);
    sub_1D1905F80(v8, v10, type metadata accessor for StaticMatterDevice);
    static MatterCommandFactory.template(for:device:)(v2, v10, a1);
    sub_1D1905F20(v10, type metadata accessor for StaticMatterDevice);
  }

  else
  {
LABEL_7:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double HMMatterCommand.associatedMatterCommand.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 clusterID];
  v5 = [v4 unsignedIntValue];

  ClusterKind.init(rawValue:)(v5);
  if (v30 == 30)
  {
    goto LABEL_16;
  }

  v6 = [v2 expectedValues];
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v8 = sub_1D1E67C1C();

  v9 = [v2 commandID];
  v10 = [v9 unsignedIntValue];

  v11 = sub_1D18F95CC(v8);

  v12.value._rawValue = [v2 commandFields];
  if (v12.value._rawValue)
  {
    rawValue = v12.value._rawValue;
    v14 = sub_1D1E675FC();
  }

  else
  {
    v14 = 0;
  }

  v12.value._rawValue = v14;
  MatterCommandFields.init(commandFields:)(v12);
  if (v30 - 24 >= 4)
  {
    if (v30 == 11)
    {
      v27 = v11;
      v15 = &type metadata for StaticOnOffCluster.Command;
      v16 = sub_1D18FA3A8();
    }

    else
    {
      if (v30 != 17)
      {

        goto LABEL_16;
      }

      v27 = v11;
      v15 = &type metadata for StaticColorControlCluster.Command;
      v16 = sub_1D18FA3FC();
    }
  }

  else
  {
    v27 = v11;
    v15 = &type metadata for StaticRVCClusterGroup.Command;
    v16 = sub_1D18FA450();
  }

  v17 = v16;
  v29 = v30;
  v28 = v30;
  v18 = *(v16 + 16);
  v19 = sub_1D1E685AC();
  v26[1] = v26;
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v26 - v21;

  v18(&v29, v10, v27, &v28, v15, v17);
  Description = v15[-1].Description;
  if ((Description[6])(v22, 1, v15) != 1)
  {
    *(a1 + 24) = v15;
    *(a1 + 32) = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    Description[4](boxed_opaque_existential_1, v22, v15);

    return result;
  }

  (*(v20 + 8))(v22, v19);
LABEL_16:
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t HMMatterCommand.overridingAttributes.getter@<X0>(unint64_t *a1@<X8>)
{
  HMMatterCommand.associatedMatterCommand.getter(&v13);
  if (v14)
  {
    sub_1D1742190(&v13, v15);
    v3 = v16;
    v4 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v5 = (*(v4 + 72))(v3, v4);
    if (v5)
    {
      v6 = v5;
      v7 = v16;
      v8 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v8 + 40))(&v13, v7, v8);
      v9 = v13;
      v10 = [v1 endpointID];
      v11 = [v10 unsignedShortValue];

      *a1 = v9 | (v11 << 16);
      a1[1] = v6;
      return __swift_destroy_boxed_opaque_existential_1(v15);
    }

    result = __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    result = sub_1D1741A30(&v13, &qword_1EC646A98, &unk_1D1E858B0);
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t HMMatterCommand.matterExpectedValues.getter()
{
  v1 = v0;
  HMMatterCommand.associatedMatterCommand.getter(&v11);
  if (v12)
  {
    sub_1D1742190(&v11, v13);
    v2 = v14;
    v3 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v4 = (*(v3 + 56))(v2, v3);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = [v1 endpointID];
    v8 = [v7 unsignedShortValue];

    v9 = MatterCommand.expectedValues(for:endpointID:)(v4, v8, v5, v6);

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1D1741A30(&v11, &qword_1EC646A98, &unk_1D1E858B0);
    return 0;
  }

  return v9;
}

unint64_t HMMatterCommand.matterCommandFields.getter()
{
  HMMatterCommand.associatedMatterCommand.getter(&v4);
  if (v5)
  {
    sub_1D1742190(&v4, v6);
    v0 = v7;
    v1 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v1 + 64))(&v4, v0, v1);
    if (v4)
    {
      v2 = MatterCommandFields.asDictionary()();
    }

    else
    {
      v2 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_1D1741A30(&v4, &qword_1EC646A98, &unk_1D1E858B0);
    return 0;
  }

  return v2;
}

char *Set<>.byExecutionOrder()(uint64_t a1)
{
  v2 = sub_1D19065AC(a1, sub_1D1808600, sub_1D1805A04);
  sub_1D1906050(&v2);
  return v2;
}

BOOL sub_1D1905DDC()
{
  HMMatterCommand.associatedMatterCommand.getter(&v9);
  if (!v10)
  {
    sub_1D1741A30(&v9, &qword_1EC646A98, &unk_1D1E858B0);
    return 0;
  }

  sub_1D1742190(&v9, v12);
  HMMatterCommand.associatedMatterCommand.getter(&v7);
  if (!v8)
  {
    sub_1D1741A30(&v7, &qword_1EC646A98, &unk_1D1E858B0);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return 0;
  }

  sub_1D1742190(&v7, &v9);
  v0 = v13;
  v1 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v2 = (*(v1 + 48))(v0, v1);
  v3 = v10;
  v4 = v11;
  __swift_project_boxed_opaque_existential_1(&v9, v10);
  v5 = v2 < (*(v4 + 48))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(&v9);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v5;
}

uint64_t sub_1D1905F20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1905F80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1905FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1906050(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D1E0D7A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D190666C(v6);
  return sub_1D1E6897C();
}

void sub_1D190611C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1D19062C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
      v7 = *(sub_1D1E66A7C() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_1D1E66A7C();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1D1906460(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_1D19065AC(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_1D1E6873C();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_1D1716918(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

void sub_1D190666C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1D1E68F9C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D1741B10(0, &qword_1EC6430F8, 0x1E696CBD8);
        v6 = sub_1D1E67C8C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D1906D9C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D1906780(0, v2, 1, a1);
  }
}

void sub_1D1906780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v45 = a1;
  v43 = a2;
  if (a3 != a2)
  {
    v4 = *a4;
    v46 = *a4;
LABEL_9:
    v7 = *(v4 + 8 * a3);
    v44 = a3;
    v8 = a3;
    while (1)
    {
      v9 = *(v4 + 8 * (v8 - 1));
      v6 = v7;
      v5 = v9;
      v10 = [v6 clusterID];
      v11 = [v10 unsignedIntValue];

      ClusterKind.init(rawValue:)(v11);
      v12 = v53;
      if (v53 == 30)
      {
        goto LABEL_5;
      }

      v13 = [v6 expectedValues];
      if (!v13)
      {
        goto LABEL_5;
      }

      v14 = v13;
      v47 = v8 - 1;
      v48 = v8;
      v51 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      v15 = sub_1D1E67C1C();

      v16 = [v6 commandID];
      v50 = [v16 unsignedIntValue];

      v17 = *(v15 + 16);
      v52 = v6;
      if (v17)
      {
        *&v53 = MEMORY[0x1E69E7CC0];
        sub_1D178CFB0(0, v17, 0);
        v18 = v53;
        v19 = 32;
        do
        {
          v55 = *(v15 + v19);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
          swift_dynamicCast();
          v20 = v62;
          *&v53 = v18;
          v22 = *(v18 + 16);
          v21 = *(v18 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1D178CFB0((v21 > 1), v22 + 1, 1);
            v18 = v53;
          }

          *(v18 + 16) = v22 + 1;
          *(v18 + 8 * v22 + 32) = v20;
          v19 += 8;
          --v17;
        }

        while (v17);

        v6 = v52;
      }

      else
      {

        v18 = MEMORY[0x1E69E7CC0];
      }

      v23.value._rawValue = [v6 commandFields];
      if (v23.value._rawValue)
      {
        rawValue = v23.value._rawValue;
        v25 = sub_1D1E675FC();
      }

      else
      {
        v25 = 0;
      }

      v23.value._rawValue = v25;
      MatterCommandFields.init(commandFields:)(v23);
      v26 = v53;
      if ((v12 - 24) >= 4)
      {
        if (v12 == 11)
        {
          v27 = sub_1D18FA3A8();
          v28 = &type metadata for StaticOnOffCluster.Command;
        }

        else
        {
          if (v12 != 17)
          {

            v4 = v46;
            v5 = v51;
LABEL_5:
            v58 = 0;
            v56 = 0u;
            v57 = 0u;
LABEL_6:
            sub_1D1741A30(&v56, &qword_1EC646A98, &unk_1D1E858B0);
            goto LABEL_7;
          }

          v27 = sub_1D18FA3FC();
          v28 = &type metadata for StaticColorControlCluster.Command;
        }
      }

      else
      {
        v27 = sub_1D18FA450();
        v28 = &type metadata for StaticRVCClusterGroup.Command;
      }

      LOBYTE(v55) = v12;
      v62 = v26;
      v49 = *(v27 + 16);
      v29 = sub_1D1E685AC();
      v30 = *(v29 - 8);
      MEMORY[0x1EEE9AC00](v29);
      v32 = &v42 - v31;

      v49(&v55, v50, v18, &v62, v28, v27);
      Description = v28[-1].Description;
      if (Description[6](v32, 1, v28) == 1)
      {

        (*(v30 + 8))(v32, v29);
        v4 = v46;
        v5 = v51;
        v6 = v52;
        goto LABEL_5;
      }

      *(&v57 + 1) = v28;
      v58 = v27;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v56);
      Description[4](boxed_opaque_existential_1, v32, v28);

      v4 = v46;
      v5 = v51;
      v6 = v52;
      if (!*(&v57 + 1))
      {
        goto LABEL_6;
      }

      sub_1D1742190(&v56, v59);
      HMMatterCommand.associatedMatterCommand.getter(&v53);
      if (!v54)
      {
        sub_1D1741A30(&v53, &qword_1EC646A98, &unk_1D1E858B0);
        __swift_destroy_boxed_opaque_existential_1(v59);
LABEL_7:

LABEL_8:
        a3 = v44 + 1;
        if (v44 + 1 == v43)
        {
          return;
        }

        goto LABEL_9;
      }

      sub_1D1742190(&v53, &v56);
      v35 = v60;
      v36 = v61;
      __swift_project_boxed_opaque_existential_1(v59, v60);
      v37 = (*(v36 + 48))(v35, v36);
      v38 = *(&v57 + 1);
      v39 = v58;
      __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
      v40 = (*(v39 + 48))(v38, v39);
      __swift_destroy_boxed_opaque_existential_1(&v56);
      __swift_destroy_boxed_opaque_existential_1(v59);

      if (v37 >= v40)
      {
        goto LABEL_8;
      }

      if (!v4)
      {
        __break(1u);
        return;
      }

      v7 = *(v4 + 8 * v48);
      v41 = v47;
      *(v4 + 8 * v48) = *(v4 + 8 * v47);
      *(v4 + 8 * v41) = v7;
      v8 = v41;
      if (v41 == v45)
      {
        goto LABEL_8;
      }
    }
  }
}

void sub_1D1906D9C(ValueMetadata **a1, uint64_t a2, ValueMetadata **a3, uint64_t a4)
{
  v167 = a1;
  v171 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_176:
    v4 = *v167;
    if (!*v167)
    {
      goto LABEL_216;
    }

    Description = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v158 = Description;
LABEL_179:
      v193 = v158;
      Description = *(v158 + 2);
      if (Description >= 2)
      {
        while (*v171)
        {
          v159 = *&v158[16 * Description];
          v160 = v158;
          v161 = *&v158[16 * Description + 24];
          v162 = v173;
          sub_1D19083E8(&(*v171)->Kind + v159, &(*v171)->Kind + *&v158[16 * Description + 16], &(*v171)->Kind + v161, v4);
          v173 = v162;
          if (v162)
          {
            goto LABEL_187;
          }

          if (v161 < v159)
          {
            goto LABEL_203;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v160 = sub_1D1E0BE44(v160);
          }

          if (Description - 2 >= *(v160 + 2))
          {
            goto LABEL_204;
          }

          v163 = &v160[16 * Description];
          *v163 = v159;
          *(v163 + 1) = v161;
          v193 = v160;
          sub_1D1E0BDB8(Description - 1);
          v158 = v193;
          Description = *(v193 + 2);
          if (Description <= 1)
          {
            goto LABEL_187;
          }
        }

        goto LABEL_214;
      }

LABEL_187:

      return;
    }

LABEL_210:
    v158 = sub_1D1E0BE44(Description);
    goto LABEL_179;
  }

  v165 = a4;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v9 = (v7 + 1);
    v170 = v7;
    if (v7 + 1 >= v6)
    {
      ++v7;
      goto LABEL_51;
    }

    v10 = v7;
    v166 = v8;
    v11 = *v171;
    v190 = *(&(*v171)->Kind + v9);
    *&v187 = *(&v11->Kind + v7);
    v12 = v187;
    Description = v190;
    v4 = v12;
    v13 = v173;
    LODWORD(v177) = sub_1D1905DDC();
    v173 = v13;
    if (v13)
    {

      return;
    }

    v7 += 2;
    v14 = v10 + 2 < v6;
    v176 = v6;
    v175 = v11;
    LOBYTE(v10) = v177;
    if (!v14)
    {
LABEL_41:
      if ((v10 & 1) == 0)
      {
        goto LABEL_42;
      }

LABEL_44:
      v44 = v170;
      v8 = v166;
      if (v7 < v170)
      {
        goto LABEL_207;
      }

      if (v170 < v7)
      {
        v45 = 8 * v7 - 8;
        v46 = 8 * v170;
        v47 = v7;
        do
        {
          if (v44 != --v47)
          {
            v48 = *v171;
            if (!*v171)
            {
              goto LABEL_213;
            }

            v49 = *(&v48->Kind + v46);
            *(&v48->Kind + v46) = *(&v48->Kind + v45);
            *(&v48->Kind + v45) = v49;
          }

          ++v44;
          v45 -= 8;
          v46 += 8;
        }

        while (v44 < v47);
      }

      goto LABEL_51;
    }

    while (1)
    {
      v15 = *(&v11->Kind + v9);
      v9 = v7;
      v16 = *(&v11->Kind + v7);
      v17 = v15;
      v4 = [v16 clusterID];
      Description = [v4 unsignedIntValue];

      ClusterKind.init(rawValue:)(Description);
      v18 = v182;
      if (v182 == 30 || (v19 = [v16 expectedValues]) == 0)
      {
        v189 = 0;
        v187 = 0u;
        v188 = 0u;
LABEL_35:
        sub_1D1741A30(&v187, &qword_1EC646A98, &unk_1D1E858B0);
        goto LABEL_36;
      }

      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      v21 = sub_1D1E67C1C();

      v180 = v16;
      v22 = [v16 commandID];
      LODWORD(v174) = [v22 unsignedIntValue];

      v23 = *(v21 + 16);
      v179 = v9;
      v178 = v17;
      if (v23)
      {
        *&v182 = MEMORY[0x1E69E7CC0];
        sub_1D178CFB0(0, v23, 0);
        Description = v182;
        v24 = 32;
        do
        {
          v185 = *(v21 + v24);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
          swift_dynamicCast();
          v25 = v186;
          *&v182 = Description;
          v27 = *(Description + 16);
          v26 = *(Description + 24);
          if (v27 >= v26 >> 1)
          {
            sub_1D178CFB0((v26 > 1), v27 + 1, 1);
            Description = v182;
          }

          *(Description + 16) = v27 + 1;
          *(Description + 8 * v27 + 32) = v25;
          v24 += 8;
          --v23;
        }

        while (v23);

        v6 = v176;
        v9 = v179;
        v11 = v175;
        v17 = v178;
      }

      else
      {

        Description = MEMORY[0x1E69E7CC0];
      }

      v16 = v180;
      v28.value._rawValue = [v180 commandFields];
      if (v28.value._rawValue)
      {
        rawValue = v28.value._rawValue;
        v4 = sub_1D1E675FC();
      }

      else
      {
        v4 = 0;
      }

      v28.value._rawValue = v4;
      MatterCommandFields.init(commandFields:)(v28);
      v30 = v182;
      if ((v18 - 24) >= 4)
      {
        if (v18 == 11)
        {
          v31 = sub_1D18FA3A8();
          v4 = &type metadata for StaticOnOffCluster.Command;
        }

        else
        {
          if (v18 != 17)
          {

            goto LABEL_34;
          }

          v31 = sub_1D18FA3FC();
          v4 = &type metadata for StaticColorControlCluster.Command;
        }
      }

      else
      {
        v31 = sub_1D18FA450();
        v4 = &type metadata for StaticRVCClusterGroup.Command;
      }

      LOBYTE(v185) = v18;
      v186 = v30;
      v32 = *(v31 + 16);
      v33 = sub_1D1E685AC();
      v172 = &v164;
      v34 = *(v33 - 8);
      MEMORY[0x1EEE9AC00](v33);
      v36 = &v164 - v35;

      v32(&v185, v174, Description, &v186, v4, v31);
      Description = *(v4 - 8);
      if ((*(Description + 48))(v36, 1, v4) == 1)
      {

        (*(v34 + 8))(v36, v33);
        v6 = v176;
        v9 = v179;
        v11 = v175;
        v17 = v178;
        v16 = v180;
LABEL_34:
        v189 = 0;
        v187 = 0u;
        v188 = 0u;
        LOBYTE(v10) = v177;
        goto LABEL_35;
      }

      *(&v188 + 1) = v4;
      v189 = v31;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v187);
      v38 = *(Description + 32);
      Description += 32;
      v38(boxed_opaque_existential_1, v36, v4);

      v6 = v176;
      v9 = v179;
      v11 = v175;
      LOBYTE(v10) = v177;
      v17 = v178;
      v16 = v180;
      if (!*(&v188 + 1))
      {
        goto LABEL_35;
      }

      sub_1D1742190(&v187, &v190);
      Description = v17;
      HMMatterCommand.associatedMatterCommand.getter(&v182);
      if (*(&v183 + 1))
      {
        break;
      }

      sub_1D1741A30(&v182, &qword_1EC646A98, &unk_1D1E858B0);
      __swift_destroy_boxed_opaque_existential_1(&v190);
LABEL_36:

      if (v10)
      {
        v7 = v9;
        goto LABEL_44;
      }

LABEL_37:
      v7 = (v9 + 1);
      if (v9 + 1 == v6)
      {
        v7 = v6;
        goto LABEL_41;
      }
    }

    sub_1D1742190(&v182, &v187);
    v39 = v191;
    v40 = v192;
    __swift_project_boxed_opaque_existential_1(&v190, v191);
    v4 = (*(v40 + 48))(v39, v40);
    v41 = v16;
    v10 = *(&v188 + 1);
    v42 = v189;
    __swift_project_boxed_opaque_existential_1(&v187, *(&v188 + 1));
    v43 = v10;
    LODWORD(v10) = v177;
    Description = (*(v42 + 48))(v43, v42);
    __swift_destroy_boxed_opaque_existential_1(&v187);
    __swift_destroy_boxed_opaque_existential_1(&v190);

    if ((v10 ^ (v4 >= Description)))
    {
      goto LABEL_37;
    }

    v7 = v9;
    if (v10)
    {
      goto LABEL_44;
    }

LABEL_42:
    v8 = v166;
LABEL_51:
    v50 = v171[1];
    if (v7 >= v50)
    {
      goto LABEL_121;
    }

    if (__OFSUB__(v7, v170))
    {
      goto LABEL_206;
    }

    if (v7 - v170 >= v165)
    {
LABEL_121:
      v52 = v170;
LABEL_122:
      if (v7 < v52)
      {
        goto LABEL_205;
      }

      v112 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = v112;
      }

      else
      {
        v8 = sub_1D177D070(0, *(v112 + 2) + 1, 1, v112);
      }

      v4 = *(v8 + 2);
      v113 = *(v8 + 3);
      Description = v4 + 1;
      if (v4 >= v113 >> 1)
      {
        v8 = sub_1D177D070((v113 > 1), v4 + 1, 1, v8);
      }

      *(v8 + 2) = Description;
      v114 = &v8[16 * v4];
      *(v114 + 4) = v170;
      *(v114 + 5) = v7;
      v115 = *v167;
      if (!*v167)
      {
        goto LABEL_215;
      }

      if (!v4)
      {
LABEL_3:
        v6 = v171[1];
        if (v7 >= v6)
        {
          goto LABEL_176;
        }

        continue;
      }

      while (1)
      {
        v116 = Description - 1;
        if (Description >= 4)
        {
          break;
        }

        if (Description == 3)
        {
          v117 = *(v8 + 4);
          v118 = *(v8 + 5);
          v127 = __OFSUB__(v118, v117);
          v119 = v118 - v117;
          v120 = v127;
LABEL_142:
          if (v120)
          {
            goto LABEL_194;
          }

          v133 = &v8[16 * Description];
          v135 = *v133;
          v134 = *(v133 + 1);
          v136 = __OFSUB__(v134, v135);
          v137 = v134 - v135;
          v138 = v136;
          if (v136)
          {
            goto LABEL_197;
          }

          v139 = &v8[16 * v116 + 32];
          v141 = *v139;
          v140 = *(v139 + 1);
          v127 = __OFSUB__(v140, v141);
          v142 = v140 - v141;
          if (v127)
          {
            goto LABEL_200;
          }

          if (__OFADD__(v137, v142))
          {
            goto LABEL_201;
          }

          if (v137 + v142 >= v119)
          {
            if (v119 < v142)
            {
              v116 = Description - 2;
            }

            goto LABEL_163;
          }

          goto LABEL_156;
        }

        v143 = &v8[16 * Description];
        v145 = *v143;
        v144 = *(v143 + 1);
        v127 = __OFSUB__(v144, v145);
        v137 = v144 - v145;
        v138 = v127;
LABEL_156:
        if (v138)
        {
          goto LABEL_196;
        }

        v146 = &v8[16 * v116];
        v148 = *(v146 + 4);
        v147 = *(v146 + 5);
        v127 = __OFSUB__(v147, v148);
        v149 = v147 - v148;
        if (v127)
        {
          goto LABEL_199;
        }

        if (v149 < v137)
        {
          goto LABEL_3;
        }

LABEL_163:
        v4 = v116 - 1;
        if (v116 - 1 >= Description)
        {
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
          goto LABEL_209;
        }

        if (!*v171)
        {
          goto LABEL_212;
        }

        v154 = v8;
        Description = *&v8[16 * v4 + 32];
        v155 = *&v8[16 * v116 + 40];
        v156 = v173;
        sub_1D19083E8(&(*v171)->Kind + Description, &(*v171)->Kind + *&v8[16 * v116 + 32], &(*v171)->Kind + v155, v115);
        v173 = v156;
        if (v156)
        {
          goto LABEL_187;
        }

        if (v155 < Description)
        {
          goto LABEL_190;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v154 = sub_1D1E0BE44(v154);
        }

        if (v4 >= *(v154 + 2))
        {
          goto LABEL_191;
        }

        v157 = &v154[16 * v4];
        *(v157 + 4) = Description;
        *(v157 + 5) = v155;
        v193 = v154;
        sub_1D1E0BDB8(v116);
        v8 = v193;
        Description = *(v193 + 2);
        if (Description <= 1)
        {
          goto LABEL_3;
        }
      }

      v121 = &v8[16 * Description + 32];
      v122 = *(v121 - 64);
      v123 = *(v121 - 56);
      v127 = __OFSUB__(v123, v122);
      v124 = v123 - v122;
      if (v127)
      {
        goto LABEL_192;
      }

      v126 = *(v121 - 48);
      v125 = *(v121 - 40);
      v127 = __OFSUB__(v125, v126);
      v119 = v125 - v126;
      v120 = v127;
      if (v127)
      {
        goto LABEL_193;
      }

      v128 = &v8[16 * Description];
      v130 = *v128;
      v129 = *(v128 + 1);
      v127 = __OFSUB__(v129, v130);
      v131 = v129 - v130;
      if (v127)
      {
        goto LABEL_195;
      }

      v127 = __OFADD__(v119, v131);
      v132 = v119 + v131;
      if (v127)
      {
        goto LABEL_198;
      }

      if (v132 >= v124)
      {
        v150 = &v8[16 * v116 + 32];
        v152 = *v150;
        v151 = *(v150 + 1);
        v127 = __OFSUB__(v151, v152);
        v153 = v151 - v152;
        if (v127)
        {
          goto LABEL_202;
        }

        if (v119 < v153)
        {
          v116 = Description - 2;
        }

        goto LABEL_163;
      }

      goto LABEL_142;
    }

    break;
  }

  v51 = (v170 + v165);
  if (__OFADD__(v170, v165))
  {
    goto LABEL_208;
  }

  if (v51 >= v50)
  {
    v51 = v171[1];
  }

  if (v51 < v170)
  {
LABEL_209:
    __break(1u);
    goto LABEL_210;
  }

  if (v7 == v51)
  {
    v52 = v170;
    goto LABEL_122;
  }

  v166 = v8;
  v4 = *v171;
  v168 = v51;
  v169 = v4;
  while (2)
  {
    v53 = *(v4 + 8 * v7);
    v54 = v7;
    v172 = v7;
LABEL_66:
    v175 = (v54 - 1);
    v55 = *(v4 + 8 * (v54 - 1));
    v56 = v53;
    v57 = v55;
    v58 = [v56 clusterID];
    Description = [v58 unsignedIntValue];

    ClusterKind.init(rawValue:)(Description);
    v59 = v182;
    if (v182 == 30 || (v60 = [v56 expectedValues]) == 0)
    {
      v189 = 0;
      v187 = 0u;
      v188 = 0u;
      v4 = v169;
      goto LABEL_62;
    }

    v61 = v60;
    v174 = v54;
    v180 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v62 = sub_1D1E67C1C();

    v63 = [v56 commandID];
    LODWORD(v178) = [v63 unsignedIntValue];

    v64 = *(v62 + 16);
    v179 = v56;
    if (v64)
    {
      *&v182 = MEMORY[0x1E69E7CC0];
      sub_1D178CFB0(0, v64, 0);
      Description = v182;
      v65 = 32;
      do
      {
        v185 = *(v62 + v65);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
        swift_dynamicCast();
        v66 = v186;
        *&v182 = Description;
        v68 = *(Description + 16);
        v67 = *(Description + 24);
        if (v68 >= v67 >> 1)
        {
          sub_1D178CFB0((v67 > 1), v68 + 1, 1);
          Description = v182;
        }

        *(Description + 16) = v68 + 1;
        *(Description + 8 * v68 + 32) = v66;
        v65 += 8;
        --v64;
      }

      while (v64);

      v56 = v179;
    }

    else
    {

      Description = MEMORY[0x1E69E7CC0];
    }

    v69.value._rawValue = [v56 commandFields];
    if (v69.value._rawValue)
    {
      v70 = v69.value._rawValue;
      v71 = sub_1D1E675FC();
    }

    else
    {
      v71 = 0;
    }

    v69.value._rawValue = v71;
    MatterCommandFields.init(commandFields:)(v69);
    v72 = v182;
    if ((v59 - 24) < 4)
    {
      v73 = sub_1D18FA450();
      v74 = &type metadata for StaticRVCClusterGroup.Command;
      goto LABEL_80;
    }

    if (v59 != 11)
    {
      if (v59 == 17)
      {
        v73 = sub_1D18FA3FC();
        v74 = &type metadata for StaticColorControlCluster.Command;
        goto LABEL_80;
      }

      v4 = v169;
      v57 = v180;
LABEL_111:
      v189 = 0;
      v187 = 0u;
      v188 = 0u;
      v7 = v172;
LABEL_62:
      sub_1D1741A30(&v187, &qword_1EC646A98, &unk_1D1E858B0);

LABEL_63:
      goto LABEL_64;
    }

    v73 = sub_1D18FA3A8();
    v74 = &type metadata for StaticOnOffCluster.Command;
LABEL_80:
    LOBYTE(v185) = v59;
    v186 = v72;
    v176 = *(v73 + 16);
    v75 = sub_1D1E685AC();
    v177 = &v164;
    v76 = *(v75 - 8);
    MEMORY[0x1EEE9AC00](v75);
    v78 = &v164 - v77;

    v176(&v185, v178, Description, &v186, v74, v73);
    Description = v74[-1].Description;
    if ((*(Description + 48))(v78, 1, v74) == 1)
    {

      (*(v76 + 8))(v78, v75);
      v4 = v169;
      v57 = v180;
      v56 = v179;
      goto LABEL_111;
    }

    *(&v188 + 1) = v74;
    v189 = v73;
    v79 = __swift_allocate_boxed_opaque_existential_1(&v187);
    v80 = *(Description + 32);
    Description += 32;
    v80(v79, v78, v74);

    v57 = v180;
    if (!*(&v188 + 1))
    {
      v7 = v172;
      v4 = v169;
      v56 = v179;
      goto LABEL_62;
    }

    sub_1D1742190(&v187, &v190);
    v81 = [v57 clusterID];
    v82 = [v81 unsignedIntValue];

    ClusterKind.init(rawValue:)(v82);
    v83 = v186;
    if (v186 == 30)
    {
      goto LABEL_114;
    }

    v84 = [v57 expectedValues];
    if (!v84)
    {
      goto LABEL_114;
    }

    v85 = v84;
    v86 = sub_1D1E67C1C();

    v87 = [v57 commandID];
    LODWORD(v178) = [v87 unsignedIntValue];

    v88 = *(v86 + 16);
    if (v88)
    {
      v186 = MEMORY[0x1E69E7CC0];
      sub_1D178CFB0(0, v88, 0);
      v89 = v186;
      v90 = 32;
      do
      {
        v181 = *(v86 + v90);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
        swift_dynamicCast();
        v91 = v185;
        v186 = v89;
        v93 = *(v89 + 16);
        v92 = *(v89 + 24);
        if (v93 >= v92 >> 1)
        {
          sub_1D178CFB0((v92 > 1), v93 + 1, 1);
          v89 = v186;
        }

        *(v89 + 16) = v93 + 1;
        *(v89 + 8 * v93 + 32) = v91;
        v90 += 8;
        --v88;
      }

      while (v88);

      v57 = v180;
    }

    else
    {

      v89 = MEMORY[0x1E69E7CC0];
    }

    v94.value._rawValue = [v57 commandFields];
    if (v94.value._rawValue)
    {
      v95 = v94.value._rawValue;
      v96 = sub_1D1E675FC();
    }

    else
    {
      v96 = 0;
    }

    v94.value._rawValue = v96;
    MatterCommandFields.init(commandFields:)(v94);
    v97 = v186;
    if ((v83 - 24) >= 4)
    {
      if (v83 == 11)
      {
        v98 = sub_1D18FA3A8();
        v99 = &type metadata for StaticOnOffCluster.Command;
      }

      else
      {
        if (v83 != 17)
        {

LABEL_114:
          v184 = 0;
          v182 = 0u;
          v183 = 0u;
          v7 = v172;
          v4 = v169;
LABEL_116:
          Description = v179;
          sub_1D1741A30(&v182, &qword_1EC646A98, &unk_1D1E858B0);
          __swift_destroy_boxed_opaque_existential_1(&v190);

          goto LABEL_63;
        }

        v98 = sub_1D18FA3FC();
        v99 = &type metadata for StaticColorControlCluster.Command;
      }
    }

    else
    {
      v98 = sub_1D18FA450();
      v99 = &type metadata for StaticRVCClusterGroup.Command;
    }

    LOBYTE(v181) = v83;
    v185 = v97;
    v177 = *(v98 + 16);
    v100 = sub_1D1E685AC();
    v101 = *(v100 - 8);
    MEMORY[0x1EEE9AC00](v100);
    v103 = &v164 - v102;

    (v177)(&v181, v178, v89, &v185, v99, v98);
    v104 = v99[-1].Description;
    if (v104[6](v103, 1, v99) == 1)
    {

      (*(v101 + 8))(v103, v100);
      v57 = v180;
      goto LABEL_114;
    }

    *(&v183 + 1) = v99;
    v184 = v98;
    v105 = __swift_allocate_boxed_opaque_existential_1(&v182);
    v104[4](v105, v103, v99);

    if (!*(&v183 + 1))
    {
      v7 = v172;
      v4 = v169;
      v57 = v180;
      goto LABEL_116;
    }

    sub_1D1742190(&v182, &v187);
    v106 = v191;
    v107 = v192;
    __swift_project_boxed_opaque_existential_1(&v190, v191);
    v108 = (*(v107 + 48))(v106, v107);
    v109 = *(&v188 + 1);
    v110 = v189;
    __swift_project_boxed_opaque_existential_1(&v187, *(&v188 + 1));
    Description = (*(v110 + 48))(v109, v110);
    __swift_destroy_boxed_opaque_existential_1(&v187);
    __swift_destroy_boxed_opaque_existential_1(&v190);

    v7 = v172;
    if (v108 >= Description)
    {
      v4 = v169;
LABEL_64:
      if (++v7 == v168)
      {
        v7 = v168;
        v8 = v166;
        goto LABEL_121;
      }

      continue;
    }

    break;
  }

  v4 = v169;
  if (v169)
  {
    v53 = *(&v169->Kind + v174);
    v111 = v175;
    *(&v169->Kind + v174) = *(&v169->Kind + v175);
    *(v4 + 8 * v111) = v53;
    v54 = v111;
    if (v111 == v170)
    {
      goto LABEL_64;
    }

    goto LABEL_66;
  }

  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
}