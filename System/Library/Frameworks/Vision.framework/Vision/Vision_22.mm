__n128 FaceObservation.Gaze.location.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 FaceObservation.Gaze.locationBounds.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t FaceObservation.Gaze.originatingRequestDescriptor.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for FaceObservation.Gaze(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

unint64_t sub_1A5D024EC()
{
  v1 = *v0;
  v2 = 0x6F69746365726964;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0xD00000000000001CLL;
  }

  v4 = 0x746E6F7A69726F68;
  if (v1 != 3)
  {
    v4 = 0x6B73614D657A6167;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461636F6CLL;
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

uint64_t sub_1A5D025E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A5D18C6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A5D02610(uint64_t a1)
{
  v2 = sub_1A5D16A84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D0264C(uint64_t a1)
{
  v2 = sub_1A5D16A84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Gaze.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F57C8, &qword_1A60281C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D16A84();
  sub_1A5FD4CDC();
  LOBYTE(v16) = *v3;
  v19 = 0;
  sub_1A5D16AD8();
  sub_1A5FD4A5C();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v16 = *(v3 + 8);
    LOBYTE(v17) = v9;
    v19 = 1;
    sub_1A5B23D90();
    sub_1A5FD4A0C();
    v10 = *(v3 + 64);
    v11 = *(v3 + 48);
    v16 = *(v3 + 32);
    v17 = v11;
    v18 = v10;
    v19 = 2;
    sub_1A5B0A30C();
    sub_1A5FD4A0C();
    v15 = type metadata accessor for FaceObservation.Gaze(0);
    LOBYTE(v16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8, &unk_1A60279F0);
    sub_1A5C1EC64(&qword_1EB1F57D8, &qword_1EB1F4EC8, &unk_1A60279F0, MEMORY[0x1E6968078]);
    sub_1A5FD4A0C();
    v12 = v15;
    LOBYTE(v16) = 4;
    type metadata accessor for PixelBufferObservation(0);
    sub_1A5D13500(&qword_1EB1F1788, type metadata accessor for PixelBufferObservation, &protocol conformance descriptor for PixelBufferObservation);
    sub_1A5FD4A0C();
    LOBYTE(v16) = 5;
    sub_1A5FD367C();
    sub_1A5D13500(&qword_1EB1F0D58, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1A5FD4A0C();
    LOWORD(v16) = *(v3 + *(v12 + 40));
    v19 = 6;
    sub_1A5B0A760();
    sub_1A5FD4A0C();
  }

  return (*(v6 + 8))(v8, v5);
}

double FaceObservation.Gaze.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1A5FD367C();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0488, &qword_1A5FFCFD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v31 = &v28 - v6;
  v30 = type metadata accessor for PixelBufferObservation(0);
  v7 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v28 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6F8, qword_1A60211B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8, &unk_1A60279F0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F57C0, &qword_1A60281B8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v28 - v18;
  MEMORY[0x1AC555420](*v1, v17);
  if (v1[24] == 1)
  {
    sub_1A5FD4C3C();
  }

  else
  {
    v34 = *(v1 + 8);
    sub_1A5FD4C3C();
    sub_1A5B23DE4();
    sub_1A5FD3CBC();
  }

  if (v1[64] == 1)
  {
    sub_1A5FD4C3C();
  }

  else
  {
    v20 = *(v1 + 3);
    v34 = *(v1 + 2);
    v35 = v20;
    sub_1A5FD4C3C();
    sub_1A5B0F6CC();
    sub_1A5FD3CBC();
  }

  v21 = type metadata accessor for FaceObservation.Gaze(0);
  sub_1A5B31A34(&v1[v21[7]], v19, &qword_1EB1F57C0, &qword_1A60281B8);
  if ((*(v13 + 48))(v19, 1, v12) == 1)
  {
    sub_1A5FD4C3C();
  }

  else
  {
    (*(v13 + 32))(v15, v19, v12);
    sub_1A5FD4C3C();
    sub_1A5C1EC64(&qword_1EB1F57E0, &qword_1EB1F4EC8, &unk_1A60279F0, MEMORY[0x1E6968080]);
    sub_1A5FD3CBC();
    (*(v13 + 8))(v15, v12);
  }

  v23 = v32;
  v22 = v33;
  sub_1A5B31A34(&v1[v21[8]], v11, &qword_1EB1EF6F8, qword_1A60211B0);
  if ((*(v7 + 48))(v11, 1, v30) == 1)
  {
    sub_1A5FD4C3C();
  }

  else
  {
    v24 = v28;
    sub_1A5D1A040(v11, v28, type metadata accessor for PixelBufferObservation);
    sub_1A5FD4C3C();
    sub_1A5D13500(&qword_1EB1F1968, type metadata accessor for PixelBufferObservation, &protocol conformance descriptor for PixelBufferObservation);
    sub_1A5FD3CBC();
    sub_1A5D16B80(v24, type metadata accessor for PixelBufferObservation);
  }

  v25 = v31;
  sub_1A5B31A34(&v2[v21[9]], v31, &qword_1EB1F0488, &qword_1A5FFCFD0);
  if ((*(v23 + 48))(v25, 1, v22) == 1)
  {
    sub_1A5FD4C3C();
  }

  else
  {
    v26 = v29;
    (*(v23 + 32))(v29, v25, v22);
    sub_1A5FD4C3C();
    sub_1A5D13500(&qword_1EB1EEA78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1A5FD3CBC();
    (*(v23 + 8))(v26, v22);
  }

  if (*&v2[v21[10]] < 0xFFF8u)
  {
    LOWORD(v34) = *&v2[v21[10]];
    sub_1A5FD4C3C();
    sub_1A5B0A85C();
    sub_1A5FD3CBC();
  }

  else
  {
    sub_1A5FD4C3C();
  }

  return result;
}

uint64_t FaceObservation.Gaze.hashValue.getter()
{
  sub_1A5FD4C1C();
  FaceObservation.Gaze.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t FaceObservation.Gaze.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0488, &qword_1A5FFCFD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6F8, qword_1A60211B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F57C0, &qword_1A60281B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F57E8, &qword_1A60281C8);
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = type metadata accessor for FaceObservation.Gaze(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1A5D16A84();
  v18 = v35;
  sub_1A5FD4CCC();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v35 = v10;
  v30 = v7;
  v19 = v16;
  v20 = v32;
  v40 = 0;
  sub_1A5D16B2C();
  sub_1A5FD497C();
  *v19 = v37;
  v40 = 1;
  sub_1A5B23E38();
  sub_1A5FD492C();
  v21 = v38;
  *(v19 + 8) = v37;
  *(v19 + 24) = v21;
  v40 = 2;
  sub_1A5B0A400();
  sub_1A5FD492C();
  v22 = v39;
  v23 = v38;
  *(v19 + 32) = v37;
  *(v19 + 48) = v23;
  *(v19 + 64) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8, &unk_1A60279F0);
  LOBYTE(v37) = 3;
  sub_1A5C1EC64(&qword_1EB1F57F8, &qword_1EB1F4EC8, &unk_1A60279F0, MEMORY[0x1E6968098]);
  v24 = v35;
  sub_1A5FD492C();
  sub_1A5B60994(v24, v19 + v14[7], &qword_1EB1F57C0, &qword_1A60281B8);
  type metadata accessor for PixelBufferObservation(0);
  LOBYTE(v37) = 4;
  sub_1A5D13500(&qword_1EB1F17B8, type metadata accessor for PixelBufferObservation, &protocol conformance descriptor for PixelBufferObservation);
  v25 = v30;
  v26 = v34;
  sub_1A5FD492C();
  sub_1A5B60994(v25, v19 + v14[8], &qword_1EB1EF6F8, qword_1A60211B0);
  sub_1A5FD367C();
  LOBYTE(v37) = 5;
  sub_1A5D13500(&qword_1EB1EE7A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v27 = v31;
  sub_1A5FD492C();
  sub_1A5B60994(v27, v19 + v14[9], &qword_1EB1F0488, &qword_1A5FFCFD0);
  v40 = 6;
  sub_1A5B0A454();
  sub_1A5FD492C();
  (*(v33 + 8))(v13, v26);
  *(v19 + MEMORY[0x28]) = v37;
  sub_1A5D19FD8(v19, v20, type metadata accessor for FaceObservation.Gaze);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return sub_1A5D16B80(v19, type metadata accessor for FaceObservation.Gaze);
}

uint64_t sub_1A5D037F0()
{
  sub_1A5FD4C1C();
  FaceObservation.Gaze.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D03834(uint64_t a1)
{
  sub_1A5FD4C1C();
  FaceObservation.Gaze.hash(into:)(v2);
  return sub_1A5FD4C6C();
}

void sub_1A5D03890(__int16 *a1@<X0>, uint64_t a2@<X8>, simd_float4x4 a3@<0:Q0, 16:Q1, 32:Q2, 48:Q3>)
{
  v4 = *a1;
  *&v5 = simd_quaternion(a3);
  *a2 = a3;
  *(a2 + 64) = v5;
  *(a2 + 80) = v4;
}

uint64_t sub_1A5D038FC()
{
  v1 = 0x696E726574617571;
  if (*v0 != 1)
  {
    v1 = 0x7470697263736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x78697274616DLL;
  }
}

uint64_t sub_1A5D03958@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A5D18ED0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A5D03980(uint64_t a1)
{
  v2 = sub_1A5D16DA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D039BC(uint64_t a1)
{
  v2 = sub_1A5D16DA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Pose.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5800, &unk_1A60281D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = *v1;
  v20 = v1[1];
  v21 = v8;
  v9 = v1[2];
  v18 = v1[3];
  v19 = v9;
  v17 = v1[4];
  v10 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D16DA0();
  sub_1A5FD4CDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2278, &qword_1A6026DB0);
  v11 = swift_allocObject();
  v13 = v20;
  v12 = v21;
  v11[1] = xmmword_1A600F570;
  v11[2] = v12;
  v14 = v18;
  v15 = v19;
  v11[3] = v13;
  v11[4] = v15;
  v11[5] = v14;
  *&v22 = v11;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2210, &unk_1A60281E0);
  sub_1A5C1EA40(&qword_1EB1F2280, &qword_1EB1F2288, MEMORY[0x1E69E74B0], MEMORY[0x1E69E6300]);
  sub_1A5FD4A5C();

  if (!v2)
  {
    v22 = v17;
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2228, &qword_1A600FD50);
    sub_1A5C1EC64(&qword_1EB1F2288, &qword_1EB1F2228, &qword_1A600FD50, MEMORY[0x1E69E74B0]);
    sub_1A5FD4A5C();
    LOWORD(v22) = v10;
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE758, &unk_1A5FF1270);
    sub_1A5BBE1A8();
    sub_1A5FD4A5C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t FaceObservation.Pose.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5808, &qword_1A60281F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D16DA0();
  sub_1A5FD4CCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2210, &unk_1A60281E0);
  v22 = 0;
  sub_1A5C1EA40(&qword_1EB1F2218, &qword_1EB1F2220, MEMORY[0x1E69E74C0], MEMORY[0x1E69E6330]);
  sub_1A5FD497C();
  result = v21;
  v10 = *(v21 + 16);
  if (!v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v10 == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v10 < 3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v10 != 3)
  {
    v11 = *(v21 + 32);
    v19 = *(v21 + 48);
    v20 = v11;
    v12 = *(v21 + 64);
    v17 = *(v21 + 80);
    v18 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2228, &qword_1A600FD50);
    v22 = 1;
    sub_1A5C1EC64(&qword_1EB1F2220, &qword_1EB1F2228, &qword_1A600FD50, MEMORY[0x1E69E74C0]);
    sub_1A5FD497C();
    v16 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE758, &unk_1A5FF1270);
    v22 = 2;
    sub_1A5D16DF4();
    sub_1A5FD497C();
    (*(v6 + 8))(v8, v5);
    v13 = v21;
    v14 = v19;
    *a2 = v20;
    *(a2 + 16) = v14;
    v15 = v17;
    *(a2 + 32) = v18;
    *(a2 + 48) = v15;
    *(a2 + 64) = v16;
    *(a2 + 80) = v13;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1A5D0403C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result <= 127)
  {
    if (result <= 7)
    {
      switch(result)
      {
        case 1:
          *a2 = 0;
          return result;
        case 2:
          *a2 = 1;
          return result;
        case 4:
          *a2 = 2;
          return result;
      }
    }

    else if (result > 31)
    {
      if (result == 32)
      {
        *a2 = 5;
        return result;
      }

      if (result == 64)
      {
        *a2 = 6;
        return result;
      }
    }

    else
    {
      if (result == 8)
      {
        *a2 = 3;
        return result;
      }

      if (result == 16)
      {
        *a2 = 4;
        return result;
      }
    }
  }

  else if (result > 2047)
  {
    if (result >= 0x2000)
    {
      if (result == 0x2000)
      {
        *a2 = 13;
        return result;
      }

      if (result == 0x4000)
      {
        *a2 = 14;
        return result;
      }
    }

    else
    {
      if (result == 2048)
      {
        *a2 = 11;
        return result;
      }

      if (result == 4096)
      {
        *a2 = 12;
        return result;
      }
    }
  }

  else if (result > 511)
  {
    if (result == 512)
    {
      *a2 = 9;
      return result;
    }

    if (result == 1024)
    {
      *a2 = 10;
      return result;
    }
  }

  else
  {
    if (result == 128)
    {
      *a2 = 7;
      return result;
    }

    if (result == 256)
    {
      *a2 = 8;
      return result;
    }
  }

  MEMORY[0x1AC554600](0x656D676573206F4ELL, 0xEB0000000020746ELL);
  type metadata accessor for VNFaceSegment(0);
  sub_1A5FD481C();
  result = sub_1A5FD483C();
  __break(1u);
  return result;
}

