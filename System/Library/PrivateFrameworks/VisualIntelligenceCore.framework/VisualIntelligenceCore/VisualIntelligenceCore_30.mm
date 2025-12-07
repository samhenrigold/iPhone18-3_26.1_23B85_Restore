id CVCoordinator.extractPixels<A>(frame:regionOfInterest:maxDimension:orientation:pixelFormat:)(id result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v17 = result;
    if ((a3 & 0x100000000) != 0)
    {
      v18 = 0;
    }

    else
    {
      v18 = a3;
    }

    v25 = 0;
    v24 = BYTE4(a3) & 1;
    v26 = a4;
    v27 = 0;
    v28 = a2;
    v19 = *(MEMORY[0x1E695F050] + 16);
    v29 = *MEMORY[0x1E695F050];
    v30 = v19;
    v31 = 1;
    v32 = v18;
    v33 = BYTE4(a3) & 1;
    v34 = 0;
    v23 = 0;
    sub_1D88C5438(&v26, v21);
    *(&v22 + 1) = 0;
    v38[2] = v21[2];
    v38[3] = v21[3];
    v39 = v23;
    v38[0] = v21[0];
    v38[1] = v21[1];
    v38[4] = v22;
    sub_1D8A4E254(v38, a5, a6, v35, a7, a8, a9, a10);
    if (v10)
    {
      sub_1D881F5F8(v38);
    }

    else
    {
      LOBYTE(v21[0]) = 1;
      sub_1D8A49A08(v35, v17, 0x100000000uLL, a5, v37);
      sub_1D881F5F8(v38);
      a6 = v36;
      v20 = v36;
      sub_1D881F5F8(v35);
    }

    return a6;
  }

  return result;
}

unint64_t static CVCoordinator.Configuration.factorySettings.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D893DF5C(&unk_1F5426928);
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 3;
  return result;
}

uint64_t Angle.cgOrientation.getter()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    return 1;
  }

  result = 3;
  if (v1 != 3.14159265 && v1 != -3.14159265)
  {
    result = 6;
    if (v1 != 1.57079633 && v1 != -1.57079633)
    {
      if (v1 == -4.71238898 || v1 == 4.71238898)
      {
        return 8;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1D8A2FFD8(uint64_t a1)
{
  sub_1D8B13240();
  sub_1D8A4F044(&qword_1EE0E98A0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D8B157A0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  sub_1D8B16D60();
  v4 = (v1 + v3[10]);
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  v9 = v4[6];
  v10 = v4[7];
  sub_1D8818B80(*v4, v4[1]);
  sub_1D8818B80(v5, v6);
  sub_1D8818B80(v7, v8);
  sub_1D8818B80(v9, v10);
  sub_1D87D0390(a1, *(v1 + v3[11]));
  v11 = *(v1 + v3[12]);
  v12 = *(v11 + 16);
  MEMORY[0x1DA720210](v12);
  if (v12)
  {
    v13 = v11 + 32;
    do
    {
      v13 += 2;
      sub_1D8B16D50();
      --v12;
    }

    while (v12);
  }

  v14 = *(v1 + v3[13]);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x1DA720250](*&v14);
  v15 = *(v1 + v3[14]);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x1DA720250](*&v15);
  v16 = *(v1 + v3[15]);

  return sub_1D87D0004(a1, v16);
}

void sub_1D8A30194(uint64_t a1@<X0>, uint64_t a2@<X3>, CGFloat *a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  MinX = CGRectGetMinX(*&a4);
  v49.origin.x = a4;
  v49.origin.y = a5;
  v49.size.width = a6;
  v49.size.height = a7;
  MinY = CGRectGetMinY(v49);
  v50.origin.x = a4;
  v50.origin.y = a5;
  v50.size.width = a6;
  v50.size.height = a7;
  MaxX = CGRectGetMaxX(v50);
  v51.origin.x = a4;
  v51.origin.y = a5;
  v51.size.width = a6;
  v51.size.height = a7;
  v14 = CGRectGetMinY(v51);
  v52.origin.x = a4;
  v52.origin.y = a5;
  v52.size.width = a6;
  v52.size.height = a7;
  v15 = CGRectGetMinX(v52);
  v53.origin.x = a4;
  v53.origin.y = a5;
  v53.size.width = a6;
  v53.size.height = a7;
  MaxY = CGRectGetMaxY(v53);
  v54.origin.x = a4;
  v54.origin.y = a5;
  v54.size.width = a6;
  v54.size.height = a7;
  v17 = CGRectGetMaxX(v54);
  v55.origin.x = a4;
  v55.origin.y = a5;
  v55.size.width = a6;
  v55.size.height = a7;
  v48[1] = MinX;
  v48[2] = MinY;
  v48[3] = MaxX;
  v48[4] = v14;
  v48[5] = v15;
  v48[6] = MaxY;
  v48[7] = v17;
  v48[8] = CGRectGetMaxY(v55);
  CameraSourceFrame.rotationAngle.getter(a2, v48);
  v47 = 0;
  sub_1D8A5A9D8(v48, &v47, v46);
  Corners.bounds.getter();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  if ((*(a1 + 32) & 1) == 0)
  {
    v27 = *(a1 + 16);
    v26 = *(a1 + 24);
    v29 = *a1;
    v28 = *(a1 + 8);
    v56.origin.x = *a1;
    v56.origin.y = v28;
    v56.size.width = v27;
    v56.size.height = v26;
    v44 = v29 + v19 * CGRectGetWidth(v56);
    v57.origin.x = v29;
    v57.origin.y = v28;
    v57.size.width = v27;
    v57.size.height = v26;
    v41 = v28 + v21 * CGRectGetHeight(v57);
    v58.origin.x = v19;
    v58.origin.y = v21;
    v58.size.width = v23;
    v58.size.height = v25;
    Width = CGRectGetWidth(v58);
    v59.origin.x = v29;
    v59.origin.y = v28;
    v59.size.width = v27;
    v59.size.height = v26;
    v38 = Width * CGRectGetWidth(v59);
    v60.origin.x = v19;
    v60.origin.y = v21;
    v60.size.width = v23;
    v60.size.height = v25;
    Height = CGRectGetHeight(v60);
    v61.origin.x = v29;
    v61.origin.y = v28;
    v61.size.width = v27;
    v61.size.height = v26;
    v25 = Height * CGRectGetHeight(v61);
    v21 = v41;
    v19 = v44;
    v23 = v38;
  }

  v62.origin.x = v19;
  v62.origin.y = v21;
  v62.size.width = v23;
  v62.size.height = v25;
  v45 = CGRectGetMinX(v62);
  v63.origin.x = v19;
  v63.origin.y = v21;
  v63.size.width = v23;
  v63.size.height = v25;
  v42 = CGRectGetMinY(v63);
  v64.origin.x = v19;
  v64.origin.y = v21;
  v64.size.width = v23;
  v64.size.height = v25;
  v39 = CGRectGetMaxX(v64);
  v65.origin.x = v19;
  v65.origin.y = v21;
  v65.size.width = v23;
  v65.size.height = v25;
  v31 = CGRectGetMinY(v65);
  v66.origin.x = v19;
  v66.origin.y = v21;
  v66.size.width = v23;
  v66.size.height = v25;
  v32 = CGRectGetMinX(v66);
  v67.origin.x = v19;
  v67.origin.y = v21;
  v67.size.width = v23;
  v67.size.height = v25;
  v33 = CGRectGetMaxY(v67);
  v68.origin.x = v19;
  v68.origin.y = v21;
  v68.size.width = v23;
  v68.size.height = v25;
  v34 = CGRectGetMaxX(v68);
  v69.origin.x = v19;
  v69.origin.y = v21;
  v69.size.width = v23;
  v69.size.height = v25;
  v35 = CGRectGetMaxY(v69);
  *a3 = v45;
  a3[1] = v42;
  a3[2] = v39;
  a3[3] = v31;
  a3[4] = v32;
  a3[5] = v33;
  a3[6] = v34;
  a3[7] = v35;
}

uint64_t DetectionRequest.Annotation.annotationType.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DetectionRequest.Annotation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8A50DC0(v2, v6, type metadata accessor for DetectionRequest.Annotation);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      *a1 = 1;
      return sub_1D8A50E28(v6, type metadata accessor for DetectionRequest.Annotation);
    }

    else
    {
      *a1 = 2;
    }
  }

  else
  {
    result = sub_1D8A50E28(v6, type metadata accessor for DetectionRequest.Annotation);
    *a1 = 0;
  }

  return result;
}

void sub_1D8A305B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DetectionRequest.Originator(0);
  v93 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v89 = &v81 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v81 - v10);
  v12 = type metadata accessor for DetectionRequest(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v90 = &v81 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v81 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v81 - v22;
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v88 = a1;
    v86 = v7;
    v87 = v25;
    v26 = a1 + v25;
    v92 = v21;
    sub_1D8A50DC0(v26, &v81 - v22, type metadata accessor for DetectionRequest);
    v27 = v24 - 1;
    if (v24 == 1)
    {
      sub_1D8A512F0(v23, a2, type metadata accessor for DetectionRequest);
      (*(v92 + 56))(a2, 0, 1, v12);
    }

    else
    {
      v84 = v4;
      v85 = v11;
      v91 = v23;
      v81 = v15;
      v94 = v12;
      v82 = a2;
      v96 = MEMORY[0x1E69E7CC0];
      sub_1D87F4534(0, v24, 0);
      v29 = v96;
      v30 = v26;
      v31 = v24;
      v95 = *(v92 + 72);
      do
      {
        sub_1D8A50DC0(v30, v20, type metadata accessor for DetectionRequest);
        v32 = *v20;
        sub_1D8A50E28(v20, type metadata accessor for DetectionRequest);
        v96 = v29;
        v34 = *(v29 + 2);
        v33 = *(v29 + 3);
        if (v34 >= v33 >> 1)
        {
          sub_1D87F4534((v33 > 1), v34 + 1, 1);
          v29 = v96;
        }

        *(v29 + 2) = v34 + 1;
        v29[v34 + 32] = v32;
        v35 = v95;
        v30 += v95;
        --v31;
      }

      while (v31);
      v36 = sub_1D87C4904(v29);

      if (*(v36 + 2) == 1)
      {

        v96 = MEMORY[0x1E69E7CC0];
        sub_1D87F4140(0, v24, 0);
        v37 = v96;
        v38 = v26;
        v39 = v24;
        v40 = v94;
        do
        {
          sub_1D8A50DC0(v38, v20, type metadata accessor for DetectionRequest);
          v41 = *&v20[v40[8]];
          sub_1D8A50E28(v20, type metadata accessor for DetectionRequest);
          v96 = v37;
          v43 = *(v37 + 2);
          v42 = *(v37 + 3);
          if (v43 >= v42 >> 1)
          {
            sub_1D87F4140((v42 > 1), v43 + 1, 1);
            v37 = v96;
          }

          *(v37 + 2) = v43 + 1;
          *&v37[8 * v43 + 32] = v41;
          v38 += v35;
          --v39;
          v40 = v94;
        }

        while (v39);
        v96 = v37;

        sub_1D8A4AF2C(&v96);

        v44 = *(v96 + 2);
        v45 = v91;
        v83 = v44;
        if (v44)
        {
          v46 = *&v96[8 * v44 + 24];
        }

        else
        {
          v46 = 0;
        }

        v47 = v40[7];
        x = *&v45[v47];
        y = *&v45[v47 + 8];
        width = *&v45[v47 + 16];
        height = *&v45[v47 + 24];
        v52 = v90;
        v53 = &v90[v47];
        v54 = v88 + v35 + v87;
        do
        {
          sub_1D8A50DC0(v54, v52, type metadata accessor for DetectionRequest);
          v98.origin.x = x;
          v98.origin.y = y;
          v98.size.width = width;
          v98.size.height = height;
          v99 = CGRectUnion(v98, *v53);
          x = v99.origin.x;
          y = v99.origin.y;
          width = v99.size.width;
          height = v99.size.height;
          sub_1D8A50E28(v52, type metadata accessor for DetectionRequest);
          v54 += v35;
          --v27;
        }

        while (v27);
        v96 = MEMORY[0x1E69E7CC0];
        sub_1D87F4C80(0, v24, 0);
        v36 = v96;
        v55 = v26;
        v56 = v24;
        do
        {
          sub_1D8A50DC0(v55, v20, type metadata accessor for DetectionRequest);
          v57 = *&v20[v40[6]];

          sub_1D8A50E28(v20, type metadata accessor for DetectionRequest);
          v96 = v36;
          v59 = *(v36 + 2);
          v58 = *(v36 + 3);
          if (v59 >= v58 >> 1)
          {
            sub_1D87F4C80((v58 > 1), v59 + 1, 1);
            v36 = v96;
          }

          *(v36 + 2) = v59 + 1;
          *&v36[8 * v59 + 32] = v57;
          v40 = v94;
          v55 += v95;
          --v56;
        }

        while (v56);
        v60 = 0;
        v96 = MEMORY[0x1E69E7CC0];
        v61 = v59 + 1;
        v62 = v85;
        do
        {
          if (v60 >= *(v36 + 2))
          {
            __break(1u);
            goto LABEL_50;
          }

          v63 = v60 + 1;

          sub_1D88F5B4C(v64);
          v60 = v63;
        }

        while (v61 != v63);

        v90 = v96;
        v65 = *v91;
        v96 = MEMORY[0x1E69E7CC0];
        sub_1D87F4C3C(0, v24, 0);
        v66 = v96;
        v36 = v89;
        do
        {
          sub_1D8A50DC0(v26, v20, type metadata accessor for DetectionRequest);
          sub_1D8A50DC0(&v20[v40[5]], v36, type metadata accessor for DetectionRequest.Originator);
          sub_1D8A50E28(v20, type metadata accessor for DetectionRequest);
          v96 = v66;
          v68 = *(v66 + 2);
          v67 = *(v66 + 3);
          if (v68 >= v67 >> 1)
          {
            sub_1D87F4C3C((v67 > 1), v68 + 1, 1);
            v66 = v96;
          }

          *(v66 + 2) = v68 + 1;
          sub_1D8A512F0(v36, &v66[((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v68], type metadata accessor for DetectionRequest.Originator);
          v26 += v95;
          --v24;
        }

        while (v24);
        sub_1D8A3167C(v66, v62);

        if (!v83)
        {
          v46 = *&v91[v40[8]];
        }

        v69 = v86;
        sub_1D8A50DC0(v62, v86, type metadata accessor for DetectionRequest.Originator);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
LABEL_48:
          v77 = v81;
          *v81 = v65;
          sub_1D8A50DC0(v62, v77 + v40[5], type metadata accessor for DetectionRequest.Originator);
          v78 = sub_1D87C45EC(v90);

          sub_1D8A50E28(v62, type metadata accessor for DetectionRequest.Originator);
          sub_1D8A50E28(v91, type metadata accessor for DetectionRequest);
          *(v77 + v40[6]) = v78;
          v79 = (v77 + v40[7]);
          *v79 = x;
          v79[1] = y;
          v79[2] = width;
          v79[3] = height;
          *(v77 + v40[8]) = v46;
          v80 = v82;
          sub_1D8A512F0(v77, v82, type metadata accessor for DetectionRequest);
          (*(v92 + 56))(v80, 0, 1, v40);
          return;
        }

        sub_1D8A50E28(v69, type metadata accessor for DetectionRequest.Originator);
        v70 = MEMORY[0x1E69E7CD0];
        if (v65 <= 0xD && ((1 << v65) & 0x3002) != 0)
        {
          v70 = sub_1D8A50348(&unk_1F54267F0, &qword_1ECA67E58, &qword_1D8B36A78);
        }

        v71 = 0;
        v72 = 1 << *(v70 + 32);
        v73 = -1;
        if (v72 < 64)
        {
          v73 = ~(-1 << v72);
        }

        v74 = v73 & *(v70 + 56);
        v75 = (v72 + 63) >> 6;
        while (v74)
        {
LABEL_41:
          v74 &= v74 - 1;
        }

        while (1)
        {
          v76 = v71 + 1;
          if (__OFADD__(v71, 1))
          {
            break;
          }

          if (v76 >= v75)
          {

            goto LABEL_48;
          }

          v74 = *(v70 + 56 + 8 * v76);
          ++v71;
          if (v74)
          {
            v71 = v76;
            goto LABEL_41;
          }
        }

LABEL_50:
        __break(1u);
      }

      sub_1D8B168C0();
      __break(1u);

      __break(1u);
    }
  }

  else
  {
    v28 = *(v21 + 56);

    v28(a2, 1, 1, v12);
  }
}

uint64_t sub_1D8A31004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v11[6] = a2;
  v11[7] = a1;
  v8 = type metadata accessor for DetectionRequest(0);
  return sub_1D87DFC48(sub_1D8A57778, v11, a3, v8, MEMORY[0x1E69E73E0], a5, MEMORY[0x1E69E7410], v9);
}

uint64_t CVError.errorDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16) <= 1u)
  {
    if (*(v0 + 16))
    {
      v9 = 0x6C75736572206F4ELL;
      if (v1)
      {
        v4 = *(v0 + 8);
      }

      else
      {
        v2 = 0;
        v4 = 0xE000000000000000;
      }

      MEMORY[0x1DA71EFA0](v2, v4);
    }

    else
    {

      sub_1D8B16720();

      v9 = 0xD000000000000012;
      if (v1)
      {
        v3 = v2;
      }

      else
      {
        v3 = 0;
      }

      if (!v1)
      {
        v1 = 0xE000000000000000;
      }

      MEMORY[0x1DA71EFA0](v3, v1);
    }

    return v9;
  }

  if (*(v0 + 16) == 2)
  {
    v9 = 0;
    sub_1D8B16720();
    MEMORY[0x1DA71EFA0](0xD000000000000010, 0x80000001D8B47960);
    sub_1D8B16020();
    MEMORY[0x1DA71EFA0](0xD000000000000027, 0x80000001D8B47980);
    sub_1D8B16020();
    return v9;
  }

  if (v2 <= 2)
  {
    if (v2 ^ 1 | v1)
    {
      v8 = 0x656C74746F726854;
    }

    else
    {
      v8 = 0xD000000000000019;
    }

    if (v2 | v1)
    {
      return v8;
    }

    else
    {
      return 0x6F6E20656D617246;
    }
  }

  else
  {
    if (v2 ^ 5 | v1)
    {
      v6 = 0xD000000000000026;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    v7 = 0xD000000000000016;
    if (!(v2 ^ 3 | v1))
    {
      v7 = 0x6F6E206B63617254;
    }

    if (v2 <= 4)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }
}

BOOL static CVCoordinationRegime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a1 + 4) != 1)
    {
      return v3 == 2 && LODWORD(v2) == 0;
    }

    if (v3 != 1)
    {
      return 0;
    }
  }

  else if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == v2;
}

double DetectionRequest.Originator.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1D8B13240();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8A50DC0(v2, v10, type metadata accessor for DetectionRequest.Originator);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v5 + 32))(v7, v10, v4);
      sub_1D8A4F044(&qword_1EE0E98A0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D8B157A0();
      (*(v5 + 8))(v7, v4);
      return result;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1D88197A0(a1, *v10);

      return result;
    }

    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    v13 = *v10;
    v14 = *(v10 + 1);
    sub_1D8B13060();
    sub_1D87A1598(v13, v14);
    return result;
  }

  if (v10[4])
  {
    if (v10[4] != 1)
    {
LABEL_11:
      MEMORY[0x1DA720210](1);
      return result;
    }

    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  MEMORY[0x1DA720210](v15);
  sub_1D8B16D60();
  return result;
}

uint64_t sub_1D8A3167C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for DetectionRequest.Originator(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v23 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v23 = v10;
    v24 = a2;
    v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = a1 + v14;
    v16 = *(v9 + 72);
    v17 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D8A50DC0(v15, v12, type metadata accessor for DetectionRequest.Originator);
      sub_1D8A512F0(v12, v8, type metadata accessor for DetectionRequest.Originator);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1D87C9BB0(0, v17[2] + 1, 1, v17);
      }

      v19 = v17[2];
      v18 = v17[3];
      if (v19 >= v18 >> 1)
      {
        v17 = sub_1D87C9BB0((v18 > 1), v19 + 1, 1, v17);
      }

      v17[2] = v19 + 1;
      sub_1D8A512F0(v8, v17 + v14 + v19 * v16, type metadata accessor for DetectionRequest.Originator);
      v15 += v16;
      --v13;
    }

    while (v13);
    if (v19)
    {
      v20 = sub_1D87C39A0(v17);

      *v24 = v20;
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      v22 = v23;
      sub_1D8A50DC0(v17 + v14, v23, type metadata accessor for DetectionRequest.Originator);

      return sub_1D8A512F0(v22, v24, type metadata accessor for DetectionRequest.Originator);
    }
  }

  else
  {
    *a2 = MEMORY[0x1E69E7CD0];

    return swift_storeEnumTagMultiPayload();
  }
}