Vision::FaceObservation::Segments::Segment_optional __swiftcall FaceObservation.Segments.Segment.init(rawValue:)(Vision::FaceObservation::Segments::Segment_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= Vision_FaceObservation_Segments_Segment_unknownDefault)
  {
    value = Vision_FaceObservation_Segments_Segment_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t sub_1A5D04330()
{
  sub_1A5FD4C1C();
  sub_1A5FD4C3C();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D043A4(uint64_t a1)
{
  sub_1A5FD4C1C();
  sub_1A5FD4C3C();
  return sub_1A5FD4C6C();
}

CVBufferRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FaceObservation.Segments.createMaskImage(of:)(Swift::OpaquePointer of)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v51[0] = 0;
  v44 = v5;
  UsingIOSurface = VNCVPixelBufferCreateUsingIOSurface(v5, v6, 0x4C303038u, 0, v51);
  v8 = v51[0];
  if (!v51[0])
  {
    v36 = UsingIOSurface;
    sub_1A5B16774();
    swift_allocError();
    *v37 = v36;
    *(v37 + 8) = 0;
    *(v37 + 16) = 0;
    *(v37 + 20) = 11;
    swift_willThrow();

    return v8;
  }

  v9 = v51[0];
  CVPixelBufferLockBaseAddress(v9, 0);
  result = CVPixelBufferGetBaseAddress(v9);
  v42 = result;
  if (result)
  {
    if ((v44 * v6) >> 64 != (v44 * v6) >> 63)
    {
      goto LABEL_56;
    }

    pixelBuffer = v9;
    v43 = v3;
    bzero(result, v44 * v6);
    v11 = *(of._rawValue + 2);
    v12 = MEMORY[0x1E69E7CC0];
    v40 = v6;
    if (v11)
    {
      v45 = MEMORY[0x1E69E7CC0];
      sub_1A5D0E288(0, v11, 0);
      v12 = v45;
      v13 = of._rawValue + 32;
      v14 = *(v45 + 16);
      do
      {
        v16 = *v13++;
        v15 = v16;
        v45 = v12;
        v17 = *(v12 + 24);
        if (v14 >= v17 >> 1)
        {
          sub_1A5D0E288((v17 > 1), v14 + 1, 1);
          v12 = v45;
        }

        *(v12 + 16) = v14 + 1;
        *(v12 + v14++ + 32) = v15;
        --v11;
      }

      while (v11);
      v6 = v40;
    }

    v18 = sub_1A5D18FF0(v12);

    v19 = v43;
    if (v6 < 0)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v38 = v8;
    if (v6)
    {
      if ((v44 & 0x8000000000000000) == 0)
      {
        v41 = 0;
        v20 = v4 >> 62;
        v21 = v18 + 56;
        while (!v44)
        {
LABEL_14:
          if (++v41 == v40)
          {
            goto LABEL_44;
          }
        }

        v22 = 0;
        v23 = v41 * v44;
        while (1)
        {
          if ((v41 * v44) >> 64 != (v41 * v44) >> 63)
          {
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          v24 = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            goto LABEL_48;
          }

          if (v20 > 1)
          {
            if (v20 != 2)
            {
              goto LABEL_59;
            }

            if (v24 < *(v19 + 16))
            {
              goto LABEL_49;
            }

            if (v24 >= *(v19 + 24))
            {
              goto LABEL_52;
            }

            v26 = sub_1A5FD33EC();
            if (!v26)
            {
              goto LABEL_61;
            }

            v27 = v26;
            v28 = sub_1A5FD341C();
            v29 = v24 - v28;
            if (__OFSUB__(v24, v28))
            {
              goto LABEL_54;
            }
          }

          else
          {
            if (!v20)
            {
              if (v24 >= BYTE6(v4))
              {
                goto LABEL_50;
              }

              LOBYTE(v45) = v19;
              *(&v45 + 1) = *(&v43 + 1);
              *(&v45 + 5) = *(&v43 + 5);
              HIBYTE(v45) = HIBYTE(v43);
              v46 = v4;
              v47 = BYTE2(v4);
              v48 = BYTE3(v4);
              v49 = BYTE4(v4);
              v50 = BYTE5(v4);
              v25 = *(&v45 + v24);
              if (!*(v18 + 16))
              {
                goto LABEL_17;
              }

              goto LABEL_37;
            }

            if (v24 < v43 || v24 >= v43 >> 32)
            {
              goto LABEL_51;
            }

            v30 = sub_1A5FD33EC();
            if (!v30)
            {
              goto LABEL_60;
            }

            v27 = v30;
            v31 = sub_1A5FD341C();
            v29 = v24 - v31;
            if (__OFSUB__(v24, v31))
            {
              goto LABEL_53;
            }
          }

          v25 = *(v27 + v29);
          v19 = v43;
          if (!*(v18 + 16))
          {
            goto LABEL_17;
          }

LABEL_37:
          v32 = MEMORY[0x1AC555400](*(v18 + 40), v25, 1);
          v33 = -1 << *(v18 + 32);
          v34 = v32 & ~v33;
          if ((*(v21 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
          {
            v35 = ~v33;
            while (*(*(v18 + 48) + v34) != v25)
            {
              v34 = (v34 + 1) & v35;
              if (((*(v21 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            if (((250 - v25) & 0xFFFFFF00) != 0)
            {
              goto LABEL_55;
            }

            *(v42 + v24) = -6 - v25;
          }

LABEL_17:
          if (++v22 == v44)
          {
            goto LABEL_14;
          }
        }
      }

LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
    }

LABEL_44:

    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);

    return v38;
  }

  __break(1u);
  return result;
}

CVBufferRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FaceObservation.Segments.createProbabilityImage(of:normalize:)(Vision::FaceObservation::Segments::Segment of, Swift::Bool normalize)
{
  v4 = v2;
  v70[1] = *MEMORY[0x1E69E9840];
  v6 = *of;
  v7 = *(v2 + 56);
  v8 = *(v2 + 64);
  v63 = *(v2 + 72);
  v70[0] = 0;
  UsingIOSurface = VNCVPixelBufferCreateUsingIOSurface(v7, v8, 0x4C303066u, 0, v70);
  v10 = v70[0];
  if (!v70[0])
  {
    v20 = UsingIOSurface;
    sub_1A5B16774();
    swift_allocError();
    *v21 = v20;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *(v21 + 20) = 11;
    swift_willThrow();
    goto LABEL_41;
  }

  v11 = v70[0];
  CVPixelBufferLockBaseAddress(v11, 0);
  __dst = CVPixelBufferGetBaseAddress(v11);
  if (!__dst)
  {
    __break(1u);
LABEL_55:
    sub_1A5FD340C();
    goto LABEL_56;
  }

  if (!*(v63.i64[0] + 16) || (v12 = sub_1A5D0E0CC(v6), (v13 & 1) == 0))
  {
    *&__src[0] = 0;
    *(&__src[0] + 1) = 0xE000000000000000;
    sub_1A5FD46AC();
    MEMORY[0x1AC554600](0xD000000000000010, 0x80000001A605A250);
    sub_1A5FD481C();
    sub_1A5B16774();
    swift_allocError();
    *v19 = __src[0];
    *(v19 + 16) = 0;
    *(v19 + 20) = 2;
    swift_willThrow();
LABEL_9:
    CVPixelBufferUnlockBaseAddress(v11, 0);

LABEL_41:
    return v10;
  }

  v14 = (*(v63.i64[0] + 56) + 16 * v12);
  v15 = *v14;
  v16 = v14[1];
  v17 = v16 >> 62;
  v55 = v15;
  if ((v16 >> 62) <= 1)
  {
    v18 = HIDWORD(v15);
    if (!v17)
    {
      *&__src[0] = v15;
      WORD4(__src[0]) = v16;
      BYTE10(__src[0]) = BYTE2(v16);
      BYTE11(__src[0]) = BYTE3(v16);
      BYTE12(__src[0]) = BYTE4(v16);
      BYTE13(__src[0]) = BYTE5(v16);
      memcpy(__dst, __src, BYTE6(v16));
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  if (v17 != 2)
  {
    goto LABEL_25;
  }

  v56 = *(v15 + 16);

  v51 = sub_1A5FD33EC();
  if (!v51)
  {
    goto LABEL_55;
  }

  v22 = sub_1A5FD341C();
  if (__OFSUB__(v56, v22))
  {
    goto LABEL_47;
  }

  v57 = (v56 - v22 + v51);
  v52 = v16;
  sub_1A5FD340C();
  v23 = v57;
  if (!v57)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v18 = *(v15 + 16);
  v24 = *(v15 + 24);
  v25 = v24 - v18;
  v26 = __dst;
  if (__OFSUB__(v24, v18))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_18:
    v49 = v18;
    if (v15 <= v15 >> 32)
    {

      v53 = sub_1A5FD33EC();
      if (v53)
      {
        v27 = sub_1A5FD341C();
        if (!__OFSUB__(v15, v27))
        {
          v58 = (v15 - v27 + v53);
          v52 = v16;
          result = sub_1A5FD340C();
          v23 = v58;
          if (v58)
          {
            v25 = (v49 - v15);
            v26 = __dst;
            if (!__OFSUB__(v49, v15))
            {
              if ((v25 & 0x80000000) == 0)
              {
                goto LABEL_24;
              }

LABEL_51:
              __break(1u);
              goto LABEL_52;
            }

LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        goto LABEL_48;
      }

LABEL_57:
      result = sub_1A5FD340C();
      goto LABEL_58;
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_24:
  memmove(v26, v23, v25);
  v16 = v52;
LABEL_25:
  if (!normalize)
  {
    sub_1A5B066DC(v15, v16);
LABEL_40:
    CVPixelBufferUnlockBaseAddress(v11, 0);
    goto LABEL_41;
  }

  v29 = *(v4 + 16);
  __src[0] = *v4;
  __src[1] = v29;
  __src[2] = *(v4 + 32);
  v66 = *(v4 + 48);
  v67 = v7;
  v68 = v8;
  v69 = v63;
  v30 = sub_1A5D04E08();
  if (v3)
  {
    sub_1A5B066DC(v15, v16);
    goto LABEL_9;
  }

  v31 = v30;
  CVPixelBufferLockBaseAddress(v30, 1uLL);
  result = CVPixelBufferGetBaseAddress(v31);
  if (result)
  {
    v54 = v16;
    v32 = v8 * v8;
    if ((v8 * v8) >> 64 == (v8 * v8) >> 63)
    {
      v33 = __dst;
      if ((v32 & 0x8000000000000000) == 0)
      {
        if (v32)
        {
          if (v32 >= 4 && (__dst >= (result + 4 * v32) || result >= &__dst->f32[v32]))
          {
            v34 = v32 & 0x7FFFFFFFFFFFFFFCLL;
            v41 = v32 & 0x7FFFFFFFFFFFFFFCLL;
            v50 = result;
            v42 = result;
            do
            {
              v64 = *v33;
              v59 = expf(COERCE_FLOAT(HIDWORD(v33->i64[0])));
              *&v43 = expf(v64.f32[0]);
              *(&v43 + 1) = v59;
              *v60 = v43;
              v44 = expf(v64.f32[2]);
              v45 = *v60;
              *(&v45 + 2) = v44;
              *v61 = v45;
              v46 = expf(v64.f32[3]);
              v47 = *v61;
              v47.f32[3] = v46;
              v48 = *v42;
              v42 = (v42 + 16);
              *v33++ = vdivq_f32(v47, v48);
              v41 -= 4;
            }

            while (v41);
            result = v50;
            v33 = __dst;
            if (v32 == v34)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v34 = 0;
          }

          v35 = v32 - v34;
          v36 = v34;
          v37 = (result + 4 * v34);
          v38 = &v33->f32[v36];
          do
          {
            v39 = expf(*v38);
            v40 = *v37++;
            *v38++ = v39 / v40;
            --v35;
          }

          while (v35);
        }

LABEL_39:
        CVPixelBufferUnlockBaseAddress(v31, 1uLL);
        sub_1A5B066DC(v55, v54);

        goto LABEL_40;
      }

LABEL_53:
      __break(1u);
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_59:
  __break(1u);
  return result;
}

CVPixelBufferRef sub_1A5D04E08()
{
  pixelBufferOut[1] = *MEMORY[0x1E69E9840];
  v2 = v0[7];
  v1 = v0[8];
  v92 = v0[9];
  pixelBufferOut[0] = 0;
  v3 = CVPixelBufferCreate(*MEMORY[0x1E695E480], v2, v1, 0x4C303066u, 0, pixelBufferOut);
  v4 = pixelBufferOut[0];
  if (pixelBufferOut[0])
  {
    v5 = pixelBufferOut[0];
    CVPixelBufferLockBaseAddress(v5, 0);
    result = CVPixelBufferGetBaseAddress(v5);
    if (result)
    {
      v7 = v2 * v1;
      if ((v2 * v1) >> 64 != (v2 * v1) >> 63)
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      v8 = result;
      pixelBuffer = v5;
      v90 = v4;
      if (v7)
      {
        bzero(result, 4 * v7);
      }

      v9 = 1 << *(v92 + 32);
      v10 = -1;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      v11 = v10 & *(v92 + 64);
      v12 = (v9 + 63) >> 6;

      v13 = 0;
      v88 = 4 * v7;
      v87 = v8 + 4 * v7;
      v91 = v7 & 0x7FFFFFFFFFFFFFFCLL;
      v93 = v2 * v1;
      if (!v11)
      {
LABEL_12:
        while (1)
        {
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v14 >= v12)
          {

            CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);

            return v90;
          }

          v11 = *(v92 + 64 + 8 * v14);
          ++v13;
          if (v11)
          {
            v13 = v14;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

LABEL_16:
      while (1)
      {
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v16 = (*(v92 + 56) + ((v13 << 10) | (16 * v15)));
        v18 = *v16;
        v17 = v16[1];
        v19 = v17 >> 62;
        if ((v17 >> 62) > 1)
        {
          break;
        }

        if (v19)
        {
          if (v18 > v18 >> 32)
          {
            goto LABEL_74;
          }

          v30 = sub_1A5FD33EC();
          if (v30)
          {
            v31 = sub_1A5FD341C();
            if (__OFSUB__(v18, v31))
            {
              goto LABEL_78;
            }

            v30 += v18 - v31;
          }

          sub_1A5FD340C();
          v7 = v93;
          if (v93)
          {
            if (v93 > 3 && (v8 >= &v30[v88] || v30 >= v87))
            {
              v75 = v91;
              v76 = v8;
              v86 = v30;
              do
              {
                v77 = *v30;
                v30 += 16;
                v103 = expf(*(&v77 + 1));
                v78.f32[0] = expf(*&v77);
                v78.f32[1] = v103;
                v104 = v78;
                v79 = expf(*(&v77 + 2));
                v80 = v104;
                v80.f32[2] = v79;
                v105 = v80;
                v81 = expf(*(&v77 + 3));
                v82 = v105;
                v82.f32[3] = v81;
                *v76 = vaddq_f32(*v76, v82);
                ++v76;
                v75 -= 4;
              }

              while (v75);
              v32 = v91;
              v30 = v86;
              if (v93 == v91)
              {
                goto LABEL_11;
              }
            }

            else
            {
              v32 = 0;
            }

            v33 = v93 - v32;
            v34 = 4 * v32;
            v35 = (v8 + v34);
            v36 = &v30[v34];
            do
            {
              v37 = *v36++;
              *v35 = *v35 + expf(v37);
              ++v35;
              --v33;
            }

            while (v33);
            goto LABEL_11;
          }

LABEL_48:
          sub_1A5B066DC(v18, v17);
          if (!v11)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v106[0] = v18;
          LOWORD(v106[1]) = v17;
          BYTE2(v106[1]) = BYTE2(v17);
          BYTE3(v106[1]) = BYTE3(v17);
          BYTE4(v106[1]) = BYTE4(v17);
          BYTE5(v106[1]) = BYTE5(v17);
          if (v7)
          {
            if (v7 >= 4)
            {
              v39 = v106;
              v41 = v91;
              v40 = v8;
              do
              {
                v42 = *v39++;
                v94 = expf(*(&v42 + 1));
                v43.f32[0] = expf(*&v42);
                v43.f32[1] = v94;
                v95 = v43;
                v44 = expf(*(&v42 + 2));
                v45 = v95;
                v45.f32[2] = v44;
                v96 = v45;
                v46 = expf(*(&v42 + 3));
                v47 = v96;
                v47.f32[3] = v46;
                *v40 = vaddq_f32(*v40, v47);
                ++v40;
                v41 -= 4;
              }

              while (v41);
              v20 = v91;
              if (v93 == v91)
              {
                goto LABEL_11;
              }
            }

            else
            {
              v20 = 0;
            }

            v48 = v93 - v20;
            v49 = 4 * v20;
            v50 = (v8 + v49);
            v51 = (v106 + v49);
            do
            {
              v52 = *v51++;
              *v50 = *v50 + expf(v52);
              ++v50;
              --v48;
            }

            while (v48);
          }

LABEL_11:
          sub_1A5B066DC(v18, v17);
          v7 = v93;
          if (!v11)
          {
            goto LABEL_12;
          }
        }
      }

      if (v19 != 2)
      {
        memset(v106, 0, 14);
        if (v7)
        {
          if (v7 >= 4)
          {
            v53 = v106;
            v55 = v91;
            v54 = v8;
            do
            {
              v56 = *v53++;
              v97 = expf(*(&v56 + 1));
              v57.f32[0] = expf(*&v56);
              v57.f32[1] = v97;
              v98 = v57;
              v58 = expf(*(&v56 + 2));
              v59 = v98;
              v59.f32[2] = v58;
              v99 = v59;
              v60 = expf(*(&v56 + 3));
              v61 = v99;
              v61.f32[3] = v60;
              *v54 = vaddq_f32(*v54, v61);
              ++v54;
              v55 -= 4;
            }

            while (v55);
            v38 = v91;
            if (v93 == v91)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v38 = 0;
          }

          v62 = v93 - v38;
          v63 = 4 * v38;
          v64 = (v8 + v63);
          v65 = (v106 + v63);
          do
          {
            v66 = *v65++;
            *v64 = *v64 + expf(v66);
            ++v64;
            --v62;
          }

          while (v62);
        }

        goto LABEL_11;
      }

      v21 = *(v18 + 16);

      v22 = sub_1A5FD33EC();
      if (v22)
      {
        v23 = sub_1A5FD341C();
        if (__OFSUB__(v21, v23))
        {
          goto LABEL_77;
        }

        v22 += v21 - v23;
      }

      sub_1A5FD340C();
      v7 = v93;
      if (v93)
      {
        if (v93 > 3 && (v8 >= &v22[v88] || v22 >= v87))
        {
          v67 = v91;
          v68 = v8;
          v85 = v22;
          do
          {
            v69 = *v22;
            v22 += 16;
            v100 = expf(*(&v69 + 1));
            v70.f32[0] = expf(*&v69);
            v70.f32[1] = v100;
            v101 = v70;
            v71 = expf(*(&v69 + 2));
            v72 = v101;
            v72.f32[2] = v71;
            v102 = v72;
            v73 = expf(*(&v69 + 3));
            v74 = v102;
            v74.f32[3] = v73;
            *v68 = vaddq_f32(*v68, v74);
            ++v68;
            v67 -= 4;
          }

          while (v67);
          v24 = v91;
          v22 = v85;
          if (v93 == v91)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v24 = 0;
        }

        v25 = v93 - v24;
        v26 = 4 * v24;
        v27 = (v8 + v26);
        v28 = &v22[v26];
        do
        {
          v29 = *v28++;
          *v27 = *v27 + expf(v29);
          ++v27;
          --v25;
        }

        while (v25);
        goto LABEL_11;
      }

      goto LABEL_48;
    }

    __break(1u);
  }

  else
  {
    v83 = v3;
    sub_1A5B16774();
    swift_allocError();
    *v84 = v83;
    *(v84 + 8) = 0;
    *(v84 + 16) = 0;
    *(v84 + 20) = 11;
    swift_willThrow();

    return v4;
  }

  return result;
}

__n128 FaceObservation.Segments.boundingBox.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

void sub_1A5D05520(void *a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v56 = *a2;
  [a1 boundingBox];
  NormalizedRect.init(normalizedRect:)(v59);
  v53 = v57[1];
  v54 = v57[0];
  v52 = [a1 outputBufferWidth];
  v51 = [a1 outputBufferHeight];
  v5 = [a1 outputBufferData];
  v6 = sub_1A5FD35DC();
  v49 = v7;
  v50 = v6;

  v8 = sub_1A5D16094(MEMORY[0x1E69E7CC0]);
  v55 = a1;
  v9 = [a1 faceSegmentLabelToProbabilityMap];
  sub_1A5B16F58(0, &qword_1EB1F3E80, 0x1E696AD98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5818, &qword_1A60281F8);
  sub_1A5D19064();
  v10 = sub_1A5FD3C0C();

  v11 = 0;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  while (1)
  {
    v16 = v11;
    if (!v14)
    {
      break;
    }

LABEL_8:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v18 = (v11 << 9) | (8 * v17);
    v19 = *(*(v10 + 56) + v18);
    v20 = *(*(v10 + 48) + v18);

    sub_1A5D0403C([v20 unsignedIntegerValue], v57);
    v21 = LOBYTE(v57[0]);
    sub_1A5FD466C();
    if (!*(v19 + 16) || (v22 = sub_1A5B459AC(v57), (v23 & 1) == 0))
    {

      sub_1A5B45FB4(v57);
      goto LABEL_17;
    }

    sub_1A5B101D8(*(v19 + 56) + 32 * v22, v58);
    sub_1A5B45FB4(v57);

    if (swift_dynamicCast())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v57[0] = v8;
      v25 = sub_1A5D0E0CC(v21);
      v26 = v8[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_30;
      }

      if (v8[3] >= v28)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v8 = *&v57[0];
          if ((v24 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v48 = v25;
          v40 = v24;
          sub_1A5D0EF80();
          v41 = v40;
          v25 = v48;
          v8 = *&v57[0];
          if ((v41 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

LABEL_24:
        v37 = (v8[7] + 16 * v25);
        v38 = *v37;
        v39 = v37[1];
        *v37 = 1635017060;
        v37[1] = 0xE400000000000000;
        sub_1A5B066DC(v38, v39);
      }

      else
      {
        v29 = v24;
        sub_1A5D0E8B8(v28, isUniquelyReferenced_nonNull_native);
        v30 = sub_1A5D0E0CC(v21);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_32;
        }

        v25 = v30;
        v32 = v29;
        v8 = *&v57[0];
        if (v32)
        {
          goto LABEL_24;
        }

LABEL_26:
        v8[(v25 >> 6) + 8] |= 1 << v25;
        *(v8[6] + v25) = v21;
        v42 = (v8[7] + 16 * v25);
        *v42 = 1635017060;
        v42[1] = 0xE400000000000000;

        v43 = v8[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_31;
        }

        v8[2] = v45;
      }
    }

    else
    {
LABEL_17:
      v33 = sub_1A5D0E0CC(v21);
      if (v34)
      {
        v35 = v33;
        v36 = swift_isUniquelyReferenced_nonNull_native();
        *&v57[0] = v8;
        if (!v36)
        {
          sub_1A5D0EF80();
          v8 = *&v57[0];
        }

        sub_1A5B066DC(*(v8[7] + 16 * v35), *(v8[7] + 16 * v35 + 8));
        sub_1A5D0EB4C(v35, v8);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v11 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v11 >= v15)
    {

      v46 = sub_1A5D161A0(MEMORY[0x1E69E7CC0]);

      *a3 = v54;
      *(a3 + 16) = v53;
      *(a3 + 32) = v56;
      *(a3 + 40) = v50;
      *(a3 + 48) = v49;
      *(a3 + 56) = v52;
      *(a3 + 64) = v51;
      *(a3 + 72) = v8;
      *(a3 + 80) = v46;
      return;
    }

    v14 = *(v10 + 64 + 8 * v11);
    ++v16;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  sub_1A5FD4B8C();
  __break(1u);
}

uint64_t sub_1A5D05998()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD00000000000001CLL;
    if (v1 != 1)
    {
      v5 = 0xD000000000000010;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x676E69646E756F62;
    }
  }

  else
  {
    v2 = 0x6C696261626F7270;
    if (v1 != 5)
    {
      v2 = 0x6576654C79617267;
    }

    v3 = 0xD000000000000012;
    if (v1 == 3)
    {
      v3 = 0xD000000000000011;
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

uint64_t sub_1A5D05AA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A5D1A0C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A5D05AC8(uint64_t a1)
{
  v2 = sub_1A5D190CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D05B04(uint64_t a1)
{
  v2 = sub_1A5D190CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.Segments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5828, &qword_1A6028200);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7;
  LODWORD(v22) = *(v3 + 16);
  v9 = *(v3 + 5);
  v20 = *(v3 + 6);
  v21 = v9;
  v10 = *(v3 + 7);
  v19[1] = *(v3 + 8);
  v19[2] = v10;
  v11 = *(v3 + 10);
  v19[0] = *(v3 + 9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D190CC();
  sub_1A5FD4CDC();
  v12 = *v3;
  v13 = v3[1];
  v14 = v5;
  v23 = v12;
  v24 = v13;
  v25 = 0;
  sub_1A5B0A30C();
  sub_1A5FD4A5C();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v15 = v20;
  v16 = v21;
  LOWORD(v23) = v22;
  v25 = 1;
  sub_1A5B0A760();
  sub_1A5FD4A0C();
  *&v23 = v16;
  *(&v23 + 1) = v15;
  v25 = 2;
  sub_1A5B06670(v16, v15);
  sub_1A5B0A6B8();
  v22 = v8;
  sub_1A5FD4A5C();
  sub_1A5B066DC(v23, *(&v23 + 1));
  LOBYTE(v23) = 3;
  sub_1A5FD4A4C();
  LOBYTE(v23) = 4;
  sub_1A5FD4A4C();
  *&v23 = v19[0];
  v25 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5830, &qword_1A6028208);
  sub_1A5D19120(&qword_1EB1F5838, sub_1A5D191B0, sub_1A5B0A6B8, MEMORY[0x1E69E5E38]);
  sub_1A5FD4A5C();
  *&v23 = v11;
  v25 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5848, &qword_1A6028210);
  sub_1A5D19258(&qword_1EB1F5850, sub_1A5D191B0, MEMORY[0x1E69E7510], MEMORY[0x1E69E5E38]);
  v17 = v22;
  sub_1A5FD4A5C();
  return (*(v6 + 8))(v17, v14);
}

uint64_t FaceObservation.Segments.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  v5 = *(v1 + 56);
  v4 = *(v1 + 64);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  sub_1A5B0F6CC();
  sub_1A5FD3CBC();
  sub_1A5FD4C3C();
  if (v3 < 0xFFF8)
  {
    sub_1A5B0A85C();
    sub_1A5FD3CBC();
  }

  sub_1A5FD35EC();
  MEMORY[0x1AC555420](v5);
  MEMORY[0x1AC555420](v4);
  sub_1A5D0FB28(a1, v7);
  return sub_1A5D0F9FC(a1, v6);
}

uint64_t FaceObservation.Segments.hashValue.getter()
{
  sub_1A5FD4C1C();
  FaceObservation.Segments.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

void FaceObservation.Segments.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5858, &unk_1A6028218);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D190CC();
  sub_1A5FD4CCC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v26) = 0;
    sub_1A5B0A400();
    sub_1A5FD497C();
    v9 = v32;
    v10 = v33;
    v11 = v34;
    v12 = v35;
    LOBYTE(v26) = 1;
    sub_1A5B0A454();
    sub_1A5FD492C();
    v13 = v32;
    LOBYTE(v26) = 2;
    sub_1A5B0A8B0();
    sub_1A5FD497C();
    v14 = v32;
    v25 = v33;
    LOBYTE(v32) = 3;
    v24 = sub_1A5FD496C();
    LOBYTE(v32) = 4;
    v23 = sub_1A5FD496C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5830, &qword_1A6028208);
    LOBYTE(v26) = 5;
    sub_1A5D19120(&qword_1EB1F5860, sub_1A5D19204, sub_1A5B0A8B0, MEMORY[0x1E69E5E58]);
    sub_1A5FD497C();
    v22 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5848, &qword_1A6028210);
    v43[0] = 6;
    sub_1A5D19258(&qword_1EB1F5870, sub_1A5D19204, MEMORY[0x1E69E7528], MEMORY[0x1E69E5E58]);
    sub_1A5FD497C();
    (*(v6 + 8))(v8, v5);
    v15 = v44;
    *&v26 = v9;
    *(&v26 + 1) = v10;
    *&v27 = v11;
    *(&v27 + 1) = v12;
    LOWORD(v28) = v13;
    v16 = v14;
    *(&v28 + 1) = v14;
    v17 = v25;
    v18 = v24;
    *&v29 = v25;
    *(&v29 + 1) = v24;
    v19 = v23;
    *&v30 = v23;
    *(&v30 + 1) = v22;
    v31 = v44;
    *(a2 + 80) = v44;
    v20 = v29;
    *(a2 + 32) = v28;
    *(a2 + 48) = v20;
    *(a2 + 64) = v30;
    v21 = v27;
    *a2 = v26;
    *(a2 + 16) = v21;
    sub_1A5D192DC(&v26, &v32);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v32 = v9;
    v33 = v10;
    v34 = v11;
    v35 = v12;
    v36 = v13;
    v37 = v16;
    v38 = v17;
    v39 = v18;
    v40 = v19;
    v41 = v22;
    v42 = v15;
    sub_1A5D19314(&v32);
  }
}

uint64_t sub_1A5D06538(char a1)
{
  result = 0x746176726573626FLL;
  switch(a1)
  {
    case 1:
      result = 0x676E69646E756F62;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 1819045746;
      break;
    case 4:
      result = 0x6863746970;
      break;
    case 5:
      result = 7823737;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x5165727574706163;
      break;
    case 8:
      result = 0x6B72616D646E616CLL;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x73656E696B6E756ALL;
      break;
    case 12:
      result = 0x7475626972747461;
      break;
    case 13:
      result = 1702519143;
      break;
    case 14:
      result = 1702063984;
      break;
    case 15:
      result = 0x6973736572707865;
      break;
    case 16:
      v3 = 0x656369766564;
      goto LABEL_14;
    case 17:
      v3 = 0x6172656D6163;
LABEL_14:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6147000000000000;
      break;
    case 18:
      result = 0x6572635365636166;
      break;
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
      result = 0x6E69725065636166;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A5D067C8()
{
  sub_1A5FD4C1C();
  FaceObservation.Segments.hash(into:)(v1);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D0680C(uint64_t a1)
{
  sub_1A5FD4C1C();
  FaceObservation.Segments.hash(into:)(v2);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D06850@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A5D1A328(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A5D06884(uint64_t a1)
{
  v2 = sub_1A5D19344();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D068C0(uint64_t a1)
{
  v2 = sub_1A5D19344();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE768, &qword_1A5FF2350);
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v61 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5878, &qword_1A6028228);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v61 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D19344();
  sub_1A5FD4CDC();
  v11 = type metadata accessor for FaceObservation(0);
  v12 = (v2 + v11[9]);
  v13 = v12[1];
  *v78 = *v12;
  *&v78[16] = v13;
  v77[0] = 1;
  sub_1A5B0A30C();
  v96 = v7;
  v14 = v67;
  sub_1A5FD4A5C();
  if (v14)
  {
    return (*(v8 + 8))(v10, v96);
  }

  v63 = v6;
  v64 = v8;
  v67 = v2;
  v78[0] = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8, &unk_1A60279F0);
  sub_1A5C1EC64(&qword_1EB1F57D8, &qword_1EB1F4EC8, &unk_1A60279F0, MEMORY[0x1E6968078]);
  sub_1A5FD4A5C();
  v78[0] = 4;
  sub_1A5FD4A5C();
  v78[0] = 5;
  sub_1A5FD4A5C();
  v16 = (v67 + v11[28]);
  v17 = v16[1];
  *v78 = *v16;
  *&v78[16] = v17;
  v77[0] = 6;
  sub_1A5FD4A5C();
  v18 = (v67 + v11[10]);
  v19 = v18[1];
  v95[0] = *v18;
  v95[1] = v19;
  v94 = 2;
  sub_1A5FD4A5C();
  v62 = v11;
  v20 = *(v67 + 16);
  v21 = *(v67 + 48);
  v91 = *(v67 + 32);
  v92 = v21;
  v22 = *(v67 + 16);
  v90[0] = *v67;
  v90[1] = v22;
  v23 = *(v67 + 48);
  v87 = v91;
  v88 = v23;
  v93 = *(v67 + 64);
  v89 = *(v67 + 64);
  v85 = v90[0];
  v86 = v20;
  v84 = 8;
  sub_1A5B31A34(v90, v78, &qword_1EB1F2370, &qword_1A6010808);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2370, &qword_1A6010808);
  sub_1A5D19398();
  sub_1A5FD4A5C();
  v82[2] = v87;
  v82[3] = v88;
  v83 = v89;
  v82[0] = v85;
  v82[1] = v86;
  sub_1A5B10168(v82, &qword_1EB1F2370, &qword_1A6010808);
  v24 = v62;
  v25 = (v67 + v62[8]);
  v26 = *v25;
  *&v78[4] = *(v25 + 2);
  *v78 = v26;
  v77[0] = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4ED8, &unk_1A6027A00);
  sub_1A5D19470();
  sub_1A5FD4A5C();
  v27 = v67 + v24[25];
  v28 = *(v27 + 32);
  v29 = *(v27 + 16);
  *v78 = *v27;
  *&v78[16] = v29;
  v78[32] = v28;
  v77[0] = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F58A0, &qword_1A6028230);
  sub_1A5D19548();
  sub_1A5FD4A5C();
  v30 = (v67 + v24[26]);
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 4);
  *v78 = v31;
  v78[4] = v30;
  v77[0] = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F58B0, &qword_1A6028238);
  sub_1A5D195CC();
  sub_1A5FD4A5C();
  v32 = (v67 + v24[27]);
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 4);
  v80 = v33;
  v81 = v32;
  v79 = 11;
  v34 = v10;
  sub_1A5FD4A5C();
  v35 = v62[20];
  memcpy(v78, (v67 + v35), sizeof(v78));
  memcpy(v77, (v67 + v35), sizeof(v77));
  v76[263] = 12;
  sub_1A5B31A34(v78, v76, &qword_1EB1F2BB0, &unk_1A60279E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2BB0, &unk_1A60279E0);
  sub_1A5D19648();
  sub_1A5FD4A5C();
  memcpy(v76, v77, 0x102uLL);
  sub_1A5B10168(v76, &qword_1EB1F2BB0, &unk_1A60279E0);
  v75 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2840, &qword_1A6014070);
  sub_1A5D19720();
  sub_1A5FD4A5C();
  v36 = (v67 + v62[22]);
  v37 = v36[3];
  v71 = v36[2];
  v72 = v37;
  v73 = v36[4];
  v74 = *(v36 + 40);
  v38 = v36[1];
  v69 = *v36;
  v70 = v38;
  v68 = 14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F58E0, &qword_1A6028240);
  sub_1A5D197D4();
  sub_1A5FD4A5C();
  v39 = (v67 + v62[23]);
  v40 = *v39;
  LOWORD(v39) = *(v39 + 4);
  *&v69 = v40;
  WORD4(v69) = v39;
  v68 = 15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F58F8, &qword_1A6028248);
  sub_1A5D198AC();
  sub_1A5FD4A5C();

  v41 = (v67 + v62[15]);
  v42 = *v41;
  v43 = *(v41 + 2);
  LOWORD(v41) = *(v41 + 6);
  *&v69 = v42;
  WORD6(v69) = v41;
  DWORD2(v69) = v43;
  v68 = 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5910, &qword_1A6028250);
  sub_1A5D19984();
  sub_1A5FD4A5C();
  v44 = (v67 + v62[16]);
  v45 = *v44;
  v46 = *(v44 + 2);
  LOWORD(v44) = *(v44 + 6);
  *&v69 = v45;
  WORD6(v69) = v44;
  DWORD2(v69) = v46;
  v68 = 17;
  sub_1A5FD4A5C();
  v47 = (v67 + v62[17]);
  v48 = *(v47 + 16);
  v49 = v47[1];
  v69 = *v47;
  v70 = v49;
  LOWORD(v71) = v48;
  v68 = 18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5928, &qword_1A6028258);
  sub_1A5D19A5C();
  sub_1A5FD4A5C();
  v50 = (v67 + v62[18]);
  v51 = *v50;
  WORD2(v69) = *(v50 + 2);
  LODWORD(v69) = v51;
  v68 = 19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5940, &qword_1A6028260);
  sub_1A5D19B34();
  sub_1A5FD4A5C();
  v52 = v67 + v62[19];
  v53 = *(v52 + 8);
  v54 = *(v52 + 16);
  v55 = *(v52 + 24);
  v56 = *(v52 + 34);
  v57 = *(v52 + 32);
  *&v69 = *v52;
  *(&v69 + 1) = v53;
  *&v70 = v54;
  *(&v70 + 1) = v55;
  BYTE2(v71) = v56;
  LOWORD(v71) = v57;
  v68 = 20;
  sub_1A5B06658(v69, v53, v54, v55, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5958, &unk_1A6028268);
  sub_1A5D19C0C();
  sub_1A5FD4A5C();
  sub_1A5B066C4(v69, *(&v69 + 1), v70, *(&v70 + 1), v71);
  LOBYTE(v69) = 0;
  sub_1A5B0A360();
  v58 = v63;
  v59 = v96;
  sub_1A5FD49EC();
  v60 = sub_1A5D13500(&qword_1EB1F4798, type metadata accessor for FaceObservation, &protocol conformance descriptor for FaceObservation);
  sub_1A5BBD46C(v58, v62, &off_1F196B388, v60);
  (*(v65 + 8))(v58, v66);
  return (*(v64 + 8))(v34, v59);
}

uint64_t FaceObservation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v192 = a1;
  v135 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2840, &qword_1A6014070);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v136 = &v128 - v3;
  v4 = sub_1A5FD367C();
  v147 = *(v4 - 8);
  v148 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v138 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE790, &qword_1A5FF2360);
  v7 = *(v6 - 8);
  v139 = v6;
  v140 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v141 = &v128 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8, &unk_1A60279F0);
  v10 = *(v9 - 8);
  v156 = v9;
  v157 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v142 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v143 = &v128 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v144 = &v128 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5970, &qword_1A6028278);
  v145 = *(v16 - 8);
  v146 = v16;
  MEMORY[0x1EEE9AC00](v16);
  *&v159 = &v128 - v17;
  v18 = type metadata accessor for FaceObservation(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v20 + 8) = 0;
  *(v20 + 2) = 0u;
  *(v20 + 3) = 0u;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v137 = v21[8];
  v22 = &v20[v137];
  *(v22 + 2) = -16;
  *v22 = 0;
  v23 = &v20[v21[15]];
  *v23 = 0;
  *(v23 + 6) = -16;
  v133 = v23;
  *(v23 + 2) = 0;
  v24 = &v20[v21[16]];
  *v24 = 0;
  *(v24 + 6) = -16;
  *(v24 + 2) = 0;
  v25 = &v20[v21[17]];
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *(v25 + 16) = -16;
  v134 = v21[18];
  v26 = &v20[v134];
  *(v26 + 2) = -16;
  *v26 = 0;
  v27 = &v20[v21[19]];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  v27[34] = 0;
  v152 = v27;
  *(v27 + 16) = -16;
  v28 = v21[20];
  sub_1A5CE02A4(v191);
  v153 = v28;
  memcpy(&v20[v28], v191, 0x102uLL);
  v29 = v18[21];
  v30 = type metadata accessor for FaceObservation.Gaze(0);
  v31 = *(*(v30 - 8) + 56);
  v151 = v29;
  v31(&v20[v29], 1, 1, v30);
  v32 = &v20[v18[22]];
  *(v32 + 3) = 0u;
  *(v32 + 4) = 0u;
  *(v32 + 1) = 0u;
  *(v32 + 2) = 0u;
  *v32 = 0u;
  *(v32 + 40) = -16;
  v33 = &v20[v18[23]];
  *v33 = 0;
  v149 = v33;
  *(v33 + 4) = 0;
  v34 = &v20[v18[24]];
  *(v34 + 10) = 0;
  *(v34 + 3) = 0u;
  *(v34 + 4) = 0u;
  *(v34 + 1) = 0u;
  *(v34 + 2) = 0u;
  v150 = v34;
  *v34 = 0u;
  *&v158 = v18;
  v35 = v18[25];
  v154 = v20;
  v36 = &v20[v35];
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v36[32] = 1;
  __swift_project_boxed_opaque_existential_1(v192, v192[3]);
  sub_1A5D19344();
  v37 = v155;
  sub_1A5FD4CCC();
  if (v37)
  {
    v155 = v37;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = v156;
LABEL_4:
    v54 = v157;
    v55 = v158;
    v51 = v154;
    goto LABEL_5;
  }

  v131 = v30;
  v132 = v36;
  v129 = v24;
  v130 = v25;
  v188[0] = 3;
  sub_1A5C1EC64(&qword_1EB1F57F8, &qword_1EB1F4EC8, &unk_1A60279F0, MEMORY[0x1E6968098]);
  v43 = v144;
  v44 = v156;
  sub_1A5FD497C();
  v50 = *(v157 + 32);
  v51 = v154;
  v52 = &v154[*(v158 + 20)];
  v144 = (v157 + 32);
  v155 = v50;
  v50(v52, v43, v44);
  v188[0] = 4;
  v53 = v143;
  sub_1A5FD497C();
  v155(v51 + *(v158 + 28), v53, v44);
  v188[0] = 5;
  sub_1A5FD497C();
  v54 = v157;
  v55 = v158;
  v155(v51 + *(v158 + 24), v142, v44);
  v188[0] = 0;
  sub_1A5B0A360();
  v56 = v141;
  sub_1A5FD48CC();
  v155 = 0;
  v188[0] = 0;
  sub_1A5D13500(&qword_1EB1EE7A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v58 = v138;
  v57 = v139;
  v59 = v56;
  v60 = v148;
  v61 = v155;
  sub_1A5FD497C();
  if (v61)
  {
    v155 = v61;
    (*(v140 + 8))(v59, v57);
    (*(v145 + 8))(v159, v146);
    v41 = 0;
    v38 = 1;
    v39 = 1;
    v40 = 1;
    v42 = v156;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v192);
    v45 = *(v51 + 48);
    v172[2] = *(v51 + 32);
    v172[3] = v45;
    *&v172[4] = *(v51 + 64);
    v46 = *(v51 + 16);
    v172[0] = *v51;
    v172[1] = v46;
    sub_1A5B10168(v172, &qword_1EB1F2370, &qword_1A6010808);
    if (v38)
    {
      (*(v54 + 8))(v51 + v55[5], v42);
      if (!v39)
      {
LABEL_7:
        if (!v40)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }
    }

    else if (!v39)
    {
      goto LABEL_7;
    }

    (*(v54 + 8))(v51 + v55[6], v42);
    if (!v40)
    {
LABEL_8:
      if (!v41)
      {
LABEL_10:
        sub_1A5B066C4(*v152, *(v152 + 1), *(v152 + 2), *(v152 + 3), *(v152 + 16));
        memcpy(v188, (v51 + v153), sizeof(v188));
        sub_1A5B10168(v188, &qword_1EB1F2BB0, &unk_1A60279E0);
        sub_1A5B10168(v51 + v151, &qword_1EB1F2840, &qword_1A6014070);

        v47 = *(v150 + 3);
        *&v173[32] = *(v150 + 2);
        *&v173[48] = v47;
        *&v173[64] = *(v150 + 4);
        *&v173[80] = *(v150 + 10);
        v48 = *(v150 + 1);
        *v173 = *v150;
        *&v173[16] = v48;
        return sub_1A5B10168(v173, &qword_1EB1F4A48, &qword_1A6024318);
      }

LABEL_9:
      (*(v147 + 8))(v51 + v55[11], v148);
      goto LABEL_10;
    }

LABEL_13:
    (*(v54 + 8))(v51 + v55[7], v42);
    if (!v41)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  (*(v147 + 32))(v51 + v55[11], v58, v60);
  v188[0] = 1;
  sub_1A5FD495C();
  *(v51 + v55[12]) = v62;
  v173[0] = 3;
  sub_1A5B0A454();
  sub_1A5FD492C();
  *(v51 + v55[14]) = *v188;
  v173[0] = 6;
  sub_1A5B0A400();
  sub_1A5FD497C();
  v63 = (v51 + v55[28]);
  v64 = *&v188[16];
  *v63 = *v188;
  v63[1] = v64;
  sub_1A5BBDB04(v189);
  v65 = v51 + v55[13];
  v66 = v189[1];
  *v65 = v189[0];
  *(v65 + 16) = v66;
  *(v65 + 32) = v189[2];
  *(v65 + 48) = v190;
  v173[0] = 7;
  sub_1A5D19CE4();
  sub_1A5FD492C();
  v155 = 0;
  v67 = v156;
  v68 = *v188;
  v69 = v51 + v137;
  *(v69 + 4) = *&v188[4];
  *v69 = v68;
  v182 = 8;
  sub_1A5D19D38();
  v70 = v155;
  sub_1A5FD492C();
  v155 = v70;
  if (v70 || (v177 = v185, v178 = v186, v179 = v187, v175 = v183, v176 = v184, v71 = v154, v72 = *(v154 + 3), v180[2] = *(v154 + 2), v180[3] = v72, v181 = *(v154 + 8), v73 = *v154, v180[1] = *(v154 + 1), v180[0] = v73, sub_1A5B10168(v180, &qword_1EB1F2370, &qword_1A6010808), v74 = v178, *(v71 + 32) = v177, *(v71 + 48) = v74, *(v71 + 64) = v179, v75 = v176, *v71 = v175, *(v71 + 16) = v75, v188[0] = 10, v76 = v155, v77 = sub_1A5FD490C(), (v155 = v76) != 0) || (v78 = &v154[*(v158 + 104)], *v78 = v77, v78[4] = BYTE4(v77) & 1, v188[0] = 11, v79 = sub_1A5FD490C(), v155 = 0, v80 = &v154[*(v158 + 108)], *v80 = v79, v80[4] = BYTE4(v79) & 1, v173[0] = 9, sub_1A5FD492C(), v155 = 0, v81 = v188[32], v82 = *&v188[16], v83 = v132, *v132 = *v188, *(v83 + 1) = v82, v83[32] = v81, v174 = 12, sub_1A5D19D8C(), v84 = v155, sub_1A5FD492C(), (v155 = v84) != 0) || (memcpy(v172, v188, 0x102uLL), v85 = v153, v86 = v154, memcpy(v173, &v154[v153], sizeof(v173)), sub_1A5B10168(v173, &qword_1EB1F2BB0, &unk_1A60279E0), memcpy((v86 + v85), v172, 0x102uLL), LOBYTE(v166) = 13, sub_1A5D13500(&qword_1EB1F5990, type metadata accessor for FaceObservation.Gaze, &protocol conformance descriptor for FaceObservation.Gaze), v87 = v155, sub_1A5FD492C(), (v155 = v87) != 0) || (sub_1A5C371FC(v136, &v154[v151]), v165 = 14, sub_1A5D19DE0(), v88 = v155, sub_1A5FD492C(), (v155 = v88) != 0) || (v89 = v169, *(v32 + 2) = v168, *(v32 + 3) = v89, *(v32 + 4) = v170, *(v32 + 40) = v171, v90 = v167, *v32 = v166, *(v32 + 1) = v90, v164 = 15, sub_1A5D19E34(), v91 = v155, sub_1A5FD492C(), (v155 = v91) != 0) || (v92 = v160, v93 = WORD4(v160), v94 = v149, , *v94 = v92, *(v94 + 4) = v93, v164 = 1, v95 = v155, sub_1A5FD497C(), (v155 = v95) != 0) || ((v96 = &v154[*(v158 + 36)], v97 = v161, *v96 = v160, *(v96 + 1) = v97, v164 = 2, sub_1A5FD492C(), v155 = 0, v162 != 1) ? (v98 = v160, v99 = v161) : (v98 = *v96, v99 = *(v96 + 1)), (v100 = &v154[*(v158 + 40)], *v100 = v98, *(v100 + 1) = v99, v164 = 16, sub_1A5D19E88(), v101 = v155, sub_1A5FD492C(), (v155 = v101) != 0) || (v102 = DWORD2(v160), v103 = WORD6(v160), v104 = v133, *v133 = v160, *(v104 + 6) = v103, *(v104 + 2) = v102, v164 = 17, v105 = v155, sub_1A5FD492C(), (v155 = v105) != 0) || (v106 = DWORD2(v160), v107 = WORD6(v160), v108 = v129, *v129 = v160, *(v108 + 6) = v107, *(v108 + 2) = v106, v164 = 18, sub_1A5D19EDC(), v109 = v155, sub_1A5FD492C(), (v155 = v109) != 0) || (v110 = v162, v111 = v161, v112 = v130, *v130 = v160, *(v112 + 1) = v111, *(v112 + 16) = v110, v164 = 19, sub_1A5D19F30(), v113 = v155, sub_1A5FD492C(), (v155 = v113) != 0) || (v114 = v160, v115 = &v154[v134], *(v115 + 2) = WORD2(v160), *v115 = v114, v164 = 20, sub_1A5D19F84(), v116 = v155, sub_1A5FD492C(), (v155 = v116) != 0)))
  {
    (*(v140 + 8))(v141, v139);
    (*(v145 + 8))(v159, v146);
    v38 = 1;
    v39 = 1;
    v40 = 1;
    v41 = 1;
    v42 = v67;
    goto LABEL_4;
  }

  (*(v140 + 8))(v141, v139);
  (*(v145 + 8))(v159, v146);
  v117 = v162;
  v118 = v163;
  v119 = v152;
  v120 = *v152;
  v121 = *(v152 + 1);
  v122 = *(v152 + 2);
  v123 = *(v152 + 3);
  v124 = v152 + 32;
  v125 = *(v152 + 16);
  v158 = v161;
  v159 = v160;
  sub_1A5B066C4(v120, v121, v122, v123, v125);
  v126 = v158;
  *v119 = v159;
  *(v119 + 1) = v126;
  v124[2] = v118;
  *v124 = v117;
  v127 = v154;
  sub_1A5D19FD8(v154, v135, type metadata accessor for FaceObservation);
  __swift_destroy_boxed_opaque_existential_1(v192);
  return sub_1A5D16B80(v127, type metadata accessor for FaceObservation);
}

void sub_1A5D08748(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [a1 landmarkPoints];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1A5FD35DC();
    v9 = v8;

    type metadata accessor for CGPoint(0);
    v10 = sub_1A5FD3F9C();
    *(v10 + 16) = 76;
    bzero((v10 + 32), 0x4C0uLL);
    v53 = v10;
    sub_1A5D0F858(v7, v9, 0x4CuLL, &v53);
    if (v2)
    {
      sub_1A5B066DC(v7, v9);
    }

    else
    {
      v11 = [a1 landmarksOriginatingRequestSpecifier];
      if (v11)
      {
        v12 = v11;
        sub_1A5C7547C(&v50);

        x_low = LOWORD(v50.x);
      }

      else
      {
        x_low = -8;
      }

      v46 = x_low;
      v45 = v7;
      [a1 boundingBox];
      v55 = NormalizedRect.init(normalizedRect:)(v54);
      v14 = v50;
      v15 = v51;
      v16 = v52;
      y = v50.y;
      x = v50.x;
      v19 = v51;
      v20 = v52;
      if ([a1 isBoundingBoxAligned])
      {
        [a1 alignedBoundingBoxAsCGRect];
        NormalizedRect.init(normalizedRect:)(v56);
        y = v50.y;
        x = v50.x;
        v19 = v51;
        v20 = v52;
      }

      v21 = v53;
      v22 = [a1 landmarkPrecisionEstimatesPerPoint];
      if (v22)
      {
        v23 = v22;
        sub_1A5B16F58(0, &qword_1EB1F3E80, 0x1E696AD98);
        v24 = sub_1A5FD3F4C();

        v44 = sub_1A5D08C88(v24);
      }

      else
      {
        v44 = 0;
      }

      [a1 landmarkScore];
      v25 = [a1 landmarkPoints65];
      if (v25)
      {
        v26 = v25;
        v27 = sub_1A5FD35DC();
        v42 = v28;
        v43 = v27;

        v57.origin.x = x;
        v57.origin.y = y;
        v57.size.width = v19;
        v57.size.height = v20;
        v59.origin = v14;
        v59.size.width = v15;
        v59.size.height = v16;
        v29 = CGRectEqualToRect(v57, v59);
        v30 = *(v21 + 2);
        if (v30)
        {
          v31 = v29;
          v41 = v9;
          v49 = MEMORY[0x1E69E7CC0];
          sub_1A5B25FD8(0, v30, 0);
          v32 = v49;
          v33 = v21 + 40;
          do
          {
            NormalizedPoint.init(normalizedPoint:)(*(v33 - 8));
            v34 = v50;
            if (!v31)
            {
              v48 = v50;
              v50.x = x;
              v50.y = y;
              v51 = v19;
              v52 = v20;
              sub_1A5B0BCC4(&v47);
              v58.cgRect.origin.x = 1.0;
              v58.cgRect.origin.y = 1.0;
              v37 = NormalizedPoint.toImageCoordinates(from:imageSize:origin:)(v58, __PAIR128__(v36, v35), &v50);
              v50 = v14;
              v51 = v15;
              v52 = v16;
              NormalizedPoint.init(imagePoint:in:normalizedTo:)(v37, __PAIR128__(1.0, 1.0), v60);
              v34 = v48;
            }

            v49 = v32;
            v39 = *(v32 + 16);
            v38 = *(v32 + 24);
            if (v39 >= v38 >> 1)
            {
              v40 = v34;
              sub_1A5B25FD8((v38 > 1), v39 + 1, 1);
              v34 = v40;
              v32 = v49;
            }

            *(v32 + 16) = v39 + 1;
            *(v32 + 16 * v39 + 32) = v34;
            v33 += 16;
            --v30;
          }

          while (v30);
          sub_1A5B066DC(v45, v41);
        }

        else
        {
          sub_1A5B066DC(v45, v9);

          v32 = MEMORY[0x1E69E7CC0];
        }

        *a2 = v46;
        *(a2 + 8) = v43;
        *(a2 + 16) = v42;
        *(a2 + 24) = v32;
        *(a2 + 32) = v14;
        *(a2 + 48) = v15;
        *(a2 + 56) = v16;
        *(a2 + 64) = v44;
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t sub_1A5D08B3C(uint64_t result, unint64_t a2, char **a3)
{
  if (!result)
  {
    sub_1A5B16774();
    swift_allocError();
    *v11 = 0xD000000000000019;
    *(v11 + 8) = 0x80000001A605A4D0;
    *(v11 + 16) = 0;
    *(v11 + 20) = 0;
    return swift_willThrow();
  }

  v6 = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    v5 = sub_1A5D0E204(v5);
    goto LABEL_5;
  }

  if (!a2)
  {
    return result;
  }

  v3 = a3;
  v4 = result;
  v5 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_5:
  *v3 = v5;
  if (*(v5 + 2) < v6)
  {
    __break(1u);
  }

  else
  {
    v8 = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v5;
    if (v8)
    {
      goto LABEL_7;
    }
  }

  v5 = sub_1A5D0E204(v5);
LABEL_7:
  *v3 = v5;
  v9 = 32;
  do
  {
    v10 = *v4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v5;
    if ((result & 1) == 0)
    {
      result = sub_1A5D0E204(v5);
      v5 = result;
      *v3 = result;
    }

    *&v5[v9] = vcvtq_f64_f32(v10);
    v5 = *v3;
    v9 += 16;
    ++v4;
    --v6;
  }

  while (v6);
  return result;
}

uint64_t sub_1A5D08C88(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A5FD484C())
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1A5C3FA14(0, i & ~(i >> 63), 0);
    v4 = v15;
    if (v2)
    {
      break;
    }

    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1AC554EE0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = 0;
      v14 = 1;
      MEMORY[0x1AC5549F0](v6, &v13);

      if (v14)
      {

        return 0;
      }

      v9 = v13;
      v15 = v4;
      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A5C3FA14((v10 > 1), v11 + 1, 1);
        v4 = v15;
      }

      *(v4 + 16) = v11 + 1;
      *(v4 + 4 * v11 + 32) = v9;
      if (v8 == v2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v2 = sub_1A5FD484C();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

uint64_t sub_1A5D08E18@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0488, &qword_1A5FFCFD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F57C0, &qword_1A60281B8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v44 - v12;
  v14 = type metadata accessor for FaceObservation.Gaze(0);
  v46 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  v44 = a2[1];
  v45 = v17;
  v18 = [a1 gaze];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 originatingRequestSpecifier];
    sub_1A5C7547C(&v48);

    v21 = v48;
    v22 = [v19 direction];
    if (v22 >= 6)
    {
      result = sub_1A5FD483C();
      __break(1u);
    }

    else
    {
      *v16 = v22;
      v23 = [v19 hasLocation];
      v24 = 0uLL;
      if (v23)
      {
        [v19 location];
        NormalizedPoint.init(normalizedPoint:)(__PAIR128__(v26, v25));
        v24 = v48;
      }

      *(v16 + 8) = v24;
      v16[24] = v23 ^ 1;
      [v19 locationBounds];
      v27 = CGRectEqualToRect(v51, *MEMORY[0x1E695F050]);
      v28 = 0uLL;
      v29 = 0uLL;
      if (!v27)
      {
        [v19 locationBounds];
        NormalizedRect.init(normalizedRect:)(v52);
        v29 = v48;
        v28 = v49;
      }

      *(v16 + 2) = v29;
      *(v16 + 3) = v28;
      v16[64] = v27;
      [v19 horizontalAngle];
      if ((~v30 & 0x7F800000) != 0 || (v30 & 0x7FFFFF) == 0)
      {
        [v19 horizontalAngle];
        v34 = [objc_opt_self() degrees];
        sub_1A5B16F58(0, &qword_1EB1EE608, 0x1E696AFE0);
        sub_1A5FD336C();
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8, &unk_1A60279F0);
        (*(*(v35 - 8) + 56))(v13, 0, 1, v35);
      }

      else
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8, &unk_1A60279F0);
        (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
      }

      sub_1A5B60994(v13, &v16[v14[7]], &qword_1EB1F57C0, &qword_1A60281B8);
      v36 = [v19 gazeMask];
      v37 = v14[8];
      if (v36)
      {
        v47 = v21;
        v48 = v45;
        v49 = v44;
        sub_1A5BF36E0(v36, &v47, a3, &v16[v37]);
        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      v39 = type metadata accessor for PixelBufferObservation(0);
      v40 = 1;
      (*(*(v39 - 8) + 56))(&v16[v37], v38, 1, v39);
      v41 = [v19 lookedAtFaceObservationUUID];
      if (v41)
      {
        v42 = v41;
        sub_1A5FD365C();

        v40 = 0;
        v19 = v42;
      }

      v43 = sub_1A5FD367C();
      (*(*(v43 - 8) + 56))(v10, v40, 1, v43);
      sub_1A5B60994(v10, &v16[v14[9]], &qword_1EB1F0488, &qword_1A5FFCFD0);
      *&v16[v14[10]] = v21;
      sub_1A5D1A040(v16, a4, type metadata accessor for FaceObservation.Gaze);
      return (*(v46 + 56))(a4, 0, 1, v14);
    }
  }

  else
  {
    v32 = *(v46 + 56);

    return v32(a4, 1, 1, v14);
  }

  return result;
}