unint64_t sub_1D8A31940()
{
  v1 = *v0;
  v2 = 0x656D69676572;
  v3 = 0x6564496B63617274;
  v4 = 0x73756F69726176;
  if (v1 != 3)
  {
    v4 = 0x6E696D6165727473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001BLL;
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

uint64_t sub_1D8A319EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8A56EA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8A31A14(uint64_t a1)
{
  v2 = sub_1D8A50FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A31A50(uint64_t a1)
{
  v2 = sub_1D8A50FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A31A8C(uint64_t a1)
{
  v2 = sub_1D8A511F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A31AC8(uint64_t a1)
{
  v2 = sub_1D8A511F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A31B04(uint64_t a1)
{
  v2 = sub_1D8A51040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A31B40(uint64_t a1)
{
  v2 = sub_1D8A51040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A31B7C(uint64_t a1)
{
  v2 = sub_1D8A511A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A31BB8(uint64_t a1)
{
  v2 = sub_1D8A511A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A31BF4(uint64_t a1)
{
  v2 = sub_1D8A51094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A31C30(uint64_t a1)
{
  v2 = sub_1D8A51094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A31C6C(uint64_t a1)
{
  v2 = sub_1D8A5129C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A31CA8(uint64_t a1)
{
  v2 = sub_1D8A5129C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DetectionRequest.Originator.encode(to:)(void *a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA675F0, &qword_1D8B33B40);
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v50 = &v47 - v2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA675F8, &qword_1D8B33B48);
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v52 = &v47 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67600, &qword_1D8B33B50);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v47 - v5;
  v51 = sub_1D8B13240();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67608, &qword_1D8B33B58);
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67610, &qword_1D8B33B60);
  v59 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v13 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67618, &qword_1D8B33B68);
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A50FEC();
  v62 = v18;
  sub_1D8B16DD0();
  sub_1D8A50DC0(v63, v15, type metadata accessor for DetectionRequest.Originator);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v25 = v59;
    v26 = v60;
    v27 = v10;
    v28 = v61;
    if (EnumCaseMultiPayload)
    {
      v43 = *v15;
      v44 = v15[4];
      LOBYTE(v66) = 1;
      sub_1D8A511F4();
      v45 = v65;
      v46 = v62;
      sub_1D8B16A40();
      LODWORD(v66) = v43;
      BYTE4(v66) = v44;
      sub_1D8A51248();
      sub_1D8B16AE0();
      (*(v26 + 8))(v9, v28);
      (*(v64 + 8))(v46, v45);
    }

    else
    {
      v30 = *v15;
      v29 = *(v15 + 1);
      LOBYTE(v66) = 0;
      sub_1D8A5129C();
      v31 = v65;
      v32 = v62;
      sub_1D8B16A40();
      v66 = v30;
      v67 = v29;
      sub_1D89980D8();
      sub_1D8B16AE0();
      (*(v25 + 8))(v12, v27);
      (*(v64 + 8))(v32, v31);
      sub_1D87A1598(v30, v29);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v33 = v49;
    v34 = v47;
    v35 = v15;
    v36 = v51;
    (*(v49 + 32))(v47, v35, v51);
    LOBYTE(v66) = 2;
    sub_1D8A511A0();
    v37 = v48;
    v38 = v65;
    v39 = v62;
    sub_1D8B16A40();
    sub_1D8A4F044(&qword_1ECA637D8, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v40 = v54;
    sub_1D8B16AE0();
    (*(v53 + 8))(v37, v40);
    (*(v33 + 8))(v34, v36);
    (*(v64 + 8))(v39, v38);
  }

  else
  {
    v20 = v62;
    if (EnumCaseMultiPayload == 3)
    {
      v21 = *v15;
      LOBYTE(v66) = 3;
      sub_1D8A51094();
      v22 = v52;
      v23 = v65;
      sub_1D8B16A40();
      v66 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67638, &qword_1D8B33B70);
      sub_1D8A510E8();
      v24 = v58;
      sub_1D8B16AE0();
      (*(v56 + 8))(v22, v24);
      (*(v64 + 8))(v20, v23);
    }

    else
    {
      LOBYTE(v66) = 4;
      sub_1D8A51040();
      v41 = v50;
      v42 = v65;
      sub_1D8B16A40();
      (*(v55 + 8))(v41, v57);
      (*(v64 + 8))(v20, v42);
    }
  }
}

uint64_t DetectionRequest.Originator.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67680, &qword_1D8B33B78);
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v57 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67688, &qword_1D8B33B80);
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v72 = &v57 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67690, &qword_1D8B33B88);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v78 = &v57 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67698, &qword_1D8B33B90);
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v77 = &v57 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676A0, &qword_1D8B33B98);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v75 = &v57 - v7;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676A8, &unk_1D8B33BA0);
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v9 = &v57 - v8;
  v73 = type metadata accessor for DetectionRequest.Originator(0);
  v10 = MEMORY[0x1EEE9AC00](v73);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v57 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v57 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v57 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v57 - v22;
  v24 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1D8A50FEC();
  v25 = v86;
  sub_1D8B16DB0();
  if (!v25)
  {
    v57 = v21;
    v58 = v18;
    v60 = v15;
    v59 = v12;
    v26 = v75;
    v27 = v76;
    v29 = v77;
    v28 = v78;
    v86 = v23;
    v30 = v79;
    v31 = sub_1D8B16A20();
    v32 = (2 * *(v31 + 16)) | 1;
    v82 = v31;
    v83 = v31 + 32;
    v84 = 0;
    v85 = v32;
    v33 = sub_1D881F7C0();
    if (v33 != 5 && v84 == v85 >> 1)
    {
      if (v33 <= 1u)
      {
        if (v33)
        {
          LOBYTE(v81) = 1;
          sub_1D8A511F4();
          sub_1D8B16950();
          v50 = v74;
          sub_1D8A51410();
          v51 = v63;
          sub_1D8B16A10();
          (*(v64 + 8))(v29, v51);
          (*(v50 + 8))(v9, v27);
          swift_unknownObjectRelease();
          v56 = BYTE4(v81);
          v45 = v58;
          *v58 = v81;
          *(v45 + 4) = v56;
        }

        else
        {
          LOBYTE(v81) = 0;
          sub_1D8A5129C();
          v42 = v26;
          sub_1D8B16950();
          v43 = v74;
          sub_1D899812C();
          v44 = v62;
          sub_1D8B16A10();
          (*(v61 + 8))(v42, v44);
          (*(v43 + 8))(v9, v27);
          swift_unknownObjectRelease();
          v45 = v57;
          *v57 = v81;
        }

        swift_storeEnumTagMultiPayload();
        v52 = v45;
      }

      else
      {
        if (v33 != 2)
        {
          if (v33 == 3)
          {
            LOBYTE(v81) = 3;
            sub_1D8A51094();
            sub_1D8B16950();
            v34 = v30;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67638, &qword_1D8B33B70);
            sub_1D8A51358();
            v35 = v68;
            v36 = v72;
            sub_1D8B16A10();
            (*(v70 + 8))(v36, v35);
            (*(v74 + 8))(v9, v27);
            swift_unknownObjectRelease();
            v53 = v59;
            *v59 = v81;
            swift_storeEnumTagMultiPayload();
            v54 = v86;
            sub_1D8A512F0(v53, v86, type metadata accessor for DetectionRequest.Originator);
            v55 = v80;
            v30 = v34;
LABEL_19:
            sub_1D8A512F0(v54, v30, type metadata accessor for DetectionRequest.Originator);
            v40 = v55;
            return __swift_destroy_boxed_opaque_existential_1(v40);
          }

          LOBYTE(v81) = 4;
          sub_1D8A51040();
          v49 = v71;
          sub_1D8B16950();
          (*(v65 + 8))(v49, v69);
          (*(v74 + 8))(v9, v27);
          swift_unknownObjectRelease();
          v54 = v86;
          swift_storeEnumTagMultiPayload();
LABEL_18:
          v55 = v80;
          goto LABEL_19;
        }

        LOBYTE(v81) = 2;
        sub_1D8A511A0();
        sub_1D8B16950();
        sub_1D8B13240();
        sub_1D8A4F044(&unk_1ECA689C0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
        v46 = v60;
        v47 = v67;
        sub_1D8B16A10();
        v48 = v74;
        (*(v66 + 8))(v28, v47);
        (*(v48 + 8))(v9, v27);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v52 = v46;
      }

      v54 = v86;
      sub_1D8A512F0(v52, v86, type metadata accessor for DetectionRequest.Originator);
      goto LABEL_18;
    }

    v37 = sub_1D8B16770();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
    *v39 = v73;
    sub_1D8B16960();
    sub_1D8B16760();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v74 + 8))(v9, v27);
    swift_unknownObjectRelease();
  }

  v40 = v80;
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

unint64_t DetectionRequest.Annotation.AnnotationType.description.getter()
{
  v1 = 0x6E69646E756F7267;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_1D8A331C0(uint64_t a1)
{
  v2 = sub_1D8A51464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A331FC(uint64_t a1)
{
  v2 = sub_1D8A51464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A33238(uint64_t a1)
{
  v2 = sub_1D8A514B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A33274(uint64_t a1)
{
  v2 = sub_1D8A514B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A332B0(uint64_t a1)
{
  v2 = sub_1D8A5150C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A332EC(uint64_t a1)
{
  v2 = sub_1D8A5150C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A33328(uint64_t a1)
{
  v2 = sub_1D8A51560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A33364(uint64_t a1)
{
  v2 = sub_1D8A51560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectionRequest.Annotation.AnnotationType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676E0, &qword_1D8B33BB0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676E8, &qword_1D8B33BB8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676F0, &qword_1D8B33BC0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676F8, &qword_1D8B33BC8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A51464();
  sub_1D8B16DD0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1D8A5150C();
      v9 = v21;
      sub_1D8B16A40();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1D8A514B8();
      v9 = v24;
      sub_1D8B16A40();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1D8A51560();
    sub_1D8B16A40();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t DetectionRequest.Annotation.AnnotationType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67720, &qword_1D8B33BD0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67728, &qword_1D8B33BD8);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67730, &qword_1D8B33BE0);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67738, &qword_1D8B33BE8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8A51464();
  v15 = v36;
  sub_1D8B16DB0();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1D8B16A20();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1D881F7C4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1D8B16770();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
      *v24 = &type metadata for DetectionRequest.Annotation.AnnotationType;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1D8A5150C();
          sub_1D8B16950();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1D8A514B8();
          v26 = v17;
          sub_1D8B16950();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1D8A51560();
        sub_1D8B16950();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1D8A33CB0(uint64_t a1)
{
  v2 = sub_1D8A515B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A33CEC(uint64_t a1)
{
  v2 = sub_1D8A515B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A33D28(uint64_t a1)
{
  v2 = sub_1D8A51608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A33D64(uint64_t a1)
{
  v2 = sub_1D8A51608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A33DA0(uint64_t a1)
{
  v2 = sub_1D8A516B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A33DDC(uint64_t a1)
{
  v2 = sub_1D8A516B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A33E18(uint64_t a1)
{
  v2 = sub_1D8A51704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A33E54(uint64_t a1)
{
  v2 = sub_1D8A51704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DetectionRequest.Annotation.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67740, &qword_1D8B33BF0);
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67748, &unk_1D8B33BF8);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67758, &qword_1D8B33C08);
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for DetectionRequest.Annotation(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67760, &unk_1D8B33C10);
  v13 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v15 = &v27 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A515B4();
  sub_1D8B16DD0();
  sub_1D8A50DC0(v37, v12, type metadata accessor for DetectionRequest.Annotation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = v30;
      sub_1D881F6FC(v12, v30, &qword_1ECA67750, &unk_1D8B1E0C0);
      v41 = 1;
      sub_1D8A516B0();
      v18 = v31;
      v19 = v38;
      sub_1D8B16A40();
      sub_1D881CF20(&qword_1ECA67788, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
      v20 = v34;
      sub_1D8B16AE0();
      (*(v33 + 8))(v18, v20);
      sub_1D87A14E4(v17, &qword_1ECA67750, &unk_1D8B1E0C0);
      (*(v13 + 8))(v15, v19);
    }

    else
    {
      v23 = *v12;
      v43 = 2;
      sub_1D8A51608();
      v24 = v32;
      v25 = v38;
      sub_1D8B16A40();
      v42 = v23;
      sub_1D8A5165C();
      v26 = v36;
      sub_1D8B16AE0();
      (*(v35 + 8))(v24, v26);
      (*(v13 + 8))(v15, v25);
    }
  }

  else
  {
    v21 = *v12;
    v40 = 0;
    sub_1D8A51704();
    v22 = v38;
    sub_1D8B16A40();
    v39 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634B0, &qword_1D8B23030);
    sub_1D8A51758();
    sub_1D8B16AE0();
    (*(v28 + 8))(v9, v7);
    (*(v13 + 8))(v15, v22);
  }
}

double DetectionRequest.Annotation.hash(into:)(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for TextDetectorResult(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DetectionRequest.Annotation(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8A50DC0(v1, v12, type metadata accessor for DetectionRequest.Annotation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D881F6FC(v12, v5, &qword_1ECA67750, &unk_1D8B1E0C0);
      MEMORY[0x1DA720210](1);
      sub_1D8A2FFD8(a1);
      sub_1D87A14E4(v5, &qword_1ECA67750, &unk_1D8B1E0C0);
      return result;
    }

    MEMORY[0x1DA720210](2);
    sub_1D8B15A60();
  }

  else
  {
    v15 = *v12;
    MEMORY[0x1DA720210](0);
    MEMORY[0x1DA720210](*(v15 + 16));
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v18 = *(v7 + 72);
      do
      {
        sub_1D8A50DC0(v17, v9, type metadata accessor for TextDetectorResult);
        TextDetectorResult.hash(into:)(a1);
        sub_1D8A50E28(v9, type metadata accessor for TextDetectorResult);
        v17 += v18;
        --v16;
      }

      while (v16);
    }
  }

  return result;
}

uint64_t DetectionRequest.Annotation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA677B0, &qword_1D8B33C20);
  v58 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v62 = &v48 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA677B8, &qword_1D8B33C28);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA677C0, &qword_1D8B33C30);
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v48 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA677C8, &qword_1D8B33C38);
  v63 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v9 = &v48 - v8;
  v10 = type metadata accessor for DetectionRequest.Annotation(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v48 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - v20;
  v22 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D8A515B4();
  v23 = v65;
  sub_1D8B16DB0();
  if (!v23)
  {
    v49 = v19;
    v50 = v13;
    v51 = v16;
    v24 = v59;
    v25 = v60;
    v27 = v61;
    v26 = v62;
    v52 = v21;
    v65 = v10;
    v28 = v64;
    v29 = sub_1D8B16A20();
    v30 = (2 * *(v29 + 16)) | 1;
    v67 = v29;
    v68 = v29 + 32;
    v69 = 0;
    v70 = v30;
    v31 = sub_1D881F7C4();
    if (v31 == 3 || v69 != v70 >> 1)
    {
      v36 = sub_1D8B16770();
      swift_allocError();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
      *v38 = v65;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
      (*(v63 + 8))(v9, v25);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v31)
      {
        if (v31 == 1)
        {
          LOBYTE(v71) = 1;
          sub_1D8A516B0();
          v32 = v27;
          sub_1D8B16950();
          v33 = v25;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
          sub_1D881CF20(&qword_1ECA677D8, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
          v34 = v51;
          v35 = v57;
          sub_1D8B16A10();
          (*(v56 + 8))(v32, v35);
          (*(v63 + 8))(v9, v33);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v45 = v52;
          sub_1D8A512F0(v34, v52, type metadata accessor for DetectionRequest.Annotation);
          v46 = v64;
        }

        else
        {
          LOBYTE(v71) = 2;
          sub_1D8A51608();
          sub_1D8B16950();
          v46 = v28;
          v40 = v25;
          sub_1D8A51810();
          v41 = v53;
          sub_1D8B16A10();
          v42 = v63;
          (*(v58 + 8))(v26, v41);
          (*(v42 + 8))(v9, v40);
          swift_unknownObjectRelease();
          v47 = v50;
          *v50 = v71;
          swift_storeEnumTagMultiPayload();
          v45 = v52;
          sub_1D8A512F0(v47, v52, type metadata accessor for DetectionRequest.Annotation);
        }
      }

      else
      {
        LOBYTE(v71) = 0;
        sub_1D8A51704();
        sub_1D8B16950();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634B0, &qword_1D8B23030);
        sub_1D8A51864();
        v43 = v55;
        sub_1D8B16A10();
        (*(v54 + 8))(v24, v43);
        (*(v63 + 8))(v9, v25);
        swift_unknownObjectRelease();
        v44 = v49;
        *v49 = v71;
        swift_storeEnumTagMultiPayload();
        v45 = v52;
        sub_1D8A512F0(v44, v52, type metadata accessor for DetectionRequest.Annotation);
        v46 = v28;
      }

      sub_1D8A512F0(v45, v46, type metadata accessor for DetectionRequest.Annotation);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t sub_1D8A3506C()
{
  v1 = *v0;
  v2 = 0x6F69746365746564;
  v3 = 0x697461746F6E6E61;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6D617473656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74616E696769726FLL;
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

uint64_t sub_1D8A35128@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8A57194(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8A35150(uint64_t a1)
{
  v2 = sub_1D8A5191C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A3518C(uint64_t a1)
{
  v2 = sub_1D8A5191C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectionRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA677F0, &unk_1D8B33C40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A5191C();
  sub_1D8B16DD0();
  LOBYTE(v13[0]) = *v3;
  v14 = 0;
  sub_1D8A51970();
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for DetectionRequest(0);
    LOBYTE(v13[0]) = 1;
    type metadata accessor for DetectionRequest.Originator(0);
    sub_1D8A4F044(&qword_1ECA67420, 255, type metadata accessor for DetectionRequest.Originator, &protocol conformance descriptor for DetectionRequest.Originator);
    sub_1D8B16AE0();
    *&v13[0] = *&v3[*(v9 + 24)];
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D40, &qword_1D8B22D38);
    sub_1D8A519C4();
    sub_1D8B16AE0();
    v10 = &v3[*(v9 + 28)];
    v11 = v10[1];
    v13[0] = *v10;
    v13[1] = v11;
    v14 = 3;
    type metadata accessor for CGRect(0);
    sub_1D8A4F044(&qword_1ECA67820, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
    sub_1D8B16AE0();
    LOBYTE(v13[0]) = 4;
    sub_1D8B16AB0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DetectionRequest.hash(into:)(__int128 *a1)
{
  MEMORY[0x1DA720210](*v1);
  v3 = type metadata accessor for DetectionRequest(0);
  DetectionRequest.Originator.hash(into:)(a1);
  sub_1D8818BD0(a1, *&v1[v3[6]]);
  sub_1D88911A0(*&v1[v3[7]], *&v1[v3[7] + 8], *&v1[v3[7] + 16], *&v1[v3[7] + 24]);
  v4 = *&v1[v3[8]];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1DA720250](*&v4);
}

uint64_t DetectionRequest.hashValue.getter()
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](*v0);
  v1 = type metadata accessor for DetectionRequest(0);
  DetectionRequest.Originator.hash(into:)(v4);
  sub_1D8818BD0(v4, *&v0[v1[6]]);
  sub_1D88911A0(*&v0[v1[7]], *&v0[v1[7] + 8], *&v0[v1[7] + 16], *&v0[v1[7] + 24]);
  v2 = *&v0[v1[8]];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1DA720250](*&v2);
  return sub_1D8B16D80();
}

void DetectionRequest.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67828, &qword_1D8B33C50);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A5191C();
  v24 = v8;
  v12 = v25;
  sub_1D8B16DB0();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = v22;
    v14 = v11;
    v28 = 0;
    sub_1D8A51A7C();
    v15 = v23;
    sub_1D8B16A10();
    *v14 = v26;
    LOBYTE(v26) = 1;
    sub_1D8A4F044(&unk_1ECA676C0, 255, type metadata accessor for DetectionRequest.Originator, &protocol conformance descriptor for DetectionRequest.Originator);
    sub_1D8B16A10();
    sub_1D8A512F0(v5, &v14[v9[5]], type metadata accessor for DetectionRequest.Originator);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D40, &qword_1D8B22D38);
    v28 = 2;
    sub_1D8A51AD0();
    sub_1D8B16A10();
    *&v14[v9[6]] = v26;
    type metadata accessor for CGRect(0);
    v28 = 3;
    sub_1D8A4F044(&qword_1ECA64778, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    sub_1D8B16A10();
    v16 = &v14[v9[7]];
    v17 = v27;
    *v16 = v26;
    v16[1] = v17;
    LOBYTE(v26) = 4;
    sub_1D8B169E0();
    v19 = v18;
    (*(v13 + 8))(v24, v15);
    *&v14[v9[8]] = v19;
    sub_1D8A50DC0(v14, v21, type metadata accessor for DetectionRequest);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1D8A50E28(v14, type metadata accessor for DetectionRequest);
  }
}

uint64_t DetectionRequest.Originator.description.getter()
{
  v1 = v0;
  v2 = sub_1D8B13240();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8A50DC0(v1, v8, type metadata accessor for DetectionRequest.Originator);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D8A50E28(v8, type metadata accessor for DetectionRequest.Originator);
      return 18774;
    }

    v16 = *v8;
    v17 = v8[4];
    v20 = 0;
    v21 = 0xE000000000000000;
    MEMORY[0x1DA71EFA0](0x28656D69676572, 0xE700000000000000);
    LODWORD(v19) = v16;
    BYTE4(v19) = v17;
    sub_1D8B168A0();
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v3 + 32))(v5, v8, v2);
      v20 = 0x286B63617274;
      v21 = 0xE600000000000000;
      sub_1D8A4F044(&qword_1EE0E9890, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v14 = sub_1D8B16B50();
      MEMORY[0x1DA71EFA0](v14);

      MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
      v15 = v20;
      (*(v3 + 8))(v5, v2);
      return v15;
    }

    if (EnumCaseMultiPayload != 3)
    {
      return 0x6E696D6165727473;
    }

    v10 = *v8;
    v20 = 0x2873756F69726176;
    v21 = 0xE800000000000000;
    v11 = *(v10 + 16);

    v19 = v11;
    v12 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v12);
  }

  MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  return v20;
}

double DetectionResult.results.getter()
{
  type metadata accessor for DetectionResult(0);

  return result;
}

uint64_t DetectionResult.init(request:results:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D8A512F0(a1, a3, type metadata accessor for DetectionRequest);
  result = type metadata accessor for DetectionResult(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

void static DetectionResult.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v4 = type metadata accessor for DetectionRequest(0);
    if ((_s22VisualIntelligenceCore16DetectionRequestV10OriginatorO2eeoiySbAE_AEtFZ_0(&a1[v4[5]], &a2[v4[5]]) & 1) != 0 && (sub_1D894CAAC(*&a1[v4[6]], *&a2[v4[6]]) & 1) != 0 && CGRectEqualToRect(*&a1[v4[7]], *&a2[v4[7]]) && *&a1[v4[8]] == *&a2[v4[8]])
    {
      v5 = *(type metadata accessor for DetectionResult(0) + 20);
      v6 = *&a1[v5];
      v7 = *&a2[v5];

      sub_1D88E4098(v6, v7);
    }
  }
}

uint64_t sub_1D8A35FE4()
{
  if (*v0)
  {
    return 0x73746C75736572;
  }

  else
  {
    return 0x74736575716572;
  }
}

void sub_1D8A36018(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D8B16BA0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D8B16BA0();

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

uint64_t sub_1D8A360F4(uint64_t a1)
{
  v2 = sub_1D8A51B88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A36130(uint64_t a1)
{
  v2 = sub_1D8A51B88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DetectionResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67848, &qword_1D8B33C58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A51B88();
  sub_1D8B16DD0();
  v12 = 0;
  type metadata accessor for DetectionRequest(0);
  sub_1D8A4F044(&qword_1ECA67858, 255, type metadata accessor for DetectionRequest, &protocol conformance descriptor for DetectionRequest);
  sub_1D8B16AE0();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for DetectionResult(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67860, &qword_1D8B33C60);
    sub_1D8A51BDC(&qword_1ECA67868, sub_1D8A29858, MEMORY[0x1E69E6300]);
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}

void DetectionResult.hash(into:)(__int128 *a1)
{
  MEMORY[0x1DA720210](*v1);
  v3 = type metadata accessor for DetectionRequest(0);
  DetectionRequest.Originator.hash(into:)(a1);
  sub_1D8818BD0(a1, *&v1[v3[6]]);
  sub_1D88911A0(*&v1[v3[7]], *&v1[v3[7] + 8], *&v1[v3[7] + 16], *&v1[v3[7] + 24]);
  v4 = *&v1[v3[8]];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1DA720250](*&v4);
  v5 = *&v1[*(type metadata accessor for DetectionResult(0) + 20)];
  MEMORY[0x1DA720210](*(v5 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      v7 += 8;

      CVDetection.hash(into:)(a1);

      --v6;
    }

    while (v6);
  }
}

uint64_t sub_1D8A36494(uint64_t (*a1)(void *))
{
  sub_1D8B16D20();
  a1(v3);
  return sub_1D8B16D80();
}

uint64_t DetectionResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67878, &qword_1D8B33C68);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A51B88();
  sub_1D8B16DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_1D8A4F044(&qword_1ECA67880, 255, type metadata accessor for DetectionRequest, &protocol conformance descriptor for DetectionRequest);
  v14 = v19;
  sub_1D8B16A10();
  sub_1D8A512F0(v20, v13, type metadata accessor for DetectionRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67860, &qword_1D8B33C60);
  v22 = 1;
  sub_1D8A51BDC(&qword_1ECA67888, sub_1D8A51C54, MEMORY[0x1E69E6330]);
  sub_1D8B16A10();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 20)) = v21;
  sub_1D8A50DC0(v13, v17, type metadata accessor for DetectionResult);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D8A50E28(v13, type metadata accessor for DetectionResult);
}

void sub_1D8A36848(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (_s22VisualIntelligenceCore16DetectionRequestV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    v6 = *(a3 + 20);
    v7 = *&a1[v6];
    v8 = *&a2[v6];

    sub_1D88E4098(v7, v8);
  }
}