void sub_1A5D093C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 poseData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1A5FD35DC();
    v8 = v7;

    sub_1A5B066DC(v6, v8);
    v9 = [a1 poseOriginatingRequestSpecifier];
    if (v9)
    {
      v10 = v9;
      sub_1A5C7547C(&v17);

      v11 = v17;
    }

    else
    {
      v11 = -8;
    }

    [a1 pose];
    v15 = v18.columns[1];
    v16 = v18.columns[0];
    v13 = v18.columns[3];
    v14 = v18.columns[2];
    *&v12 = simd_quaternion(v18);
    *a2 = v16;
    *(a2 + 16) = v15;
    *(a2 + 32) = v14;
    *(a2 + 48) = v13;
    *(a2 + 64) = v12;
    *(a2 + 80) = v11;
  }

  else
  {
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 80) = -16;
  }
}

void sub_1A5D094C4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 expressionsAndConfidence];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for VNExpression(0);
    sub_1A5B16F58(0, &qword_1EB1F3E80, 0x1E696AD98);
    sub_1A5D13500(&qword_1EB1F59C8, type metadata accessor for VNExpression, &unk_1A602EFA8);
    v6 = sub_1A5FD3C0C();

    v7 = [a1 expressionsAndScores];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1A5FD3C0C();

      sub_1A5D09698(v9);
      v11 = v10;

      if (v11)
      {
        v12 = [a1 expressionsAndDetections];
        if (v12)
        {
          v13 = v12;
          v14 = sub_1A5FD3C0C();

          sub_1A5D099F0(v14);
          v16 = v15;

          if (v16)
          {
            v18 = 384;
            sub_1A5D00198(v11, v6, v16, &v18, &v19);
            v17 = v20;
            *a2 = v19;
            *(a2 + 8) = v17;
            return;
          }
        }
      }
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
}

void sub_1A5D09698(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5B58, &qword_1A6031488);
    v2 = sub_1A5FD487C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  v9 = 0;
  v22 = v1;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v11 >= v7)
        {

          return;
        }

        v6 = *(v3 + 8 * v11);
        ++v9;
        if (v6)
        {
          v9 = v11;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_15:
    v12 = __clz(__rbit64(v6)) | (v9 << 6);
    sub_1A5B45F58(*(v1 + 48) + 40 * v12, v29);
    sub_1A5B101D8(*(v1 + 56) + 32 * v12, v30 + 8);
    v27[0] = v30[0];
    v27[1] = v30[1];
    v28 = v31;
    v26[0] = v29[0];
    v26[1] = v29[1];
    sub_1A5B45F58(v26, v24);
    type metadata accessor for VNExpression(0);
    if (!swift_dynamicCast())
    {
      sub_1A5B10168(v26, &qword_1EB1F5B50, &qword_1A6031480);

LABEL_29:
      v25 = 0;

      return;
    }

    v13 = v25;
    sub_1A5B101D8(v27 + 8, v24);
    sub_1A5B10168(v26, &qword_1EB1F5B50, &qword_1A6031480);
    sub_1A5B16F58(0, &qword_1EB1F3E80, 0x1E696AD98);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_29;
    }

    v23 = v25;
    sub_1A5FD3D5C();
    sub_1A5FD4C1C();
    sub_1A5FD3DBC();
    v14 = sub_1A5FD4C6C();

    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v8 + 8 * (v16 >> 6))) == 0)
    {
      break;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v8 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    v1 = v22;
LABEL_9:
    v6 &= v6 - 1;
    *(v8 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    *(*(v2 + 48) + 8 * v10) = v13;
    *(*(v2 + 56) + 8 * v10) = v23;
    ++*(v2 + 16);
  }

  v18 = 0;
  v19 = (63 - v15) >> 6;
  v1 = v22;
  while (++v17 != v19 || (v18 & 1) == 0)
  {
    v20 = v17 == v19;
    if (v17 == v19)
    {
      v17 = 0;
    }

    v18 |= v20;
    v21 = *(v8 + 8 * v17);
    if (v21 != -1)
    {
      v10 = __clz(__rbit64(~v21)) + (v17 << 6);
      goto LABEL_9;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1A5D099F0(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5B48, &qword_1A6031478);
    v2 = sub_1A5FD487C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  v9 = 0;
  v22 = v1;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v11 >= v7)
        {
          goto LABEL_29;
        }

        v6 = *(v3 + 8 * v11);
        ++v9;
        if (v6)
        {
          v9 = v11;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_15:
    v12 = __clz(__rbit64(v6)) | (v9 << 6);
    sub_1A5B45F58(*(v1 + 48) + 40 * v12, v29);
    sub_1A5B101D8(*(v1 + 56) + 32 * v12, v30 + 8);
    v27[0] = v30[0];
    v27[1] = v30[1];
    v28 = v31;
    v26[0] = v29[0];
    v26[1] = v29[1];
    sub_1A5B45F58(v26, v24);
    type metadata accessor for VNExpression(0);
    if (!swift_dynamicCast())
    {
      sub_1A5B10168(v26, &qword_1EB1F5B50, &qword_1A6031480);

      v25 = 0;
LABEL_29:

      return;
    }

    v13 = v25;
    sub_1A5B101D8(v27 + 8, v24);
    sub_1A5B10168(v26, &qword_1EB1F5B50, &qword_1A6031480);
    if ((swift_dynamicCast() & 1) == 0)
    {

      LOBYTE(v25) = 2;
      goto LABEL_29;
    }

    v23 = v25;
    sub_1A5FD3D5C();
    sub_1A5FD4C1C();
    sub_1A5FD3DBC();
    v14 = sub_1A5FD4C6C();

    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v8 + 8 * (v16 >> 6))) == 0)
    {
      break;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v8 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
    v1 = v22;
LABEL_9:
    v6 &= v6 - 1;
    *(v8 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    *(*(v2 + 48) + 8 * v10) = v13;
    *(*(v2 + 56) + v10) = v23 & 1;
    ++*(v2 + 16);
  }

  v18 = 0;
  v19 = (63 - v15) >> 6;
  v1 = v22;
  while (++v17 != v19 || (v18 & 1) == 0)
  {
    v20 = v17 == v19;
    if (v17 == v19)
    {
      v17 = 0;
    }

    v18 |= v20;
    v21 = *(v8 + 8 * v17);
    if (v21 != -1)
    {
      v10 = __clz(__rbit64(~v21)) + (v17 << 6);
      goto LABEL_9;
    }
  }

LABEL_31:
  __break(1u);
}

double sub_1A5D09D40@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 faceSegments];
  if (v3)
  {
    v4 = v3;
    sub_1A5B2A4FC([v3 requestRevision], &v12);
    if (v12)
    {
      v5 = -8;
    }

    else
    {
      v5 = 432;
    }

    v9 = v5;
    sub_1A5D05520(v4, &v9, v10);
    v6 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v6;
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v11;
    result = *v10;
    v8 = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = v8;
  }

  else
  {
    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

id sub_1A5D09DF8(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [a1 alignedBoundingBox];
  *&v15[0] = __PAIR64__(v4, v3);
  *(&v15[0] + 1) = __PAIR64__(v6, v5);
  v17.origin.x = Geometry2D_rect2DToCGRect(v15);
  NormalizedRect.init(normalizedRect:)(v17);
  v7 = type metadata accessor for FaceObservation(0);
  v8 = v1 + v7[25];
  v9 = v15[1];
  *v8 = v15[0];
  *(v8 + 16) = v9;
  *(v8 + 32) = 0;
  [a1 faceJunkinessIndex];
  v10 = v1 + v7[27];
  *v10 = v11;
  *(v10 + 4) = 0;
  result = [a1 faceOrientationIndex];
  v13 = v1 + v7[26];
  *v13 = v14;
  *(v13 + 4) = 0;
  return result;
}

uint64_t sub_1A5D09EDC@<X0>(void *a1@<X0>, uint64_t *a2@<X2>, _OWORD *a3@<X3>, __int128 *a4@<X8>)
{
  v157 = a3;
  v172 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2840, &qword_1A6014070);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v116 - v8;
  v10 = sub_1A5FD367C();
  v150 = *(v10 - 8);
  v151 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v156 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8, &unk_1A60279F0);
  v148 = *(v12 - 8);
  v149 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v155 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v154 = &v116 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v153 = &v116 - v17;
  v18 = *a2;
  v19 = a2[1];
  v20 = a2[2];
  v21 = a2[3];
  v22 = type metadata accessor for FaceObservation(0);
  v23 = a1;
  [v23 boundingBox];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  LOBYTE(a1) = [v23 providesBoundsNormalizedToROI];

  *v164 = v18;
  *&v164[8] = v19;
  *&v164[16] = v20;
  *&v164[24] = v21;
  sub_1A5D13500(&qword_1EB1EE8E8, type metadata accessor for FaceObservation, &unk_1A602A080);
  v136 = v22;
  sub_1A5BD9138(a1, v164, v25, v27, v29, v31);
  v145 = *v171;
  v146 = *&v171[16];
  v32 = [v23 isBoundingBoxAligned];
  v33 = 0uLL;
  v34 = 0uLL;
  v147 = v32;
  if (v32)
  {
    [v23 alignedBoundingBox];
    *v171 = v35;
    *&v171[4] = v36;
    *&v171[8] = v37;
    *&v171[12] = v38;
    v173.origin.x = Geometry2D_rect2DToCGRect(v171);
    NormalizedRect.init(normalizedRect:)(v173);
    v33 = *v171;
    v34 = *&v171[16];
  }

  v143 = v34;
  v144 = v33;
  sub_1A5D08748(v23, v171);
  v140 = *&v171[16];
  v141 = *v171;
  v138 = *&v171[48];
  v139 = *&v171[32];
  v142 = *&v171[64];
  v39 = [v23 roll];
  if (v39)
  {
    v40 = v39;
    [v39 doubleValue];
  }

  v41 = objc_opt_self();
  v42 = [v41 radians];
  sub_1A5B16F58(0, &qword_1EB1EE608, 0x1E696AFE0);
  sub_1A5FD336C();
  v43 = [v23 yaw];
  if (v43)
  {
    v44 = v43;
    [v43 doubleValue];
  }

  v45 = [v41 radians];
  sub_1A5FD336C();
  v46 = [v23 pitch];
  if (v46)
  {
    v47 = v46;
    [v46 doubleValue];
  }

  v48 = [v41 radians];
  sub_1A5FD336C();
  v49 = VNFaceObservation.faceCaptureQuality.getter();
  if ((v49 & 0x100000000) != 0)
  {
    v54 = 0xFFF000000000;
  }

  else
  {
    v50 = v49;
    v51 = [v23 faceCaptureQualityOriginatingRequestSpecifier];
    if (v51)
    {
      v52 = v51;
      sub_1A5C7547C(v171);

      v53 = *v171;
    }

    else
    {
      v53 = 65528;
    }

    v54 = v50 | (v53 << 32);
  }

  v137 = v54;
  v55 = v23;
  v56 = [v55 uuid];
  sub_1A5FD365C();

  [v55 confidence];
  v58 = v57;
  v59 = [v55 originatingRequestSpecifier];

  sub_1A5C7547C(&v160);
  v135 = v160;
  [v55 unalignedBoundingBox];
  NormalizedRect.init(normalizedRect:)(v174);
  v133 = v159;
  v134 = v158;
  v60 = 0;
  v61 = 0;
  v132 = [v55 isBoundingBoxAligned];
  if (v132)
  {
    [v55 faceOrientationIndex];
    v61 = v62;
  }

  v131 = [v55 isBoundingBoxAligned];
  if (v131)
  {
    [v55 faceJunkinessIndex];
    v60 = v63;
  }

  v64 = [v55 faceAttributes];
  if (v64)
  {
    v65 = v64;
    sub_1A5B0E028([v64 requestRevision], v161);
    if (LOBYTE(v161[0]) == 3)
    {
      v66 = -8;
    }

    else
    {
      v66 = LOBYTE(v161[0]) | 0x138;
    }

    *v171 = v66;
    sub_1A5CF97C0(v65, v171, v164);
    TtTrkRpnNode::config(v164);
    memcpy(v171, v164, sizeof(v171));
  }

  else
  {
    sub_1A5CE02A4(v171);
  }

  *v164 = v18;
  *&v164[8] = v19;
  *&v164[16] = v20;
  *&v164[24] = v21;
  sub_1A5D08E18(v55, v164, v157, v9);
  sub_1A5D093C8(v55, v169);
  sub_1A5D094C4(v55, &v167);
  v130 = v167;
  v129 = v168;
  v67 = [v55 faceSegments];
  v152 = v9;
  if (v67)
  {
    v68 = v67;
    sub_1A5B2A4FC([v67 requestRevision], v165);
    if (LOBYTE(v165[0]))
    {
      v69 = -8;
    }

    else
    {
      v69 = 432;
    }

    v161[0] = v69;
    sub_1A5D05520(v68, v161, v164);

    v126 = *v164;
    v122 = *&v164[48];
    v123 = *&v164[32];
    v124 = *&v164[16];
    v127 = *&v164[72];
    v128 = *&v164[64];
    v125 = *&v164[80];
  }

  else
  {

    v127 = 0;
    v128 = 0;
    v125 = 0;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v122 = 0u;
  }

  *(a4 + 8) = 0;
  a4[2] = 0u;
  a4[3] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  v70 = v136;
  v71 = a4 + v136[8];
  v118 = v71;
  *(v71 + 2) = -16;
  *v71 = 0;
  v72 = a4 + v70[15];
  *v72 = 0;
  *(v72 + 6) = -16;
  *(v72 + 2) = 0;
  v73 = a4 + v70[16];
  *v73 = 0;
  *(v73 + 6) = -16;
  *(v73 + 2) = 0;
  v74 = a4 + v70[17];
  *v74 = 0u;
  *(v74 + 1) = 0u;
  *(v74 + 16) = -16;
  v75 = a4 + v70[18];
  *(v75 + 2) = -16;
  *v75 = 0;
  v76 = a4 + v70[19];
  *v76 = 0u;
  *(v76 + 1) = 0u;
  v76[34] = 0;
  *(v76 + 16) = -16;
  v77 = v70[20];
  v119 = v77;
  sub_1A5CE02A4(v161);
  memcpy(a4 + v77, v161, 0x102uLL);
  v78 = v70[21];
  v120 = v78;
  v79 = type metadata accessor for FaceObservation.Gaze(0);
  (*(*(v79 - 8) + 56))(a4 + v78, 1, 1, v79);
  v80 = a4 + v70[22];
  *(v80 + 3) = 0u;
  *(v80 + 4) = 0u;
  *(v80 + 1) = 0u;
  *(v80 + 2) = 0u;
  *v80 = 0u;
  *(v80 + 40) = -16;
  v81 = a4 + v70[23];
  v121 = v81;
  *v81 = 0;
  *(v81 + 4) = 0;
  v82 = a4 + v70[24];
  *(v82 + 10) = 0;
  *(v82 + 3) = 0u;
  *(v82 + 4) = 0u;
  *(v82 + 1) = 0u;
  *(v82 + 2) = 0u;
  *v82 = 0u;
  v83 = a4 + v70[25];
  *v83 = 0u;
  *(v83 + 1) = 0u;
  v83[32] = 1;
  v84 = v70[27];
  v116 = (a4 + v70[26]);
  v117 = a4 + v84;
  v85 = *a4;
  v86 = a4[1];
  v87 = a4[2];
  v88 = a4[3];
  v163 = *(a4 + 8);
  v162[2] = v87;
  v162[3] = v88;
  v162[0] = v85;
  v162[1] = v86;
  sub_1A5B10168(v162, &qword_1EB1F2370, &qword_1A6010808);
  v89 = v140;
  *a4 = v141;
  a4[1] = v89;
  v90 = v138;
  a4[2] = v139;
  a4[3] = v90;
  *(a4 + 8) = v142;
  v91 = v149;
  v92 = *(v148 + 32);
  v92(a4 + v70[5], v153, v149);
  v92(a4 + v70[6], v154, v91);
  v92(a4 + v70[7], v155, v91);
  v93 = v137;
  v94 = v118;
  *(v118 + 2) = WORD2(v137);
  *v94 = v93;
  v95 = (a4 + v70[9]);
  v96 = v146;
  *v95 = v145;
  v95[1] = v96;
  (*(v150 + 32))(a4 + v70[11], v156, v151);
  *(a4 + v70[12]) = v58;
  v97 = a4 + v70[13];
  v98 = v157;
  v99 = v157[1];
  *v97 = *v157;
  *(v97 + 1) = v99;
  *(v97 + 2) = v98[2];
  v97[48] = *(v98 + 48);
  *(a4 + v70[14]) = v135;
  v100 = (a4 + v70[28]);
  *v100 = v18;
  v100[1] = v19;
  v100[2] = v20;
  v100[3] = v21;
  v101 = (a4 + v70[10]);
  v102 = v133;
  *v101 = v134;
  v101[1] = v102;
  v103 = v143;
  *v83 = v144;
  *(v83 + 1) = v103;
  v83[32] = v147 ^ 1;
  v105 = v116;
  v104 = v117;
  *v116 = v61;
  *(v105 + 4) = v132 ^ 1;
  *v104 = v60;
  v104[4] = v131 ^ 1;
  v106 = v119;
  memcpy(v164, a4 + v119, sizeof(v164));
  sub_1A5B10168(v164, &qword_1EB1F2BB0, &unk_1A60279E0);
  memcpy(a4 + v106, v171, 0x102uLL);
  sub_1A5C371FC(v152, a4 + v120);
  v107 = v169[3];
  *(v80 + 2) = v169[2];
  *(v80 + 3) = v107;
  *(v80 + 4) = v169[4];
  *(v80 + 40) = v170;
  v108 = v169[1];
  *v80 = v169[0];
  *(v80 + 1) = v108;
  v109 = v121;

  *v109 = v130;
  *(v109 + 4) = v129;
  v110 = *(v82 + 3);
  v165[2] = *(v82 + 2);
  v165[3] = v110;
  v165[4] = *(v82 + 4);
  v166 = *(v82 + 10);
  v111 = *(v82 + 1);
  v165[0] = *v82;
  v165[1] = v111;
  result = sub_1A5B10168(v165, &qword_1EB1F4A48, &qword_1A6024318);
  v113 = v124;
  *v82 = v126;
  *(v82 + 1) = v113;
  v114 = v122;
  *(v82 + 2) = v123;
  *(v82 + 3) = v114;
  v115 = v127;
  *(v82 + 8) = v128;
  *(v82 + 9) = v115;
  *(v82 + 10) = v125;
  return result;
}

void sub_1A5D0AA68()
{
  v1 = v0;
  v2 = type metadata accessor for FaceObservation(0);
  v3 = v2;
  if (*(v0 + *(v2 + 56)) > 0xFFF7u)
  {
    v4 = v0 + *(v2 + 100);
    if (*(v4 + 32))
    {
      v5 = 0;
LABEL_7:
      v8 = 0;
      goto LABEL_8;
    }

    v5 = 0;
    v18 = 0;
    v20 = *(v4 + 16);
    v19 = *(v4 + 24);
    v22 = *v4;
    v21 = *(v4 + 8);
LABEL_13:
    v23 = (v0 + *(v3 + 40));
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    v27 = v23[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8, &unk_1A60279F0);
    sub_1A5FD337C();
    v28 = sub_1A5FD41DC();
    sub_1A5FD337C();
    v29 = sub_1A5FD41DC();
    sub_1A5FD337C();
    v30 = sub_1A5FD41DC();
    v17 = [objc_opt_self() faceObservationWithRequestRevision:v18 boundingBox:v28 alignedBoundingBox:v29 roll:v30 yaw:v24 pitch:{v25, v26, v27, v22, v21, v20, v19}];

    if (!v17)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  LOWORD(v38) = *(v0 + *(v2 + 56));
  v6 = sub_1A5C752E0();
  v5 = v6;
  v7 = v0 + *(v3 + 100);
  if ((*(v7 + 32) & 1) == 0)
  {
    v20 = *(v7 + 16);
    v19 = *(v7 + 24);
    v22 = *v7;
    v21 = *(v7 + 8);
    if (v6)
    {
      v18 = [v6 requestRevision];
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_13;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

  v8 = [v6 requestRevision];
LABEL_8:
  v9 = (v0 + *(v3 + 40));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8, &unk_1A60279F0);
  sub_1A5FD337C();
  v14 = sub_1A5FD41DC();
  sub_1A5FD337C();
  v15 = sub_1A5FD41DC();
  sub_1A5FD337C();
  v16 = sub_1A5FD41DC();
  v17 = [objc_opt_self() faceObservationWithRequestRevision:v8 boundingBox:v14 roll:v15 yaw:v16 pitch:{v10, v11, v12, v13}];

LABEL_14:
  v31 = v17;
  v32 = sub_1A5FD363C();
  [v31 setUUID_];

  v33 = v1[1];
  v38 = *v1;
  v39 = v33;
  v34 = v1[3];
  v40 = v1[2];
  v41 = v34;
  v42 = *(v1 + 8);
  if (!*(&v39 + 1))
  {

    return;
  }

  if (v38 > 0xFFF7u)
  {
    __break(1u);
  }

  else
  {
    sub_1A5B06670(*(&v38 + 1), v39);

    v35 = sub_1A5C752E0();
    if (v35)
    {
      v36 = v35;
      v37 = sub_1A5FD35BC();
      [v31 setLandmarkPoints65Data:v37 originatingRequestSpecifier:v36];

      sub_1A5B10168(&v38, &qword_1EB1F2370, &qword_1A6010808);
      return;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t FaceObservation.init(_:)@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  static NormalizedRect.fullImage.getter(v6);
  [a1 timeRange];
  v8 = 0;
  return sub_1A5D09EDC(a1, &v5, &v7, a2);
}

uint64_t sub_1A5D0AE94@<X0>(void *a1@<X0>, _OWORD *a2@<X2>, _OWORD *a3@<X3>, __int128 *a4@<X8>)
{
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  return sub_1A5D09EDC(a1, v6, a3, a4);
}

uint64_t sub_1A5D0AEC0()
{
  type metadata accessor for FaceObservation(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8, &unk_1A60279F0);
  sub_1A5FD337C();
  v1 = v0;
  if (v1 < -135.0 && v1 >= -180.0)
  {
    goto LABEL_22;
  }

  v4 = v1 < 45.0 && v1 >= -45.0;
  if (v1 < -45.0 && v1 >= -135.0)
  {
    v4 = 8;
  }

  if (v1 >= 135.0 && v1 < 180.0)
  {
LABEL_22:
    v4 = 3;
  }

  if (v1 >= 135.0 || v1 < 45.0)
  {
    v8 = v4;
  }

  else
  {
    v8 = 6;
  }

  if (!v8)
  {
    sub_1A5FD46AC();
    MEMORY[0x1AC554600](0xD000000000000019, 0x80000001A605A4B0);
    sub_1A5FD420C();
    sub_1A5B16774();
    swift_allocError();
    sub_1A5D286A4(0, 0xE000000000000000, v9);

    swift_willThrow();
  }

  return v8;
}

uint64_t FaceObservation.GazeScores.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000013, 0x80000001A605A270);
  sub_1A5FD420C();
  MEMORY[0x1AC554600](0xD000000000000012, 0x80000001A605A290);
  sub_1A5FD420C();
  MEMORY[0x1AC554600](0xD000000000000017, 0x80000001A605A2B0);
  sub_1A5FD420C();
  return 0;
}

unint64_t sub_1A5D0B230()
{
  v1 = 0x41676E696B6F6F6CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1A5D0B29C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A5D23224(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A5D0B2C4(uint64_t a1)
{
  v2 = sub_1A5D1A9D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D0B300(uint64_t a1)
{
  v2 = sub_1A5D1A9D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.GazeScores.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F59D0, &qword_1A6028280);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D1A9D0();
  sub_1A5FD4CDC();
  v11 = 0;
  sub_1A5FD4A3C();
  if (!v1)
  {
    v10 = 1;
    sub_1A5FD4A3C();
    v9 = 2;
    sub_1A5FD4A3C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FaceObservation.GazeScores.hash(into:)()
{
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  return sub_1A5FD4C4C();
}

uint64_t FaceObservation.GazeScores.hashValue.getter()
{
  sub_1A5FD4C1C();
  FaceObservation.GazeScores.hash(into:)();
  return sub_1A5FD4C6C();
}

uint64_t FaceObservation.GazeScores.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F59D8, &qword_1A6028288);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D1A9D0();
  sub_1A5FD4CCC();
  if (!v2)
  {
    v16[15] = 0;
    sub_1A5FD495C();
    v10 = v9;
    v16[14] = 1;
    sub_1A5FD495C();
    v13 = v12;
    v16[13] = 2;
    sub_1A5FD495C();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v13;
    a2[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5D0B788()
{
  sub_1A5FD4C1C();
  FaceObservation.GazeScores.hash(into:)();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D0B7E0(uint64_t a1)
{
  sub_1A5FD4C1C();
  FaceObservation.GazeScores.hash(into:)();
  return sub_1A5FD4C6C();
}

float FaceObservation.GazeCommon.gazeScores.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = result;
  return result;
}

float FaceObservation.GazeCommon.gazeScores.setter(uint64_t a1)
{
  result = *(a1 + 8);
  *v1 = *a1;
  *(v1 + 8) = result;
  return result;
}

uint64_t FaceObservation.GazeCommon.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0x726F6353657A6167, 0xEC000000203A7365);
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000013, 0x80000001A605A270);
  sub_1A5FD420C();
  MEMORY[0x1AC554600](0xD000000000000012, 0x80000001A605A290);
  sub_1A5FD420C();
  MEMORY[0x1AC554600](0xD000000000000017, 0x80000001A605A2B0);
  sub_1A5FD420C();
  MEMORY[0x1AC554600](0, 0xE000000000000000);

  MEMORY[0x1AC554600](0x6556657A6167203BLL, 0xEE00203A726F7463);
  type metadata accessor for CGPoint(0);
  sub_1A5FD481C();
  return 0;
}

uint64_t sub_1A5D0BAD0()
{
  if (*v0)
  {
    return 0x74636556657A6167;
  }

  else
  {
    return 0x726F6353657A6167;
  }
}

void sub_1A5D0BB10(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x726F6353657A6167 && a2 == 0xEA00000000007365 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x74636556657A6167 && a2 == 0xEA0000000000726FLL)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1A5FD4B0C();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1A5D0BBF4(uint64_t a1)
{
  v2 = sub_1A5D1AA24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D0BC30(uint64_t a1)
{
  v2 = sub_1A5D1AA24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.GazeCommon.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F59E0, &qword_1A6028290);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  v9 = *(v3 + 2);
  v10 = v3[2];
  v11 = v3[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D1AA24();
  sub_1A5FD4CDC();
  v13 = *v3;
  LODWORD(v14) = v9;
  v15 = 0;
  sub_1A5D1AA78();
  sub_1A5FD4A5C();
  if (!v2)
  {
    v13 = v10;
    v14 = v11;
    v15 = 1;
    type metadata accessor for CGPoint(0);
    sub_1A5D13500(&qword_1EB1F59F0, type metadata accessor for CGPoint, MEMORY[0x1E695EFA8]);
    sub_1A5FD4A5C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t FaceObservation.GazeCommon.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1AC555450](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  return MEMORY[0x1AC555450](*&v4);
}

uint64_t FaceObservation.GazeCommon.hashValue.getter()
{
  sub_1A5FD4C1C();
  FaceObservation.GazeCommon.hash(into:)();
  return sub_1A5FD4C6C();
}

int64x2_t sub_1A5D0BF4C@<Q0>(uint64_t a1@<X8>)
{
  *a1 = vneg_f32(0x3F0000003FLL);
  *(a1 + 8) = 2143289344;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 16) = result;
  return result;
}

uint64_t FaceObservation.GazeCommon.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F59F8, &qword_1A6028298);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D1AA24();
  sub_1A5FD4CCC();
  if (!v2)
  {
    v14 = 0;
    sub_1A5D1AACC();
    sub_1A5FD497C();
    v9 = v13;
    v10 = DWORD2(v13);
    type metadata accessor for CGPoint(0);
    v14 = 1;
    sub_1A5D13500(&qword_1EB1F5A08, type metadata accessor for CGPoint, MEMORY[0x1E695EFC0]);
    sub_1A5FD497C();
    (*(v6 + 8))(v8, v5);
    v11 = v13;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

float32x2_t sub_1A5D0C190@<D0>(float32x2_t *a1@<X8>)
{
  result = vneg_f32(0x3F0000003FLL);
  *a1 = result;
  a1[1].i32[0] = 2143289344;
  return result;
}

uint64_t sub_1A5D0C1A8()
{
  sub_1A5FD4C1C();
  FaceObservation.GazeCommon.hash(into:)();
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D0C208(uint64_t a1)
{
  sub_1A5FD4C1C();
  FaceObservation.GazeCommon.hash(into:)();
  return sub_1A5FD4C6C();
}

float FaceObservation.GazeScoresResult.gazeScores.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = result;
  return result;
}

float sub_1A5D0C2E4@<S0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  result = *(a1 + 8);
  v4 = *a2;
  *a3 = *a1;
  *(a3 + 8) = result;
  *(a3 + 12) = v4;
  return result;
}

uint64_t FaceObservation.GazeScoresResult.description.getter()
{
  sub_1A5FD46AC();

  strcpy(v2, "gazeScores: ");
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0xD000000000000013, 0x80000001A605A270);
  sub_1A5FD420C();
  MEMORY[0x1AC554600](0xD000000000000012, 0x80000001A605A290);
  sub_1A5FD420C();
  MEMORY[0x1AC554600](0xD000000000000017, 0x80000001A605A2B0);
  sub_1A5FD420C();
  MEMORY[0x1AC554600](0, 0xE000000000000000);

  MEMORY[0x1AC554600](0xD000000000000020, 0x80000001A6052A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE758, &unk_1A5FF1270);
  v0 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v0);

  return v2[0];
}

uint64_t sub_1A5D0C4C8()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0x726F6353657A6167;
  }
}

void sub_1A5D0C50C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F6353657A6167 && a2 == 0xEA00000000007365;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A6052B00 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A5FD4B0C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1A5D0C5F8(uint64_t a1)
{
  v2 = sub_1A5D1AB20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D0C634(uint64_t a1)
{
  v2 = sub_1A5D1AB20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.GazeScoresResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5A10, &qword_1A60282A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9 = *(v3 + 2);
  v10 = *(v3 + 6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D1AB20();
  sub_1A5FD4CDC();
  v14 = *v3;
  v15 = v9;
  v13 = 0;
  sub_1A5D1AA78();
  sub_1A5FD4A5C();
  if (!v2)
  {
    LOWORD(v14) = v10;
    v13 = 1;
    sub_1A5B0A760();
    sub_1A5FD4A0C();
  }

  return (*(v6 + 8))(v8, v5);
}

void FaceObservation.GazeScoresResult.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 12);
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  sub_1A5FD4C3C();
  if (v2 < 0xFFF8)
  {
    sub_1A5B0A85C();
    sub_1A5FD3CBC();
  }
}

uint64_t FaceObservation.GazeScoresResult.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 6);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1A5FD4C1C();
  FaceObservation.GazeScoresResult.hash(into:)(v4);
  return sub_1A5FD4C6C();
}

uint64_t FaceObservation.GazeScoresResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5A18, &qword_1A60282A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D1AB20();
  sub_1A5FD4CCC();
  if (!v2)
  {
    v15 = 0;
    sub_1A5D1AACC();
    sub_1A5FD497C();
    v9 = v13;
    v10 = v14;
    v15 = 1;
    sub_1A5B0A454();
    sub_1A5FD492C();
    (*(v6 + 8))(v8, v5);
    v11 = v13;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 12) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5D0CB34()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 6);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1A5FD4C1C();
  FaceObservation.GazeScoresResult.hash(into:)(v4);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D0CB94(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 6);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_1A5FD4C1C();
  FaceObservation.GazeScoresResult.hash(into:)(v5);
  return sub_1A5FD4C6C();
}

__n128 FaceObservation.GazeResult.gaze.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1->n128_u32[2];
  a1->n128_u64[0] = v1->n128_u64[0];
  a1->n128_u32[2] = v2;
  result = v1[1];
  a1[1] = result;
  return result;
}

__n128 sub_1A5D0CC84@<Q0>(__n128 *a1@<X0>, unsigned __int16 *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1->n128_u32[2];
  v4 = *a2;
  a3->n128_u64[0] = a1->n128_u64[0];
  a3->n128_u32[2] = v3;
  result = a1[1];
  a3[1] = result;
  a3[2].n128_u16[0] = v4;
  return result;
}

uint64_t FaceObservation.GazeResult.description.getter()
{
  v1 = v0[1];
  v4[0] = *v0;
  v4[1] = v1;
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0x203A657A6167, 0xE600000000000000);
  sub_1A5CE0B30(v4);
  MEMORY[0x1AC554600](0xD000000000000020, 0x80000001A6052A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE758, &unk_1A5FF1270);
  v2 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v2);

  return 0;
}

uint64_t sub_1A5D0CD78()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 1702519143;
  }
}

void sub_1A5D0CDB0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702519143 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A6052B00 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A5FD4B0C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1A5D0CE94(uint64_t a1)
{
  v2 = sub_1A5D1AB74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D0CED0(uint64_t a1)
{
  v2 = sub_1A5D1AB74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FaceObservation.GazeResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5A20, &qword_1A60282B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v9 = *(v3 + 2);
  v10 = v3[2];
  v11 = v3[3];
  v12 = *(v3 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D1AB74();
  sub_1A5FD4CDC();
  v16 = *v3;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v15 = 0;
  sub_1A5D1ABC8();
  sub_1A5FD4A5C();
  if (!v2)
  {
    LOWORD(v16) = v12;
    v15 = 1;
    sub_1A5B0A760();
    sub_1A5FD4A0C();
  }

  return (*(v6 + 8))(v8, v5);
}

void FaceObservation.GazeResult.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  sub_1A5FD4C4C();
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1AC555450](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1AC555450](*&v6);
  sub_1A5FD4C3C();
  if (v4 < 0xFFF8)
  {
    sub_1A5B0A85C();
    sub_1A5FD3CBC();
  }
}

uint64_t FaceObservation.GazeResult.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[9] = *v0;
  v5 = v1;
  v6 = *(v0 + 16);
  v7 = v2;
  sub_1A5FD4C1C();
  FaceObservation.GazeResult.hash(into:)(v4);
  return sub_1A5FD4C6C();
}

uint64_t FaceObservation.GazeResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5A30, &qword_1A60282B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A5D1AB74();
  sub_1A5FD4CCC();
  if (!v2)
  {
    v19 = 0;
    sub_1A5D1AC1C();
    sub_1A5FD497C();
    v9 = v15;
    v10 = v16;
    v11 = v17;
    v12 = v18;
    v19 = 1;
    sub_1A5B0A454();
    sub_1A5FD492C();
    (*(v6 + 8))(v8, v5);
    v13 = v15;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5D0D428()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[9] = *v0;
  v5 = v1;
  v6 = *(v0 + 16);
  v7 = v2;
  sub_1A5FD4C1C();
  FaceObservation.GazeResult.hash(into:)(v4);
  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D0D490(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v5[9] = *v1;
  v6 = v2;
  v7 = *(v1 + 16);
  v8 = v3;
  sub_1A5FD4C1C();
  FaceObservation.GazeResult.hash(into:)(v5);
  return sub_1A5FD4C6C();
}

uint64_t FaceObservation.FaceLivelinessScore.description.getter()
{
  sub_1A5FD46AC();
  MEMORY[0x1AC554600](0x6E656469666E6F63, 0xEC000000203A6563);
  sub_1A5FD420C();
  MEMORY[0x1AC554600](0xD000000000000020, 0x80000001A6052A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EE758, &unk_1A5FF1270);
  v0 = sub_1A5FD3D7C();
  MEMORY[0x1AC554600](v0);

  return 0;
}

uint64_t sub_1A5D0D670()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0x6E656469666E6F63;
  }
}

void sub_1A5D0D6B4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
  if (v6 || (sub_1A5FD4B0C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A6052B00 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A5FD4B0C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1A5D0D7A0(uint64_t a1)
{
  v2 = sub_1A5D1AC70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A5D0D7DC(uint64_t a1)
{
  v2 = sub_1A5D1AC70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A5D0D85C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  v15 = *(v5 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1A5FD4CDC();
  v19 = 0;
  v12 = v16;
  sub_1A5FD4A3C();
  if (!v12)
  {
    v18 = v15;
    v17 = 1;
    sub_1A5B0A760();
    sub_1A5FD4A0C();
  }

  return (*(v9 + 8))(v11, v8);
}

double sub_1A5D0D9F4(uint64_t a1)
{
  v2 = *(v1 + 4);
  sub_1A5FD4C4C();
  sub_1A5FD4C3C();
  if (v2 < 0xFFF8)
  {
    sub_1A5B0A85C();
    sub_1A5FD3CBC();
  }

  return result;
}

uint64_t sub_1A5D0DA98()
{
  v1 = *(v0 + 4);
  sub_1A5FD4C1C();
  sub_1A5FD4C4C();
  sub_1A5FD4C3C();
  if (v1 < 0xFFF8)
  {
    sub_1A5B0A85C();
    sub_1A5FD3CBC();
  }

  return sub_1A5FD4C6C();
}

uint64_t sub_1A5D0DB8C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v20 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1A5FD4CCC();
  if (!v6)
  {
    v13 = v19;
    v12 = v20;
    v23 = 0;
    sub_1A5FD495C();
    v15 = v14;
    v21 = 1;
    sub_1A5B0A454();
    sub_1A5FD492C();
    (*(v13 + 8))(v11, v9);
    v16 = v22;
    *v12 = v15;
    *(v12 + 4) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A5D0DD70(uint64_t a1)
{
  v2 = *(v1 + 4);
  sub_1A5FD4C1C();
  sub_1A5FD4C4C();
  sub_1A5FD4C3C();
  if (v2 < 0xFFF8)
  {
    sub_1A5B0A85C();
    sub_1A5FD3CBC();
  }

  return sub_1A5FD4C6C();
}

__n128 sub_1A5D0DE6C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 32);
  sub_1A5D19FD8(a1, a3, type metadata accessor for FaceObservation);
  v6 = a3 + *(type metadata accessor for FaceObservation(0) + 68);
  result = *a2;
  v8 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v8;
  *(v6 + 32) = v5;
  return result;
}

uint64_t sub_1A5D0DED4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 6);
  sub_1A5D19FD8(a1, a3, type metadata accessor for FaceObservation);
  result = type metadata accessor for FaceObservation(0);
  v8 = a3 + *(result + 60);
  *v8 = v4;
  *(v8 + 12) = v6;
  *(v8 + 8) = v5;
  return result;
}

uint64_t sub_1A5D0DF40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 6);
  sub_1A5D19FD8(a1, a3, type metadata accessor for FaceObservation);
  result = type metadata accessor for FaceObservation(0);
  v8 = a3 + *(result + 64);
  *v8 = v4;
  *(v8 + 12) = v6;
  *(v8 + 8) = v5;
  return result;
}

uint64_t sub_1A5D0DFAC@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  sub_1A5D19FD8(a1, a3, type metadata accessor for FaceObservation);
  result = type metadata accessor for FaceObservation(0);
  v7 = a3 + *(result + 72);
  *(v7 + 4) = v5;
  *v7 = v4;
  return result;
}

uint64_t sub_1A5D0E010(uint64_t a1)
{
  v2 = sub_1A5D13500(&qword_1EB1F59C8, type metadata accessor for VNExpression, &unk_1A602EFA8);
  v3 = sub_1A5D13500(&qword_1EB1F5B38, type metadata accessor for VNExpression, &unk_1A602E350);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1A5D0E0CC(uint64_t a1)
{
  v1 = a1;
  sub_1A5FD4C1C();
  sub_1A5FD4C3C();
  v2 = sub_1A5FD4C6C();
  return sub_1A5B2DDA4(v1, v2);
}

unint64_t sub_1A5D0E134(unsigned __int8 a1)
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](a1);
  v2 = sub_1A5FD4C6C();
  return sub_1A5B2DDA4(a1, v2);
}

unint64_t sub_1A5D0E19C(char a1)
{
  sub_1A5FD4C1C();
  MEMORY[0x1AC555420](a1 & 1);
  v2 = sub_1A5FD4C6C();
  return sub_1A5D0E218(a1 & 1, v2);
}

unint64_t sub_1A5D0E218(int a1, uint64_t a2)
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

char *sub_1A5D0E288(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A5D0E2A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A5D0E2A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF4E0, &qword_1A5FF91E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1A5D0E39C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1A5FD486C();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v6;
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
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(*(v7 + 56) + 4 * v21);
      sub_1A5FD4C1C();
      MEMORY[0x1AC555420](v22);
      result = sub_1A5FD4C6C();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      *(*(v9 + 56) + 4 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_31;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_31:
  *v5 = v9;
  return result;
}

uint64_t sub_1A5D0E618(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5B88, &qword_1A60314C8);
  result = sub_1A5FD486C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56) + 12 * v20;
      v22 = *(*(v5 + 48) + v20);
      v23 = *(v21 + 8);
      v24 = *v21;
      sub_1A5FD4C1C();
      MEMORY[0x1AC555420](v22);
      result = sub_1A5FD4C6C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v22;
      v16 = *(v7 + 56) + 12 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1A5D0E8B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5B68, &qword_1A6031498);
  result = sub_1A5FD486C();
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
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        sub_1A5B06670(v29, *(&v29 + 1));
      }

      sub_1A5FD4C1C();
      sub_1A5FD4C3C();
      result = sub_1A5FD4C6C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
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

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A5D0EB4C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A5FD463C() + 1) & ~v5;
    do
    {
      sub_1A5FD4C1C();
      sub_1A5FD4C3C();
      result = sub_1A5FD4C6C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1A5D0ECE0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1A5FD485C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 4 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 4 * v16);
      *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

  return result;
}