uint64_t sub_1D8A36918(__int128 *a1)
{
  v3 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetectionRequest(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ProcessorState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8A50DC0(v1, v14, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D8A512F0(v14, v5, type metadata accessor for DetectionResult);
      MEMORY[0x1DA720210](1);
      DetectionResult.hash(into:)(a1);
      v16 = type metadata accessor for DetectionResult;
      v17 = v5;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
      sub_1D8A512F0(v14, v9, type metadata accessor for DetectionRequest);
      MEMORY[0x1DA720210](2);
      MEMORY[0x1DA720210](*v9);
      DetectionRequest.Originator.hash(into:)(a1);
      sub_1D8818BD0(a1, *&v9[v6[6]]);
      sub_1D88911A0(*&v9[v6[7]], *&v9[v6[7] + 8], *&v9[v6[7] + 16], *&v9[v6[7] + 24]);
      v19 = *&v9[v6[8]];
      if (v19 == 0.0)
      {
        v19 = 0.0;
      }

      MEMORY[0x1DA720250](*&v19);
      sub_1D8B15A60();

      v16 = type metadata accessor for DetectionRequest;
      v17 = v9;
    }
  }

  else
  {
    sub_1D8A512F0(v14, v11, type metadata accessor for DetectionRequest);
    MEMORY[0x1DA720210](0);
    MEMORY[0x1DA720210](*v11);
    DetectionRequest.Originator.hash(into:)(a1);
    sub_1D8818BD0(a1, *&v11[v6[6]]);
    sub_1D88911A0(*&v11[v6[7]], *&v11[v6[7] + 8], *&v11[v6[7] + 16], *&v11[v6[7] + 24]);
    v18 = *&v11[v6[8]];
    if (v18 == 0.0)
    {
      v18 = 0.0;
    }

    MEMORY[0x1DA720250](*&v18);
    v16 = type metadata accessor for DetectionRequest;
    v17 = v11;
  }

  return sub_1D8A50E28(v17, v16);
}

uint64_t sub_1D8A36C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1D8B16D20();
  a3(v5);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A36CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1D8B16D20();
  a4(v6);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A36D28()
{
  v1 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v57 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v55);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ProcessorState(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v54 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v54 - v14;
  v56 = type metadata accessor for DetectionRequest(0);
  v16 = MEMORY[0x1EEE9AC00](v56);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v54 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v54 - v22;
  v24 = v0;
  sub_1D8A50DC0(v0, v15, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = v15;
      v27 = v4;
      sub_1D8A512F0(v26, v4, type metadata accessor for DetectionResult);
      sub_1D8A50DC0(v4, v23, type metadata accessor for DetectionRequest);
      sub_1D8A50E28(v4, type metadata accessor for DetectionResult);
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
  }

  sub_1D8A512F0(v15, v23, type metadata accessor for DetectionRequest);
  v27 = v4;
LABEL_6:
  v28 = *v23;
  sub_1D8A50E28(v23, type metadata accessor for DetectionRequest);
  v29 = v24;
  sub_1D8A50DC0(v24, v13, type metadata accessor for ProcessorState);
  v30 = swift_getEnumCaseMultiPayload();
  if (v30)
  {
    if (v30 == 1)
    {
      sub_1D8A512F0(v13, v27, type metadata accessor for DetectionResult);
      sub_1D8A50DC0(v27, v21, type metadata accessor for DetectionRequest);
      sub_1D8A50E28(v27, type metadata accessor for DetectionResult);
      goto LABEL_11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
  }

  sub_1D8A512F0(v13, v21, type metadata accessor for DetectionRequest);
LABEL_11:
  v31 = v56;
  sub_1D8A50E28(v21, type metadata accessor for DetectionRequest);
  sub_1D8A50DC0(v24, v10, type metadata accessor for ProcessorState);
  v32 = swift_getEnumCaseMultiPayload();
  v33 = v28;
  if (v32)
  {
    if (v32 == 1)
    {
      sub_1D8A512F0(v10, v27, type metadata accessor for DetectionResult);
      sub_1D8A50DC0(v27, v18, type metadata accessor for DetectionRequest);
      sub_1D8A50E28(v27, type metadata accessor for DetectionResult);
      goto LABEL_16;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
  }

  sub_1D8A512F0(v10, v18, type metadata accessor for DetectionRequest);
LABEL_16:
  v34 = v57;
  sub_1D8A50DC0(&v18[*(v31 + 20)], v57, type metadata accessor for DetectionRequest.Originator);
  sub_1D8A50E28(v18, type metadata accessor for DetectionRequest);
  v35 = DetectionRequest.Originator.description.getter();
  v37 = v36;
  sub_1D8A50E28(v34, type metadata accessor for DetectionRequest.Originator);
  v38 = v58;
  sub_1D8A50DC0(v29, v58, type metadata accessor for ProcessorState);
  v39 = swift_getEnumCaseMultiPayload();
  if (!v39)
  {
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_1D8B16720();
    MEMORY[0x1DA71EFA0](0xD000000000000027, 0x80000001D8B47F40);
    LOBYTE(v59) = v33;
    v47 = CVDetection.DetectionType.description.getter();
    MEMORY[0x1DA71EFA0](v47);

    MEMORY[0x1DA71EFA0](0x7473656D6974202CLL, 0xED0000203A706D61);
    sub_1D8B16020();
    MEMORY[0x1DA71EFA0](0x6E696769726F202CLL, 0xEE00203A726F7461);
    MEMORY[0x1DA71EFA0](v35, v37);

    MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
    v44 = v60;
    v48 = type metadata accessor for ProcessorState;
LABEL_21:
    v45 = v48;
    v46 = v38;
    goto LABEL_22;
  }

  if (v39 != 1)
  {
    v49 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0) + 48));
    v51 = *v49;
    v50 = v49[1];
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_1D8B16720();
    MEMORY[0x1DA71EFA0](0xD000000000000026, 0x80000001D8B47EE0);
    LOBYTE(v59) = v33;
    v52 = CVDetection.DetectionType.description.getter();
    MEMORY[0x1DA71EFA0](v52);

    MEMORY[0x1DA71EFA0](0x7473656D6974202CLL, 0xED0000203A706D61);
    sub_1D8B16020();
    MEMORY[0x1DA71EFA0](0x6E696769726F202CLL, 0xEE00203A726F7461);
    MEMORY[0x1DA71EFA0](v35, v37);

    MEMORY[0x1DA71EFA0](0x6E6F73616572202CLL, 0xEA0000000000203ALL);
    MEMORY[0x1DA71EFA0](v51, v50);

    MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
    v44 = v60;
    v48 = type metadata accessor for DetectionRequest;
    goto LABEL_21;
  }

  sub_1D8A512F0(v38, v27, type metadata accessor for DetectionResult);
  v40 = v27;
  v41 = *(*(v27 + *(v55 + 20)) + 16);
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0xD000000000000028, 0x80000001D8B47F10);
  LOBYTE(v59) = v33;
  v42 = CVDetection.DetectionType.description.getter();
  MEMORY[0x1DA71EFA0](v42);

  MEMORY[0x1DA71EFA0](0x7473656D6974202CLL, 0xED0000203A706D61);
  sub_1D8B16020();
  MEMORY[0x1DA71EFA0](0x6E696769726F202CLL, 0xEE00203A726F7461);
  MEMORY[0x1DA71EFA0](v35, v37);

  MEMORY[0x1DA71EFA0](0x746C75736572202CLL, 0xEB00000000203A73);
  v59 = v41;
  v43 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v43);

  MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  v44 = v60;
  v45 = type metadata accessor for DetectionResult;
  v46 = v40;
LABEL_22:
  sub_1D8A50E28(v46, v45);
  return v44;
}

BOOL sub_1D8A376B4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (!sub_1D88E29C4(*a1, *a2))
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return _s22VisualIntelligenceCore16DetectionRequestV2eeoiySbAC_ACtFZ_0(a1 + v6, a2 + v6);
}

uint64_t sub_1D8A37724()
{
  sub_1D8B16D20();
  sub_1D87CFE70(v2, *v0);
  DetectionRequest.hash(into:)(v2);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A377C0(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D87CFE70(v3, *v1);
  DetectionRequest.hash(into:)(v3);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A37814(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D8A37850()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D8B16D20();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1DA720210](v3);
  }

  else
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16D60();
  }

  return sub_1D8B16D80();
}

void sub_1D8A378CC()
{
  if (*(v0 + 4) == 1)
  {
    if (*v0)
    {
      v1 = 2;
    }

    else
    {
      v1 = 0;
    }

    MEMORY[0x1DA720210](v1);
  }

  else
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16D60();
  }
}

uint64_t sub_1D8A37928(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  sub_1D8B16D20();
  if (v3 == 1)
  {
    if (v2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1DA720210](v4);
  }

  else
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16D60();
  }

  return sub_1D8B16D80();
}

BOOL sub_1D8A379A0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return !v2;
  }

  if (*a1 == 1)
  {
    return v2 == 1;
  }

  if (v2 < 2)
  {
    return 0;
  }

  type metadata accessor for CGColor(0);
  sub_1D8A4F044(&unk_1EE0E3800, 255, type metadata accessor for CGColor, &unk_1D8B19DC0);
  return sub_1D8B13D60() & 1;
}

uint64_t sub_1D8A37A60(uint64_t a1, uint64_t a2)
{
  sub_1D8B16D20();
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

uint64_t sub_1D8A37AC4(uint64_t a1)
{
  if (!*v1)
  {
    v2 = 0;
    return MEMORY[0x1DA720210](v2);
  }

  if (*v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x1DA720210](v2);
  }

  MEMORY[0x1DA720210](2);
  type metadata accessor for CGColor(0);
  sub_1D8A4F044(&unk_1EE0E3800, 255, type metadata accessor for CGColor, &unk_1D8B19DC0);
  return sub_1D8B13D70();
}

BOOL sub_1D8A37B78(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1D8A4D3A8(&v5, &v7);
}

uint64_t sub_1D8A37BC4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1D8B16D20();
  if (!v6)
  {
    MEMORY[0x1DA720210](0);
    MEMORY[0x1DA720210](*&v1);
    v7 = *&v2;
LABEL_6:
    MEMORY[0x1DA720210](v7);
    return sub_1D8B16D80();
  }

  if (v6 != 1)
  {
    v7 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1DA720210](1);
  MEMORY[0x1DA720210](*&v1);
  sub_1D88911A0(v2, v3, v4, v5);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A37C98()
{
  v1 = *v0;
  v2 = v0[1];
  if (!*(v0 + 40))
  {
    MEMORY[0x1DA720210](0);
    MEMORY[0x1DA720210](*&v1);
    v7 = *&v2;
    return MEMORY[0x1DA720210](v7);
  }

  if (*(v0 + 40) != 1)
  {
    v7 = 2;
    return MEMORY[0x1DA720210](v7);
  }

  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  MEMORY[0x1DA720210](1);
  MEMORY[0x1DA720210](*&v1);

  return sub_1D88911A0(v2, v5, v4, v3);
}

uint64_t sub_1D8A37D60(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = *(v1 + 40);
  sub_1D8B16D20();
  if (!v7)
  {
    MEMORY[0x1DA720210](0);
    MEMORY[0x1DA720210](*&v2);
    v8 = *&v3;
LABEL_6:
    MEMORY[0x1DA720210](v8);
    return sub_1D8B16D80();
  }

  if (v7 != 1)
  {
    v8 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1DA720210](1);
  MEMORY[0x1DA720210](*&v2);
  sub_1D88911A0(v3, v4, v5, v6);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A37E30(uint64_t a1)
{
  if (*(v1 + 4))
  {
    MEMORY[0x1DA720210](0);
  }

  else
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16D60();
  }

  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  if (*(v1 + 48))
  {
    if (*(v1 + 48) == 1)
    {
      v5 = *(v1 + 32);
      v4 = *(v1 + 40);
      v6 = *(v1 + 24);
      MEMORY[0x1DA720210](1);
      MEMORY[0x1DA720210](v2);
      sub_1D88911A0(v3, v6, v5, v4);
      goto LABEL_10;
    }

    v7 = 2;
  }

  else
  {
    MEMORY[0x1DA720210](0);
    MEMORY[0x1DA720210](v2);
    v7 = *&v3;
  }

  MEMORY[0x1DA720210](v7);
LABEL_10:
  if (*(v1 + 56))
  {
    if (*(v1 + 52))
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1DA720210](v8);
  }

  else
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16D60();
  }

  v9 = *(v1 + 64);
  if (v9 == 1)
  {
    v10 = 1;
    return MEMORY[0x1DA720210](v10);
  }

  if (!v9)
  {
    v10 = 0;
    return MEMORY[0x1DA720210](v10);
  }

  MEMORY[0x1DA720210](2);
  type metadata accessor for CGColor(0);
  sub_1D8A4F044(&unk_1EE0E3800, 255, type metadata accessor for CGColor, &unk_1D8B19DC0);
  return sub_1D8B13D70();
}

BOOL sub_1D8A37FB8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) == 1)
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1D8A37FF4()
{
  v1 = *(v0 + 4);
  sub_1D8B16D20();
  if (v1 == 1)
  {
    MEMORY[0x1DA720210](0);
  }

  else
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16D60();
  }

  return sub_1D8B16D80();
}

double sub_1D8A38064()
{
  if (*(v0 + 4) == 1)
  {
    MEMORY[0x1DA720210](0);
  }

  else
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16D60();
  }

  return result;
}