void *sub_1A5D0EE1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5B88, &qword_1A60314C8);
  v2 = *v0;
  v3 = sub_1A5FD485C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 12 * v14;
      v18 = *(v17 + 8);
      v19 = *v17;
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v20 = *(v4 + 56) + 12 * v14;
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

  return result;
}

void sub_1A5D0EF80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5B68, &qword_1A6031498);
  v2 = *v0;
  v3 = sub_1A5FD485C();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        sub_1A5B06670(v18, *(&v18 + 1));
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

uint64_t sub_1A5D0F0E8(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1AC555400](*(*v2 + 40), a2, 1);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1A5D0F400(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A5D0F1D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5B70, &unk_1A60314A0);
  result = sub_1A5FD468C();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      result = MEMORY[0x1AC555400](*(v5 + 40), v17, 1);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A5D0F400(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A5D0F1D0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1A5D0F524();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1A5D0F664(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x1AC555400](*(*v3 + 40), v4, 1);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A5FD4B7C();
  __break(1u);
  return result;
}

void *sub_1A5D0F524()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5B70, &unk_1A60314A0);
  v2 = *v0;
  v3 = sub_1A5FD467C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

  return result;
}

uint64_t sub_1A5D0F664(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5B70, &unk_1A60314A0);
  result = sub_1A5FD468C();
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      result = MEMORY[0x1AC555400](*(v5 + 40), v16, 1);
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
      *(*(v5 + 48) + v12) = v16;
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

uint64_t sub_1A5D0F858(uint64_t a1, unint64_t a2, unint64_t a3, char **a4)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      memset(v16, 0, 14);
      goto LABEL_17;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    a1 = sub_1A5FD33EC();
    v9 = a1;
    if (a1)
    {
      a1 = sub_1A5FD341C();
      if (__OFSUB__(v7, a1))
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 += v7 - a1;
    }

    if (!__OFSUB__(v8, v7))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v16[0] = a1;
    LOWORD(v16[1]) = a2;
    BYTE2(v16[1]) = BYTE2(a2);
    BYTE3(v16[1]) = BYTE3(a2);
    BYTE4(v16[1]) = BYTE4(a2);
    BYTE5(v16[1]) = BYTE5(a2);
LABEL_17:
    v12 = v16;
    v13 = a3;
    v14 = a4;
    return sub_1A5D08B3C(v12, v13, v14);
  }

  v10 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = sub_1A5FD33EC();
  if (v9)
  {
    v11 = sub_1A5FD341C();
    if (!__OFSUB__(v10, v11))
    {
      v9 += v10 - v11;
      goto LABEL_15;
    }

LABEL_21:
    __break(1u);
  }

LABEL_15:
  sub_1A5FD340C();
  v12 = v9;
  v13 = a3;
  v14 = a4;
  return sub_1A5D08B3C(v12, v13, v14);
}

uint64_t sub_1A5D0F9FC(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = v4;
LABEL_8:
      if (*(*(a2 + 48) + (__clz(__rbit64(v8)) | (v10 << 6))) == 15)
      {
        return MEMORY[0x1AC555420](v3);
      }

      v8 &= v8 - 1;
      sub_1A5FD4C3C();
      sub_1A5FD4C3C();
      v11 = sub_1A5FD4C6C();
      v3 ^= v11;
      v4 = v10;
      if (!v8)
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
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        return MEMORY[0x1AC555420](v3);
      }

      v8 = *(v5 + 8 * v10);
      ++v4;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return v11;
}