uint64_t sub_1D8A380B4(uint64_t a1)
{
  v2 = *(v1 + 4);
  sub_1D8B16D20();
  if (v2 == 1)
  {
    MEMORY[0x1DA720210](0);
  }

  else
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B16D60();
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D8A38120()
{
  sub_1D8B16D20();
  sub_1D8A37E30(v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A38164(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8A37E30(v2);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A381A0(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 6);
  v19 = *(a1 + 2);
  v20[0] = v4;
  *(v20 + 9) = *(a1 + 33);
  v5 = a1[13];
  v6 = *(a1 + 56);
  v7 = *(a1 + 8);
  v8 = *a2;
  v9 = *(a2 + 4);
  v10 = *(a2 + 6);
  v21 = *(a2 + 2);
  v22[0] = v10;
  *(v22 + 9) = *(a2 + 33);
  v11 = a2[13];
  v12 = *(a2 + 56);
  v13 = *(a2 + 8);
  if (v3 == 1)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v8)
    {
      v14 = v9;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (sub_1D8A4D3A8(&v19, &v21))
  {
    if (v6)
    {
      if (v5)
      {
        if (v11)
        {
          v15 = v12;
        }

        else
        {
          v15 = 0;
        }

        if (v15 != 1)
        {
          return 0;
        }
      }

      else
      {
        if (v11)
        {
          v17 = 0;
        }

        else
        {
          v17 = v12;
        }

        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v5 == v11)
      {
        v16 = v12;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        return 0;
      }
    }

    if (v7)
    {
      if (v7 == 1)
      {
        if (v13 != 1)
        {
          return 0;
        }
      }

      else
      {
        if (v13 < 2)
        {
          return 0;
        }

        type metadata accessor for CGColor(0);
        sub_1D8A4F044(&unk_1EE0E3800, 255, type metadata accessor for CGColor, &unk_1D8B19DC0);
        if ((sub_1D8B13D60() & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    if (!v13)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_1D8A38318(uint64_t a1, uint64_t a2)
{
  sub_1D88C5438(a1, v27);
  sub_1D88C5438(a2, v28);
  sub_1D88C5438(v27, &v29);
  v3 = v29;
  LODWORD(a2) = v30;
  v18 = v31;
  v19 = v32;
  v4 = v33;
  v5 = v34;
  v6 = v35;
  v7 = v36;
  v8 = v37;
  sub_1D88C5438(v28, &v38);
  v9 = v39;
  v10 = v44;
  v11 = v45;
  if (a2 == 1)
  {
    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v3 != v38)
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v12 = v46;
  v21[0] = v18;
  v21[1] = v19;
  v22 = v4;
  v23 = v5;
  v24[0] = v40;
  v24[1] = v41;
  v25 = v42;
  v26 = v43;
  sub_1D88C5530(v27, v20);
  sub_1D88C5530(v28, v20);
  if (!sub_1D8A4D3A8(v21, v24))
  {
    goto LABEL_31;
  }

  if (v7)
  {
    if (v6)
    {
      if (v10)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0;
      }

      if (v13 != 1)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v10)
      {
        v15 = 0;
      }

      else
      {
        v15 = v11;
      }

      if ((v15 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (v6 == v10)
    {
      v14 = v11;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_31;
    }
  }

  if (!v8)
  {
    sub_1D88C558C(v27);
    sub_1D88C558C(v28);
    return !v12;
  }

  if (v8 == 1)
  {
    sub_1D88C558C(v27);
    sub_1D88C558C(v28);
    return v12 == 1;
  }

  if (v12 < 2)
  {
LABEL_31:
    sub_1D88C558C(v28);
    sub_1D88C558C(v27);
    return 0;
  }

  type metadata accessor for CGColor(0);
  sub_1D8A4F044(&unk_1EE0E3800, 255, type metadata accessor for CGColor, &unk_1D8B19DC0);
  v17 = sub_1D8B13D60();
  sub_1D88C558C(v28);
  sub_1D88C558C(v27);
  return (v17 & 1) != 0;
}

uint64_t sub_1D8A38554()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 48);
  v5 = v0[13];
  v6 = *(v0 + 56);
  v7 = *(v0 + 8);
  sub_1D8B16D20();
  v21 = v2;
  v20 = v6;
  v11 = v1;
  v12 = v2;
  v8 = *(v0 + 2);
  v14 = *(v0 + 6);
  v13 = v8;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  MEMORY[0x1DA720210](0);
  sub_1D8A37E30(v10);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A3869C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 5);
  v5 = *(v1 + 48);
  v6 = v1[13];
  v7 = *(v1 + 56);
  v8 = *(v1 + 8);
  sub_1D8B16D20();
  v22 = v3;
  v21 = v7;
  v12 = v2;
  v13 = v3;
  v9 = *(v1 + 2);
  v15 = *(v1 + 6);
  v14 = v9;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  MEMORY[0x1DA720210](0);
  sub_1D8A37E30(v11);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A38750()
{
  MEMORY[0x1DA71EFA0](0x203A616E69746552, 0xE800000000000000);
  sub_1D8B168A0();
  return 0;
}

uint64_t sub_1D8A38854(uint64_t a1)
{
  v2 = sub_1D8A51DA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A38890(uint64_t a1)
{
  v2 = sub_1D8A51DA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A388CC()
{
  if (*v0)
  {
    return 0x646E616D65446E6FLL;
  }

  else
  {
    return 0x65636E65646163;
  }
}

uint64_t sub_1D8A38934@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8A57368(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8A3895C(uint64_t a1)
{
  v2 = sub_1D8A51CA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A38998(uint64_t a1)
{
  v2 = sub_1D8A51CA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D8A389D4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x636E657571657266 && a2 == 0xEB000000007A4879)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D8A38A60(uint64_t a1)
{
  v2 = sub_1D8A51CFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A38A9C(uint64_t a1)
{
  v2 = sub_1D8A51CFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A38AD8(uint64_t a1)
{
  v2 = sub_1D8A51D50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A38B14(uint64_t a1)
{
  v2 = sub_1D8A51D50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CVCoordinationRegime.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67898, &qword_1D8B33C70);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA678A0, &qword_1D8B33C78);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v23 = &v21 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA678A8, &qword_1D8B33C80);
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA678B0, &qword_1D8B33C88);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v15 = *(v2 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A51CA8();
  sub_1D8B16DD0();
  if (!v15)
  {
    v29 = 0;
    sub_1D8A51DA4();
    sub_1D8B16A40();
    v18 = v22;
    sub_1D8B16AC0();
    (*(v21 + 8))(v10, v18);
    return (*(v12 + 8))(v14, v11);
  }

  if (v15 == 1)
  {
    v31 = 2;
    sub_1D8A51CFC();
    v16 = v26;
    sub_1D8B16A40();
    v17 = v28;
    sub_1D8B16AC0();
    (*(v27 + 8))(v16, v17);
    return (*(v12 + 8))(v14, v11);
  }

  v30 = 1;
  sub_1D8A51D50();
  v20 = v23;
  sub_1D8B16A40();
  (*(v24 + 8))(v20, v25);
  return (*(v12 + 8))(v14, v11);
}

void CVCoordinationRegime.hash(into:)()
{
  if (!*(v0 + 4))
  {
    v1 = 0;
    goto LABEL_5;
  }

  if (*(v0 + 4) == 1)
  {
    v1 = 2;
LABEL_5:
    MEMORY[0x1DA720210](v1);
    sub_1D8B16D60();
    return;
  }

  MEMORY[0x1DA720210](1);
}

uint64_t CVCoordinationRegime.hashValue.getter()
{
  sub_1D8B16D20();
  CVCoordinationRegime.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t CVCoordinationRegime.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA678D8, &qword_1D8B33C90);
  v44 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v45 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA678E0, &qword_1D8B33C98);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA678E8, &qword_1D8B33CA0);
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA678F0, &qword_1D8B33CA8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - v13;
  v15 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D8A51CA8();
  v16 = v47;
  sub_1D8B16DB0();
  if (!v16)
  {
    v39 = 0;
    v47 = v12;
    v17 = v45;
    v18 = v46;
    v19 = sub_1D8B16A20();
    v20 = (2 * *(v19 + 16)) | 1;
    v50 = v19;
    v51 = v19 + 32;
    v52 = 0;
    v53 = v20;
    v21 = sub_1D881F7C4();
    if (v21 != 3 && v52 == v53 >> 1)
    {
      if (v21)
      {
        if (v21 == 1)
        {
          v49 = 1;
          sub_1D8A51D50();
          v22 = v14;
          v23 = v39;
          sub_1D8B16950();
          if (!v23)
          {
            (*(v43 + 8))(v7, v42);
            (*(v47 + 8))(v14, v11);
            swift_unknownObjectRelease();
            v24 = 2;
            v25 = 0;
LABEL_18:
            *v18 = v25;
            *(v18 + 4) = v24;
            return __swift_destroy_boxed_opaque_existential_1(v48);
          }

          goto LABEL_9;
        }

        v49 = 2;
        sub_1D8A51CFC();
        v31 = v14;
        v34 = v39;
        sub_1D8B16950();
        if (!v34)
        {
          v35 = v40;
          sub_1D8B169F0();
          v36 = v47;
          v25 = v37;
          (*(v44 + 8))(v17, v35);
          (*(v36 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v24 = 1;
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_1D8A51DA4();
        v30 = v10;
        v31 = v14;
        v32 = v39;
        sub_1D8B16950();
        if (!v32)
        {
          sub_1D8B169F0();
          v25 = v33;
          (*(v41 + 8))(v30, v8);
          (*(v47 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v24 = 0;
          goto LABEL_18;
        }
      }

      (*(v47 + 8))(v31, v11);
      goto LABEL_10;
    }

    v26 = sub_1D8B16770();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
    *v28 = &type metadata for CVCoordinationRegime;
    v22 = v14;
    sub_1D8B16960();
    sub_1D8B16760();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
LABEL_9:
    (*(v47 + 8))(v22, v11);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v48);
}

BOOL sub_1D8A3961C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a1 + 4) == 1)
    {
      return v4 == 1 && v2 == v3;
    }

    return v4 == 2 && LODWORD(v3) == 0;
  }

  else
  {
    return !*(a2 + 4) && v2 == v3;
  }
}

uint64_t sub_1D8A3968C()
{
  sub_1D8B16D20();
  CVCoordinationRegime.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D8A396E4(uint64_t a1)
{
  sub_1D8B16D20();
  CVCoordinationRegime.hash(into:)();
  return sub_1D8B16D80();
}

VisualIntelligenceCore::CVCoordinator::Configuration __swiftcall CVCoordinator.Configuration.Preset.configuration(objectDetectionThresholdOverride:)(Swift::Float_optional *objectDetectionThresholdOverride)
{
  v3 = v1;
  v4 = *v2;
  v5 = sub_1D8A397D0();
  if (v4)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  *v3 = v5;
  *(v3 + 8) = v4 == 0;
  if (v4 == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  *(v3 + 16) = v10;
  *(v3 + 24) = v9;
  result.multiBufferingDepth = v7;
  result.detectionRegimes._rawValue = v5;
  result.groundingNmsPolicy = v8;
  result.crystalEraModels = v6;
  return result;
}

unint64_t *sub_1D8A397D0()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      v7 = sub_1D893DF5C(&unk_1F5426928);
      v8 = sub_1D8A4C49C(v7);

      return v8;
    }

    v1 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v1 = &unk_1F5426928;
    if (!*v0)
    {
      v2 = sub_1D893DF5C(&unk_1F5426928);
      v3 = sub_1D8B06A6C(v2);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D8B052EC(1084227584, 4, isUniquelyReferenced_nonNull_native);
      v5 = swift_isUniquelyReferenced_nonNull_native();
      sub_1D8B052EC(0x40000000, 3, v5);
      return v3;
    }
  }

  return sub_1D893DF5C(v1);
}

unint64_t CVCoordinator.Configuration.Preset.description.getter()
{
  v1 = 0x73206172656D6143;
  if (*v0 != 2)
  {
    v1 = 0x6C6C412070696B53;
  }

  v2 = 0x206C617473797243;
  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D8A39980(uint64_t a1)
{
  v2 = sub_1D8A51EA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A399BC(uint64_t a1)
{
  v2 = sub_1D8A51EA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D8A399F8()
{
  v1 = 0x5379726F74636166;
  v2 = 0x65536172656D6163;
  if (*v0 != 2)
  {
    v2 = 0x6C6C4170696B73;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_1D8A39A90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8A57488(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8A39AB8(uint64_t a1)
{
  v2 = sub_1D8A51DF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A39AF4(uint64_t a1)
{
  v2 = sub_1D8A51DF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A39B30(uint64_t a1)
{
  v2 = sub_1D8A51F48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A39B6C(uint64_t a1)
{
  v2 = sub_1D8A51F48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A39BA8(uint64_t a1)
{
  v2 = sub_1D8A51EF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A39BE4(uint64_t a1)
{
  v2 = sub_1D8A51EF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A39C20(uint64_t a1)
{
  v2 = sub_1D8A51E4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A39C5C(uint64_t a1)
{
  v2 = sub_1D8A51E4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CVCoordinator.Configuration.Preset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA678F8, &qword_1D8B33CB0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67900, &qword_1D8B33CB8);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67908, &qword_1D8B33CC0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67910, &qword_1D8B33CC8);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67918, &qword_1D8B33CD0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A51DF8();
  sub_1D8B16DD0();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1D8A51EA0();
      v18 = v27;
      sub_1D8B16A40();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1D8A51E4C();
      v18 = v30;
      sub_1D8B16A40();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1D8A51EF4();
    v18 = v24;
    sub_1D8B16A40();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1D8A51F48();
  sub_1D8B16A40();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t CVCoordinator.Configuration.Preset.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67948, &qword_1D8B33CD8);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67950, &qword_1D8B33CE0);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67958, &qword_1D8B33CE8);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67960, &qword_1D8B33CF0);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67968, qword_1D8B33CF8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8A51DF8();
  v15 = v46;
  sub_1D8B16DB0();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1D8B16A20();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1D881F7BC();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1D8B16770();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
      *v28 = &type metadata for CVCoordinator.Configuration.Preset;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1D8A51EF4();
        v32 = v35;
        sub_1D8B16950();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1D8A51F48();
        v25 = v35;
        sub_1D8B16950();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1D8A51EA0();
      v31 = v35;
      sub_1D8B16950();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1D8A51E4C();
      v33 = v35;
      sub_1D8B16950();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

unint64_t sub_1D8A3A7A8()
{
  v1 = 0x73206172656D6143;
  if (*v0 != 2)
  {
    v1 = 0x6C6C412070696B53;
  }

  v2 = 0x206C617473797243;
  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

void static CVCoordinator.Configuration.cameraSettings.getter(uint64_t a1@<X8>)
{
  v2 = sub_1D893DF5C(&unk_1F5426928);
  v3 = sub_1D8A4C49C(v2);

  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 24) = 3;
}

uint64_t sub_1D8A3A8A8()
{
  v1 = *(v0 + 72);
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  if (v1)
  {
    v2 = v1;
    sub_1D8B16720();
    v5 = 0;
    v6 = 0xE000000000000000;
    MEMORY[0x1DA71EFA0](0x20656761726F7453, 0xEC00000020726F66);
    sub_1D88C5438(v0, v7);
    sub_1D88C5438(v7, v4);
    sub_1D8B168A0();
    MEMORY[0x1DA71EFA0](8250, 0xE200000000000000);
    v4[0] = v2;
    sub_1D8B168A0();
  }

  else
  {
    sub_1D8B16720();
    v5 = 0;
    v6 = 0xE000000000000000;
    MEMORY[0x1DA71EFA0](0x20656761726F7453, 0xEC00000020726F66);
    sub_1D88C5438(v0, v7);
    sub_1D88C5438(v7, v4);
    sub_1D8B168A0();
    MEMORY[0x1DA71EFA0](0x6162206F6E3C203ALL, 0xEE003E676E696B63);
  }

  return v5;
}

BOOL sub_1D8A3AA48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1D8A4D088(v7, v9);
}

uint64_t sub_1D8A3AAB4(uint64_t a1, uint64_t a2)
{
  sub_1D8B16D20();
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

double sub_1D8A3AB30(uint64_t a1)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  MEMORY[0x1DA720210](0);
  sub_1D8A37E30(a1);
  if (v3)
  {
    sub_1D8B16D40();
    type metadata accessor for CVBuffer(0);
    sub_1D8A4F044(&unk_1EE0E37A0, 255, type metadata accessor for CVBuffer, &unk_1D8B19C48);
    sub_1D8B13D70();
    if (v4)
    {
LABEL_3:
      sub_1D8B16D40();
      type metadata accessor for CVBuffer(0);
      sub_1D8A4F044(&unk_1EE0E37A0, 255, type metadata accessor for CVBuffer, &unk_1D8B19C48);
      sub_1D8B13D70();
      return result;
    }
  }

  else
  {
    sub_1D8B16D40();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_1D8B16D40();
  return result;
}

uint64_t sub_1D8A3ACBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8B16D20();
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

void sub_1D8A3AD80(double a1, double a2)
{
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
  }
}

uint64_t CVDebugArtifact.Payload.description.getter()
{
  sub_1D89791F0(v0, &v7);
  if (v11 <= 1u)
  {
    if (!v11)
    {
      sub_1D897924C(&v7);
      return 0x7562206C65786970;
    }

    v4 = v9;
    v5 = v10;
    sub_1D87A1598(v7, v8);
    sub_1D8B16720();

    v6 = 0xD000000000000012;
    MEMORY[0x1DA71EFA0](v4, v5);

    MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
    return v6;
  }

  if (v11 == 2)
  {
    v2 = v9;
    v3 = v10;
    sub_1D87A1598(v7, v8);
    v6 = 0x207972616E6962;
    MEMORY[0x1DA71EFA0](v2, v3);

    return v6;
  }

  sub_1D897924C(&v7);
  return 1852797802;
}

uint64_t CVDebugArtifact.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CVDebugArtifact.description.getter()
{
  v3 = *v0;

  MEMORY[0x1DA71EFA0](40, 0xE100000000000000);
  v1 = CVDebugArtifact.Payload.description.getter();
  MEMORY[0x1DA71EFA0](v1);

  MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  return v3;
}

uint64_t sub_1D8A3B01C()
{
  v3 = *v0;

  MEMORY[0x1DA71EFA0](40, 0xE100000000000000);
  v1 = CVDebugArtifact.Payload.description.getter();
  MEMORY[0x1DA71EFA0](v1);

  MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  return v3;
}

uint64_t CVDebugImageAnnotation.text.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t CVDebugImageAnnotation.baseArtifactIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void *sub_1D8A3B140()
{
  type metadata accessor for CVDebugArtifactManager();
  v0 = swift_allocObject();
  result = sub_1D8A3CF24();
  qword_1ECA675B0 = v0;
  return result;
}

double static CVDebugArtifactManager.shared.getter()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1D8A3B1F4(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  sub_1D88C4BD0(a1, v25);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + 112);
  *(v4 + 112) = 0x8000000000000000;
  v10 = sub_1D87EF838(a2, a3);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  if (v8[3] >= v13)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + 112) = v8;
      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1D8967208();
      *(v4 + 112) = v8;
      if (v14)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_1D8979B3C();

    goto LABEL_9;
  }

  sub_1D896D524(v13, isUniquelyReferenced_nonNull_native);
  v15 = sub_1D87EF838(a2, a3);
  if ((v14 & 1) != (v16 & 1))
  {
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

  v10 = v15;
  *(v4 + 112) = v8;
  if ((v14 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  a2 = v8[7];
  a3 = *(a2 + 8 * v10);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8 * v10) = a3;
  if ((v17 & 1) == 0)
  {
LABEL_14:
    a3 = sub_1D87C7B24(0, *(a3 + 2) + 1, 1, a3);
    *(a2 + 8 * v10) = a3;
  }

  v19 = *(a3 + 2);
  v18 = *(a3 + 3);
  if (v19 >= v18 >> 1)
  {
    a3 = sub_1D87C7B24((v18 > 1), v19 + 1, 1, a3);
    *(a2 + 8 * v10) = a3;
  }

  *(a3 + 2) = v19 + 1;
  v20 = &a3[72 * v19];
  *(v20 + 2) = v25[0];
  v21 = v25[1];
  v22 = v25[2];
  v23 = v25[3];
  v20[96] = v26;
  *(v20 + 4) = v22;
  *(v20 + 5) = v23;
  *(v20 + 3) = v21;
  return swift_endAccess();
}

double sub_1D8A3B3E8()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1D8A3B420(__int128 *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v7 = a1[2];
  v8 = a1[4];
  v33 = a1[3];
  v34[0] = v8;
  *(v34 + 9) = *(a1 + 73);
  v9 = a1[1];
  v30 = *a1;
  v31 = v9;
  v32 = v7;
  swift_beginAccess();
  sub_1D88E0F34(&v30, &v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + 120);
  v29 = v11;
  *(v4 + 120) = 0x8000000000000000;
  v13 = sub_1D87EF838(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  if (v11[3] >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + 120) = v11;
      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1D8969DE0();
      v11 = v29;
      *(v4 + 120) = v29;
      if (v17)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_1D8979B3C();

    goto LABEL_9;
  }

  sub_1D8972D0C(v16, isUniquelyReferenced_nonNull_native);
  v11 = v29;
  v18 = sub_1D87EF838(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

  v13 = v18;
  *(v4 + 120) = v11;
  if ((v17 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  a2 = v11[7];
  a3 = *(a2 + 8 * v13);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8 * v13) = a3;
  if ((v20 & 1) == 0)
  {
LABEL_14:
    a3 = sub_1D87C8AEC(0, *(a3 + 2) + 1, 1, a3);
    *(a2 + 8 * v13) = a3;
  }

  v22 = *(a3 + 2);
  v21 = *(a3 + 3);
  if (v22 >= v21 >> 1)
  {
    a3 = sub_1D87C8AEC((v21 > 1), v22 + 1, 1, a3);
    *(a2 + 8 * v13) = a3;
  }

  *(a3 + 2) = v22 + 1;
  v23 = &a3[96 * v22];
  v24 = v31;
  *(v23 + 2) = v30;
  *(v23 + 3) = v24;
  v25 = v32;
  v26 = v33;
  v27 = v34[0];
  *(v23 + 105) = *(v34 + 9);
  *(v23 + 5) = v26;
  *(v23 + 6) = v27;
  *(v23 + 4) = v25;
  return swift_endAccess();
}

double sub_1D8A3B644()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1D8A3B67C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 128);
  v21 = v8;
  *(v4 + 128) = 0x8000000000000000;
  v9 = sub_1D87EF838(a1, a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v10;
  if (v8[3] < v14)
  {
    sub_1D8972FC4(v14, isUniquelyReferenced_nonNull_native);
    v9 = sub_1D87EF838(a1, a2);
    if ((v3 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    v9 = sub_1D8B16C30();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *(v4 + 128) = v8;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_7:
  v4 = v9;
  sub_1D89787EC(v9, a1, a2, 0, v8);

  v9 = v4;
LABEL_8:
  while (1)
  {
    v16 = v8[7];
    v17 = *(v16 + 8 * v9);
    v13 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (!v13)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v20 = v9;
    sub_1D8969F5C();
    v9 = v20;
    v8 = v21;
    *(v4 + 128) = v21;
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v16 + 8 * v9) = v18;
  return swift_endAccess();
}

uint64_t sub_1D8A3B7D0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 136);
  v21 = v8;
  *(v4 + 136) = 0x8000000000000000;
  v9 = sub_1D87EF838(a1, a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v10;
  if (v8[3] < v14)
  {
    sub_1D8972FC4(v14, isUniquelyReferenced_nonNull_native);
    v9 = sub_1D87EF838(a1, a2);
    if ((v3 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    v9 = sub_1D8B16C30();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  *(v4 + 136) = v8;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_7:
  v4 = v9;
  sub_1D89787EC(v9, a1, a2, 0, v8);

  v9 = v4;
LABEL_8:
  while (1)
  {
    v16 = v8[7];
    v17 = *(v16 + 8 * v9);
    v13 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (!v13)
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    v20 = v9;
    sub_1D8969F5C();
    v9 = v20;
    v8 = v21;
    *(v4 + 136) = v21;
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v16 + 8 * v9) = v18;
  return swift_endAccess();
}

uint64_t sub_1D8A3B924()
{
  v2 = v0;
  v3 = type metadata accessor for BundleClassification.ClassificationType(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  BundleClassification.ClassificationType.asEmpty.getter((&v23 - v7));
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 144);
  v23 = v10;
  *(v2 + 144) = 0x8000000000000000;
  v12 = sub_1D87EF6AC(v8);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_12;
  }

  v1 = v11;
  if (v10[3] >= v15)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_13;
    }

    *(v2 + 144) = v10;
    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1D8973264(v15, isUniquelyReferenced_nonNull_native);
    v10 = v23;
    v16 = sub_1D87EF6AC(v8);
    if ((v1 & 1) != (v17 & 1))
    {
      result = sub_1D8B16C30();
      __break(1u);
      return result;
    }

    v12 = v16;
    *(v2 + 144) = v10;
    if ((v1 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  while (1)
  {
    v18 = v10[7];
    v19 = *(v18 + 8 * v12);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (!v20)
    {
      break;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    sub_1D896A0C4();
    v10 = v23;
    *(v2 + 144) = v23;
    if ((v1 & 1) == 0)
    {
LABEL_8:
      sub_1D8A50DC0(v8, v6, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D8978834(v12, v6, 0, v10);
    }
  }

  *(v18 + 8 * v12) = v21;
  sub_1D8A50E28(v8, type metadata accessor for BundleClassification.ClassificationType);
  return swift_endAccess();
}

void sub_1D8A3BB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = type metadata accessor for BundleClassification.ClassificationType(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  BundleClassification.ClassificationType.asEmpty.getter((&v23 - v12));
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v3 + 152);
  v24 = v15;
  *(v5 + 152) = 0x8000000000000000;
  v17 = sub_1D87EF6AC(v13);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v16;
  if (v15[3] >= v20)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v5 + 152) = v15;
      if (v16)
      {
LABEL_9:

        sub_1D87F88E8(&v24, a2, a3);
        sub_1D8A50E28(v13, type metadata accessor for BundleClassification.ClassificationType);
        swift_endAccess();

        return;
      }

LABEL_8:
      sub_1D8A50DC0(v13, v11, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D89788E8(v17, v11, MEMORY[0x1E69E7CD0], v15);
      goto LABEL_9;
    }

LABEL_11:
    sub_1D896A2FC();
    v15 = v24;
    *(v5 + 152) = v24;
    if (v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_1D89735DC(v20, isUniquelyReferenced_nonNull_native);
  v15 = v24;
  v21 = sub_1D87EF6AC(v13);
  if ((v4 & 1) == (v22 & 1))
  {
    v17 = v21;
    *(v5 + 152) = v15;
    if (v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_1D8B16C30();
  __break(1u);
}

uint64_t sub_1D8A3BD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64988, &qword_1D8B25EC8);
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A3BE04, a5, 0);
}

uint64_t sub_1D8A3BE04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E40, &unk_1D8B25C80);
  sub_1D8B15F10();
  v2 = sub_1D8A4F044(&qword_1ECA64A00, v1, type metadata accessor for CVDebugArtifactManager, &protocol conformance descriptor for CVDebugArtifactManager);
  v0[35] = v2;
  v3 = v0[31];
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_1D8A3BF18;
  v5 = v0[32];

  return MEMORY[0x1EEE6D9C8](v0 + 14, v3, v2, v5);
}

uint64_t sub_1D8A3BF18()
{
  v1 = *(*v0 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1D8A3C028, v1, 0);
}

uint64_t sub_1D8A3C028()
{
  v1 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v1;
  v2 = *(v0 + 192);
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 96) = v2;
  v3 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v3;
  v4 = *(v0 + 16);
  if (v4)
  {
    v5 = *(v0 + 248);
    v6 = *(v5 + 160);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v5 + 168);
    *(v0 + 232) = v8;
    *(v5 + 168) = 0x8000000000000000;
    v9 = sub_1D87F05B0(v6);
    v13 = *(v8 + 16);
    v14 = (v10 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v5) = v10;
      if (*(v8 + 24) < v16)
      {
        sub_1D8975B04(v16, isUniquelyReferenced_nonNull_native);
        v9 = sub_1D87F05B0(v6);
        if ((v5 & 1) != (v10 & 1))
        {

          return sub_1D8B16C30();
        }

LABEL_12:
        v19 = *(v0 + 232);
        if (v5)
        {
LABEL_13:
          *(v19[7] + 8 * v9) = v4;

          goto LABEL_18;
        }

LABEL_16:
        v19[(v9 >> 6) + 8] |= 1 << v9;
        *(v19[6] + 8 * v9) = v6;
        *(v19[7] + 8 * v9) = v4;
        v21 = v19[2];
        v15 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v15)
        {
          __break(1u);
          return MEMORY[0x1EEE6D9C8](v9, v10, v11, v12);
        }

        v19[2] = v22;
LABEL_18:
        *(*(v0 + 248) + 168) = v19;
        swift_endAccess();
        sub_1D87A14E4(v0 + 16, &qword_1ECA67E50, &qword_1D8B25ED8);
        v23 = *(v0 + 280);
        v24 = *(v0 + 248);
        v25 = swift_task_alloc();
        *(v0 + 288) = v25;
        *v25 = v0;
        v25[1] = sub_1D8A3BF18;
        v12 = *(v0 + 256);
        v9 = v0 + 112;
        v10 = v24;
        v11 = v23;

        return MEMORY[0x1EEE6D9C8](v9, v10, v11, v12);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }
    }

    v20 = v9;
    sub_1D896BA08();
    v9 = v20;
    v19 = *(v0 + 232);
    if (v5)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D8A3C2D4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67970, &qword_1D8B2D318);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64070, &qword_1D8B23150);
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for ActionPin(0);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A3C404, v1, 0);
}

uint64_t sub_1D8A3C404()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  sub_1D87A0E38(v0[8], v3, &qword_1ECA64070, &qword_1D8B23150);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[10];
    sub_1D87A14E4(v0[11], &qword_1ECA64070, &qword_1D8B23150);
    v6 = *(v4 + 160);
    v7 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
    swift_beginAccess();
    sub_1D895F2BC(v5, v6);
    swift_endAccess();
  }

  else
  {
    v8 = v0[14];
    v9 = v0[10];
    sub_1D8A512F0(v0[11], v8, type metadata accessor for ActionPin);
    v10 = *(v4 + 160);
    sub_1D8A50DC0(v8, v9, type metadata accessor for ActionPin);
    v11 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
    swift_beginAccess();
    sub_1D895F2BC(v9, v10);
    swift_endAccess();
    sub_1D8A50E28(v8, type metadata accessor for ActionPin);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D8A3C65C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67970, &qword_1D8B2D318);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980, &qword_1D8B231C0);
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for CVBundle(0);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A3C78C, v1, 0);
}

uint64_t sub_1D8A3C78C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  sub_1D87A0E38(v0[8], v3, &qword_1ECA67980, &qword_1D8B231C0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[10];
    sub_1D87A14E4(v0[11], &qword_1ECA67980, &qword_1D8B231C0);
    v6 = *(v4 + 160);
    v7 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
    swift_beginAccess();
    sub_1D895F2BC(v5, v6);
    swift_endAccess();
  }

  else
  {
    v8 = v0[14];
    v9 = v0[10];
    sub_1D8A512F0(v0[11], v8, type metadata accessor for CVBundle);
    v10 = *(v4 + 160);
    sub_1D8A50DC0(v8, v9, type metadata accessor for CVBundle);
    v11 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
    swift_beginAccess();
    sub_1D895F2BC(v9, v10);
    swift_endAccess();
    sub_1D8A50E28(v8, type metadata accessor for CVBundle);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D8A3C9E4(uint64_t a1, double a2)
{
  *(v3 + 56) = v2;
  *(v3 + 48) = a2;
  *(v3 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67970, &qword_1D8B2D318);
  *(v3 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A3CA88, v2, 0);
}

uint64_t sub_1D8A3CA88()
{
  v1 = *(v0 + 8);
  v2 = v0[6];
  sub_1D8A50DC0(*(v0 + 5), v1, type metadata accessor for BundleClassification.ClassificationType);
  v3 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  swift_beginAccess();
  sub_1D895F2BC(v1, v2);
  swift_endAccess();

  v4 = *(v0 + 1);

  return v4();
}

uint64_t sub_1D8A3CB98(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D8A3CBB8, v1, 0);
}

uint64_t sub_1D8A3CBB8()
{
  v1 = v0[17];
  v2 = v0[18];
  swift_beginAccess();
  v11 = v2[21];
  swift_beginAccess();
  *&v3 = v11;
  *(&v3 + 1) = v2[22];
  v12 = v3;
  swift_beginAccess();
  v4 = v2[24];
  swift_beginAccess();
  v5 = v2[23];
  swift_beginAccess();
  v6 = v2[14];
  v7 = MEMORY[0x1E69E7CC8];
  v2[21] = MEMORY[0x1E69E7CC8];
  v2[22] = v7;
  v2[24] = v7;

  v2[23] = v7;

  v2[14] = v7;

  *&v8 = v4;
  *(&v8 + 1) = v5;
  *(v1 + 16) = v8;
  *v1 = v12;
  *(v1 + 32) = v6;
  v9 = v0[1];

  return v9();
}

double sub_1D8A3CD18()
{
  swift_beginAccess();
  v1 = MEMORY[0x1E69E7CC8];
  v0[14] = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  v0[15] = v1;

  swift_beginAccess();
  v0[16] = v1;

  swift_beginAccess();
  v0[17] = v1;

  swift_beginAccess();
  v0[18] = v1;

  swift_beginAccess();
  v0[19] = v1;

  v0[20] = 0;
  swift_beginAccess();
  v0[21] = v1;

  swift_beginAccess();
  v0[22] = v1;

  swift_beginAccess();
  v0[24] = v1;

  swift_beginAccess();
  v0[23] = v1;

  return result;
}

void *CVDebugArtifactManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CVDebugArtifactManager.__deallocating_deinit()
{
  CVDebugArtifactManager.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

void *sub_1D8A3CF24()
{
  swift_defaultActor_initialize();
  v1 = MEMORY[0x1E69E7CC0];
  v0[14] = sub_1D893D12C(MEMORY[0x1E69E7CC0]);
  v0[15] = sub_1D893D140(v1);
  v0[16] = sub_1D893D154(v1);
  v0[17] = sub_1D893D154(v1);
  v0[18] = sub_1D893D250(v1);
  v2 = sub_1D893D434(v1);
  v3 = MEMORY[0x1E69E7CC8];
  v0[19] = v2;
  v0[20] = 0;
  v0[21] = v3;
  v0[22] = v3;
  v0[23] = v3;
  v0[24] = v3;
  return v0;
}

void *M2MHandle.__allocating_init()()
{
  result = swift_allocObject();
  result[2] = 0;
  result[3] = 0;
  result[4] = MEMORY[0x1E69E7CC8];
  return result;
}

void *M2MHandle.init()()
{
  result = v0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = MEMORY[0x1E69E7CC8];
  return result;
}

id sub_1D8A3D004()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
LABEL_5:
    swift_unknownObjectRetain();
    return v1;
  }

  result = viCore_makeM2MController();
  if (result)
  {
    v1 = result;
    *(v0 + 16) = result;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1D8A3D070()
{
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D8B0AAA4();

  byte_1EE0E3BF8 = v0 & 1;
}

BOOL sub_1D8A3D0E8(uint64_t a1)
{
  swift_beginAccess();
  if (!*(*(v1 + 32) + 16) || (sub_1D87EFF4C(a1), (v3 & 1) == 0))
  {
    v4 = CVPixelFormatDescriptionCreateWithPixelFormatType(0, a1);
    if (v4)
    {
      v5 = v4;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v20[0] = 0;
        sub_1D8B15720();
      }

      swift_beginAccess();
      sub_1D895E358(0, a1);
      swift_endAccess();
    }
  }

  v6 = *(v1 + 32);
  if (*(v6 + 16))
  {
    v7 = sub_1D87EFF4C(a1);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      v10 = sub_1D8B15970();
      v12 = v11;
      if (*(v9 + 16) && (v13 = v10, , v14 = sub_1D87EF838(v13, v12), v16 = v15, , (v16 & 1) != 0))
      {
        sub_1D87D3E4C(*(v9 + 56) + 32 * v14, v20);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DF0, &unk_1D8B36A30);
        if (swift_dynamicCast())
        {
          v17 = *(v19 + 16);

          return v17 > 1;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

void sub_1D8A3D2C8(double a1, double a2, double a3, double a4)
{
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v4 = [sub_1D8A3D004() setCustomFilter:3 alignment:2 sourceWidth:a1 sourceHeight:a2 destinationWidth:a3 destinationHeight:a4 luma:0.0 param:0.0 chroma:? param:?];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_1D8A51FBC();
    swift_allocError();
    *v5 = v4;
    *(v5 + 4) = 0;
    swift_willThrow();
  }
}

void sub_1D8A3D48C(__CVBuffer *a1, __CVBuffer *a2, double *a3, id a4, double a5, double a6, double a7, double a8)
{
  v12 = a8;
  v13 = a7;
  v16 = *a3;
  v103.origin.y = *(MEMORY[0x1E695F050] + 8);
  v103.size.width = *(MEMORY[0x1E695F050] + 16);
  v103.size.height = *(MEMORY[0x1E695F050] + 24);
  v98 = *MEMORY[0x1E695F050];
  v103.origin.x = v98;
  width = v103.size.width;
  y = v103.origin.y;
  height = v103.size.height;
  if (CGRectEqualToRect(*&a5, v103))
  {
    *v17.i64 = CVPixelBufferGetWidth(a2);
    v89 = v17;
    *v18.i64 = CVPixelBufferGetHeight(a2);
    v92 = v18;
    v19 = CGRound(*v89.i64);
    v20 = CGRound(*v92.i64);
    v21.i64[0] = 0;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v87 = vnegq_f64(v22);
    v23 = CGRound(*vbslq_s8(v87, v21, v89).i64);
    v24.i64[0] = 0;
    v13 = v19 - v23;
    v12 = v20 - CGRound(*vbslq_s8(v87, v24, v92).i64);
  }

  v88 = v16;
  v25 = v16 == 4.71238898 || v16 == 1.57079633;
  if (v25)
  {
    v26 = v13;
  }

  else
  {
    v26 = v12;
  }

  if (v25)
  {
    v27 = v12;
  }

  else
  {
    v27 = v13;
  }

  if (*(a4 + 32))
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    a4 = sub_1D8A3D0E8(PixelFormatType);
    *v29.i64 = CVPixelBufferGetWidth(a1);
    v90 = v29;
    *v30.i64 = CVPixelBufferGetHeight(a1);
    v93 = v30;
    v31 = CGRound(*v90.i64);
    v32 = CGRound(*v93.i64);
    v33.i64[0] = 0;
    v34.f64[0] = NAN;
    v34.f64[1] = NAN;
    v78 = vnegq_f64(v34);
    v35 = CGRound(*vbslq_s8(v78, v33, v90).i64);
    v36.i64[0] = 0;
    v37 = CGRound(*vbslq_s8(v78, v36, v93).i64);
    v38 = v31 - v35;
    v39 = v32 - v37;
    if (a4)
    {
      sub_1D8A3AD80(v38, v39);
      v38 = v40;
      v39 = v41;
    }
  }

  else
  {
    v35 = *a4;
    v37 = *(a4 + 1);
    v38 = *(a4 + 2);
    v39 = *(a4 + 3);
  }

  v99.origin.x = v35;
  v99.origin.y = v37;
  v99.size.width = v38;
  v99.size.height = v39;
  if (CGRectGetWidth(v99) / v27 > 4.0 || (v100.origin.x = v35, v100.origin.y = v37, v100.size.width = v38, v100.size.height = v39, CGRectGetHeight(v100) / v26 > 4.0))
  {
    v101.origin.x = v35;
    v101.origin.y = v37;
    v101.size.width = v38;
    v101.size.height = v39;
    v42 = round(CGRectGetWidth(v101) / 1.5);
    if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v42 > -9.22337204e18)
    {
      if (v42 < 9.22337204e18)
      {
        v102.origin.x = v35;
        v102.origin.y = v37;
        v102.size.width = v38;
        v102.size.height = v39;
        v43 = round(CGRectGetHeight(v102) / 1.5);
        if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v43 > -9.22337204e18)
          {
            if (v43 < 9.22337204e18)
            {
              v77 = a2;
              if (v25)
              {
                v44 = v42;
              }

              else
              {
                v44 = v43;
              }

              if (v25)
              {
                v45 = v43;
              }

              else
              {
                v45 = v42;
              }

              swift_beginAccess();
              v46 = *(v8 + 24);
              if (!v46)
              {
LABEL_43:
                v55 = CVPixelBufferGetPixelFormatType(a1);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67990, &qword_1D8B33D28);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1D8B1AB90;
                v57 = *MEMORY[0x1E69660D8];
                *(inited + 32) = *MEMORY[0x1E69660D8];
                v58 = v57;
                *(inited + 40) = sub_1D893CDD0(MEMORY[0x1E69E7CC0]);
                sub_1D893D034(inited);
                swift_setDeallocating();
                sub_1D87A14E4(inited + 32, &qword_1ECA67998, &qword_1D8B33D30);
                type metadata accessor for CFString(0);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA679A0, &qword_1D8B33D38);
                sub_1D8A4F044(&qword_1EE0E37C0, 255, type metadata accessor for CFString, &unk_1D8B19E74);
                v59 = sub_1D8B15710();

                swift_beginAccess();
                CVPixelBufferCreate(0, v45, v44, v55, v59, (v8 + 24));
                swift_endAccess();

                v49 = *(v8 + 24);
                if (!v49)
                {
                  return;
                }

                goto LABEL_44;
              }

              v47 = v46;
              if (CVPixelBufferGetWidth(v47) == v45)
              {
                v48 = CVPixelBufferGetHeight(v47);

                if (v48 == v44)
                {
                  v49 = *(v8 + 24);
                  if (!v49)
                  {
                    goto LABEL_43;
                  }

LABEL_44:
                  a4 = v49;
                  *v60.i64 = CVPixelBufferGetWidth(a4);
                  v91 = v60;
                  *v61.i64 = CVPixelBufferGetHeight(a4);
                  v94 = v61;
                  v62 = CGRound(*v91.i64);
                  v63 = CGRound(*v94.i64);
                  v64.i64[0] = 0;
                  v65.f64[0] = NAN;
                  v65.f64[1] = NAN;
                  v79 = vnegq_f64(v65);
                  v66 = CGRound(*vbslq_s8(v79, v64, v91).i64);
                  v67.i64[0] = 0;
                  v68 = CGRound(*vbslq_s8(v79, v67, v94).i64);
                  sub_1D8A3D2C8(v38, v39, v62 - v66, v63 - v68);
                  if (v9)
                  {
LABEL_61:

                    return;
                  }

                  a2 = sub_1D8A3D004();
                  if (v88 == 0.0)
                  {
                    v10 = 1;
                    goto LABEL_57;
                  }

                  v69 = v88 == 3.14159265;
                  if (v88 == -3.14159265)
                  {
                    v69 = 1;
                  }

                  v70 = 8;
                  if (v88 == 1.57079633)
                  {
                    v70 = 6;
                  }

                  if (v69)
                  {
                    v10 = 3;
                  }

                  else
                  {
                    v10 = v70;
                  }

                  if (v88 == 4.71238898 || v88 == 1.57079633 || v69)
                  {
LABEL_57:
                    v71 = qword_1EE0E3BF0;
                    a4 = a4;
                    if (v71 == -1)
                    {
                      goto LABEL_58;
                    }

                    goto LABEL_80;
                  }

LABEL_81:
                  sub_1D8B168C0();
                  __break(1u);
                  return;
                }
              }

              else
              {
              }

              v54 = *(v8 + 24);
              *(v8 + 24) = 0;

              v49 = *(v8 + 24);
              if (!v49)
              {
                goto LABEL_43;
              }

              goto LABEL_44;
            }

LABEL_79:
            __break(1u);
LABEL_80:
            swift_once();
LABEL_58:
            v72 = [(__CVBuffer *)a2 transform:a1 srcRect:a4 dst:v10 dstRect:byte_1EE0E3BF8 rotate:v35 sync_m2m:v37, v38, v39, v98, y, width, height];
            swift_unknownObjectRelease();

            if (v72 == sub_1D8B15430())
            {
              v95[0] = 0.0;
              memset(v96, 0, sizeof(v96));
              v97 = 1;
              sub_1D8A3D48C(a4, v77, v95, v96, a5, a6, a7, a8);
            }

            else
            {
              sub_1D8A51FBC();
              swift_allocError();
              *v73 = 1;
              *(v73 + 4) = 1;
              swift_willThrow();
            }

            goto LABEL_61;
          }

LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    __break(1u);
    goto LABEL_76;
  }

  v50 = CVPixelBufferGetPixelFormatType(a2);
  if (sub_1D8A3D0E8(v50))
  {
    sub_1D8A3AD80(v13, v12);
    if (v13 != v52 || v12 != v51)
    {
      sub_1D8A51FBC();
      swift_allocError();
      *v74 = 0;
LABEL_73:
      *(v74 + 4) = 1;
      swift_willThrow();
      return;
    }
  }

  sub_1D8A3D2C8(v38, v39, v13, v12);
  if (v9)
  {
    return;
  }

  v53 = sub_1D8A3D004();
  if (v88 != 0.0)
  {
    v75 = v88 == 3.14159265;
    if (v88 == -3.14159265)
    {
      v75 = 1;
    }

    if (v88 != 4.71238898 && v88 != 1.57079633 && !v75)
    {
      goto LABEL_81;
    }
  }

  if (qword_1EE0E3BF0 != -1)
  {
    swift_once();
  }

  v76 = [v53 transform:a1 srcRect:a2 dst:v35 dstRect:v37 rotate:v38 sync:v39 m2m:{a5, a6, a7, a8}];
  swift_unknownObjectRelease();
  if (v76 != sub_1D8B15430())
  {
    sub_1D8A51FBC();
    swift_allocError();
    *v74 = 1;
    goto LABEL_73;
  }
}

uint64_t M2MHandle.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t M2MHandle.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1D8A3DE14()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

unint64_t sub_1D8A3DEB8()
{
  v1 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000010;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D8A3DF24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8A57608(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8A3DF4C(uint64_t a1)
{
  v2 = sub_1D8A52010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A3DF88(uint64_t a1)
{
  v2 = sub_1D8A52010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CVCoordinator.Configuration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA679A8, &qword_1D8B33D40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v13 = *(v1 + 8);
  v12 = v1[2];
  HIDWORD(v11) = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A52010();

  sub_1D8B16DD0();
  v19 = v8;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA679B8, &qword_1D8B33D48);
  sub_1D8A520B8(&qword_1ECA679C0, sub_1D8A51970, sub_1D8A51248, MEMORY[0x1E69E5E38]);
  sub_1D8B16AE0();

  if (!v2)
  {
    v9 = BYTE4(v11);
    v17 = 1;
    sub_1D8B16AA0();
    v16 = 2;
    sub_1D8B16AD0();
    v15 = v9;
    v14 = 3;
    sub_1D8A52064();
    sub_1D8B16AE0();
  }

  return (*(v5 + 8))(v7, v4);
}

void CVCoordinator.Configuration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA679D0, &qword_1D8B33D50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A52010();
  sub_1D8B16DB0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA679B8, &qword_1D8B33D48);
    v17 = 0;
    sub_1D8A520B8(&qword_1ECA679D8, sub_1D8A51A7C, sub_1D8A51410, MEMORY[0x1E69E5E58]);
    sub_1D8B16A10();
    v9 = v18;
    v16 = 1;
    v10 = sub_1D8B169D0();
    v15 = 2;
    v12 = sub_1D8B16A00();
    v13 = 3;
    sub_1D8A52148();
    sub_1D8B16A10();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
    *a2 = v9;
    *(a2 + 8) = v10 & 1;
    *(a2 + 16) = v12;
    *(a2 + 24) = v11;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t sub_1D8A3E4F8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D893DF5C(&unk_1F5426928);
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 3;
  return result;
}

unint64_t CVCoordinator.init(configuration:trackManager:)(uint64_t a1, unint64_t a2)
{
  v2 = sub_1D8A5047C(a1, a2);

  return v2;
}

uint64_t sub_1D8A3E5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D8A3E5C8, 0, 0);
}

uint64_t sub_1D8A3E5C8()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  *(v0 + 88) = v2;
  if (!v2)
  {
LABEL_10:
    v21 = *(v0 + 8);

    return v21();
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    *(v0 + 104) = v4;
    *(v0 + 112) = v5;
    *(v0 + 96) = v3;
    v6 = *(v0 + 72);
    v7 = *(v1 + v3 + 32);
    *(v0 + 144) = v7;
    if (!*(v6 + 16))
    {
      goto LABEL_6;
    }

    v8 = sub_1D881F7DC();
    if (v9)
    {
      break;
    }

    v7 = *(v0 + 144);
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
LABEL_6:
    v10 = *(v0 + 80);
    v11 = *(v10 + 40);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v7;
    v13 = v11;

    sub_1D878BBCC(v5, v4);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1D8A59BE0;
    *(v14 + 24) = v12;
    *(v0 + 48) = sub_1D8A5A6F0;
    *(v0 + 56) = v14;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1D8A3EDFC;
    *(v0 + 40) = &block_descriptor_422;
    v15 = _Block_copy((v0 + 16));

    dispatch_sync(v13, v15);

    _Block_release(v15);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
      return MEMORY[0x1EEE6DA10](v16, v17, v18, v19, v20);
    }

    v3 = *(v0 + 96) + 1;
    if (v3 == *(v0 + 88))
    {

      goto LABEL_10;
    }

    v1 = *(v0 + 64);
    v5 = sub_1D8A59BE0;
    v4 = v12;
  }

  v23 = *(*(*(v0 + 72) + 56) + 8 * v8);
  *(v0 + 120) = v23;

  v24 = swift_task_alloc();
  *(v0 + 128) = v24;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
  *v24 = v0;
  v24[1] = sub_1D8A3E8CC;
  v20 = MEMORY[0x1E69E7288];
  v18 = MEMORY[0x1E69E7CA8] + 8;
  v17 = v23;
  v19 = v16;

  return MEMORY[0x1EEE6DA10](v16, v17, v18, v19, v20);
}

uint64_t sub_1D8A3E8CC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {

    v2 = sub_1D8A3ECC4;
  }

  else
  {
    v2 = sub_1D8A3E9E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8A3E9E8()
{

  while (1)
  {
    v1 = *(v0 + 144);
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v4 = *(v0 + 80);
    v5 = *(v4 + 40);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v1;
    v7 = v5;

    sub_1D878BBCC(v2, v3);
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1D8A59BE0;
    *(v8 + 24) = v6;
    *(v0 + 48) = sub_1D8A5A6F0;
    *(v0 + 56) = v8;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1D8A3EDFC;
    *(v0 + 40) = &block_descriptor_422;
    v9 = _Block_copy((v0 + 16));

    dispatch_sync(v7, v9);

    _Block_release(v9);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
      return MEMORY[0x1EEE6DA10](v10, v11, v12, v13, v14);
    }

    v15 = *(v0 + 96) + 1;
    if (v15 == *(v0 + 88))
    {
      break;
    }

    *(v0 + 104) = v6;
    *(v0 + 112) = sub_1D8A59BE0;
    *(v0 + 96) = v15;
    v16 = *(v0 + 72);
    *(v0 + 144) = *(*(v0 + 64) + v15 + 32);
    if (*(v16 + 16))
    {
      v17 = sub_1D881F7DC();
      if (v18)
      {
        v19 = *(*(*(v0 + 72) + 56) + 8 * v17);
        *(v0 + 120) = v19;

        v20 = swift_task_alloc();
        *(v0 + 128) = v20;
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
        *v20 = v0;
        v20[1] = sub_1D8A3E8CC;
        v14 = MEMORY[0x1E69E7288];
        v12 = MEMORY[0x1E69E7CA8] + 8;
        v11 = v19;
        v13 = v10;

        return MEMORY[0x1EEE6DA10](v10, v11, v12, v13, v14);
      }
    }
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D8A3ECC4()
{
  sub_1D878BBCC(v0[14], v0[13]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1D8A3ED28(uint64_t a1)
{
  swift_beginAccess();
  v2 = sub_1D881F7DC();
  if (v3)
  {
    v4 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(a1 + 104);
    *(a1 + 104) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8969464();
    }

    sub_1D8AF2654(v4, v6, v7);
    *(a1 + 104) = v6;
  }

  return swift_endAccess();
}

size_t sub_1D8A3EE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 32))(&pixelBuffer, a2, a3);
  v3 = pixelBuffer;
  if (v7)
  {
    sub_1D88C3978(pixelBuffer, v7);
    return 0;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  result = CVPixelBufferGetHeight(v3);
  if (((result | Width) & 0x8000000000000000) == 0)
  {
    CVPixelBufferGetPixelFormatType(v3);
    sub_1D8A52644();
    sub_1D88C3978(v3, 0);
    return Width;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8A3EF20()
{
  v0[14] = 0;
  v1 = v0[15];
  v2 = *(v1 + 40);
  v3 = swift_allocObject();
  v0[16] = v3;
  *(v3 + 16) = v0 + 14;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D8A528C0;
  *(v4 + 24) = v3;
  v0[6] = sub_1D8A5A6F0;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D8A3EDFC;
  v0[5] = &block_descriptor_40;
  v5 = _Block_copy(v0 + 2);
  v6 = v2;

  dispatch_sync(v6, v5);

  _Block_release(v5);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = v0[14];
  v0[17] = v12;
  if (v12)
  {
    v13 = *(v12 + 16);
    v0[18] = v13;

    if (v13)
    {
      v0[19] = 0;
      if (*(v7 + 16))
      {
        v14 = *(v7 + 32);
        v0[20] = v14;

        v15 = swift_task_alloc();
        v0[21] = v15;
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
        *v15 = v0;
        v15[1] = sub_1D8A3F39C;
        v11 = MEMORY[0x1E69E7288];
        v9 = MEMORY[0x1E69E7CA8] + 8;
        v8 = v14;
        v10 = v7;

        return MEMORY[0x1EEE6DA10](v7, v8, v9, v10, v11);
      }

      goto LABEL_19;
    }

    v18 = v0[15];

    *(v0 + 208) = 0;
    v19 = *(v18 + 40);
    v20 = swift_allocObject();
    v0[23] = v20;
    *(v20 + 16) = v0 + 26;
    *(v20 + 24) = v18;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1D8A528C8;
    *(v21 + 24) = v20;
    v0[12] = sub_1D8A5A6F0;
    v0[13] = v21;
    v0[8] = MEMORY[0x1E69E9820];
    v0[9] = 1107296256;
    v0[10] = sub_1D8A3EDFC;
    v0[11] = &block_descriptor_52;
    v22 = _Block_copy(v0 + 8);

    v23 = v19;

    dispatch_sync(v23, v22);

    _Block_release(v22);
    LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

    if (v23)
    {
LABEL_20:
      __break(1u);
      return MEMORY[0x1EEE6DA10](v7, v8, v9, v10, v11);
    }

    if (*(v0 + 208) == 1)
    {
      v24 = swift_task_alloc();
      v0[24] = v24;
      *v24 = v0;
      v24[1] = sub_1D8A3F800;

      return sub_1D8A3EF00();
    }

    v17 = v0[23];
    v16 = sub_1D8A528C8;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  sub_1D878BBCC(v16, v17);
  v26 = v0[1];

  return v26();
}

uint64_t sub_1D8A3F39C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {

    v2 = sub_1D8A3F9A4;
  }

  else
  {
    v2 = sub_1D8A3F4B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8A3F4B8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  if (v1 + 1 != v2)
  {
    v16 = *(v0 + 152) + 1;
    *(v0 + 152) = v16;
    v17 = *(v0 + 136);
    if (v16 < *(v17 + 16))
    {
      v18 = *(v17 + 8 * v16 + 32);
      *(v0 + 160) = v18;

      v19 = swift_task_alloc();
      *(v0 + 168) = v19;
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
      *v19 = v0;
      v19[1] = sub_1D8A3F39C;
      v7 = MEMORY[0x1E69E7288];
      v5 = MEMORY[0x1E69E7CA8] + 8;
      v4 = v18;
      v6 = v3;

      return MEMORY[0x1EEE6DA10](v3, v4, v5, v6, v7);
    }

LABEL_15:
    __break(1u);
    return MEMORY[0x1EEE6DA10](v3, v4, v5, v6, v7);
  }

  v8 = *(v0 + 120);

  *(v0 + 208) = 0;
  v9 = *(v8 + 40);
  v10 = swift_allocObject();
  *(v0 + 184) = v10;
  *(v10 + 16) = v0 + 208;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D8A528C8;
  *(v11 + 24) = v10;
  *(v0 + 96) = sub_1D8A5A6F0;
  *(v0 + 104) = v11;
  *(v0 + 64) = MEMORY[0x1E69E9820];
  *(v0 + 72) = 1107296256;
  *(v0 + 80) = sub_1D8A3EDFC;
  *(v0 + 88) = &block_descriptor_52;
  v12 = _Block_copy((v0 + 64));

  v13 = v9;

  dispatch_sync(v13, v12);

  _Block_release(v12);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v0 + 208) == 1)
  {
    v14 = swift_task_alloc();
    *(v0 + 192) = v14;
    *v14 = v0;
    v14[1] = sub_1D8A3F800;

    return sub_1D8A3EF00();
  }

  else
  {
    v20 = *(v0 + 184);

    sub_1D878BBCC(sub_1D8A528C8, v20);
    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1D8A3F800()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1D8A3FA28;
  }

  else
  {
    v2 = sub_1D8A3F914;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8A3F914()
{
  v1 = *(v0 + 184);

  sub_1D878BBCC(sub_1D8A528C8, v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D8A3F9A4()
{

  sub_1D878BBCC(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8A3FA28()
{
  v1 = *(v0 + 184);

  sub_1D878BBCC(sub_1D8A528C8, v1);
  v2 = *(v0 + 8);

  return v2();
}

double sub_1D8A3FAC0(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 104);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_1D87F3C44(*(v4 + 16), 0);
  v7 = sub_1D881854C(&v10, v6 + 4, v5, v4);
  v8 = v10;

  sub_1D87977A0(v8);
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:
    v6 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v6;

  return result;
}

void sub_1D8A3FBA0(uint64_t a1)
{
  v1 = *a1;
  v18 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 1 << *(*a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v1[8];
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (v6)
  {
LABEL_10:
    while (1)
    {
      v11 = __clz(__rbit64(v6)) | (v8 << 6);
      v12 = *(v1[6] + v11);
      v13 = v1[7] + 8 * v11;
      v14 = *v13;
      LOBYTE(v13) = *(v13 + 4);
      v6 &= v6 - 1;
      v22[0] = v12;
      v23 = v14;
      v24 = v13;
      sub_1D8A3FD9C(v22, v1, v18, v2, v3, &v19);
      if (v20)
      {
        break;
      }

      sub_1D87A14E4(&v19, &unk_1ECA67D50, &qword_1D8B2D310);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    sub_1D87C15B4(&v19, v21);
    sub_1D87C15B4(v21, &v19);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D87C87E4(0, v9[2] + 1, 1, v9);
    }

    v16 = v9[2];
    v15 = v9[3];
    if (v16 >= v15 >> 1)
    {
      v9 = sub_1D87C87E4((v15 > 1), v16 + 1, 1, v9);
    }

    v9[2] = v16 + 1;
    sub_1D87C15B4(&v19, &v9[5 * v16 + 4]);
  }

LABEL_6:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      *(v17 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_processors) = v9;

      return;
    }

    v6 = v1[v10 + 8];
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}

_BYTE *sub_1D8A3FD9C@<X0>(_BYTE *result@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  switch(*result)
  {
    case 1:
      v7 = type metadata accessor for StreamingVisualIntelligenceProcessor(0);
      swift_allocObject();
      v10 = 0;
      goto LABEL_8;
    case 2:
    case 7:
    case 8:
    case 0xB:
    case 0xC:
    case 0xD:
      *(a6 + 32) = 0;
      *a6 = 0u;
      *(a6 + 16) = 0u;
      return result;
    case 3:
      v14 = type metadata accessor for VisionProcessor(0);
      v15 = swift_allocObject();
      v28 = a2;

      swift_defaultActor_initialize();
      v29 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_logger;
      if (qword_1EE0E4370 != -1)
      {
        swift_once();
      }

      v30 = sub_1D8B151E0();
      v31 = __swift_project_value_buffer(v30, qword_1EE0E4378);
      (*(*(v30 - 8) + 16))(v15 + v29, v31, v30);
      v32 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_sequenceHandler;
      result = [objc_allocWithZone(MEMORY[0x1E6984680]) init];
      *(v15 + v32) = result;
      v33 = v15 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_configuration;
      *v33 = v28;
      *(v33 + 8) = a3 & 1;
      *(v33 + 16) = a4;
      *(v33 + 24) = a5;
      v22 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType;
      v23 = 3;
      goto LABEL_20;
    case 4:
      v7 = type metadata accessor for StreamingVisualIntelligenceProcessor(0);
      swift_allocObject();
      v10 = 1;
LABEL_8:
      result = sub_1D8A83C40(v10);
      v8 = &off_1F5436878;
      goto LABEL_11;
    case 5:
      if (a3)
      {
        v14 = type metadata accessor for VisionProcessor(0);
        v15 = swift_allocObject();
        v16 = a2;

        swift_defaultActor_initialize();
        v17 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_logger;
        if (qword_1EE0E4370 != -1)
        {
          swift_once();
        }

        v18 = sub_1D8B151E0();
        v19 = __swift_project_value_buffer(v18, qword_1EE0E4378);
        (*(*(v18 - 8) + 16))(v15 + v17, v19, v18);
        v20 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_sequenceHandler;
        result = [objc_allocWithZone(MEMORY[0x1E6984680]) init];
        *(v15 + v20) = result;
        v21 = v15 + OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_configuration;
        *v21 = v16;
        *(v21 + 8) = 1;
        *(v21 + 16) = a4;
        *(v21 + 24) = a5;
        v22 = OBJC_IVAR____TtC22VisualIntelligenceCore15VisionProcessor_enabledDetectionType;
        v23 = 5;
LABEL_20:
        *(v15 + v22) = v23;
        *(a6 + 24) = v14;
        *(a6 + 32) = &off_1F5436AA8;
        *a6 = v15;
      }

      else
      {
        v7 = type metadata accessor for CoreRecognitionProcessor(0);
        swift_allocObject();
        result = sub_1D8A29A0C();
        v8 = &off_1F5433830;
LABEL_11:
        *(a6 + 24) = v7;
        *(a6 + 32) = v8;
        *a6 = result;
      }

      return result;
    case 6:
      v34 = a2;
      v35 = a3 & 1;
      v36 = a4;
      v37 = a5;
      v7 = type metadata accessor for BarcodeProcessor(0);
      swift_allocObject();

      result = BarcodeProcessor.init(configuration:)(&v34);
      v8 = &off_1F5433678;
      goto LABEL_11;
    case 9:
      v9 = 9;
      goto LABEL_10;
    case 0xA:
      v9 = 10;
LABEL_10:
      LOBYTE(v34) = v9;
      v7 = type metadata accessor for AFMProcessor(0);
      swift_allocObject();
      result = sub_1D8A17FDC(&v34);
      v8 = &off_1F5433640;
      goto LABEL_11;
    default:
      v34 = a2;
      v35 = a3 & 1;
      v36 = a4;
      v37 = a5;
      v7 = type metadata accessor for GroundingProcessor(0);
      swift_allocObject();

      result = sub_1D8A097BC(&v34);
      v8 = &off_1F5432FD8;
      goto LABEL_11;
  }
}

uint64_t sub_1D8A401C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D8A401EC, 0, 0);
}

uint64_t sub_1D8A401EC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = v2 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorage;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorage));
  sub_1D8A402B4((v4 + 8), v2, v1, v0 + 2, v3);
  os_unfair_lock_unlock(v4);
  v5 = v0[1];

  return v5();
}

void sub_1D8A402B4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v6 = MEMORY[0x1E69E7CC8];
  v125 = MEMORY[0x1E69E7CC8];
  v7 = *(a2 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_processors);
  v86 = *(v7 + 16);
  if (!v86)
  {
    goto LABEL_90;
  }

  v83 = a5;
  v8 = *(a3 + 16);
  v87 = v7 + 32;
  v94 = a3 + 32;

  v10 = 0;
  v90 = a1;
  v91 = v8;
  v85 = v9;
  while (1)
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      sub_1D8B168C0();
      __break(1u);
      return;
    }

    v89 = v10;
    sub_1D87C1470(v87 + 40 * v10, v122);
    if (v8)
    {
      break;
    }

LABEL_3:
    v10 = v89 + 1;
    __swift_destroy_boxed_opaque_existential_1(v122);
    v9 = v85;
    if (v89 + 1 == v86)
    {

      v6 = v125;
      a5 = v83;
LABEL_90:
      *a5 = *a1;
      a5[1] = v6;
      v81 = *(a2 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorageTaskSemaphore);

      if (v81)
      {
        v82 = v81;
        sub_1D8B163B0();
      }

      return;
    }
  }

  v11 = 0;
LABEL_7:
  v12 = 0;
  v13 = *(v94 + v11++);
  v14 = *a1 + 64;
  v15 = 1 << *(*a1 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(*a1 + 64);
  v18 = (v15 + 63) >> 6;
LABEL_11:
  if (v17)
  {
    v19 = v12;
    goto LABEL_17;
  }

  while (1)
  {
    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_85;
    }

    if (v19 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v19);
    ++v12;
    if (v17)
    {
      v12 = v19;
LABEL_17:
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      if (*(*(*a1 + 48) + (v20 | (v19 << 6))) != v13)
      {
        goto LABEL_11;
      }

LABEL_81:
      if (v11 == v8)
      {
        goto LABEL_3;
      }

      goto LABEL_7;
    }
  }

  v136 = *a1;
  v95 = v11;
  v21 = v123;
  v22 = v124;
  __swift_project_boxed_opaque_existential_1(v122, v123);
  LOBYTE(v103) = v13;
  (*(v22 + 8))(v126, &v103, v21, v22);
  v129 = v127;
  v128[2] = v126[2];
  v128[3] = v126[3];
  v128[0] = v126[0];
  v128[1] = v126[1];
  if (v127 == 2)
  {
LABEL_80:
    v11 = v95;
    goto LABEL_81;
  }

  sub_1D88C5438(v128, v121);
  sub_1D87C1470(v122, &v103);
  v93 = v13;
  sub_1D895F518(&v103, v13);
  v23 = v136;
  v24 = 1 << *(v136 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & *(v136 + 64);
  v27 = (v24 + 63) >> 6;

  v28 = 0;
  while (v26)
  {
LABEL_30:
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v31 = *(v23 + 56) + 88 * (v30 | (v28 << 6));
    v32 = *(v31 + 16);
    v130[0] = *v31;
    v130[1] = v32;
    v34 = *(v31 + 48);
    v33 = *(v31 + 64);
    v35 = *(v31 + 32);
    v131 = *(v31 + 80);
    v130[3] = v34;
    v130[4] = v33;
    v130[2] = v35;
    sub_1D88C5438(v130, v109);
    sub_1D88C5438(v109, &v110);
    v36 = v110;
    v37 = v111;
    v39 = v112;
    v38 = v113;
    v40 = v114;
    v41 = v115;
    v42 = v116;
    v43 = v117;
    v97 = v118;
    v98 = v119;
    v96 = v120;
    sub_1D88C5438(v121, v99);
    if (v37 == 1)
    {
      if (v99[4])
      {
LABEL_35:
        if (v43)
        {
          if (v43 == 1)
          {
            v23 = v136;
            if (v101 == 1 && v39 == *&v99[8])
            {
              v44 = BYTE8(v101);
              v45 = DWORD1(v101);
              v46 = v102;
              v47 = *(&v100 + 1);
              v48 = *&v100;
              v49 = *&v99[24];
              v50 = *&v99[16];
              sub_1D881F59C(v130, &v103);
              v137.origin.x = v38;
              v137.origin.y = v40;
              v137.size.width = v41;
              v137.size.height = v42;
              v138.origin.x = v50;
              v138.origin.y = v49;
              v138.size.width = v48;
              v138.size.height = v47;
              if (!CGRectEqualToRect(v137, v138))
              {
                goto LABEL_69;
              }

              if (!v98)
              {
LABEL_54:
                if ((v44 & 1) != 0 || v97 != v45)
                {
                  goto LABEL_69;
                }

                goto LABEL_61;
              }

LABEL_41:
              if (v97)
              {
                if (v45)
                {
                  v51 = v44;
                }

                else
                {
                  v51 = 0;
                }

                if ((v51 & 1) == 0)
                {
                  goto LABEL_69;
                }
              }

              else
              {
                if (v45)
                {
                  v52 = 0;
                }

                else
                {
                  v52 = v44;
                }

                if ((v52 & 1) == 0)
                {
                  goto LABEL_69;
                }
              }

LABEL_61:
              if (v96)
              {
                if (v96 == 1)
                {
                  if (v46 == 1)
                  {
                    goto LABEL_83;
                  }
                }

                else if (v46 >= 2)
                {
                  type metadata accessor for CGColor(0);
                  sub_1D8A4F044(&unk_1EE0E3800, 255, type metadata accessor for CGColor, &unk_1D8B19DC0);
                  if (sub_1D8B13D60())
                  {
LABEL_83:

                    sub_1D881F59C(v130, &v103);
                    a1 = v90;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *&v103 = *v90;
                    sub_1D8B06498(v130, v93, isUniquelyReferenced_nonNull_native);
                    sub_1D87A14E4(v126, &qword_1ECA67DE8, &qword_1D8B36A28);
                    sub_1D881F5F8(v130);
LABEL_72:
                    *a1 = v103;
                    v8 = v91;
                    goto LABEL_80;
                  }
                }
              }

              else if (!v46)
              {
                goto LABEL_83;
              }

LABEL_69:
              sub_1D881F5F8(v130);
            }
          }

          else
          {
            v23 = v136;
            if (v101 == 2 && !(*&v99[16] | *&v99[8] | *&v99[24] | v100 | *(&v100 + 1)))
            {
LABEL_53:
              v44 = BYTE8(v101);
              v45 = DWORD1(v101);
              v46 = v102;
              sub_1D881F59C(v130, &v103);
              if (!v98)
              {
                goto LABEL_54;
              }

              goto LABEL_41;
            }
          }
        }

        else if (v101)
        {
          v23 = v136;
        }

        else
        {
          v23 = v136;
          if (__PAIR128__(*&v38, v39) == *&v99[8])
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
        v23 = v136;
      }
    }

    else
    {
      if ((v99[4] & 1) == 0 && v36 == *v99)
      {
        goto LABEL_35;
      }

      v23 = v136;
    }
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      sub_1D88C5438(v121, &v110);
      if (v117)
      {
        v108 = 0;
        sub_1D88C5438(v121, &v103);
        *(&v107 + 1) = 0;
        v134[2] = v105;
        v134[3] = v106;
        v135 = v108;
        v134[0] = v103;
        v134[1] = v104;
        v134[4] = v107;
        sub_1D87A0E38(v126, &v103, &qword_1ECA67DE8, &qword_1D8B36A28);
        a1 = v90;
        v53 = swift_isUniquelyReferenced_nonNull_native();
        *&v103 = *v90;
        sub_1D8B06498(v134, v93, v53);
        sub_1D87A14E4(v126, &qword_1ECA67DE8, &qword_1D8B36A28);
        goto LABEL_72;
      }

      v8 = v91;
      if (v111)
      {
        goto LABEL_95;
      }

      v54 = v110;
      v55 = v112;
      v56 = *&v113;
      v57 = v120;
      sub_1D87A0E38(v126, &v103, &qword_1ECA67DE8, &qword_1D8B36A28);
      v58 = sub_1D8A4E020(v55, v56, v54);
      if (v92)
      {
        goto LABEL_86;
      }

      v59 = v58;
      v108 = 0;
      sub_1D88C5438(v121, &v103);
      *(&v107 + 1) = v59;
      v100 = v105;
      v101 = v106;
      *v99 = v103;
      *&v99[16] = v104;
      v102 = v107;
      v60 = v108;
      if (v57 >= 2)
      {
        sub_1D87A0E38(v126, &v103, &qword_1ECA67DE8, &qword_1D8B36A28);
        v59;
        v62 = sub_1D8A4E020(v55, v56, v54);
        v63 = [objc_allocWithZone(MEMORY[0x1E695F610]) initWithCGColor_];
        v64 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithColor_];
        if (((v56 | v55) & 0x8000000000000000) != 0)
        {
          goto LABEL_94;
        }

        v65 = v64;
        v66 = [v64 imageByCroppingToRect_];

        v67 = sub_1D8A3DE14();
        [v66 extent];
        v69 = v68;
        v71 = v70;
        v73 = v72;
        v75 = v74;
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        [v67 render:v66 toCVPixelBuffer:v62 bounds:DeviceRGB colorSpace:{v69, v71, v73, v75}];
        sub_1D87A14E4(v126, &qword_1ECA67DE8, &qword_1D8B36A28);

        a1 = v90;
        v8 = v91;
      }

      else
      {
        v61 = v59;
        v62 = v60;
        a1 = v90;
      }

      v132[2] = v100;
      v132[3] = v101;
      v132[4] = v102;
      v132[0] = *v99;
      v132[1] = *&v99[16];
      v133 = v62;
      sub_1D881F59C(v132, &v103);
      v77 = swift_isUniquelyReferenced_nonNull_native();
      *&v103 = *a1;
      sub_1D8B06498(v132, v93, v77);

      sub_1D87A14E4(v126, &qword_1ECA67DE8, &qword_1D8B36A28);
      *a1 = v103;
      v105 = v100;
      v106 = v101;
      v107 = v102;
      v103 = *v99;
      v104 = *&v99[16];
      v108 = v62;
      sub_1D881F5F8(&v103);
      goto LABEL_80;
    }

    v26 = *(v14 + 8 * v29);
    ++v28;
    if (v26)
    {
      v28 = v29;
      goto LABEL_30;
    }
  }

LABEL_85:
  __break(1u);
LABEL_86:
  sub_1D87A14E4(v126, &qword_1ECA67DE8, &qword_1D8B36A28);

  sub_1D87A14E4(v126, &qword_1ECA67DE8, &qword_1D8B36A28);

  __swift_destroy_boxed_opaque_existential_1(v122);
  v79 = *(a2 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorageTaskSemaphore);
  if (v79)
  {
    v80 = v79;
    sub_1D8B163B0();
  }

  *a4 = v92;
}

uint64_t sub_1D8A40D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 496) = a5;
  v7 = swift_task_alloc();
  *(v5 + 464) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67DE0, &qword_1D8B36A20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
  *v7 = v5;
  v7[1] = sub_1D8A40E04;
  v10 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v5 + 448, a4, v8, v9, v10);
}

uint64_t sub_1D8A40E04()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_1D8A4130C;
  }

  else
  {
    v2 = sub_1D8A40F18;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8A40F18()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 456);
  if (*(v2 + 16) && (v3 = sub_1D881F7DC(), (v4 & 1) != 0))
  {
    sub_1D87C1470(*(v2 + 56) + 40 * v3, v0 + 408);

    sub_1D87C15B4((v0 + 408), v0 + 368);
    if (*(v1 + 16))
    {
      v5 = sub_1D881F7DC();
      if (v6)
      {
        v7 = *(v1 + 56) + 88 * v5;
        v8 = *v7;
        *(v0 + 120) = *(v7 + 16);
        *(v0 + 104) = v8;
        v9 = *(v7 + 32);
        v10 = *(v7 + 48);
        v11 = *(v7 + 64);
        *(v0 + 184) = *(v7 + 80);
        *(v0 + 168) = v11;
        *(v0 + 152) = v10;
        *(v0 + 136) = v9;
        sub_1D881F59C(v0 + 104, v0 + 192);

        v12 = *(v0 + 392);
        v13 = *(v0 + 400);
        __swift_project_boxed_opaque_existential_1((v0 + 368), v12);
        v14 = *(v0 + 152);
        *(v0 + 48) = *(v0 + 136);
        *(v0 + 64) = v14;
        *(v0 + 80) = *(v0 + 168);
        *(v0 + 96) = *(v0 + 184);
        v15 = *(v0 + 120);
        *(v0 + 16) = *(v0 + 104);
        *(v0 + 32) = v15;
        v16 = *(v13 + 24);
        sub_1D881F59C(v0 + 104, v0 + 280);
        v20 = (v16 + *v16);
        v17 = swift_task_alloc();
        *(v0 + 480) = v17;
        *v17 = v0;
        v17[1] = sub_1D8A41184;

        return v20(v0 + 16, v12, v13);
      }
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 368));
  }

  else
  {
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1D8A41184()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = sub_1D8A41324;
  }

  else
  {
    sub_1D881F5F8(v2 + 104);
    v3 = sub_1D8A412A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8A412A0()
{
  sub_1D881F5F8(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1((v0 + 368));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8A41324()
{
  sub_1D881F5F8(v0 + 104);
  sub_1D881F5F8(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1((v0 + 368));
  v1 = *(v0 + 8);

  return v1();
}

void sub_1D8A413B8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  *(Strong + 16) = 1;
  swift_beginAccess();
  v3 = *(v2 + 88);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  while (v6)
  {
LABEL_12:
    v10 = *(*(v3 + 48) + (__clz(__rbit64(v6)) | (v8 << 6)));
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v2 + 88);
    *(v2 + 88) = 0x8000000000000000;
    v13 = sub_1D881F7DC();
    v15 = v12[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_25;
    }

    v19 = v14;
    if (v12[3] < v18)
    {
      sub_1D8971854(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_1D881F7DC();
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_27;
      }

LABEL_17:
      v21 = v12;
      if (v19)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v24 = v13;
    sub_1D89692F4();
    v13 = v24;
    v21 = v12;
    if (v19)
    {
LABEL_5:
      *(v21[7] + 8 * v13) = 0xFFF0000000000000;
      goto LABEL_6;
    }

LABEL_18:
    v21[(v13 >> 6) + 8] |= 1 << v13;
    *(v21[6] + v13) = v10;
    *(v21[7] + 8 * v13) = 0xFFF0000000000000;
    v22 = v21[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_26;
    }

    v21[2] = v23;
LABEL_6:
    v6 &= v6 - 1;
    *(v2 + 88) = v21;
    swift_endAccess();
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      swift_beginAccess();
      *(v2 + 96) = MEMORY[0x1E69E7CD0];

      return;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1D8B16C30();
  __break(1u);
}

double sub_1D8A41654(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D8B155B0();
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B155E0();
  v16 = *(v8 - 8);
  v17 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 40);
  v12 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = a1;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D89B1AA0;
  aBlock[3] = a2;
  v13 = _Block_copy(aBlock);
  v14 = v11;

  sub_1D8B155D0();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D8A4F044(&qword_1EE0E3A50, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838, &unk_1D8B2FF70);
  sub_1D881CF20(&qword_1EE0E3950, &unk_1ECA66838, &unk_1D8B2FF70, MEMORY[0x1E69E6328]);
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v10, v7, v13);
  _Block_release(v13);

  (*(v18 + 8))(v7, v5);
  (*(v16 + 8))(v10, v17);

  return result;
}

double sub_1D8A41934(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 16) = 0;
  }

  return result;
}