uint64_t sub_1A5D0FB28(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v5)) | (v10 << 6);
      v12 = *(*(a2 + 48) + v11);
      v13 = (*(a2 + 56) + 16 * v11);
      v14 = *v13;
      v15 = v13[1];
      sub_1A5B06670(*v13, v15);
      if (v12 == 15)
      {
        break;
      }

      v5 &= v5 - 1;
      sub_1A5FD4C3C();
      sub_1A5FD35EC();
      sub_1A5B066DC(v14, v15);
      result = sub_1A5FD4C6C();
      v8 ^= result;
      v9 = v10;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x1AC555420](v8);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_11;
      }

      v5 = *(v2 + 8 * v10);
      ++v9;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A5D0FC88(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
LABEL_10:
    v12 = __clz(__rbit64(v6)) | (v10 << 6);
    v13 = *(*(a2 + 56) + 8 * v12);
    MEMORY[0x1AC555420](*(*(a2 + 48) + v12));
    MEMORY[0x1AC555420](*(v13 + 16));
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = (v13 + 32);
      do
      {
        v16 = *v15++;
        MEMORY[0x1AC555420](v16);
        --v14;
      }

      while (v14);
    }

    v6 &= v6 - 1;
    result = sub_1A5FD4C6C();
    v9 ^= result;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1AC555420](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A5D0FDD0(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  for (i = (v5 + 63) >> 6; v7; v2 ^= v11)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    MEMORY[0x1AC555420](*(*(a2 + 48) + (v10 | (v9 << 6))));
    sub_1A5FD4C4C();
    sub_1A5FD4C4C();
    sub_1A5FD4C3C();
    v11 = sub_1A5FD4C6C();
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {
      return MEMORY[0x1AC555420](v2);
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return v11;
}

uint64_t sub_1A5D0FF20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  v10 = 0;
  v11 = 0;
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;
  if (v15)
  {
    while (1)
    {
      v17 = v11;
LABEL_8:
      v18 = *(*(a2 + 48) + (__clz(__rbit64(v15)) | (v17 << 6)));
      if (v18 == 7)
      {
        return MEMORY[0x1AC555420](v10);
      }

      v15 &= v15 - 1;
      MEMORY[0x1AC555420](v18, a2, a3, a4, a5, a6, a7, a8, *v9);
      sub_1A5FD4C4C();
      result = sub_1A5FD4C6C();
      v10 ^= result;
      v11 = v17;
      if (!v15)
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
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v17 >= v16)
      {
        return MEMORY[0x1AC555420](v10);
      }

      v15 = *(v12 + 8 * v17);
      ++v11;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A5D10050(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  v10 = 0;
  v11 = 0;
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;
  if (v15)
  {
    while (1)
    {
      v17 = v11;
LABEL_8:
      v18 = *(*(a2 + 48) + (__clz(__rbit64(v15)) | (v17 << 6)));
      if (v18 == 6)
      {
        return MEMORY[0x1AC555420](v10);
      }

      v15 &= v15 - 1;
      MEMORY[0x1AC555420](v18, a2, a3, a4, a5, a6, a7, a8, *v9);
      sub_1A5FD4C4C();
      result = sub_1A5FD4C6C();
      v10 ^= result;
      v11 = v17;
      if (!v15)
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
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v17 >= v16)
      {
        return MEMORY[0x1AC555420](v10);
      }

      v15 = *(v12 + 8 * v17);
      ++v11;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A5D10180(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  v10 = 0;
  v11 = 0;
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;
  if (v15)
  {
    while (1)
    {
      v17 = v11;
LABEL_8:
      v18 = *(*(a2 + 48) + (__clz(__rbit64(v15)) | (v17 << 6)));
      if (v18 == 3)
      {
        return MEMORY[0x1AC555420](v10);
      }

      v15 &= v15 - 1;
      MEMORY[0x1AC555420](v18, a2, a3, a4, a5, a6, a7, a8, *v9);
      sub_1A5FD4C4C();
      result = sub_1A5FD4C6C();
      v10 ^= result;
      v11 = v17;
      if (!v15)
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
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v17 >= v16)
      {
        return MEMORY[0x1AC555420](v10);
      }

      v15 = *(v12 + 8 * v17);
      ++v11;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A5D102B0(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  for (i = (v6 + 63) >> 6; v8; v3 ^= v12)
  {
    v10 = v4;
LABEL_9:
    v11 = __clz(__rbit64(v8)) | (v10 << 6);
    v8 &= v8 - 1;
    MEMORY[0x1AC555420](*(*(a2 + 48) + v11));
    sub_1A5FD4C4C();
    v12 = sub_1A5FD4C6C();
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1AC555420](v3);
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return v12;
}

uint64_t sub_1A5D103D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  v10 = 0;
  v11 = 0;
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;
  if (v15)
  {
    while (1)
    {
      v17 = v11;
LABEL_8:
      v18 = *(*(a2 + 48) + (__clz(__rbit64(v15)) | (v17 << 6)));
      if (v18 == 5)
      {
        return MEMORY[0x1AC555420](v10);
      }

      v15 &= v15 - 1;
      MEMORY[0x1AC555420](v18, a2, a3, a4, a5, a6, a7, a8, *v9);
      sub_1A5FD4C4C();
      result = sub_1A5FD4C6C();
      v10 ^= result;
      v11 = v17;
      if (!v15)
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
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v17 >= v16)
      {
        return MEMORY[0x1AC555420](v10);
      }

      v15 = *(v12 + 8 * v17);
      ++v11;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A5D10504(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1AC555420](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 4;
      result = sub_1A5FD4C4C();
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL _s6Vision15FaceObservationV10GazeCommonV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24))
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  return 0;
}

uint64_t *sub_1A5D105B0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v6 = result;
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    if ((sub_1A5CE25A4(result[1], a2[1]) & 1) != 0 && (sub_1A5CE25A4(v6[2], a2[2]) & 1) != 0 && (sub_1A5CE25A4(v6[3], a2[3]) & 1) != 0 && (sub_1A5CE25A4(v6[4], a2[4]) & 1) != 0 && (sub_1A5CE25A4(v6[5], a2[5]) & 1) != 0 && (sub_1A5CE25A4(v6[6], a2[6]) & 1) != 0 && (sub_1A5CE25A4(v6[7], a2[7]) & 1) != 0 && (sub_1A5CE25A4(v6[8], a2[8]) & 1) != 0 && (sub_1A5CE25A4(v6[9], a2[9]) & 1) != 0 && (sub_1A5CE25A4(v6[10], a2[10]) & 1) != 0 && (sub_1A5CE25A4(v6[11], a2[11]) & 1) != 0 && (sub_1A5CE25A4(v6[12], a2[12]) & 1) != 0 && (sub_1A5CE25A4(v6[13], a2[13]) & 1) != 0 && (sub_1A5CE25A4(v6[14], a2[14]) & 1) != 0 && (sub_1A5CE25A4(v6[15], a2[15]) & 1) != 0 && (sub_1A5CE25A4(v6[16], a2[16]) & 1) != 0 && (sub_1A5CE25A4(v6[17], a2[17]) & 1) != 0 && v6[18] == a2[18])
    {
      v10 = v6[19];
      v11 = a2[19];

      return sub_1A5CE74A4(v10, v11);
    }

    return 0;
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s6Vision15FaceObservationV8SegmentsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v11 = *(a2 + 56);
  v10 = *(a2 + 64);
  v19 = *(a2 + 72);
  v20 = *(a1 + 72);
  v17 = *(a2 + 80);
  v18 = *(a1 + 80);
  v12 = *(a1 + 16);
  v22.origin = *a1;
  v22.size = v12;
  v13 = *(a2 + 16);
  v21.origin = *a2;
  v21.size = v13;
  if (!static NormalizedRect.== infix(_:_:)(&v22, &v21))
  {
    goto LABEL_12;
  }

  if (v2 <= 0xFFF7)
  {
    LOWORD(v22.origin.x) = v2;
    if (v7 > 0xFFF7)
    {
      goto LABEL_12;
    }

    LOWORD(v21.origin.x) = v7;
    sub_1A5B0BB44();
    if ((sub_1A5FD3D0C() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v7 <= 0xFFF7)
  {
    goto LABEL_12;
  }

  v14 = sub_1A5B09C58(v3, v4, v8, v9);
  v15 = 0;
  if (v14 && v5 == v11 && v6 == v10)
  {
    if ((sub_1A5CE6A1C(v20, v19) & 1) == 0)
    {
LABEL_12:
      v15 = 0;
      return v15 & 1;
    }

    v15 = sub_1A5CE7384(v18, v17);
  }

  return v15 & 1;
}

uint64_t _s6Vision15FaceObservationV4PoseV2eeoiySbAE_AEtFZ_0(float32x4_t *a1, float32x4_t *a2)
{
  v3 = 0;
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a1[1], a2[1]), vceqq_f32(*a1, *a2)), vandq_s8(vceqq_f32(a1[2], a2[2]), vceqq_f32(a1[3], a2[3])))) & 0x80000000) != 0 && (~vaddvq_s32(vandq_s8(vceqq_f32(a1[4], a2[4]), xmmword_1A60279D0)) & 0xF) == 0)
  {
    v4 = a1[5].u16[0];
    v5 = a2[5].u16[0];
    if (v4 <= 0xFFF7)
    {
      if (v5 <= 0xFFF7)
      {
        sub_1A5B0BB44();
        v3 = sub_1A5FD3D0C();
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = v5 > 0xFFF7;
    }
  }

  return v3 & 1;
}

BOOL _s6Vision15FaceObservationV4GazeV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1A5FD367C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0488, &qword_1A5FFCFD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v76 = &v72 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F0480, &unk_1A60314B0);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v72 - v10;
  v84 = type metadata accessor for PixelBufferObservation(0);
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v77 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EF6F8, qword_1A60211B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v80 = &v72 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1EFDA0, &qword_1A5FF9FB8);
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F4EC8, &unk_1A60279F0);
  v85 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v72 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F57C0, &qword_1A60281B8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v72 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5B78, &qword_1A60314C0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v72 - v22;
  if (*a1 != *a2)
  {
    return 0;
  }

  v24 = a2[24];
  if (a1[24])
  {
    if ((a2[24] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v25 = *(a2 + 8);
    v88 = *(a1 + 8);
    LOBYTE(v89) = 0;
    if (v24)
    {
      return 0;
    }

    v86 = v25;
    sub_1A5B26D28();
    v75 = v7;
    v26 = sub_1A5FD3D0C();
    v7 = v75;
    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  v27 = a2[64];
  if (a1[64])
  {
    v75 = a2;
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v28 = *(a2 + 2);
    v29 = *(a2 + 3);
    v30 = *(a1 + 3);
    v88 = *(a1 + 2);
    v89 = v30;
    v90 = 0;
    if (v27)
    {
      return 0;
    }

    v75 = a2;
    v86 = v28;
    v87 = v29;
    sub_1A5C89DA0();
    if ((sub_1A5FD3D0C() & 1) == 0)
    {
      return 0;
    }
  }

  v72 = v5;
  v73 = type metadata accessor for FaceObservation.Gaze(0);
  v31 = *(v73 + 28);
  v32 = *(v21 + 48);
  sub_1A5B31A34(&a1[v31], v23, &qword_1EB1F57C0, &qword_1A60281B8);
  v74 = v32;
  sub_1A5B31A34(&v75[v31], &v23[v32], &qword_1EB1F57C0, &qword_1A60281B8);
  v33 = *(v85 + 48);
  if (v33(v23, 1, v15) == 1)
  {
    if (v33(&v23[v74], 1, v15) == 1)
    {
      sub_1A5B10168(v23, &qword_1EB1F57C0, &qword_1A60281B8);
      goto LABEL_19;
    }

LABEL_17:
    v34 = &qword_1EB1F5B78;
    v35 = &qword_1A60314C0;
LABEL_25:
    v48 = v23;
LABEL_26:
    sub_1A5B10168(v48, v34, v35);
    return 0;
  }

  sub_1A5B31A34(v23, v20, &qword_1EB1F57C0, &qword_1A60281B8);
  if (v33(&v23[v74], 1, v15) == 1)
  {
    (*(v85 + 8))(v20, v15);
    goto LABEL_17;
  }

  v36 = v85;
  (*(v85 + 32))(v17, &v23[v74], v15);
  sub_1A5C1EC64(&qword_1EB1F5B80, &qword_1EB1F4EC8, &unk_1A60279F0, MEMORY[0x1E6968090]);
  v37 = sub_1A5FD3D0C();
  v38 = *(v36 + 8);
  v38(v17, v15);
  v38(v20, v15);
  sub_1A5B10168(v23, &qword_1EB1F57C0, &qword_1A60281B8);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v39 = v73;
  v40 = *(v73 + 32);
  v41 = *(v81 + 48);
  v23 = v83;
  sub_1A5B31A34(&a1[v40], v83, &qword_1EB1EF6F8, qword_1A60211B0);
  sub_1A5B31A34(&v75[v40], &v23[v41], &qword_1EB1EF6F8, qword_1A60211B0);
  v42 = *(v82 + 48);
  v43 = v84;
  if (v42(v23, 1, v84) == 1)
  {
    v44 = v42(&v23[v41], 1, v43);
    v45 = v72;
    if (v44 == 1)
    {
      sub_1A5B10168(v23, &qword_1EB1EF6F8, qword_1A60211B0);
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v46 = v80;
  sub_1A5B31A34(v23, v80, &qword_1EB1EF6F8, qword_1A60211B0);
  v47 = v42(&v23[v41], 1, v43);
  v45 = v72;
  if (v47 == 1)
  {
    sub_1A5D16B80(v46, type metadata accessor for PixelBufferObservation);
LABEL_24:
    v34 = &qword_1EB1EFDA0;
    v35 = &qword_1A5FF9FB8;
    goto LABEL_25;
  }

  v50 = &v23[v41];
  v51 = v77;
  sub_1A5D1A040(v50, v77, type metadata accessor for PixelBufferObservation);
  sub_1A5D13500(&qword_1EB1EFDE0, type metadata accessor for PixelBufferObservation, &protocol conformance descriptor for PixelBufferObservation);
  v52 = sub_1A5FD3D0C();
  sub_1A5D16B80(v51, type metadata accessor for PixelBufferObservation);
  sub_1A5D16B80(v46, type metadata accessor for PixelBufferObservation);
  sub_1A5B10168(v23, &qword_1EB1EF6F8, qword_1A60211B0);
  v39 = v73;
  if ((v52 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v53 = v7;
  v54 = v4;
  v55 = *(v39 + 36);
  v56 = v45;
  v57 = v79;
  v58 = *(v78 + 48);
  sub_1A5B31A34(&a1[v55], v79, &qword_1EB1F0488, &qword_1A5FFCFD0);
  v59 = &v75[v55];
  v60 = v54;
  sub_1A5B31A34(v59, v57 + v58, &qword_1EB1F0488, &qword_1A5FFCFD0);
  v61 = v56;
  v62 = v56;
  v63 = v57;
  v64 = *(v62 + 48);
  if (v64(v57, 1, v60) != 1)
  {
    v65 = v57;
    v66 = v76;
    sub_1A5B31A34(v65, v76, &qword_1EB1F0488, &qword_1A5FFCFD0);
    if (v64(v63 + v58, 1, v60) != 1)
    {
      (*(v61 + 32))(v53, v63 + v58, v60);
      sub_1A5D13500(&qword_1EB1F0490, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v67 = sub_1A5FD3D0C();
      v68 = *(v61 + 8);
      v68(v53, v60);
      v68(v66, v60);
      sub_1A5B10168(v63, &qword_1EB1F0488, &qword_1A5FFCFD0);
      if ((v67 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_37;
    }

    (*(v61 + 8))(v66, v60);
    goto LABEL_35;
  }

  if (v64(v57 + v58, 1, v60) != 1)
  {
LABEL_35:
    v34 = &qword_1EB1F0480;
    v35 = &unk_1A60314B0;
    v48 = v63;
    goto LABEL_26;
  }

  sub_1A5B10168(v57, &qword_1EB1F0488, &qword_1A5FFCFD0);
LABEL_37:
  v69 = *(v39 + 40);
  v70 = *&a1[v69];
  v71 = *&v75[v69];
  if (v70 <= 0xFFF7)
  {
    LOWORD(v88) = v70;
    if (v71 > 0xFFF7)
    {
      return 0;
    }

    LOWORD(v86) = v71;
    sub_1A5B0BB44();
    return (sub_1A5FD3D0C() & 1) != 0;
  }

  return v71 > 0xFFF7;
}

uint64_t _s6Vision15FaceObservationV16GazeScoresResultV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a2 + 12);
  if (*(a1 + 12) <= 0xFFF7u)
  {
    if (v5 <= 0xFFF7)
    {
      sub_1A5B0BB44();
      if (sub_1A5FD3D0C())
      {
        return 1;
      }
    }
  }

  else if (v5 > 0xFFF7)
  {
    return 1;
  }

  return 0;
}

BOOL _s6Vision15FaceObservationV11Landmarks2DV6RegionV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v16 = v2;
  v17 = v3;
  v4 = *(a1 + 12);
  v12 = *(a1 + 3);
  v13 = *(a1 + 2);
  v5 = *(a2 + 12);
  v10 = *(a2 + 3);
  v11 = *(a2 + 2);
  v6 = *(a2 + 2);
  v7 = *(a1 + 2);
  if ((sub_1A5B2461C(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v6 || (sub_1A5CE2548(v7, v6) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v4 <= 0xFFF7)
  {
    LOWORD(v15.origin.x) = v4;
    if (v5 <= 0xFFF7)
    {
      LOWORD(v14.origin.x) = v5;
      sub_1A5B0BB44();
      if (sub_1A5FD3D0C())
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

  if (v5 <= 0xFFF7)
  {
    return 0;
  }

LABEL_14:
  v15.origin = v13;
  v15.size = v12;
  v14.origin = v11;
  v14.size = v10;
  return static NormalizedRect.== infix(_:_:)(&v15, &v14);
}

BOOL _s6Vision15FaceObservationV11ExpressionsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((sub_1A5CE75F4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 <= 0xFFF7)
  {
    if (v3 > 0xFFF7)
    {
      return 0;
    }

    sub_1A5B0BB44();
    return (sub_1A5FD3D0C() & 1) != 0;
  }

  return v3 > 0xFFF7;
}

uint64_t _s6Vision15FaceObservationV10GazeResultV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v7 = *(a2 + 32);
  if (*(a1 + 32) <= 0xFFF7u)
  {
    if (v7 <= 0xFFF7)
    {
      sub_1A5B0BB44();
      if (sub_1A5FD3D0C())
      {
        return 1;
      }
    }
  }

  else if (v7 > 0xFFF7)
  {
    return 1;
  }

  return 0;
}

uint64_t _s6Vision15FaceObservationV10AttributesV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 3);
  v3 = a2[32];
  v4 = *(a2 + 5);
  v79 = a2[48];
  v78 = *(a2 + 7);
  v77 = a2[64];
  v75 = *(a2 + 9);
  v73 = a2[80];
  v71 = *(a2 + 11);
  v69 = a2[96];
  v67 = *(a2 + 13);
  v65 = a2[112];
  v63 = *(a2 + 15);
  v61 = a2[128];
  v59 = *(a2 + 17);
  v57 = a2[144];
  v55 = *(a2 + 19);
  v53 = a2[160];
  v51 = *(a2 + 21);
  v49 = a2[176];
  v47 = *(a2 + 23);
  v45 = a2[192];
  v43 = *(a2 + 25);
  v41 = a2[208];
  v39 = *(a2 + 27);
  v37 = a2[224];
  v35 = *(a2 + 29);
  v33 = a2[240];
  v31 = *(a2 + 31);
  v28 = *(a2 + 128);
  v5 = a2[16];
  v6 = *(a1 + 3);
  v7 = a1[32];
  v8 = *(a1 + 5);
  v9 = a1[48];
  v10 = *(a1 + 7);
  v76 = a1[64];
  v74 = *(a1 + 9);
  v72 = a1[80];
  v70 = *(a1 + 11);
  v68 = a1[96];
  v66 = *(a1 + 13);
  v64 = a1[112];
  v62 = *(a1 + 15);
  v60 = a1[128];
  v58 = *(a1 + 17);
  v56 = a1[144];
  v54 = *(a1 + 19);
  v52 = a1[160];
  v50 = *(a1 + 21);
  v48 = a1[176];
  v46 = *(a1 + 23);
  v44 = a1[192];
  v42 = *(a1 + 25);
  v40 = a1[208];
  v38 = *(a1 + 27);
  v36 = a1[224];
  v34 = *(a1 + 29);
  v32 = a1[240];
  v30 = *(a1 + 31);
  v29 = *(a1 + 128);
  v11 = a1[16];
  v12 = sub_1A5CE7BB0(*(a1 + 1), *(a2 + 1));
  result = 0;
  if ((v12 & 1) != 0 && ((v5 ^ v11) & 1) == 0)
  {
    v14 = sub_1A5CE7AA8(v6, v2);
    result = 0;
    if ((v14 & 1) != 0 && ((v7 ^ v3) & 1) == 0)
    {
      v15 = sub_1A5CE7AA8(v8, v4);
      result = 0;
      if ((v15 & 1) != 0 && v9 == v79)
      {
        v16 = sub_1A5CE7980(v10, v78);
        result = 0;
        if ((v16 & 1) != 0 && v76 == v77)
        {
          v17 = sub_1A5CE7858(v74, v75);
          result = 0;
          if ((v17 & 1) != 0 && v72 == v73)
          {
            v18 = sub_1A5CE7980(v70, v71);
            result = 0;
            if ((v18 & 1) != 0 && ((v68 ^ v69) & 1) == 0)
            {
              v19 = sub_1A5CE7AA8(v66, v67);
              result = 0;
              if ((v19 & 1) != 0 && ((v64 ^ v65) & 1) == 0)
              {
                v20 = sub_1A5CE7AA8(v62, v63);
                result = 0;
                if ((v20 & 1) != 0 && v60 == v61)
                {
                  v21 = sub_1A5CE7BB0(v58, v59);
                  result = 0;
                  if ((v21 & 1) != 0 && ((v56 ^ v57) & 1) == 0)
                  {
                    v22 = sub_1A5CE7AA8(v54, v55);
                    result = 0;
                    if ((v22 & 1) != 0 && v52 == v53)
                    {
                      v23 = sub_1A5CE7858(v50, v51);
                      result = 0;
                      if ((v23 & 1) != 0 && v48 == v49)
                      {
                        v24 = sub_1A5CE7730(v46, v47);
                        result = 0;
                        if ((v24 & 1) != 0 && v44 == v45)
                        {
                          v25 = sub_1A5CE7730(v42, v43);
                          result = 0;
                          if ((v25 & 1) != 0 && v40 == v41)
                          {
                            v26 = sub_1A5CE7BB0(v38, v39);
                            result = 0;
                            if ((v26 & 1) != 0 && v36 == v37)
                            {
                              v27 = sub_1A5CE7858(v34, v35);
                              result = 0;
                              if ((v27 & 1) != 0 && v32 == v33)
                              {
                                if (sub_1A5CE7BB0(v30, v31))
                                {
                                  if (v29 <= 0xFFF7)
                                  {
                                    if (v28 > 0xFFF7)
                                    {
                                      return 0;
                                    }

                                    sub_1A5B0BB44();
                                    if ((sub_1A5FD3D0C() & 1) == 0)
                                    {
                                      return 0;
                                    }
                                  }

                                  else if (v28 <= 0xFFF7)
                                  {
                                    return 0;
                                  }

                                  return 1;
                                }

                                return 0;
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
    }
  }

  return result;
}

uint64_t _s6Vision15FaceObservationV0B5PrintV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 28);
  v5 = *(a1 + 32);
  v6 = *(a1 + 34);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 28);
  v10 = *(a2 + 32);
  v11 = *(a2 + 34);
  v12 = sub_1A5B09C58(*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if (v12 && v2 == v7)
  {
    v16 = v3;
    v15 = v8;
    v14 = static ElementType.== infix(_:_:)(&v16, &v15);
    result = 0;
    if (v14 && v4 == v9)
    {
      if (v5 <= 0xFFF7)
      {
        if (v10 > 0xFFF7)
        {
          return 0;
        }

        sub_1A5B0BB44();
        if ((sub_1A5FD3D0C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10 <= 0xFFF7)
      {
        return 0;
      }

      if (v6 == 2)
      {
        if (v11 != 2)
        {
          return 0;
        }
      }

      else if (v11 == 2 || ((v11 ^ v6) & 1) != 0)
      {
        return 0;
      }

      return 1;
    }
  }

  return result;
}

BOOL sub_1A5D11D60(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 4);
  if (*(a1 + 4) <= 0xFFF7u)
  {
    if (v2 > 0xFFF7)
    {
      return 0;
    }

    sub_1A5B0BB44();
    return (sub_1A5FD3D0C() & 1) != 0;
  }

  return v2 > 0xFFF7;
}

BOOL _s6Vision15FaceObservationV11Landmarks2DV2eeoiySbAE_AEtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v7 = *(a1 + 8);
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);
  v12 = *(a2 + 2);
  v13 = *(a2 + 3);
  v14 = *(a2 + 8);
  if (*a1 <= 0xFFF7u)
  {
    LOWORD(v21.origin.x) = *a1;
    if (v8 > 0xFFF7)
    {
      return 0;
    }

    v16 = v13;
    v17 = v12;
    v18 = v6;
    v19 = v5;
    LOWORD(v20.origin.x) = v8;
    sub_1A5B0BB44();
    if ((sub_1A5FD3D0C() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v16 = *(a2 + 3);
    v17 = *(a2 + 2);
    v18 = *(a1 + 3);
    v19 = *(a1 + 2);
    if (v8 <= 0xFFF7)
    {
      return 0;
    }
  }

  if (!sub_1A5B09C58(v2, v3, v9, v10))
  {
    return 0;
  }

  if ((sub_1A5B2461C(v4, v11) & 1) == 0)
  {
    return 0;
  }

  v21.origin = v19;
  v21.size = v18;
  v20.origin = v17;
  v20.size = v16;
  if (!static NormalizedRect.== infix(_:_:)(&v21, &v20))
  {
    return 0;
  }

  if (v7)
  {
    return v14 && (sub_1A5CE2548(v7, v14) & 1) != 0;
  }

  return !v14;
}

BOOL _s6Vision15FaceObservationV2eeoiySbAC_ACtFZ_0(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceObservation.Gaze(0);
  v184 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v172[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F2840, &qword_1A6014070);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v172[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB1F5BA8, &qword_1A60314F0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v172[-v12];
  v14 = a1[3];
  v207 = a1[2];
  v208 = v14;
  v15 = a1[1];
  v16 = a1[2];
  v205 = *a1;
  v206 = v15;
  v17 = *(a2 + 48);
  v210[2] = *(a2 + 32);
  v210[3] = v17;
  v18 = *(a2 + 16);
  v19 = *(a2 + 32);
  v210[0] = *a2;
  v210[1] = v18;
  v187[0] = v205;
  v20 = a1[3];
  v200[0] = v16;
  v200[1] = v20;
  v209 = *(a1 + 8);
  v211 = *(a2 + 64);
  *&v187[1] = *(a1 + 2);
  v21 = *(&v206 + 1);
  *&v200[2] = *(a1 + 8);
  v186[0] = v210[0];
  *&v186[1] = *(a2 + 16);
  v22 = *(&v18 + 1);
  v23 = *(a2 + 48);
  *&v198[32] = *(a2 + 64);
  *&v198[16] = v23;
  *v198 = v19;
  if (!*(&v206 + 1))
  {
    if (!*(&v18 + 1))
    {
      v182 = v6;
      v183 = v11;
      *v201 = *a1;
      *&v201[16] = *(a1 + 2);
      *&v201[24] = 0;
      v32 = a1[3];
      *&v201[32] = a1[2];
      *&v201[48] = v32;
      *&v201[64] = *(a1 + 8);
      sub_1A5B31A34(&v205, v199, &qword_1EB1F2370, &qword_1A6010808);
      sub_1A5B31A34(v210, v199, &qword_1EB1F2370, &qword_1A6010808);
      sub_1A5B10168(v201, &qword_1EB1F2370, &qword_1A6010808);
      goto LABEL_12;
    }

    sub_1A5B31A34(&v205, v201, &qword_1EB1F2370, &qword_1A6010808);
    sub_1A5B31A34(v210, v201, &qword_1EB1F2370, &qword_1A6010808);
LABEL_8:
    *v201 = v187[0];
    *&v201[16] = *&v187[1];
    *&v201[24] = v21;
    *&v201[32] = v200[0];
    *&v201[48] = v200[1];
    *&v201[72] = v186[0];
    *&v201[64] = *&v200[2];
    *&v201[88] = *&v186[1];
    *&v201[96] = v22;
    *&v201[136] = *&v198[32];
    *&v201[120] = *&v198[16];
    *&v201[104] = *v198;
    v29 = &unk_1EB1F5BB0;
    v30 = &unk_1A60314F8;
LABEL_9:
    v31 = v201;
LABEL_10:
    sub_1A5B10168(v31, v29, v30);
    return 0;
  }

  v24 = *(a1 + 2);
  *v201 = *a1;
  *&v201[16] = v24;
  *&v201[24] = *(&v206 + 1);
  v25 = a1[3];
  *&v201[32] = a1[2];
  *&v201[48] = v25;
  *&v201[64] = *(a1 + 8);
  *&v199[64] = *&v201[64];
  *&v199[48] = v25;
  *&v199[32] = *&v201[32];
  *v199 = *v201;
  *&v199[16] = *&v201[16];
  if (!*(&v18 + 1))
  {
    v204[2] = *&v201[32];
    v204[3] = *&v201[48];
    *&v204[4] = *&v201[64];
    v204[1] = *&v201[16];
    v204[0] = *v201;
    sub_1A5B31A34(&v205, v203, &qword_1EB1F2370, &qword_1A6010808);
    sub_1A5B31A34(v210, v203, &qword_1EB1F2370, &qword_1A6010808);
    sub_1A5B31A34(v201, v203, &qword_1EB1F2370, &qword_1A6010808);
    sub_1A5D13730(v204);
    goto LABEL_8;
  }

  v182 = v6;
  v183 = v11;
  v204[0] = *a2;
  v26 = *(a2 + 16);
  v27 = *(a2 + 48);
  v204[2] = *(a2 + 32);
  v204[3] = v27;
  *&v204[4] = *(a2 + 64);
  *&v204[1] = v26;
  *(&v204[1] + 1) = v22;
  sub_1A5B31A34(&v205, v203, &qword_1EB1F2370, &qword_1A6010808);
  sub_1A5B31A34(v210, v203, &qword_1EB1F2370, &qword_1A6010808);
  sub_1A5B31A34(v201, v203, &qword_1EB1F2370, &qword_1A6010808);
  v28 = _s6Vision15FaceObservationV11Landmarks2DV2eeoiySbAE_AEtFZ_0(v199, v204);
  v202[2] = v204[2];
  v202[3] = v204[3];
  *&v202[4] = *&v204[4];
  v202[1] = v204[1];
  v202[0] = v204[0];
  sub_1A5D13730(v202);
  v203[2] = *&v199[32];
  v203[3] = *&v199[48];
  *&v203[4] = *&v199[64];
  v203[1] = *&v199[16];
  v203[0] = *v199;
  sub_1A5D13730(v203);
  v204[0] = v187[0];
  *&v204[1] = *&v187[1];
  *(&v204[1] + 1) = v21;
  v204[2] = v200[0];
  v204[3] = v200[1];
  *&v204[4] = *&v200[2];
  sub_1A5B10168(v204, &qword_1EB1F2370, &qword_1A6010808);
  if (!v28)
  {
    return 0;
  }

LABEL_12:
  v33 = type metadata accessor for FaceObservation(0);
  sub_1A5B16F58(0, &qword_1EB1EE608, 0x1E696AFE0);
  if ((sub_1A5FD335C() & 1) == 0 || (sub_1A5FD335C() & 1) == 0 || (sub_1A5FD335C() & 1) == 0)
  {
    return 0;
  }

  v34 = v33[8];
  v35 = *(a1 + v34) | (*(a1 + v34 + 4) << 32);
  v36 = *(a2 + v34) | (*(a2 + v34 + 4) << 32);
  if ((v35 & 0xFFF800000000) == 0xFFF000000000)
  {
    if ((v36 & 0xFFF800000000) != 0xFFF000000000)
    {
      return 0;
    }
  }

  else
  {
    *v201 = v35;
    *&v201[4] = WORD2(v35);
    if ((v36 & 0xFFF800000000) == 0xFFF000000000)
    {
      return 0;
    }

    *v199 = v36;
    *&v199[4] = WORD2(v36);
    if (!sub_1A5D11D60(v201, v199))
    {
      return 0;
    }
  }

  v37 = v33[9];
  v38 = *(a1 + v37 + 16);
  *v201 = *(a1 + v37);
  *&v201[16] = v38;
  v39 = (a2 + v37);
  v40 = v39[1];
  *v199 = *v39;
  *&v199[16] = v40;
  if (!static NormalizedRect.== infix(_:_:)(v201, v199))
  {
    return 0;
  }

  v41 = v33[10];
  v42 = *(a1 + v41 + 16);
  *v201 = *(a1 + v41);
  *&v201[16] = v42;
  v43 = (a2 + v41);
  v44 = v43[1];
  *v199 = *v43;
  *&v199[16] = v44;
  if (!static NormalizedRect.== infix(_:_:)(v201, v199) || (sub_1A5FD364C() & 1) == 0 || *(a1 + v33[12]) != *(a2 + v33[12]))
  {
    return 0;
  }

  v45 = v33[13];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 48);
  v48 = a2 + v45;
  if (v47)
  {
    if (!*(v48 + 48))
    {
      return 0;
    }
  }

  else
  {
    if (*(v48 + 48))
    {
      return 0;
    }

    v49 = *v46;
    v50 = v46[1];
    v51 = v46[2];
    v52 = *(v48 + 16);
    v53 = *(v48 + 32);
    v204[20] = *v48;
    v204[21] = v52;
    v204[22] = v53;
    v204[17] = v49;
    v204[18] = v50;
    v204[19] = v51;
    if ((sub_1A5FD42BC() & 1) == 0)
    {
      return 0;
    }
  }

  v54 = v33[14];
  v55 = *(a1 + v54);
  v56 = *(a2 + v54);
  if (v55 <= 0xFFF7)
  {
    *v201 = v55;
    if (v56 > 0xFFF7)
    {
      return 0;
    }

    *v199 = v56;
    sub_1A5B0BB44();
    if ((sub_1A5FD3D0C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v56 <= 0xFFF7)
  {
    return 0;
  }

  v57 = v33[15];
  v58 = (a1 + v57);
  v59 = *(a1 + v57 + 8) | (*(a1 + v57 + 12) << 32);
  v60 = (a2 + v57);
  v61 = *(a2 + v57 + 8) | (*(a2 + v57 + 12) << 32);
  if ((v59 & 0xFFF800000000) == 0xFFF000000000)
  {
    if ((v61 & 0xFFF800000000) != 0xFFF000000000)
    {
      return 0;
    }
  }

  else
  {
    v62 = *v60;
    *v201 = *v58;
    *&v201[12] = WORD2(v59);
    *&v201[8] = v59;
    if ((v61 & 0xFFF800000000) == 0xFFF000000000)
    {
      return 0;
    }

    *v199 = v62;
    *&v199[8] = v61;
    *&v199[12] = WORD2(v61);
    if ((_s6Vision15FaceObservationV16GazeScoresResultV2eeoiySbAE_AEtFZ_0(v201, v199) & 1) == 0)
    {
      return 0;
    }
  }

  v63 = v33[16];
  v64 = (a1 + v63);
  v65 = *(a1 + v63 + 8) | (*(a1 + v63 + 12) << 32);
  v66 = (a2 + v63);
  v67 = *(a2 + v63 + 8) | (*(a2 + v63 + 12) << 32);
  if ((v65 & 0xFFF800000000) == 0xFFF000000000)
  {
    if ((v67 & 0xFFF800000000) != 0xFFF000000000)
    {
      return 0;
    }
  }

  else
  {
    v68 = *v66;
    *v201 = *v64;
    *&v201[12] = WORD2(v65);
    *&v201[8] = v65;
    if ((v67 & 0xFFF800000000) == 0xFFF000000000)
    {
      return 0;
    }

    *v199 = v68;
    *&v199[8] = v67;
    *&v199[12] = WORD2(v67);
    if ((_s6Vision15FaceObservationV16GazeScoresResultV2eeoiySbAE_AEtFZ_0(v201, v199) & 1) == 0)
    {
      return 0;
    }
  }

  v69 = v33[17];
  v70 = (a1 + v69);
  v71 = *(a1 + v69 + 32);
  v72 = (a2 + v69);
  v73 = *(a2 + v69 + 32);
  if ((v71 & 0xFFF8) == 0xFFF0)
  {
    if ((v73 & 0xFFF8) != 0xFFF0)
    {
      return 0;
    }
  }

  else
  {
    v75 = *v72;
    v74 = v72[1];
    v76 = *(v72 + 1);
    v77 = v70[1];
    *v201 = *v70;
    *&v201[16] = v77;
    *&v201[32] = v71;
    if ((v73 & 0xFFF8) == 0xFFF0)
    {
      return 0;
    }

    *v199 = v75;
    *&v199[8] = v74;
    *&v199[16] = v76;
    *&v199[32] = v73;
    if ((_s6Vision15FaceObservationV10GazeResultV2eeoiySbAE_AEtFZ_0(v201, v199) & 1) == 0)
    {
      return 0;
    }
  }

  v78 = v33[18];
  v79 = *(a1 + v78) | (*(a1 + v78 + 4) << 32);
  v80 = *(a2 + v78) | (*(a2 + v78 + 4) << 32);
  if ((v79 & 0xFFF800000000) == 0xFFF000000000)
  {
    if ((v80 & 0xFFF800000000) != 0xFFF000000000)
    {
      return 0;
    }
  }

  else
  {
    *v201 = v79;
    *&v201[4] = WORD2(v79);
    if ((v80 & 0xFFF800000000) == 0xFFF000000000)
    {
      return 0;
    }

    *v199 = v80;
    *&v199[4] = WORD2(v80);
    if (!sub_1A5D11D60(v201, v199))
    {
      return 0;
    }
  }

  v81 = v33[19];
  v82 = *(a1 + v81);
  v178 = *(a1 + v81 + 8);
  v179 = *(a1 + v81 + 16);
  v180 = v82;
  v181 = *(a1 + v81 + 24);
  v83 = *(a1 + v81 + 32) | (*(a1 + v81 + 34) << 16);
  v84 = a2 + v81;
  v85 = *(v84 + 8);
  v175 = *v84;
  v176 = v85;
  v86 = *(v84 + 24);
  v177 = *(v84 + 16);
  v174 = v86;
  v87 = *(v84 + 32) | (*(v84 + 34) << 16);
  if ((v83 & 0xFFF8) == 0xFFF0)
  {
    v173 = *(v84 + 32) & 0xFFF8;
    sub_1A5B06658(v180, v178, v179, v181, v83);
    sub_1A5B06658(v175, v176, v177, v174, v87);
    if (v173 == 65520)
    {
      sub_1A5B066C4(v180, v178, v179, v181, v83);
      goto LABEL_63;
    }

LABEL_59:
    sub_1A5B066C4(v180, v178, v179, v181, v83);
    sub_1A5B066C4(v175, v176, v177, v174, v87);
    return 0;
  }

  *v201 = v180;
  *&v201[8] = v178;
  *&v201[16] = v179;
  *&v201[24] = v181;
  *&v201[32] = v83;
  v201[34] = BYTE2(v83);
  if ((v87 & 0xFFF8) == 0xFFF0)
  {
    v88 = v179;
    v89 = v180;
    v90 = v178;
    v91 = v181;
    sub_1A5B06658(v180, v178, v179, v181, v83);
    sub_1A5B06658(v175, v176, v177, v174, v87);
    sub_1A5B06658(v89, v90, v88, v91, v83);
    sub_1A5B066DC(v89, v90);
    goto LABEL_59;
  }

  v94 = v174;
  *v199 = v175;
  *&v199[8] = v176;
  *&v199[16] = v177;
  v199[24] = v174;
  *&v199[28] = HIDWORD(v174);
  *&v199[32] = v87;
  v199[34] = BYTE2(v87);
  sub_1A5B06658(v180, v178, v179, v181, v83);
  sub_1A5B06658(v175, v176, v177, v94, v87);
  v95 = v179;
  v96 = v178;
  sub_1A5B06658(v180, v178, v179, v181, v83);
  LODWORD(v177) = _s6Vision15FaceObservationV0B5PrintV2eeoiySbAE_AEtFZ_0(v201, v199);
  sub_1A5B066DC(*v199, *&v199[8]);
  sub_1A5B066DC(*v201, *&v201[8]);
  sub_1A5B066C4(v180, v96, v95, v181, v83);
  if ((v177 & 1) == 0)
  {
    return 0;
  }

LABEL_63:
  v97 = v33[20];
  memcpy(v202, a1 + v97, 0x102uLL);
  v98 = v33[20];
  memcpy(v203, (a2 + v98), 0x102uLL);
  memcpy(v201, a1 + v97, 0x102uLL);
  memcpy(&v201[264], (a2 + v98), 0x102uLL);
  memcpy(v204, a1 + v97, 0x102uLL);
  if (sub_1A5D233A8(v204) == 1)
  {
    memcpy(v199, &v201[264], 0x102uLL);
    if (sub_1A5D233A8(v199) == 1)
    {
      memcpy(v200, v201, 0x102uLL);
      sub_1A5B31A34(v202, v198, &qword_1EB1F2BB0, &unk_1A60279E0);
      sub_1A5B31A34(v203, v198, &qword_1EB1F2BB0, &unk_1A60279E0);
      sub_1A5B10168(v200, &qword_1EB1F2BB0, &unk_1A60279E0);
      goto LABEL_71;
    }

    sub_1A5B31A34(v202, v200, &qword_1EB1F2BB0, &unk_1A60279E0);
    sub_1A5B31A34(v203, v200, &qword_1EB1F2BB0, &unk_1A60279E0);
LABEL_69:
    memcpy(v199, v201, sizeof(v199));
    v29 = &unk_1EB1F5BB8;
    v30 = &unk_1A6031500;
    v31 = v199;
    goto LABEL_10;
  }

  memcpy(v200, v201, 0x102uLL);
  memcpy(v198, v201, sizeof(v198));
  memcpy(v199, &v201[264], 0x102uLL);
  if (sub_1A5D233A8(v199) == 1)
  {
    memcpy(v187, v201, 0x102uLL);
    sub_1A5B31A34(v202, v186, &qword_1EB1F2BB0, &unk_1A60279E0);
    sub_1A5B31A34(v203, v186, &qword_1EB1F2BB0, &unk_1A60279E0);
    sub_1A5B31A34(v200, v186, &qword_1EB1F2BB0, &unk_1A60279E0);
    sub_1A5D1630C(v187);
    goto LABEL_69;
  }

  memcpy(v187, &v201[264], 0x102uLL);
  sub_1A5B31A34(v202, v186, &qword_1EB1F2BB0, &unk_1A60279E0);
  sub_1A5B31A34(v203, v186, &qword_1EB1F2BB0, &unk_1A60279E0);
  sub_1A5B31A34(v200, v186, &qword_1EB1F2BB0, &unk_1A60279E0);
  v99 = _s6Vision15FaceObservationV10AttributesV2eeoiySbAE_AEtFZ_0(v198, v187);
  memcpy(v185, v187, 0x102uLL);
  sub_1A5D1630C(v185);
  memcpy(v186, v198, 0x102uLL);
  sub_1A5D1630C(v186);
  memcpy(v187, v201, 0x102uLL);
  sub_1A5B10168(v187, &qword_1EB1F2BB0, &unk_1A60279E0);
  if ((v99 & 1) == 0)
  {
    return 0;
  }

LABEL_71:
  v100 = v33[21];
  v101 = *(v183 + 48);
  sub_1A5B31A34(a1 + v100, v13, &qword_1EB1F2840, &qword_1A6014070);
  v183 = v101;
  sub_1A5B31A34(a2 + v100, &v13[v101], &qword_1EB1F2840, &qword_1A6014070);
  v102 = *(v184 + 48);
  if (v102(v13, 1, v4) == 1)
  {
    if (v102(&v13[v183], 1, v4) == 1)
    {
      sub_1A5B10168(v13, &qword_1EB1F2840, &qword_1A6014070);
      goto LABEL_78;
    }

LABEL_76:
    v29 = &qword_1EB1F5BA8;
    v30 = &qword_1A60314F0;
    v31 = v13;
    goto LABEL_10;
  }

  sub_1A5B31A34(v13, v9, &qword_1EB1F2840, &qword_1A6014070);
  if (v102(&v13[v183], 1, v4) == 1)
  {
    sub_1A5D16B80(v9, type metadata accessor for FaceObservation.Gaze);
    goto LABEL_76;
  }

  v103 = v182;
  sub_1A5D1A040(&v13[v183], v182, type metadata accessor for FaceObservation.Gaze);
  v104 = _s6Vision15FaceObservationV4GazeV2eeoiySbAE_AEtFZ_0(v9, v103);
  sub_1A5D16B80(v103, type metadata accessor for FaceObservation.Gaze);
  sub_1A5D16B80(v9, type metadata accessor for FaceObservation.Gaze);
  sub_1A5B10168(v13, &qword_1EB1F2840, &qword_1A6014070);
  if (!v104)
  {
    return 0;
  }

LABEL_78:
  v105 = v33[22];
  v106 = (a1 + v105);
  v107 = *(a1 + v105 + 80);
  v108 = (a2 + v105);
  v109 = *(a2 + v105 + 80);
  if ((v107 & 0xFFF8) == 0xFFF0)
  {
    if ((v109 & 0xFFF8) != 0xFFF0)
    {
      return 0;
    }
  }

  else
  {
    v110 = *v108;
    v111 = v108[1];
    v112 = v108[2];
    v113 = v108[3];
    v114 = v108[4];
    v115 = v106[3];
    *&v201[32] = v106[2];
    *&v201[48] = v115;
    *&v201[64] = v106[4];
    v116 = *v106;
    *&v201[16] = v106[1];
    *v201 = v116;
    *&v201[80] = v107;
    if ((v109 & 0xFFF8) == 0xFFF0)
    {
      return 0;
    }

    *v199 = v110;
    *&v199[16] = v111;
    *&v199[32] = v112;
    *&v199[48] = v113;
    *&v199[64] = v114;
    *&v199[80] = v109;
    if ((_s6Vision15FaceObservationV4PoseV2eeoiySbAE_AEtFZ_0(v201, v199) & 1) == 0)
    {
      return 0;
    }
  }

  v117 = v33[23];
  v118 = a1 + v117;
  v119 = *(a1 + v117);
  v120 = (a2 + v117);
  v121 = *v120;
  if (!v119)
  {
    if (!v121)
    {

      goto LABEL_90;
    }

LABEL_88:

    return 0;
  }

  v122 = *(v120 + 4);
  v123 = *(v118 + 4);
  *v201 = v119;
  *&v201[8] = v123;
  if (!v121)
  {
    goto LABEL_88;
  }

  *v199 = v121;
  *&v199[8] = v122;
  swift_bridgeObjectRetain_n();

  v124 = _s6Vision15FaceObservationV11ExpressionsV2eeoiySbAE_AEtFZ_0(v201, v199);

  if (!v124)
  {
    return 0;
  }

LABEL_90:
  v125 = v33[24];
  v126 = a1 + v125;
  v127 = *(a1 + v125 + 16);
  v128 = *(a1 + v125 + 48);
  v200[2] = *(a1 + v125 + 32);
  v200[3] = v128;
  v129 = *(a1 + v125 + 48);
  v200[4] = *(a1 + v125 + 64);
  v130 = *(a1 + v125 + 16);
  v200[0] = *(a1 + v125);
  v200[1] = v130;
  v131 = (a2 + v125);
  v132 = *v131;
  v133 = *v131;
  *&v199[16] = v131[1];
  *v199 = v132;
  v134 = v131[3];
  *&v199[64] = v131[4];
  v135 = v131[2];
  *&v199[48] = v131[3];
  *&v199[32] = v135;
  v194 = v127;
  v195 = v200[2];
  v196 = v129;
  v193 = v200[0];
  *&v200[5] = *(v126 + 10);
  *&v199[80] = *(v131 + 10);
  v197 = *(v126 + 8);
  v136 = *(&v200[4] + 1);
  v137 = *&v200[5];
  v190 = v135;
  v191 = v134;
  v192 = *(v131 + 8);
  v188 = v133;
  v189 = *&v199[16];
  v138 = *&v199[72];
  v139 = *&v199[80];
  if (*(&v200[4] + 1))
  {
    v140 = *(v126 + 8);
    v141 = *(v126 + 3);
    *&v201[32] = *(v126 + 2);
    *&v201[48] = v141;
    v142 = *v126;
    *&v201[16] = *(v126 + 1);
    *v201 = v142;
    *&v201[64] = v140;
    *&v201[72] = *(&v200[4] + 1);
    *&v201[80] = *&v200[5];
    *&v198[80] = *&v200[5];
    *&v198[32] = *&v201[32];
    *&v198[48] = v141;
    *v198 = v142;
    *&v198[16] = *&v201[16];
    *&v198[64] = *&v201[64];
    if (*&v199[72])
    {
      v143 = v131[3];
      v187[2] = v131[2];
      v187[3] = v143;
      v144 = *(v131 + 8);
      v145 = v131[1];
      v187[0] = *v131;
      v187[1] = v145;
      *&v187[4] = v144;
      *(&v187[4] + 1) = *&v199[72];
      *&v187[5] = *&v199[80];
      sub_1A5B31A34(v200, v186, &qword_1EB1F4A48, &qword_1A6024318);
      sub_1A5B31A34(v199, v186, &qword_1EB1F4A48, &qword_1A6024318);
      sub_1A5B31A34(v201, v186, &qword_1EB1F4A48, &qword_1A6024318);
      v146 = _s6Vision15FaceObservationV8SegmentsV2eeoiySbAE_AEtFZ_0(v198, v187);
      v185[2] = v187[2];
      v185[3] = v187[3];
      v185[4] = v187[4];
      *&v185[5] = *&v187[5];
      v185[0] = v187[0];
      v185[1] = v187[1];
      sub_1A5D19314(v185);
      v186[2] = *&v198[32];
      v186[3] = *&v198[48];
      v186[4] = *&v198[64];
      *&v186[5] = *&v198[80];
      v186[0] = *v198;
      v186[1] = *&v198[16];
      sub_1A5D19314(v186);
      v187[2] = v195;
      v187[3] = v196;
      v187[0] = v193;
      v187[1] = v194;
      *&v187[4] = v197;
      *(&v187[4] + 1) = v136;
      *&v187[5] = v137;
      sub_1A5B10168(v187, &qword_1EB1F4A48, &qword_1A6024318);
      if ((v146 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_99;
    }

    v187[2] = *&v201[32];
    v187[3] = *&v201[48];
    v187[4] = *&v201[64];
    *&v187[5] = *&v201[80];
    v187[0] = *v201;
    v187[1] = *&v201[16];
    sub_1A5B31A34(v200, v186, &qword_1EB1F4A48, &qword_1A6024318);
    sub_1A5B31A34(v199, v186, &qword_1EB1F4A48, &qword_1A6024318);
    sub_1A5B31A34(v201, v186, &qword_1EB1F4A48, &qword_1A6024318);
    sub_1A5D19314(v187);
    goto LABEL_97;
  }

  if (*&v199[72])
  {
    sub_1A5B31A34(v200, v201, &qword_1EB1F4A48, &qword_1A6024318);
    sub_1A5B31A34(v199, v201, &qword_1EB1F4A48, &qword_1A6024318);
LABEL_97:
    *&v201[32] = v195;
    *&v201[48] = v196;
    *&v201[16] = v194;
    *v201 = v193;
    *&v201[104] = v189;
    *&v201[120] = v190;
    *&v201[136] = v191;
    *&v201[64] = v197;
    *&v201[72] = v136;
    *&v201[80] = v137;
    *&v201[152] = v192;
    *&v201[88] = v188;
    *&v201[160] = v138;
    *&v201[168] = v139;
    v29 = &unk_1EB1F5BC0;
    v30 = &unk_1A6031508;
    goto LABEL_9;
  }

  v147 = *(v126 + 3);
  *&v201[32] = *(v126 + 2);
  *&v201[48] = v147;
  v148 = *(v126 + 8);
  v149 = *v126;
  *&v201[16] = *(v126 + 1);
  *v201 = v149;
  *&v201[64] = v148;
  *&v201[72] = 0;
  *&v201[80] = *&v200[5];
  sub_1A5B31A34(v200, v198, &qword_1EB1F4A48, &qword_1A6024318);
  sub_1A5B31A34(v199, v198, &qword_1EB1F4A48, &qword_1A6024318);
  sub_1A5B10168(v201, &qword_1EB1F4A48, &qword_1A6024318);
LABEL_99:
  v150 = v33[25];
  v151 = (a1 + v150);
  v152 = *(a1 + v150 + 32);
  v153 = (a2 + v150);
  v154 = *(a2 + v150 + 32);
  if (v152)
  {
    if ((v154 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v155 = *v153;
    v156 = v153[1];
    v157 = v151[1];
    *v201 = *v151;
    *&v201[16] = v157;
    v201[32] = 0;
    if (v154)
    {
      return 0;
    }

    *v198 = v155;
    *&v198[16] = v156;
    sub_1A5C89DA0();
    if ((sub_1A5FD3D0C() & 1) == 0)
    {
      return 0;
    }
  }

  v158 = v33[26];
  v159 = (a1 + v158);
  v160 = *(a1 + v158 + 4);
  v161 = (a2 + v158);
  v162 = *(a2 + v158 + 4);
  if (v160)
  {
    if (!v162)
    {
      return 0;
    }
  }

  else
  {
    if (*v159 != *v161)
    {
      LOBYTE(v162) = 1;
    }

    if (v162)
    {
      return 0;
    }
  }

  v163 = v33[27];
  v164 = (a1 + v163);
  v165 = *(a1 + v163 + 4);
  v166 = (a2 + v163);
  v167 = *(a2 + v163 + 4);
  if ((v165 & 1) == 0)
  {
    if (*v164 != *v166)
    {
      LOBYTE(v167) = 1;
    }

    if (v167)
    {
      return 0;
    }

LABEL_116:
    v168 = v33[28];
    v169 = *(a1 + v168 + 16);
    *v201 = *(a1 + v168);
    *&v201[16] = v169;
    v170 = (a2 + v168);
    v171 = v170[1];
    *v198 = *v170;
    *&v198[16] = v171;
    return static NormalizedRect.== infix(_:_:)(v201, v198);
  }

  if (v167)
  {
    goto LABEL_116;
  }

  return 0;
}

uint64_t sub_1A5D13500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A5D13548()
{
  result = qword_1EB266BF8;
  if (!qword_1EB266BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266BF8);
  }

  return result;
}

unint64_t sub_1A5D1359C()
{
  result = qword_1EB266C00;
  if (!qword_1EB266C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C00);
  }

  return result;
}

unint64_t sub_1A5D135F0()
{
  result = qword_1EB1EEC88;
  if (!qword_1EB1EEC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1EEC80, &unk_1A5FF4278);
    sub_1A5B23D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EEC88);
  }

  return result;
}

unint64_t sub_1A5D13674()
{
  result = qword_1EB1EECA8;
  if (!qword_1EB1EECA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB1EEC80, &unk_1A5FF4278);
    sub_1A5B23E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1EECA8);
  }

  return result;
}

unint64_t sub_1A5D13760()
{
  result = qword_1EB266C08;
  if (!qword_1EB266C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C08);
  }

  return result;
}

unint64_t sub_1A5D137B4()
{
  result = qword_1EB266C10;
  if (!qword_1EB266C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C10);
  }

  return result;
}

unint64_t sub_1A5D13808()
{
  result = qword_1EB266C18;
  if (!qword_1EB266C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C18);
  }

  return result;
}

unint64_t sub_1A5D1385C()
{
  result = qword_1EB266C20;
  if (!qword_1EB266C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C20);
  }

  return result;
}

unint64_t sub_1A5D138B0()
{
  result = qword_1EB266C28;
  if (!qword_1EB266C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C28);
  }

  return result;
}

unint64_t sub_1A5D13904()
{
  result = qword_1EB1F4F48;
  if (!qword_1EB1F4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4F48);
  }

  return result;
}

unint64_t sub_1A5D13958()
{
  result = qword_1EB1F4F58;
  if (!qword_1EB1F4F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4F58);
  }

  return result;
}

unint64_t sub_1A5D13A14()
{
  result = qword_1EB266C30;
  if (!qword_1EB266C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C30);
  }

  return result;
}

unint64_t sub_1A5D13A68()
{
  result = qword_1EB266C38;
  if (!qword_1EB266C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C38);
  }

  return result;
}

unint64_t sub_1A5D13ABC()
{
  result = qword_1EB266C40;
  if (!qword_1EB266C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C40);
  }

  return result;
}

unint64_t sub_1A5D13B10()
{
  result = qword_1EB266C48;
  if (!qword_1EB266C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C48);
  }

  return result;
}

unint64_t sub_1A5D13B64()
{
  result = qword_1EB1F4FA0;
  if (!qword_1EB1F4FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4FA0);
  }

  return result;
}

unint64_t sub_1A5D13BB8()
{
  result = qword_1EB1F4FB0;
  if (!qword_1EB1F4FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1F4FB0);
  }

  return result;
}

unint64_t sub_1A5D13CA4()
{
  result = qword_1EB266C50;
  if (!qword_1EB266C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C50);
  }

  return result;
}

unint64_t sub_1A5D13CF8()
{
  result = qword_1EB266C58;
  if (!qword_1EB266C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C58);
  }

  return result;
}

unint64_t sub_1A5D13D4C()
{
  result = qword_1EB266C60;
  if (!qword_1EB266C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C60);
  }

  return result;
}

unint64_t sub_1A5D13DA0()
{
  result = qword_1EB266C68;
  if (!qword_1EB266C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C68);
  }

  return result;
}

unint64_t sub_1A5D13DF4()
{
  result = qword_1EB266C70;
  if (!qword_1EB266C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C70);
  }

  return result;
}

unint64_t sub_1A5D13E48()
{
  result = qword_1EB266C78;
  if (!qword_1EB266C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C78);
  }

  return result;
}

unint64_t sub_1A5D13E9C()
{
  result = qword_1EB266C80;
  if (!qword_1EB266C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C80);
  }

  return result;
}