uint64_t sub_1D8A41984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[46] = a7;
  v8[47] = a8;
  v8[44] = a5;
  v8[45] = a6;
  v8[42] = a3;
  v8[43] = a4;
  v8[40] = a1;
  v8[41] = a2;
  v14 = swift_task_alloc();
  v8[48] = v14;
  *v14 = v8;
  v14[1] = sub_1D8A41A58;

  return sub_1D8A41F80(a2, a5, a4, a7, a8);
}

uint64_t sub_1D8A41A58(uint64_t a1)
{
  *(*v1 + 392) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D8A41B58, 0, 0);
}

uint64_t sub_1D8A41B58()
{
  if (*(v0 + 392))
  {
    v1 = *(v0 + 352);
    v2 = *(v0 + 336);
    v3 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v4 = *(v1 + 72);
    if (v4 == 1)
    {
      v5 = 0uLL;
      v6 = 2;
      v7 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
    }

    else
    {
      v13 = *(v0 + 352);
      v14 = *(v13 + 80);
      *(v0 + 16) = *v13;
      v15 = *(v13 + 16);
      v16 = *(v13 + 32);
      v17 = *(v13 + 48);
      v18 = *(v13 + 64);
      *(v0 + 48) = v16;
      *(v0 + 64) = v17;
      *(v0 + 32) = v15;
      *(v0 + 80) = v18;
      *(v0 + 88) = v4;
      *(v0 + 96) = v14;
      sub_1D88C5438(v0 + 16, v0 + 248);
      sub_1D88C5438(v0 + 248, v0 + 176);
      v5 = *(v0 + 176);
      v7 = *(v0 + 192);
      v8 = *(v0 + 208);
      v9 = *(v0 + 224);
      v6 = *(v0 + 240);
    }

    *(v0 + 104) = v5;
    *(v0 + 120) = v7;
    *(v0 + 136) = v8;
    *(v0 + 152) = v9;
    *(v0 + 168) = v6;
    v20 = *(v3 + 32) + **(v3 + 32);
    v19 = swift_task_alloc();
    *(v0 + 400) = v19;
    *v19 = v0;
    v19[1] = sub_1D8A41DA4;

    __asm { BRAA            X8, X16 }
  }

  sub_1D88C53E4();
  swift_allocError();
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 3;
  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D8A41DA4()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_1D8A41F1C;
  }

  else
  {
    v2 = sub_1D8A41EB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8A41EB8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8A41F1C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8A41F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D8A41FA8, 0, 0);
}

uint64_t sub_1D8A41FA8()
{
  v22 = v0;
  (*(*(v0 + 120) + 32))(&v19, *(v0 + 112));
  v1 = v19;
  if (!v20)
  {
    goto LABEL_14;
  }

  v2 = *(v0 + 96);
  sub_1D88C3978(v19, v20);
  v1 = *(v2 + 72);
  if (v1 == 1)
  {
    v1 = 0;
  }

  else
  {
    v3 = v1;
  }

  *(v0 + 128) = v1;
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  v4 = sub_1D8B0AAA4();
  if (v1 && (v4 & 1) != 0)
  {
    v5 = *(v0 + 104);
    v21 = *(v5 + *(type metadata accessor for CVProcessorTaskDescriptor(0) + 20));
    v19 = CVDetection.DetectionType.description.getter();
    v20 = v6;
    v7 = v1;
    MEMORY[0x1DA71EFA0](0x2D7475706E692DLL, 0xE700000000000000);
    *(v0 + 16) = CVPixelBufferGetWidth(v7);
    v8 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v8);

    MEMORY[0x1DA71EFA0](45, 0xE100000000000000);
    *(v0 + 16) = CVPixelBufferGetHeight(v7);
    v9 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v9);

    v10 = v19;
    v11 = v20;
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 112);
    v13 = *(v0 + 120);
    v14 = qword_1ECA675B0;
    *(v0 + 136) = qword_1ECA675B0;
    v15 = CameraSourceFrame.timestamp.getter(v12, v13);
    *(v0 + 40) = v7;
    *(v0 + 80) = 0;
    *(v0 + 16) = v10;
    *(v0 + 24) = v11;
    *(v0 + 32) = v15;
    v16 = v7;

    return MEMORY[0x1EEE6DFA0](sub_1D8A42218, v14, 0);
  }

  else
  {
LABEL_14:
    v17 = *(v0 + 8);

    return v17(v1);
  }
}

uint64_t sub_1D8A42218()
{
  sub_1D8A3B1F4(v0 + 16, 0x7475706E692D7663, 0xEE00616964656D2DLL);
  sub_1D87DC9A0(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D8A422AC, 0, 0);
}

uint64_t sub_1D8A422AC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t CVCoordinator.deinit()
{

  swift_weakDestroy();

  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_logger;
  v2 = sub_1D8B151E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D8A50E28(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_signposter, type metadata accessor for LoggingSignposter);

  sub_1D87A14E4(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorage + 8, &qword_1ECA679F0, &qword_1D8B33D60);
  return v0;
}

uint64_t CVCoordinator.__deallocating_deinit()
{
  CVCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8A4249C()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECA675B0;
  *(v0 + 24) = qword_1ECA675B0;

  return MEMORY[0x1EEE6DFA0](sub_1D8A42534, v1, 0);
}

uint64_t sub_1D8A42534()
{
  sub_1D8A3B1F4(*(v0 + 16), 0xD000000000000010, 0x80000001D8B47FC0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8A425CC()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECA675B0;
  *(v0 + 24) = qword_1ECA675B0;

  return MEMORY[0x1EEE6DFA0](sub_1D8A5A6D4, v1, 0);
}

void sub_1D8A42664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, double a9, float a10, uint64_t a11)
{
  v200 = a7;
  v229 = a6;
  LODWORD(v231) = a5;
  v17 = a1;
  v18 = *(a8 - 8);
  v19 = MEMORY[0x1EEE9AC00](a1);
  v196 = &v194 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v194 - v21;
  v220 = sub_1D8B15610();
  v23 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v219 = (&v194 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v209 = type metadata accessor for DetectionRequest.Originator(0);
  v25 = MEMORY[0x1EEE9AC00](v209);
  v214 = &v194 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v213 = (&v194 - v27);
  v225 = type metadata accessor for DetectionRequest(0);
  v221 = *(v225 - 8);
  v28 = MEMORY[0x1EEE9AC00](v225);
  v226 = &v194 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v233 = (&v194 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v230 = &v194 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v228 = &v194 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v234 = &v194 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v224 = &v194 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v199 = &v194 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v198 = &v194 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v207 = &v194 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v222 = &v194 - v46;
  v202 = v18;
  v201 = a4;
  v208 = v17;
  v195 = v22;
  if (v17)
  {
    v47 = MEMORY[0x1E69E7CD0];
    swift_beginAccess();
    if (*(*(a2 + 96) + 16))
    {

      v48 = sub_1D8B151C0();
      v49 = sub_1D8B16210();

      v50 = v48;
      if (os_log_type_enabled(v48, v49))
      {
        v51 = swift_slowAlloc();
        v232 = swift_slowAlloc();
        v238 = v232;
        *v51 = 134218242;
        *(v51 + 4) = a9;
        *(v51 + 12) = 2080;
        sub_1D87C4938();

        v52 = sub_1D8B16040();
        v54 = v53;

        v55 = v52;
        v18 = v202;
        v56 = sub_1D89AC714(v55, v54, &v238);

        *(v51 + 14) = v56;
        _os_log_impl(&dword_1D8783000, v50, v49, "Resetting CV state for still image processing (timestamp %f) with tasks still in flight: %s", v51, 0x16u);
        v57 = v232;
        __swift_destroy_boxed_opaque_existential_1(v232);
        MEMORY[0x1DA721330](v57, -1, -1);
        v58 = v51;
        a4 = v201;
        MEMORY[0x1DA721330](v58, -1, -1);
      }

      else
      {
      }

      v47 = MEMORY[0x1E69E7CD0];
    }

    *(a2 + 96) = v47;
  }

  v197 = a8;
  v212 = a3;
  v59 = a11;
  v60 = *(a2 + 56);
  v61 = *(v60 + 64);
  v211 = v60 + 64;
  v62 = 1 << *(v60 + 32);
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  else
  {
    v63 = -1;
  }

  v64 = v63 & v61;
  v210 = v60;

  v223 = a2;
  swift_beginAccess();
  v65 = 0;
  v66 = (v62 + 63) >> 6;
  v218 = *MEMORY[0x1E69E8020];
  v217 = (v23 + 104);
  v216 = (v23 + 8);
  __asm { FMOV            V0.2D, #1.0 }

  v206 = _Q0;
  v203 = a11;
  v71 = v221;
  for (i = v66; ; v66 = i)
  {
    if (!v64)
    {
      while (1)
      {
        v73 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          goto LABEL_113;
        }

        if (v73 >= v66)
        {

          v137 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_logger;
          v138 = v195;
          v139 = v197;
          v233 = *(v18 + 16);
          v233(v195, v200, v197);
          v140 = v212;
          swift_retain_n();
          v141 = v223;

          v234 = v137;
          v142 = sub_1D8B151C0();
          v143 = sub_1D8B16200();

          if (os_log_type_enabled(v142, v143))
          {
            v144 = swift_slowAlloc();
            v231 = swift_slowAlloc();
            v237 = v231;
            *v144 = 136315906;
            v145 = CameraSourceFrame.timeDescription.getter(v139, v203);
            LODWORD(v230) = v143;
            v146 = v145;
            v148 = v147;
            v232 = *(v18 + 8);
            (v232)(v138, v139);
            v149 = sub_1D89AC714(v146, v148, &v237);

            *(v144 + 4) = v149;
            *(v144 + 12) = 2048;
            swift_beginAccess();
            v150 = *(*(v140 + 16) + 16);

            *(v144 + 14) = v150;

            *(v144 + 22) = 2080;

            v152 = sub_1D88C7EE0(v151);

            v153 = MEMORY[0x1DA71F1E0](v152, &type metadata for CVDetection.DetectionType);
            v155 = v154;

            v156 = sub_1D89AC714(v153, v155, &v237);
            v141 = v223;

            *(v144 + 24) = v156;
            *(v144 + 32) = 2080;
            v140 = v212;
            swift_beginAccess();
            sub_1D87C4938();

            v157 = sub_1D8B16040();
            v159 = v158;

            v160 = sub_1D89AC714(v157, v159, &v237);

            *(v144 + 34) = v160;
            _os_log_impl(&dword_1D8783000, v142, v230, "[%s] CVCoordinator about to filter %ld requests: %s against inflightTypes: %s", v144, 0x2Au);
            v161 = v231;
            swift_arrayDestroy();
            MEMORY[0x1DA721330](v161, -1, -1);
            v162 = v144;
            v59 = v203;
            MEMORY[0x1DA721330](v162, -1, -1);
          }

          else
          {

            v232 = *(v18 + 8);
            (v232)(v138, v139);
          }

          v163 = v196;
          v164 = swift_beginAccess();
          v165 = *(v140 + 16);
          MEMORY[0x1EEE9AC00](v164);
          *(&v194 - 6) = v139;
          *(&v194 - 5) = v59;
          *(&v194 - 4) = a9;
          v166 = v200;
          *(&v194 - 3) = v141;
          *(&v194 - 2) = v166;
          *(&v194 - 8) = v229 & 1;

          v167 = sub_1D88BFF90(sub_1D8A5A0A0, (&v194 - 8), v165);
          swift_beginAccess();
          *(v140 + 16) = v167;

          v169 = sub_1D88C7EE0(v168);

          v170 = sub_1D87C4904(v169);

          v233(v163, v166, v139);
          swift_retain_n();

          v171 = sub_1D8B151C0();
          v172 = sub_1D8B16200();

          if (os_log_type_enabled(v171, v172))
          {
            v173 = swift_slowAlloc();
            v174 = v163;
            v175 = v140;
            v234 = swift_slowAlloc();
            v236 = v234;
            *v173 = 136315650;
            v176 = CameraSourceFrame.timeDescription.getter(v139, v203);
            v178 = v177;
            (v232)(v174, v139);
            v179 = sub_1D89AC714(v176, v178, &v236);

            *(v173 + 4) = v179;
            *(v173 + 12) = 2048;
            swift_beginAccess();
            v180 = *(*(v175 + 16) + 16);

            *(v173 + 14) = v180;

            *(v173 + 22) = 2080;
            sub_1D87C4938();
            v181 = sub_1D8B16040();
            v183 = sub_1D89AC714(v181, v182, &v236);

            *(v173 + 24) = v183;
            _os_log_impl(&dword_1D8783000, v171, v172, "[%s] CVCoordinator after filtering: %ld requests remain: %s", v173, 0x20u);
            v184 = v234;
            swift_arrayDestroy();
            MEMORY[0x1DA721330](v184, -1, -1);
            MEMORY[0x1DA721330](v173, -1, -1);
          }

          else
          {

            (v232)(v163, v139);
          }

          v185 = 1 << *(v170 + 32);
          v186 = -1;
          if (v185 < 64)
          {
            v186 = ~(-1 << v185);
          }

          v187 = v186 & *(v170 + 56);
          v188 = (v185 + 63) >> 6;

          v189 = 0;
          while (v187)
          {
            v190 = v189;
LABEL_109:
            v191 = __clz(__rbit64(v187));
            v187 &= v187 - 1;
            v192 = *(*(v170 + 48) + (v191 | (v190 << 6)));
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v235 = *(v141 + 88);
            *(v141 + 88) = 0x8000000000000000;
            sub_1D8B05404(v192, isUniquelyReferenced_nonNull_native, a9);
            *(v141 + 88) = v235;
            swift_endAccess();
            swift_beginAccess();
            sub_1D87FC140(&v235, v192);
            swift_endAccess();
          }

          while (1)
          {
            v190 = v189 + 1;
            if (__OFADD__(v189, 1))
            {
              goto LABEL_114;
            }

            if (v190 >= v188)
            {

              return;
            }

            v187 = *(v170 + 56 + 8 * v190);
            ++v189;
            if (v187)
            {
              v189 = v190;
              goto LABEL_109;
            }
          }
        }

        v64 = *(v211 + 8 * v73);
        ++v65;
        if (v64)
        {
          v65 = v73;
          break;
        }
      }
    }

    v215 = v64;
    v74 = __clz(__rbit64(v64)) | (v65 << 6);
    v75 = *(*(v210 + 48) + v74);
    v76 = *(v210 + 56) + 8 * v74;
    v77 = *v76;
    LODWORD(v76) = *(v76 + 4);
    v78 = v213;
    *v213 = v77;
    LODWORD(v227) = v76;
    *(v78 + 4) = v76;
    swift_storeEnumTagMultiPayload();
    sub_1D8A50DC0(v78, v214, type metadata accessor for DetectionRequest.Originator);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D8A50E28(v214, type metadata accessor for DetectionRequest.Originator);
      if (v75 > 0xD || ((1 << v75) & 0x3002) == 0)
      {
        v80 = MEMORY[0x1E69E7CD0];
      }

      else
      {
        v80 = sub_1D8A50348(&unk_1F5428C08, &qword_1ECA67E58, &qword_1D8B36A78);
      }

      v81 = 0;
      v82 = 1 << *(v80 + 32);
      if (v82 < 64)
      {
        v83 = ~(-1 << v82);
      }

      else
      {
        v83 = -1;
      }

      v84 = v83 & *(v80 + 56);
      v85 = (v82 + 63) >> 6;
      while (v84)
      {
LABEL_31:
        v84 &= v84 - 1;
      }

      while (1)
      {
        v86 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          break;
        }

        if (v86 >= v85)
        {

          v78 = v213;
          goto LABEL_38;
        }

        v84 = *(v80 + 56 + 8 * v86);
        ++v81;
        if (v84)
        {
          v81 = v86;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

LABEL_38:
    v204 = v77;
    v87 = v207;
    *v207 = v75;
    v88 = v225;
    sub_1D8A50DC0(v78, v87 + *(v225 + 20), type metadata accessor for DetectionRequest.Originator);
    v89 = type metadata accessor for DetectionRequest.Annotation(0);
    v90 = sub_1D8A4F044(&qword_1EE0E6B20, 255, type metadata accessor for DetectionRequest.Annotation, &protocol conformance descriptor for DetectionRequest.Annotation);
    v91 = MEMORY[0x1DA71F530](0, v89, v90);
    sub_1D8A50E28(v78, type metadata accessor for DetectionRequest.Originator);
    *(v87 + v88[6]) = v91;
    v92 = v87 + v88[7];
    *v92 = 0;
    *(v92 + 8) = 0;
    *(v92 + 16) = v206;
    *(v87 + v88[8]) = a9;
    sub_1D8A512F0(v87, v222, type metadata accessor for DetectionRequest);
    if ((v208 & 1) != 0 && v75 <= 6)
    {
      if (((1 << v75) & 0x69) != 0)
      {
        goto LABEL_41;
      }

      if (v75 == 4)
      {
        if (qword_1EE0E54C0 != -1)
        {
          swift_once();
        }

        if (sub_1D8B0AAA4())
        {
LABEL_41:
          v93 = v199;
          sub_1D8A50DC0(v222, v199, type metadata accessor for DetectionRequest);
          swift_beginAccess();
          v94 = v198;
          sub_1D87FB834(v198, v93);
          swift_endAccess();
          sub_1D8A50E28(v94, type metadata accessor for DetectionRequest);
          goto LABEL_14;
        }
      }
    }

    v95 = *(a4 + 16);
    LODWORD(v232) = v75;
    if (v95)
    {
      v96 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v97 = *(v71 + 72);
      v98 = a4 + v96;
      v99 = MEMORY[0x1E69E7CC0];
      v100 = v224;
      do
      {
        sub_1D8A50DC0(v98, v100, type metadata accessor for DetectionRequest);
        if (*v100 == v75)
        {
          sub_1D8A512F0(v100, v234, type metadata accessor for DetectionRequest);
          v101 = swift_isUniquelyReferenced_nonNull_native();
          v237 = v99;
          if ((v101 & 1) == 0)
          {
            sub_1D87F45E4(0, *(v99 + 16) + 1, 1);
            v100 = v224;
            v99 = v237;
          }

          v103 = *(v99 + 16);
          v102 = *(v99 + 24);
          if (v103 >= v102 >> 1)
          {
            sub_1D87F45E4((v102 > 1), v103 + 1, 1);
            v100 = v224;
            v99 = v237;
          }

          *(v99 + 16) = v103 + 1;
          sub_1D8A512F0(v234, v99 + v96 + v103 * v97, type metadata accessor for DetectionRequest);
          v75 = v232;
        }

        else
        {
          sub_1D8A50E28(v100, type metadata accessor for DetectionRequest);
        }

        v98 += v97;
        --v95;
      }

      while (v95);
    }

    else
    {
      v99 = MEMORY[0x1E69E7CC0];
    }

    if (v227)
    {
      break;
    }

    v18 = v202;
    v59 = v203;
    a4 = v201;
    if (v231)
    {
      v120 = v223;
      v121 = *(v223 + 40);
      v122 = v219;
      *v219 = v121;
      v123 = v220;
      (*v217)(v122, v218, v220);
      v124 = v121;
      LOBYTE(v121) = sub_1D8B15620();
      (*v216)(v122, v123);
      if ((v121 & 1) == 0)
      {
        goto LABEL_120;
      }

      v125 = *(v120 + 88);
      if (!*(v125 + 16))
      {
        goto LABEL_121;
      }

      v126 = sub_1D881F7DC();
      if ((v127 & 1) == 0)
      {
        goto LABEL_122;
      }

      v128 = a9 - *(*(v125 + 56) + 8 * v126);
      if ((0.95 / v128) < (v204 * a10))
      {
        goto LABEL_41;
      }
    }

LABEL_14:
    v64 = (v215 - 1) & v215;
    sub_1D8A50E28(v222, type metadata accessor for DetectionRequest);
  }

  if (v227 != 1)
  {
    v129 = *(v99 + 16);
    if (v129)
    {
      v130 = 0;
      v72 = MEMORY[0x1E69E7CC0];
      v232 = *(v99 + 16);
      while (v130 < *(v99 + 16))
      {
        v131 = (*(v71 + 80) + 32) & ~*(v71 + 80);
        v132 = *(v71 + 72);
        v133 = v228;
        sub_1D8A50DC0(v99 + v131 + v132 * v130, v228, type metadata accessor for DetectionRequest);
        if ((v231 & 1) != 0 || (v229 & 1) != 0 && *(v133 + *(v225 + 32)) == a9)
        {
          sub_1D8A512F0(v133, v230, type metadata accessor for DetectionRequest);
          v134 = swift_isUniquelyReferenced_nonNull_native();
          v237 = v72;
          if ((v134 & 1) == 0)
          {
            sub_1D87F45E4(0, *(v72 + 16) + 1, 1);
            v129 = v232;
            v72 = v237;
          }

          v136 = *(v72 + 16);
          v135 = *(v72 + 24);
          if (v136 >= v135 >> 1)
          {
            sub_1D87F45E4((v135 > 1), v136 + 1, 1);
            v129 = v232;
            v72 = v237;
          }

          *(v72 + 16) = v136 + 1;
          sub_1D8A512F0(v230, v72 + v131 + v136 * v132, type metadata accessor for DetectionRequest);
        }

        else
        {
          sub_1D8A50E28(v133, type metadata accessor for DetectionRequest);
        }

        if (v129 == ++v130)
        {
          goto LABEL_13;
        }
      }

LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    goto LABEL_12;
  }

  v227 = *(v99 + 16);
  if (!v227)
  {
LABEL_12:
    v72 = MEMORY[0x1E69E7CC0];
LABEL_13:

    swift_beginAccess();
    sub_1D8AB9EEC(v72);
    swift_endAccess();

    v18 = v202;
    v59 = v203;
    a4 = v201;
    goto LABEL_14;
  }

  v104 = 0;
  v105 = v204 * a10;
  v72 = MEMORY[0x1E69E7CC0];
  while (v104 < *(v99 + 16))
  {
    v106 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v107 = *(v71 + 72);
    sub_1D8A50DC0(v99 + v106 + v107 * v104, v233, type metadata accessor for DetectionRequest);
    if (v231)
    {
      v108 = v223;
      v109 = *(v223 + 40);
      v110 = v219;
      *v219 = v109;
      v111 = v220;
      (*v217)(v110, v218, v220);
      v112 = v109;
      LOBYTE(v109) = sub_1D8B15620();
      (*v216)(v110, v111);
      if ((v109 & 1) == 0)
      {
        goto LABEL_117;
      }

      v113 = *(v108 + 88);
      if (!*(v113 + 16))
      {
        goto LABEL_118;
      }

      v114 = sub_1D881F7DC();
      if ((v115 & 1) == 0)
      {
        goto LABEL_119;
      }

      v116 = a9 - *(*(v113 + 56) + 8 * v114);
      v71 = v221;
      if ((0.95 / v116) < v105)
      {
        goto LABEL_71;
      }
    }

    if ((v229 & 1) != 0 && *(v233 + *(v225 + 32)) == a9)
    {
LABEL_71:
      sub_1D8A512F0(v233, v226, type metadata accessor for DetectionRequest);
      v117 = swift_isUniquelyReferenced_nonNull_native();
      v237 = v72;
      if ((v117 & 1) == 0)
      {
        sub_1D87F45E4(0, *(v72 + 16) + 1, 1);
        v72 = v237;
      }

      v119 = *(v72 + 16);
      v118 = *(v72 + 24);
      if (v119 >= v118 >> 1)
      {
        sub_1D87F45E4((v118 > 1), v119 + 1, 1);
        v72 = v237;
      }

      *(v72 + 16) = v119 + 1;
      sub_1D8A512F0(v226, v72 + v106 + v119 * v107, type metadata accessor for DetectionRequest);
    }

    else
    {
      sub_1D8A50E28(v233, type metadata accessor for DetectionRequest);
    }

    if (v227 == ++v104)
    {
      goto LABEL_13;
    }
  }

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
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
}

uint64_t sub_1D8A43EB4(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, double a7)
{
  v57 = a6;
  v7 = a5;
  v59 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v58 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DetectionRequest(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v50 - v19;
  if (*&a1[*(v18 + 32)] + 1.0 < a7)
  {
    v56 = v7;
    sub_1D8A50DC0(a1, &v50 - v19, type metadata accessor for DetectionRequest);
    sub_1D8A50DC0(a1, v17, type metadata accessor for DetectionRequest);
    v21 = sub_1D8B151C0();
    v22 = sub_1D8B16210();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v52 = v22;
      v24 = v23;
      v53 = swift_slowAlloc();
      v62[0] = v53;
      *v24 = 134218498;
      *(v24 + 4) = a7;
      *(v24 + 12) = 2080;
      LOBYTE(v61[0]) = *v20;
      v51 = v21;
      v25 = CVDetection.DetectionType.description.getter();
      v54 = a3;
      v27 = v26;
      v55 = a4;
      sub_1D8A50E28(v20, type metadata accessor for DetectionRequest);
      v28 = sub_1D89AC714(v25, v27, v62);
      a3 = v54;

      *(v24 + 14) = v28;
      *(v24 + 22) = 2048;
      v29 = *&v17[*(v14 + 32)];
      LOBYTE(a4) = v55;
      sub_1D8A50E28(v17, type metadata accessor for DetectionRequest);
      *(v24 + 24) = v29;
      v30 = v51;
      _os_log_impl(&dword_1D8783000, v51, v52, "%f: CV servicing aged request of type %s from %f", v24, 0x20u);
      v31 = v53;
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1DA721330](v31, -1, -1);
      MEMORY[0x1DA721330](v24, -1, -1);
    }

    else
    {

      sub_1D8A50E28(v17, type metadata accessor for DetectionRequest);
      sub_1D8A50E28(v20, type metadata accessor for DetectionRequest);
    }

    v7 = v56;
  }

  v32 = *a1;
  swift_beginAccess();
  if (*(*(a2 + 104) + 16) && (sub_1D881F7DC(), (v33 & 1) != 0))
  {
    v34 = v59;
    v35 = a3;
    v36 = v58;
    (*(v59 + 16))(v58, v35, v7);
    v37 = sub_1D8B151C0();
    v38 = sub_1D8B16200();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v61[0] = v56;
      *v39 = 136315650;
      v40 = CameraSourceFrame.timeDescription.getter(v7, v57);
      v41 = v7;
      v43 = v42;
      (*(v34 + 8))(v36, v41);
      v44 = sub_1D89AC714(v40, v43, v61);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      v60 = v32;
      v45 = CVDetection.DetectionType.description.getter();
      v47 = sub_1D89AC714(v45, v46, v61);

      *(v39 + 14) = v47;
      *(v39 + 22) = 1024;
      *(v39 + 24) = a4 & 1;
      _os_log_impl(&dword_1D8783000, v37, v38, "[%s] CVCoordinator filtering out %s - still busy loading (isHighResolutionStill: %{BOOL}d)", v39, 0x1Cu);
      v48 = v56;
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v48, -1, -1);
      MEMORY[0x1DA721330](v39, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v36, v7);
    }
  }

  else
  {
    swift_beginAccess();
    if (sub_1D89AD844())
    {
      LOBYTE(a4) = 0;
    }

    else
    {
      v63.origin.x = 0.0;
      v63.origin.y = 0.0;
      v63.size.width = 1.0;
      v63.size.height = 1.0;
      LOBYTE(a4) = CGRectIntersectsRect(v63, *&a1[*(v14 + 28)]);
    }
  }

  return a4 & 1;
}

void sub_1D8A44400(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v103 = a8;
  v95 = a6;
  v110 = a4;
  v111 = a5;
  v96 = a3;
  v94 = a2;
  v9 = *(a7 - 8);
  v104 = a7;
  v105 = v9;
  MEMORY[0x1EEE9AC00](a1);
  v102 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v101 = v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DetectionRequest(0);
  v13 = MEMORY[0x1EEE9AC00](v109);
  v100 = v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v99 = v92 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v92 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v92 - v20;
  v116 = type metadata accessor for ProcessorState(0);
  v22 = *(v116 - 8);
  v23 = MEMORY[0x1EEE9AC00](v116);
  v112 = v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v114 = v92 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = v92 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v113 = v92 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = v92 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v37 = v92 - v36;
  v93 = a1;
  v38 = *a1;
  v39 = *(v38 + 16);
  v115 = v29;
  if (v39)
  {
    v117 = MEMORY[0x1E69E7CC0];

    sub_1D87F4140(0, v39, 0);
    v40 = v117;
    v41 = *(v22 + 80);
    v106 = v38;
    v107 = v22;
    v42 = v38 + ((v41 + 32) & ~v41);
    v43 = *(v22 + 72);
    v108 = (v34 + 8);
    while (1)
    {
      sub_1D8A50DC0(v42, v37, type metadata accessor for ProcessorState);
      sub_1D8A512F0(v37, v34, type metadata accessor for ProcessorState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_7;
      }

      if (EnumCaseMultiPayload != 1)
      {
        break;
      }

      v45 = v101;
      sub_1D8A512F0(v34, v101, type metadata accessor for DetectionResult);
      sub_1D8A50DC0(v45, v19, type metadata accessor for DetectionRequest);
      sub_1D8A50E28(v45, type metadata accessor for DetectionResult);
LABEL_8:
      sub_1D8A512F0(v19, v21, type metadata accessor for DetectionRequest);
      v46 = *&v21[*(v109 + 32)];
      sub_1D8A50E28(v21, type metadata accessor for DetectionRequest);
      v117 = v40;
      v48 = *(v40 + 16);
      v47 = *(v40 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1D87F4140((v47 > 1), v48 + 1, 1);
        v40 = v117;
      }

      *(v40 + 16) = v48 + 1;
      *(v40 + 8 * v48 + 32) = v46;
      v42 += v43;
      --v39;
      v29 = v115;
      if (!v39)
      {

        sub_1D8918E7C(v40);

        v22 = v107;
        goto LABEL_12;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

LABEL_7:
    sub_1D8A512F0(v34, v19, type metadata accessor for DetectionRequest);
    goto LABEL_8;
  }

LABEL_12:
  v49 = *(v96 + 16);
  v50 = v104;
  v51 = v102;
  v52 = v113;
  if (v49)
  {
    v53 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v54 = *(v105 + 16);
    v108 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_logger;
    v109 = v54;
    v55 = v96 + v53;
    v97 = v112 + 8;
    v56 = *(v22 + 72);
    v106 = (v105 + 8);
    v107 = v56;
    v92[2] = 0x80000001D8B439A0;
    v92[1] = 0x80000001D8B439C0;
    *&v35 = 136315650;
    v98 = v35;
    v105 += 16;
    v54(v102, v111, v104);
    while (1)
    {
      sub_1D8A50DC0(v55, v52, type metadata accessor for ProcessorState);
      sub_1D8A50DC0(v55, v29, type metadata accessor for ProcessorState);
      v57 = sub_1D8B151C0();
      v58 = sub_1D8B16230();
      if (!os_log_type_enabled(v57, v58))
      {

        sub_1D8A50E28(v29, type metadata accessor for ProcessorState);
        sub_1D8A50E28(v52, type metadata accessor for ProcessorState);
        (*v106)(v51, v50);
        goto LABEL_15;
      }

      v59 = swift_slowAlloc();
      v60 = v51;
      v61 = swift_slowAlloc();
      v119[0] = v61;
      *v59 = v98;
      v62 = CameraSourceFrame.timeDescription.getter(v50, v103);
      v63 = v50;
      v65 = v64;
      (*v106)(v60, v63);
      v66 = sub_1D89AC714(v62, v65, v119);

      *(v59 + 4) = v66;
      *(v59 + 12) = 2080;
      sub_1D8A50DC0(v52, v114, type metadata accessor for ProcessorState);
      v67 = swift_getEnumCaseMultiPayload();
      v68 = type metadata accessor for ProcessorState;
      if (v67)
      {
        if (v67 == 1)
        {
          v69 = 0xE900000000000064;
          v68 = type metadata accessor for ProcessorState;
          v70 = 0x6574656C706D6F43;
        }

        else
        {
          v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
          v72 = (v114 + *(v71 + 48));
          v73 = *v72;
          v74 = v72[1];
          v117 = 0x28646574726F6241;
          v118 = 0xE800000000000000;
          MEMORY[0x1DA71EFA0](v73, v74);

          MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
          v70 = v117;
          v69 = v118;
          v68 = type metadata accessor for DetectionRequest;
        }
      }

      else
      {
        v69 = 0xE800000000000000;
        v70 = 0x6465756575716E45;
      }

      v75 = v115;
      sub_1D8A50E28(v114, v68);
      sub_1D8A50E28(v113, type metadata accessor for ProcessorState);
      v76 = sub_1D89AC714(v70, v69, v119);

      *(v59 + 14) = v76;
      *(v59 + 22) = 2080;
      sub_1D8A50DC0(v75, v112, type metadata accessor for ProcessorState);
      v77 = swift_getEnumCaseMultiPayload();
      if (!v77)
      {
        break;
      }

      v78 = v100;
      if (v77 != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

        v80 = v112;
        goto LABEL_28;
      }

      v79 = v101;
      sub_1D8A512F0(v112, v101, type metadata accessor for DetectionResult);
      sub_1D8A50DC0(v79, v78, type metadata accessor for DetectionRequest);
      sub_1D8A50E28(v79, type metadata accessor for DetectionResult);
LABEL_29:
      v81 = v99;
      sub_1D8A512F0(v78, v99, type metadata accessor for DetectionRequest);
      v82 = *v81;
      sub_1D8A50E28(v81, type metadata accessor for DetectionRequest);
      v83 = 0xE900000000000067;
      v84 = 0x6E69646E756F7267;
      switch(v82)
      {
        case 1:
          v84 = 0x6465646E756F7267;
          v85 = 0x6573726150;
          goto LABEL_44;
        case 2:
          v83 = 0xE400000000000000;
          v84 = 1635018093;
          break;
        case 3:
          v83 = 0xE600000000000000;
          v84 = 0x7463656A626FLL;
          break;
        case 4:
          v83 = 0xE500000000000000;
          v84 = 0x6573726170;
          break;
        case 5:
          v83 = 0xE400000000000000;
          v84 = 1954047348;
          break;
        case 6:
          v83 = 0xE600000000000000;
          v84 = 0x65646F437271;
          break;
        case 7:
          v83 = 0xE700000000000000;
          v84 = 0x70696C43707061;
          break;
        case 8:
          v84 = 0x6E696D6165727473;
          v85 = 0x7478655467;
LABEL_44:
          v83 = v85 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 9:
          v84 = 0x6C61636974726576;
          v83 = 0xEF746E65746E6F43;
          break;
        case 10:
          v83 = 0xEA00000000006C61;
          v84 = 0x646F6D69746C756DLL;
          break;
        case 11:
          v84 = 0x69746568746E7973;
          v83 = 0xE900000000000063;
          break;
        case 12:
          v84 = 0xD000000000000017;
          v86 = &v120;
          goto LABEL_40;
        case 13:
          v84 = 0xD00000000000001CLL;
          v86 = &v121;
LABEL_40:
          v83 = *(v86 - 32);
          break;
        default:
          break;
      }

      v29 = v115;
      sub_1D8A50E28(v115, type metadata accessor for ProcessorState);
      v87 = sub_1D89AC714(v84, v83, v119);

      *(v59 + 24) = v87;
      _os_log_impl(&dword_1D8783000, v57, v58, "[%s] %s for %s", v59, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v61, -1, -1);
      MEMORY[0x1DA721330](v59, -1, -1);

      v50 = v104;
      v51 = v102;
      v52 = v113;
LABEL_15:
      v55 += v107;
      if (!--v49)
      {
        goto LABEL_46;
      }

      (v109)(v51, v111, v50);
    }

    v80 = v112;
    v78 = v100;
LABEL_28:
    sub_1D8A512F0(v80, v78, type metadata accessor for DetectionRequest);
    goto LABEL_29;
  }

LABEL_46:
  v117 = *v93;

  sub_1D88F480C(v88);
  v89 = sub_1D87C4778(v117);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1D8AE8A00(v94, v89, AssociatedTypeWitness, AssociatedConformanceWitness);
}

void sub_1D8A450C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a3;
  v29 = a6;
  v31 = a4;
  v27 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v26 - v12;
  v14 = type metadata accessor for ProcessorState(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a2 + 40);
  sub_1D8A50DC0(a1, v17, type metadata accessor for ProcessorState);
  (*(v10 + 16))(v13, v28, AssociatedTypeWitness);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = (v16 + v18 + *(v10 + 80)) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v29;
  *(v21 + 16) = a5;
  *(v21 + 24) = v22;
  sub_1D8A512F0(v17, v21 + v18, type metadata accessor for ProcessorState);
  (*(v10 + 32))(v21 + v19, v13, AssociatedTypeWitness);
  *(v21 + v20) = v27;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v31;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1D8A59F70;
  *(v23 + 24) = v21;
  aBlock[4] = sub_1D8A5A6F0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8A3EDFC;
  aBlock[3] = &block_descriptor_452;
  v24 = _Block_copy(aBlock);
  v25 = v30;

  dispatch_sync(v25, v24);

  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
  }
}

double sub_1D8A4541C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28[1] = a4;
  v9 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProcessorState(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8A50DC0(a1, v15, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D8A512F0(v15, v11, type metadata accessor for DetectionResult);
      sub_1D8A50DC0(v11, v18, type metadata accessor for DetectionRequest);
      sub_1D8A50E28(v11, type metadata accessor for DetectionResult);
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
  }

  sub_1D8A512F0(v15, v18, type metadata accessor for DetectionRequest);
LABEL_6:
  v20 = *v18;
  sub_1D8A50E28(v18, type metadata accessor for DetectionRequest);
  swift_beginAccess();
  sub_1D88BBDAC(v20, &v29);
  swift_endAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63350, &qword_1D8B1E928);
    v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D8B1AB90;
    sub_1D8A50DC0(a1, v23 + v22, type metadata accessor for ProcessorState);
    sub_1D8A57B18(v23);
    v25 = v24;
    swift_setDeallocating();
    sub_1D8A50E28(v23 + v22, type metadata accessor for ProcessorState);
    swift_deallocClassInstance();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1D8AE8A00(a2, v25, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  return result;
}

uint64_t sub_1D8A457AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v33 = a4;
  v36 = a5;
  v34 = type metadata accessor for CVProcessorTaskDescriptor(0);
  v8 = MEMORY[0x1EEE9AC00](v34);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v13, a2, a3);
  v35 = a1;
  sub_1D8A50DC0(a1, v10, type metadata accessor for CVProcessorTaskDescriptor);
  v14 = sub_1D8B151C0();
  v15 = sub_1D8B16230();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v15;
    v17 = v16;
    v32 = swift_slowAlloc();
    v38 = v32;
    *v17 = 136315394;
    v18 = CameraSourceFrame.timeDescription.getter(a3, v33);
    v20 = v19;
    (*(v11 + 8))(v13, a3);
    v21 = sub_1D89AC714(v18, v20, &v38);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = v34;
    v37 = v10[*(v34 + 20)];
    v23 = CVDetection.DetectionType.description.getter();
    v25 = v24;
    sub_1D8A50E28(v10, type metadata accessor for CVProcessorTaskDescriptor);
    v26 = sub_1D89AC714(v23, v25, &v38);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_1D8783000, v14, v31, "[%s] Enqueued for %s", v17, 0x16u);
    v27 = v32;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v27, -1, -1);
    MEMORY[0x1DA721330](v17, -1, -1);

    v28 = v22;
  }

  else
  {

    sub_1D8A50E28(v10, type metadata accessor for CVProcessorTaskDescriptor);
    (*(v11 + 8))(v13, a3);
    v28 = v34;
  }

  sub_1D8A50DC0(v35 + *(v28 + 20), v36, type metadata accessor for DetectionRequest);
  type metadata accessor for ProcessorState(0);
  return swift_storeEnumTagMultiPayload();
}