unint64_t sub_1A5D13EF0()
{
  result = qword_1EB266C88;
  if (!qword_1EB266C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C88);
  }

  return result;
}

unint64_t sub_1A5D13F44()
{
  result = qword_1EB266C90;
  if (!qword_1EB266C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C90);
  }

  return result;
}

unint64_t sub_1A5D13F98()
{
  result = qword_1EB266C98;
  if (!qword_1EB266C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266C98);
  }

  return result;
}

unint64_t sub_1A5D13FEC()
{
  result = qword_1EB266CA0;
  if (!qword_1EB266CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266CA0);
  }

  return result;
}

unint64_t sub_1A5D14040()
{
  result = qword_1EB266CA8;
  if (!qword_1EB266CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266CA8);
  }

  return result;
}

unint64_t sub_1A5D14094()
{
  result = qword_1EB266CB0;
  if (!qword_1EB266CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266CB0);
  }

  return result;
}

unint64_t sub_1A5D140E8()
{
  result = qword_1EB266CB8;
  if (!qword_1EB266CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266CB8);
  }

  return result;
}

unint64_t sub_1A5D1413C()
{
  result = qword_1EB266CC0;
  if (!qword_1EB266CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266CC0);
  }

  return result;
}

unint64_t sub_1A5D14190()
{
  result = qword_1EB266CC8;
  if (!qword_1EB266CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266CC8);
  }

  return result;
}

unint64_t sub_1A5D141E4()
{
  result = qword_1EB266CD0;
  if (!qword_1EB266CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266CD0);
  }

  return result;
}

unint64_t sub_1A5D14238()
{
  result = qword_1EB266CD8;
  if (!qword_1EB266CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266CD8);
  }

  return result;
}

unint64_t sub_1A5D1428C()
{
  result = qword_1EB266CE0;
  if (!qword_1EB266CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266CE0);
  }

  return result;
}

unint64_t sub_1A5D142E0()
{
  result = qword_1EB266CE8;
  if (!qword_1EB266CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266CE8);
  }

  return result;
}

unint64_t sub_1A5D14334()
{
  result = qword_1EB266CF0;
  if (!qword_1EB266CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266CF0);
  }

  return result;
}

unint64_t sub_1A5D14388()
{
  result = qword_1EB266CF8;
  if (!qword_1EB266CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266CF8);
  }

  return result;
}

unint64_t sub_1A5D143DC()
{
  result = qword_1EB266D00;
  if (!qword_1EB266D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D00);
  }

  return result;
}

unint64_t sub_1A5D14430()
{
  result = qword_1EB266D08;
  if (!qword_1EB266D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D08);
  }

  return result;
}

unint64_t sub_1A5D14484()
{
  result = qword_1EB266D10;
  if (!qword_1EB266D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D10);
  }

  return result;
}

unint64_t sub_1A5D144D8()
{
  result = qword_1EB266D18;
  if (!qword_1EB266D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D18);
  }

  return result;
}

unint64_t sub_1A5D1452C()
{
  result = qword_1EB266D20;
  if (!qword_1EB266D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D20);
  }

  return result;
}

unint64_t sub_1A5D14580()
{
  result = qword_1EB266D28;
  if (!qword_1EB266D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D28);
  }

  return result;
}

unint64_t sub_1A5D145D4()
{
  result = qword_1EB266D30;
  if (!qword_1EB266D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D30);
  }

  return result;
}

unint64_t sub_1A5D14628()
{
  result = qword_1EB266D38;
  if (!qword_1EB266D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D38);
  }

  return result;
}

unint64_t sub_1A5D1467C()
{
  result = qword_1EB266D40;
  if (!qword_1EB266D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D40);
  }

  return result;
}

unint64_t sub_1A5D146D0()
{
  result = qword_1EB266D48;
  if (!qword_1EB266D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D48);
  }

  return result;
}

unint64_t sub_1A5D14724()
{
  result = qword_1EB266D50;
  if (!qword_1EB266D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D50);
  }

  return result;
}

unint64_t sub_1A5D14778()
{
  result = qword_1EB266D58;
  if (!qword_1EB266D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D58);
  }

  return result;
}

unint64_t sub_1A5D147CC()
{
  result = qword_1EB266D60;
  if (!qword_1EB266D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D60);
  }

  return result;
}

unint64_t sub_1A5D14820()
{
  result = qword_1EB266D68;
  if (!qword_1EB266D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D68);
  }

  return result;
}

unint64_t sub_1A5D14874()
{
  result = qword_1EB266D70;
  if (!qword_1EB266D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D70);
  }

  return result;
}

unint64_t sub_1A5D148C8()
{
  result = qword_1EB266D78;
  if (!qword_1EB266D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D78);
  }

  return result;
}

unint64_t sub_1A5D1491C()
{
  result = qword_1EB266D80;
  if (!qword_1EB266D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D80);
  }

  return result;
}

unint64_t sub_1A5D14970()
{
  result = qword_1EB266D88;
  if (!qword_1EB266D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D88);
  }

  return result;
}

unint64_t sub_1A5D149C4()
{
  result = qword_1EB266D90;
  if (!qword_1EB266D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D90);
  }

  return result;
}

unint64_t sub_1A5D14A18()
{
  result = qword_1EB266D98;
  if (!qword_1EB266D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266D98);
  }

  return result;
}

unint64_t sub_1A5D14A6C()
{
  result = qword_1EB266DA0;
  if (!qword_1EB266DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266DA0);
  }

  return result;
}

unint64_t sub_1A5D14AC0()
{
  result = qword_1EB266DA8;
  if (!qword_1EB266DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266DA8);
  }

  return result;
}

unint64_t sub_1A5D14B14()
{
  result = qword_1EB266DB0;
  if (!qword_1EB266DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266DB0);
  }

  return result;
}

unint64_t sub_1A5D14B68()
{
  result = qword_1EB266DB8;
  if (!qword_1EB266DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266DB8);
  }

  return result;
}

unint64_t sub_1A5D14BBC()
{
  result = qword_1EB266DC0;
  if (!qword_1EB266DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB266DC0);
  }

  return result;
}