os_unfair_lock_s *sub_1D8A45B14(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = v5;
  v21 = MEMORY[0x1E69E7CC8];
  v13 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorageTaskSemaphore;
  v14 = *(v5 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorageTaskSemaphore);
  if (v14)
  {
    v15 = v14;
    sub_1D8B163A0();

    v16 = *(v7 + v13);
    *(v7 + v13) = 0;
  }

  v17 = v7 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorage;
  os_unfair_lock_lock((v7 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorage));
  sub_1D8A48B5C((v17 + 8), a1, &v21, v7, a2, a3 | ((HIDWORD(a3) & 1) << 32), a4, a5, &v20, &v19);
  os_unfair_lock_unlock(v17);
  if (!v6)
  {
    v17 = v20;
  }

  return v17;
}

uint64_t sub_1D8A45C4C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 64) = v11;
  *(v9 + 72) = v12;
  *(v9 + 48) = a8;
  *(v9 + 56) = a9;
  *(v9 + 32) = a6;
  *(v9 + 40) = a7;
  *(v9 + 24) = a5;
  *(v9 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D8A45C84, 0, 0);
}

uint64_t sub_1D8A45C84(uint64_t a1)
{
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if (sub_1D8B0AAA4())
  {
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v2 = qword_1ECA675B0;
    v1[10] = qword_1ECA675B0;

    return MEMORY[0x1EEE6DFA0](sub_1D8A45E38, v2, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v1[11] = v3;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *v3 = v1;
    v3[1] = sub_1D8824954;
    v6 = v1[6];
    v7 = v1[7];
    v8 = v1[4];
    v9 = v1[5];

    return sub_1D8A45F4C(v8, v9, v6, v7, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_1D8A45E38()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 16);
  if (*(v2 + 160) < v3)
  {
    *(v2 + 160) = v3;
  }

  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *v4 = v0;
  v4[1] = sub_1D8824954;
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);

  return sub_1D8A45F4C(v9, v10, v7, v8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1D8A45F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D70, &unk_1D8B25DD0);
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v9 = sub_1D8B15130();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A4608C, 0, 0);
}

uint64_t sub_1D8A4608C()
{
  v50 = v0;
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 16);
  v4 = CameraSourceFrame.timestamp.getter(v2, v1);
  (*(v1 + 40))(v48, v2, v1);
  v5 = v49;
  v6 = *(v3 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v42 = v49;
    v8 = *(v0 + 80);
    v44 = *(v0 + 72);
    v9 = *(v0 + 16);
    v48[0] = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v6, 0);
    v10 = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v11 = v48[0];
    v43 = *(v8 + 72);
    v12 = &unk_1ECA67D70;
    do
    {
      v46 = v11;
      v13 = *(v0 + 88);
      sub_1D87A0E38(v10, v13, v12, &unk_1D8B25DD0);
      v14 = v13 + *(v44 + 48);
      v15 = 0xE900000000000067;
      v16 = 0x6E69646E756F7267;
      switch(*(v14 + *(type metadata accessor for CVProcessorTaskDescriptor(0) + 20)))
      {
        case 1:
          v16 = 0x6465646E756F7267;
          v17 = 0x6573726150;
          goto LABEL_17;
        case 2:
          v15 = 0xE400000000000000;
          v16 = 1635018093;
          break;
        case 3:
          v15 = 0xE600000000000000;
          v16 = 0x7463656A626FLL;
          break;
        case 4:
          v15 = 0xE500000000000000;
          v16 = 0x6573726170;
          break;
        case 5:
          v15 = 0xE400000000000000;
          v16 = 1954047348;
          break;
        case 6:
          v15 = 0xE600000000000000;
          v16 = 0x65646F437271;
          break;
        case 7:
          v15 = 0xE700000000000000;
          v16 = 0x70696C43707061;
          break;
        case 8:
          v16 = 0x6E696D6165727473;
          v17 = 0x7478655467;
LABEL_17:
          v15 = v17 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 9:
          v16 = 0x6C61636974726576;
          v15 = 0xEF746E65746E6F43;
          break;
        case 0xA:
          v15 = 0xEA00000000006C61;
          v16 = 0x646F6D69746C756DLL;
          break;
        case 0xB:
          v16 = 0x69746568746E7973;
          v15 = 0xE900000000000063;
          break;
        case 0xC:
          v16 = 0xD000000000000017;
          v15 = 0x80000001D8B439C0;
          break;
        case 0xD:
          v16 = 0xD00000000000001CLL;
          v15 = 0x80000001D8B439A0;
          break;
        default:
          break;
      }

      v18 = v12;
      sub_1D87A14E4(*(v0 + 88), v12, &unk_1D8B25DD0);
      v11 = v46;
      v48[0] = v46;
      v20 = *(v46 + 16);
      v19 = *(v46 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D87F3F54((v19 > 1), v20 + 1, 1);
        v11 = v48[0];
      }

      *(v11 + 16) = v20 + 1;
      v21 = v11 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v15;
      v10 += v43;
      --v6;
      v12 = v18;
    }

    while (v6);
    v7 = v11;
    v5 = v42;
  }

  type metadata accessor for LoggingSignposter(0);

  sub_1D8B15120();
  v22 = sub_1D8B15150();
  v23 = sub_1D8B16370();

  if (sub_1D8B16460())
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v48[0] = v25;
    *v24 = 136315138;
    v26 = MEMORY[0x1DA71F1E0](v7, MEMORY[0x1E69E6158]);
    v28 = v27;

    v29 = sub_1D89AC714(v26, v28, v48);

    *(v24 + 4) = v29;
    v30 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v22, v23, v30, "CVCoordinator.serviceProcessorTasks", "detectionTypes: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1DA721330](v25, -1, -1);
    MEMORY[0x1DA721330](v24, -1, -1);
  }

  else
  {
  }

  v31 = *(v0 + 120);
  v32 = *(v0 + 96);
  v33 = *(v0 + 104);
  v34 = *(v0 + 64);
  v36 = *(v0 + 16);
  v35 = *(v0 + 24);
  v45 = *(v0 + 48);
  v47 = *(v0 + 32);
  (*(v33 + 16))(*(v0 + 112), v31, v32);
  sub_1D8B151A0();
  swift_allocObject();
  *(v0 + 128) = sub_1D8B15190();
  (*(v33 + 8))(v31, v32);
  v37 = type metadata accessor for ProcessorState(0);
  v38 = swift_task_alloc();
  *(v0 + 136) = v38;
  *(v38 + 16) = v45;
  *(v38 + 32) = v36;
  *(v38 + 40) = v34;
  *(v38 + 48) = v35;
  *(v38 + 56) = v4;
  *(v38 + 64) = v5;
  *(v38 + 72) = v47;
  v39 = swift_task_alloc();
  *(v0 + 144) = v39;
  *v39 = v0;
  v39[1] = sub_1D8A46664;
  v40 = MEMORY[0x1E69E7CA8] + 8;
  v52 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v39, v37, v40, 0, 0, &unk_1D8B369A8, v38, v37);
}

uint64_t sub_1D8A46664()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8A4677C, 0, 0);
}

uint64_t sub_1D8A4677C()
{
  sub_1D8A46818(v0[8], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D8A46818(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D8B15170();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B15130();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LoggingSignposter(0);
  v10 = sub_1D8B15150();
  sub_1D8B15180();
  v11 = sub_1D8B16360();
  if (sub_1D8B16460())
  {

    sub_1D8B151B0();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v10, v11, v14, "CVCoordinator.serviceProcessorTasks", v12, v13, 2u);
    MEMORY[0x1DA721330](v13, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D8A46A7C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 472) = v17;
  *(v9 + 480) = v18;
  *(v9 + 456) = a8;
  *(v9 + 464) = a9;
  *(v9 + 353) = a7;
  *(v9 + 448) = a1;
  *(v9 + 432) = a5;
  *(v9 + 440) = a6;
  *(v9 + 416) = a3;
  *(v9 + 424) = a4;
  v10 = type metadata accessor for ProcessorState(0);
  *(v9 + 488) = v10;
  *(v9 + 496) = *(v10 - 8);
  *(v9 + 504) = swift_task_alloc();
  v11 = *(v17 - 8);
  *(v9 + 512) = v11;
  *(v9 + 520) = *(v11 + 64);
  *(v9 + 528) = swift_task_alloc();
  v12 = *(type metadata accessor for CVProcessorTaskDescriptor(0) - 8);
  *(v9 + 536) = v12;
  *(v9 + 544) = *(v12 + 64);
  *(v9 + 552) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  *(v9 + 560) = swift_task_alloc();
  *(v9 + 568) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64948, &unk_1D8B369B0);
  *(v9 + 576) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67D80, &qword_1D8B25E20);
  *(v9 + 584) = v13;
  *(v9 + 592) = *(v13 - 8);
  *(v9 + 600) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D70, &unk_1D8B25DD0);
  *(v9 + 608) = v14;
  *(v9 + 616) = *(v14 - 8);
  *(v9 + 624) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A46D5C, 0, 0);
}