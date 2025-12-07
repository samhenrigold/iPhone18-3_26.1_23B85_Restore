uint64_t sub_1000716D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, __n128))
{
  v57 = a3;
  v49 = a2;
  v56 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v56 - 8);
  __chkstk_darwin(v56);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v55 = &v46 - v12;
  v13 = type metadata accessor for TaskHistory.Previous(0);
  v51 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  __chkstk_darwin(v19);
  v21 = &v46 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v46 - v24;
  result = a5(a1, a4, v23);
  v52 = *(result + 16);
  if (v52)
  {
    v53 = v10;
    v54 = result;
    v46 = v8;
    v47 = v18;
    v27 = 0;
    v50 = result + 32;
    v48 = v15;
    do
    {
      if (v27 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v58 = v27;
      v28 = *(v57 + 16);
      if (!v28)
      {
        goto LABEL_3;
      }

      v59 = *(v50 + 4 * v58);
      v29 = v57 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
      v30 = *(v51 + 72);
      v31 = v29;
      v32 = v28;
      while (1)
      {
        sub_10006F6C4(v31, v25, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v25, v21, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_10006F72C(v21, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v31 += v30;
        if (!--v32)
        {
          goto LABEL_3;
        }
      }

      v33 = sub_10000C9C0(&qword_1005CD270, &qword_1004CF7F0);
      v34 = *&v21[*(v33 + 48)];
      sub_10006F72C(v21, type metadata accessor for ClientCommand);
      if (v34 != v59)
      {
        goto LABEL_8;
      }

      v36 = v47;
      v35 = v48;
      while (1)
      {
        sub_10006F6C4(v29, v36, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v36, v35, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_10006F72C(v35, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v29 += v30;
        if (!--v28)
        {
LABEL_22:
          v45 = 1;
          goto LABEL_24;
        }
      }

      v37 = *(v35 + *(v33 + 48));
      sub_10006F72C(v35, type metadata accessor for ClientCommand);
      if (v37 != v59)
      {
        goto LABEL_13;
      }

      v38 = *(v49 + 16);
      if (v38)
      {
        v39 = v49 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
        v40 = *(v46 + 72);
        do
        {
          v41 = v55;
          sub_10006F6C4(v39, v55, type metadata accessor for TaskHistory.Running);
          v42 = v53;
          sub_1000738FC(v41, v53, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_10006F72C(v42, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v43 = *(v42 + 8);
            v44 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
            sub_10006F72C(v42 + *(v44 + 64), type metadata accessor for ClientCommand);
            if (v43 == v59)
            {
              goto LABEL_22;
            }
          }

          v39 += v40;
          --v38;
        }

        while (v38);
      }

LABEL_3:
      v27 = v58 + 1;
      result = v54;
    }

    while (v58 + 1 != v52);
  }

  v45 = 0;
LABEL_24:

  return v45;
}

void *sub_100071BC4(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CEA38, &qword_1004D14F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  v6 = type metadata accessor for DownloadTask.CommandID(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_100091DE8(0, v10, 0);
    v11 = v18;
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_10000E268(v12, v5, &qword_1005CEA38, &qword_1004D14F0);
      sub_1000738FC(&v5[*(v2 + 52)], v9, type metadata accessor for DownloadTask.CommandID);
      v18 = v11;
      v15 = v11[2];
      v14 = v11[3];
      if (v15 >= v14 >> 1)
      {
        sub_100091DE8((v14 > 1), v15 + 1, 1);
        v11 = v18;
      }

      v11[2] = v15 + 1;
      sub_1000738FC(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for DownloadTask.CommandID);
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  return v11;
}

void *sub_100071DFC(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CEA18, &qword_1004D14D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v7 = *(Missing - 8);
  __chkstk_darwin(Missing - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_100091F28(0, v10, 0);
    v11 = v18;
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_10000E268(v12, v5, &qword_1005CEA18, &qword_1004D14D0);
      sub_1000738FC(&v5[*(v2 + 52)], v9, type metadata accessor for FindMissingMessages.CommandID);
      v18 = v11;
      v15 = v11[2];
      v14 = v11[3];
      if (v15 >= v14 >> 1)
      {
        sub_100091F28((v14 > 1), v15 + 1, 1);
        v11 = v18;
      }

      v11[2] = v15 + 1;
      sub_1000738FC(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for FindMissingMessages.CommandID);
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  return v11;
}

uint64_t sub_100072034(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 48;
    do
    {
      v6 = (v5 + 24 * v4);
      v7 = v4;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return result;
        }

        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_22;
        }

        v8 = *v6;
        if (*v6)
        {
          break;
        }

        if (v3)
        {
          goto LABEL_10;
        }

LABEL_5:
        ++v7;
        v6 += 24;
        if (v4 == v2)
        {
          goto LABEL_15;
        }
      }

      if (v3)
      {
        goto LABEL_5;
      }

LABEL_10:
      v9 = *(v6 - 4);
      v10 = *(v6 - 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100091F68(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        result = sub_100091F68((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[3 * v12];
      *(v13 + 8) = v9;
      v13[5] = v10;
      *(v13 + 48) = v8;
    }

    while (v4 != v2);
  }

LABEL_15:
  v14 = _swiftEmptyArrayStorage[2];
  if (v14)
  {
    sub_100091AA8(0, v14, 0);
    v15 = _swiftEmptyArrayStorage[2];
    v16 = 4;
    do
    {
      v17 = _swiftEmptyArrayStorage[v16];
      v18 = _swiftEmptyArrayStorage[3];
      if (v15 >= v18 >> 1)
      {
        sub_100091AA8((v18 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      *(&_swiftEmptyArrayStorage[4] + v15) = v17;
      v16 += 3;
      ++v15;
      --v14;
    }

    while (v14);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10007222C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  v52 = a3;
  v43 = a2;
  v51 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v41 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v46 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v44 = &v41 - v16;
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = &v41 - v22;
  result = (a5)(a1 & 1, a4, v21);
  v47 = *(result + 16);
  if (v47)
  {
    v42 = v8;
    v25 = 0;
    v45 = result + 32;
    v48 = result;
    do
    {
      if (v25 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v53 = v25;
      v26 = *(v52 + 16);
      if (!v26)
      {
        goto LABEL_3;
      }

      v54 = *(v45 + 4 * v53);
      v27 = v52 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
      v28 = *(v46 + 72);
      v29 = v27;
      v30 = v26;
      while (1)
      {
        sub_10006F6C4(v29, v23, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v23, v19, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v19, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v29 += v28;
        if (!--v30)
        {
          goto LABEL_3;
        }
      }

      v31 = *(v19 + 2);
      sub_100020EDC(*v19);
      if (v31 != v54)
      {
        goto LABEL_8;
      }

      v32 = v44;
      while (1)
      {
        sub_10006F6C4(v27, v32, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v32, v14, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v14, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v27 += v28;
        if (!--v26)
        {
LABEL_22:
          v40 = 1;
          goto LABEL_24;
        }
      }

      v33 = *(v14 + 2);
      sub_100020EDC(*v14);
      if (v33 != v54)
      {
        goto LABEL_13;
      }

      v34 = *(v43 + 16);
      if (v34)
      {
        v35 = v43 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
        v36 = *(v42 + 72);
        do
        {
          v37 = v49;
          sub_10006F6C4(v35, v49, type metadata accessor for TaskHistory.Running);
          v38 = v50;
          sub_1000738FC(v37, v50, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v39 = *(v38 + 4);
            sub_100020EDC(*(v38 + 8));
            if (v39 == v54)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_10006F72C(v38, type metadata accessor for TaskHistory.Running);
          }

          v35 += v36;
          --v34;
        }

        while (v34);
      }

LABEL_3:
      v25 = v53 + 1;
      result = v48;
    }

    while (v53 + 1 != v47);
  }

  v40 = 0;
LABEL_24:

  return v40;
}

uint64_t sub_1000726AC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 48;
    do
    {
      v6 = (v5 + 24 * v4);
      v7 = v4;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return result;
        }

        v4 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_26;
        }

        v8 = *(v6 - 4);
        result = *(v6 - 1);
        v9 = *v6;
        v10 = (*v6 >> 60) & 3;
        if (!v10)
        {
          if (!v3)
          {
            goto LABEL_14;
          }

          goto LABEL_5;
        }

        if (v10 != 1)
        {
          break;
        }

        if (v3 == 2)
        {
          goto LABEL_14;
        }

LABEL_5:
        ++v7;
        v6 += 3;
        if (v4 == v2)
        {
          goto LABEL_19;
        }
      }

      if (v3 != 1)
      {
        result = sub_1000739FC(result, v9);
        goto LABEL_5;
      }

LABEL_14:
      v11 = *(v6 - 1);
      v12 = *v6;
      sub_1000739E0(result, v9);
      result = swift_isUniquelyReferenced_nonNull_native();
      v23 = v5;
      if ((result & 1) == 0)
      {
        result = sub_100092168(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      v15 = v12;
      v16 = v11;
      if (v14 >= v13 >> 1)
      {
        result = sub_100092168((v13 > 1), v14 + 1, 1);
        v16 = v11;
        v15 = v12;
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      v17 = &_swiftEmptyArrayStorage[3 * v14];
      *(v17 + 8) = v8;
      v17[5] = v16;
      v17[6] = v15;
      v5 = v23;
    }

    while (v4 != v2);
  }

LABEL_19:
  v18 = _swiftEmptyArrayStorage[2];
  if (v18)
  {
    sub_100091AA8(0, v18, 0);
    v19 = _swiftEmptyArrayStorage[2];
    v20 = 4;
    do
    {
      v21 = _swiftEmptyArrayStorage[v20];
      v22 = _swiftEmptyArrayStorage[3];
      if (v19 >= v22 >> 1)
      {
        sub_100091AA8((v22 > 1), v19 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v19 + 1;
      *(&_swiftEmptyArrayStorage[4] + v19) = v21;
      v20 += 3;
      ++v19;
      --v18;
    }

    while (v18);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000728F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, __n128))
{
  v52 = a3;
  v43 = a2;
  v51 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v41 - v11;
  v12 = type metadata accessor for TaskHistory.Previous(0);
  v46 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v44 = &v41 - v16;
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = &v41 - v22;
  result = a5(a1, a4, v21);
  v47 = *(result + 16);
  if (v47)
  {
    v42 = v8;
    v25 = 0;
    v45 = result + 32;
    v48 = result;
    do
    {
      if (v25 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v53 = v25;
      v26 = *(v52 + 16);
      if (!v26)
      {
        goto LABEL_3;
      }

      v54 = *(v45 + 4 * v53);
      v27 = v52 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
      v28 = *(v46 + 72);
      v29 = v27;
      v30 = v26;
      while (1)
      {
        sub_10006F6C4(v29, v23, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v23, v19, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v19, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v29 += v28;
        if (!--v30)
        {
          goto LABEL_3;
        }
      }

      v31 = *(v19 + 2);
      sub_100020EDC(*v19);
      if (v31 != v54)
      {
        goto LABEL_8;
      }

      v32 = v44;
      while (1)
      {
        sub_10006F6C4(v27, v32, type metadata accessor for TaskHistory.Previous);
        sub_1000738FC(v32, v14, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_10006F72C(v14, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v27 += v28;
        if (!--v26)
        {
LABEL_22:
          v40 = 1;
          goto LABEL_24;
        }
      }

      v33 = *(v14 + 2);
      sub_100020EDC(*v14);
      if (v33 != v54)
      {
        goto LABEL_13;
      }

      v34 = *(v43 + 16);
      if (v34)
      {
        v35 = v43 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
        v36 = *(v42 + 72);
        do
        {
          v37 = v49;
          sub_10006F6C4(v35, v49, type metadata accessor for TaskHistory.Running);
          v38 = v50;
          sub_1000738FC(v37, v50, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v39 = *(v38 + 4);
            sub_100020EDC(*(v38 + 8));
            if (v39 == v54)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_10006F72C(v38, type metadata accessor for TaskHistory.Running);
          }

          v35 += v36;
          --v34;
        }

        while (v34);
      }

LABEL_3:
      v25 = v53 + 1;
      result = v48;
    }

    while (v53 + 1 != v47);
  }

  v40 = 0;
LABEL_24:

  return v40;
}

uint64_t sub_100072D74(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a3;
  v69 = a4;
  v67 = a2;
  v70 = a1;
  v5 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v54 - v7;
  v9 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v54 - v10;
  v63 = sub_10000C9C0(&qword_1005CD4F8, &unk_1004CF790);
  __chkstk_darwin(v63);
  v60 = (&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = (&v54 - v14);
  v16 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v64 = *(v16 - 8);
  v65 = v16;
  __chkstk_darwin(v16);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v54 - v20;
  v22 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v22 - 8);
  v59 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v54 - v25;
  v27 = *(v4 + 72);
  v61 = *(v4 + 64);
  v62 = v27;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v28 = v4 + *(MissingMessages + 72);
  if (*(v28 + 24) && ((v70 >> 59) & 0x1E | (v70 >> 2) & 1) == 0xA)
  {
    v55 = v18;
    v56 = v8;
    v57 = v6;
    v58 = v5;
    v29 = swift_projectBox();
    sub_10000E268(v29, v15, &qword_1005CD4F8, &unk_1004CF790);
    v30 = *(v63 + 48);
    v31 = *(v63 + 64);
    if (v62 == v15[1])
    {
      v32 = sub_1000FFC98(v61, *v15);

      if (v32)
      {
        sub_100025FDC(v15 + v30, v26, &unk_1005D91B0, &unk_1004CF400);
        v33 = sub_100025FDC(v15 + v31, v21, &qword_1005CD1D0, &unk_1004CF2C0);
        v34 = *(v28 + 24);
        __chkstk_darwin(v33);
        *(&v54 - 2) = v21;
        v35 = sub_100154CA0(sub_100073964, (&v54 - 4), v34);
        v5 = v58;
        if ((v36 & 1) == 0)
        {
          v37 = v35;
          if (sub_100070294(v35, 0, v67, v68, v69, sub_10001FB54))
          {
            v38 = v34;
            result = swift_isUniquelyReferenced_nonNull_native();
            v8 = v56;
            v6 = v57;
            if (result)
            {
              if ((v37 & 0x8000000000000000) == 0)
              {
                goto LABEL_9;
              }
            }

            else
            {
              result = sub_1001398E0(v38);
              v38 = result;
              if ((v37 & 0x8000000000000000) == 0)
              {
LABEL_9:
                v54 = v4;
                if (v37 < v38[2])
                {
                  _s20GrowWindowOfInterestV6ResultVMa(0);
                  sub_100077584(v26);
                  sub_100025F40(v26, &unk_1005D91B0, &unk_1004CF400);
                  *(v28 + 24) = v38;
                  sub_100025F40(v21, &qword_1005CD1D0, &unk_1004CF2C0);
                  v4 = v54;
LABEL_14:
                  v18 = v55;
                  goto LABEL_15;
                }

LABEL_32:
                __break(1u);
                return result;
              }
            }

            __break(1u);
            goto LABEL_32;
          }
        }

        sub_100025F40(v26, &unk_1005D91B0, &unk_1004CF400);
        sub_100025F40(v21, &qword_1005CD1D0, &unk_1004CF2C0);
LABEL_13:
        v8 = v56;
        v6 = v57;
        goto LABEL_14;
      }
    }

    else
    {
    }

    sub_100025F40(v15 + v31, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100025F40(v15 + v30, &unk_1005D91B0, &unk_1004CF400);
    v5 = v58;
    goto LABEL_13;
  }

LABEL_15:
  result = sub_100070294(0, 1, v67, v68, v69, sub_10001FB54);
  if ((result & 1) == 0)
  {
    return result;
  }

  v40 = v4 + *(MissingMessages + 44);
  v41 = *v40;
  v42 = *(v40 + 13);
  LOBYTE(v40) = *(v40 + 20);
  v72 = v42;
  v71 = v40;
  sub_10007A65C(v41, v11);
  if ((*(v64 + 48))(v11, 1, v65) == 1)
  {
    v43 = &qword_1005CD518;
    v44 = &qword_1004CF2F0;
    v45 = v11;
  }

  else
  {
    sub_100025FDC(v11, v18, &qword_1005CD1D0, &unk_1004CF2C0);
    if (((v70 >> 59) & 0x1E | (v70 >> 2) & 1) == 0xA)
    {
      v46 = v18;
      v47 = swift_projectBox();
      v48 = v60;
      sub_10000E268(v47, v60, &qword_1005CD4F8, &unk_1004CF790);
      v49 = *(v63 + 48);
      v50 = *(v63 + 64);
      if (v62 == v48[1])
      {
        v51 = sub_1000FFC98(v61, *v48);

        if (v51)
        {
          v52 = v59;
          sub_100025FDC(v48 + v49, v59, &unk_1005D91B0, &unk_1004CF400);
          sub_100016D2C();
          v53 = sub_1004A7034();
          sub_100025F40(v48 + v50, &qword_1005CD1D0, &unk_1004CF2C0);
          if (v53)
          {
            (*(v6 + 16))(v8, v52, v5);
            sub_1004A7104();
          }

          sub_100025F40(v52, &unk_1005D91B0, &unk_1004CF400);
          v43 = &qword_1005CD1D0;
          v44 = &unk_1004CF2C0;
          v45 = v46;
          return sub_100025F40(v45, v43, v44);
        }
      }

      else
      {
      }

      sub_100025F40(v46, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v48 + v50, &qword_1005CD1D0, &unk_1004CF2C0);
      v43 = &unk_1005D91B0;
      v44 = &unk_1004CF400;
      v45 = v48 + v49;
    }

    else
    {
      v43 = &qword_1005CD1D0;
      v44 = &unk_1004CF2C0;
      v45 = v18;
    }
  }

  return sub_100025F40(v45, v43, v44);
}

uint64_t sub_100073540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  v11 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v30 - v16;
  if ((a5[1] & 1) == 0)
  {
    v18 = *a5;
    v36 = a4;
    v15 = sub_10010AD6C(a2, a3, v18);
    a4 = v36;
    if ((v15 & 0x100000000) == 0)
    {
      v35 = v15;
      sub_10006F6C4(a6, v17, type metadata accessor for MailboxTaskLogger);
      sub_10006F6C4(a6, v13, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v19 = sub_1004A4A54();
      v20 = sub_1004A6004();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v33 = v20;
        v22 = v21;
        v34 = swift_slowAlloc();
        v39 = v34;
        *v22 = 68159491;
        *(v22 + 4) = 2;
        *(v22 + 8) = 256;
        v31 = &v13[*(v11 + 20)];
        v32 = v19;
        *(v22 + 10) = *v31;
        *(v22 + 11) = 2082;
        v23 = &v17[*(v11 + 20)];
        *(v22 + 13) = sub_10015BA6C(*(v23 + 1), *(v23 + 2), &v39);
        *(v22 + 21) = 1040;
        *(v22 + 23) = 2;
        *(v22 + 27) = 512;
        LODWORD(v31) = *(v31 + 12);
        sub_10006F72C(v13, type metadata accessor for MailboxTaskLogger);
        *(v22 + 29) = v31;
        *(v22 + 31) = 2160;
        *(v22 + 33) = 0x786F626C69616DLL;
        *(v22 + 41) = 2085;
        v24 = *(v23 + 4);
        LODWORD(v23) = *(v23 + 10);

        sub_10006F72C(v17, type metadata accessor for MailboxTaskLogger);
        v37 = v24;
        v38 = v23;
        v25 = sub_1004A5824();
        v27 = sub_10015BA6C(v25, v26, &v39);

        *(v22 + 43) = v27;
        *(v22 + 51) = 1024;
        *(v22 + 53) = v35;
        v28 = v32;
        _os_log_impl(&_mh_execute_header, v32, v33, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Updating server next UID to %u.", v22, 0x39u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10006F72C(v13, type metadata accessor for MailboxTaskLogger);

        v15 = sub_10006F72C(v17, type metadata accessor for MailboxTaskLogger);
      }

      a4 = v36;
    }
  }

  __chkstk_darwin(v15);
  *(&v30 - 4) = a5;
  *(&v30 - 3) = a6;
  *(&v30 - 2) = a4;
  return sub_10012D0D0(a2, a3, sub_1000738E4, (&v30 - 6));
}

uint64_t sub_1000738FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100073984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

unint64_t sub_1000739C8(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_100020EDC(a2);
  }

  return result;
}

uint64_t sub_1000739E0(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_100014CEC(result, a2);
}

uint64_t sub_1000739FC(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_100014D40(result, a2);
}

uint64_t sub_100073A18(uint64_t result, unint64_t a2)
{
  if (((a2 >> 60) | 4) != 0xF)
  {
    return sub_100014D40(result, a2);
  }

  return result;
}

uint64_t sub_100073A30(uint64_t result, unint64_t a2)
{
  if (((a2 >> 60) | 4) != 0xF)
  {
    return sub_100014CEC(result, a2);
  }

  return result;
}

uint64_t sub_100073A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s15MissingMessagesO10NewMissingVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 3)
    {
      return v12 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100073B2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s15MissingMessagesO10NewMissingVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

void sub_100073BE8(uint64_t a1)
{
  sub_1000576D4(319, &qword_1005CD840, &type metadata for UID);
  if (v1 <= 0x3F)
  {
    _s15MissingMessagesO10NewMissingVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100073C9C(uint64_t a1)
{
  sub_100073D3C(319, &qword_1005CE2B8, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_100073D3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for WindowOfInterestSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WindowOfInterestSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100073DF4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100073E10(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_100073E40()
{
  result = qword_1005CEB88;
  if (!qword_1005CEB88)
  {
    result = swift_getWitnessTable("-X\v", &type metadata for FindMissingMessages.ActionID.Kind, v0, v1);
    atomic_store(result, &qword_1005CEB88);
  }

  return result;
}

unint64_t sub_100073E98()
{
  result = qword_1005CEBB0;
  if (!qword_1005CEBB0)
  {
    result = swift_getWitnessTable(byte_1004D1580, &type metadata for FindMissingMessages.CommandID.Kind, v0, v1);
    atomic_store(result, &qword_1005CEBB0);
  }

  return result;
}

unint64_t sub_100073EF0()
{
  result = qword_1005CEBD8;
  if (!qword_1005CEBD8)
  {
    result = swift_getWitnessTable(byte_1004D15A8, &type metadata for FindMissingMessages.Completed.ReRunTask, v0, v1);
    atomic_store(result, &qword_1005CEBD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FindMissingMessages.CommandID.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FindMissingMessages.CommandID.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

_BYTE *sub_100074098(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1000740D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100074118(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100074168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v97 = a5;
  *&v98 = a4;
  v92 = sub_10000C9C0(&qword_1005CDA58, &qword_1004CF7C0);
  __chkstk_darwin(v92);
  v95 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v91 = &v88 - v14;
  v15 = sub_10000C9C0(&qword_1005CDA60, &qword_1004CF7C8);
  __chkstk_darwin(v15 - 8);
  v17 = &v88 - v16;
  v96 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v89 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v93 = &v88 - v20;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v22 = *(Missing - 8);
  __chkstk_darwin(Missing);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v88 - v26;
  result = sub_1000777F0(v28, v29, v30, a6);
  if ((a3 * 3) >> 64 != (3 * a3) >> 63)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v90 = v17;
  if (result < 3 * a3 / 4)
  {
    v33 = sub_100077BAC(result, v98 & 0xFFFFFFFF00000101, v32, a6);
    if ((v33 & 0x100000000) == 0)
    {
      v34 = v33;
      if (v33 >= 2)
      {
        v88 = a7;
        result = sub_1000790F8(a1, a2);
        v35 = result;
        v36 = *(result + 16);
        if (v36)
        {
          v37 = 0;
          while (v37 < *(v35 + 16))
          {
            sub_100079780(v35 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v37, v27, type metadata accessor for FindMissingMessages.CommandID);
            sub_100079718(v27, v24, type metadata accessor for FindMissingMessages.CommandID);
            if (swift_getEnumCaseMultiPayload() == 1)
            {

              goto LABEL_28;
            }

            ++v37;
            result = sub_100078ACC(v24, type metadata accessor for FindMissingMessages.CommandID);
            if (v36 == v37)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
          goto LABEL_42;
        }

LABEL_10:
        v38 = v98;
        v39 = (v98 >> 8) & 1;

        v40 = *(a6 + 16);
        if ((v39 | v38))
        {
          if ((v97 & 0x100000000) != 0)
          {
            sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
            v70 = swift_allocBox();
            v72 = v71;
            v102[0] = v34;
            LODWORD(v101) = v34;
            v73 = sub_100016948();
            static MessageIdentifier.... infix(_:_:)(v102, &v101, &type metadata for UID, v99);
            *v102 = v99[0];
            v101 = Range<>.init<A>(_:)(v102, &type metadata for UID, v73);
            sub_100016D2C();
            sub_1004A7124();
            v74 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
            (*(*(v74 - 8) + 56))(v72, 0, 1, v74);
            v75 = v70 | 0xA000000000000000;
            v55 = sub_10000C9C0(&qword_1005CEA28, &qword_1004D14E0);
            v76 = v88;
            v77 = (v88 + *(v55 + 48));
            *v88 = v40;
            *(v76 + 8) = 0;
            if ((v98 & 0x100) != 0)
            {
              *v77 = v75;
            }

            else
            {
              sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
              type metadata accessor for SearchReturnOption(0);
              v78 = swift_allocObject();
              *(v78 + 16) = xmmword_1004CEAA0;
              swift_storeEnumTagMultiPayload();
              *v77 = v75;
              v77[1] = v78;
            }

            type metadata accessor for ClientCommand(0);
            swift_storeEnumTagMultiPayload();
            v67 = *(*(v55 - 8) + 56);
            v68 = v76;
          }

          else
          {
            if ((v97 & 0xFFFFFFFE) == 0)
            {
LABEL_28:
              v69 = sub_10000C9C0(&qword_1005CEA28, &qword_1004D14E0);
              return (*(*(v69 - 8) + 56))(v88, 1, 1, v69);
            }

            LODWORD(v99[0]) = 1;
            if ((v97 & 0xFFFFFFFE) > 0xFFFFFFF5uLL)
            {
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              return result;
            }

            v102[0] = v97 + 10;
            v41 = sub_1000796C4();
            static MessageIdentifier.... infix(_:_:)(v99, v102, &type metadata for SequenceNumber, &v100);
            sub_100016D2C();
            v42 = v95;
            sub_1004A7114();
            v99[0] = v100;
            *v102 = Range<>.init<A>(_:)(v99, &type metadata for SequenceNumber, v41);
            v43 = v96;
            v44 = v90;
            if (v102[1] != v102[0])
            {
              sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
              v45 = sub_1004A70B4();
              sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
              sub_1004A7064();
              v45(v99, 0);
            }

            result = a3 + 20;
            if (__OFADD__(a3, 20))
            {
              goto LABEL_48;
            }

            v46 = v91;
            MessageIdentifierSet.suffix(_:)(result, v92, v91);
            sub_100025F40(v42, &qword_1005CDA58, &qword_1004CF7C0);
            v47 = MessageIdentifierSet.count.getter();
            v48 = v93;
            if (v47 <= 0)
            {
              sub_100025F40(v46, &qword_1005CDA58, &qword_1004CF7C0);
              v50 = 1;
            }

            else
            {
              v49 = v89;
              sub_100025FDC(v46, v89, &qword_1005CDA58, &qword_1004CF7C0);
              sub_100025FDC(v49, v44, &qword_1005CDA68, &qword_1004CF7D0);
              v50 = 0;
            }

            v79 = v94;
            v80 = *(v94 + 56);
            v80(v44, v50, 1, v43);
            if ((*(v79 + 48))(v44, 1, v43) == 1)
            {
              sub_100025F40(v44, &qword_1005CDA60, &qword_1004CF7C8);
              goto LABEL_28;
            }

            sub_100025FDC(v44, v48, &qword_1005CDA68, &qword_1004CF7D0);
            sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
            v81 = swift_allocBox();
            v83 = v82;
            sub_10000E268(v48, v82, &qword_1005CDA68, &qword_1004CF7D0);
            v80(v83, 0, 1, v43);
            v84 = v81 | 0xB000000000000004;
            v55 = sub_10000C9C0(&qword_1005CEA28, &qword_1004D14E0);
            v85 = v88;
            v86 = (v88 + *(v55 + 48));
            *v88 = v40;
            *(v85 + 8) = 1;
            if ((v98 & 0x100) != 0)
            {
              sub_100025F40(v48, &qword_1005CDA68, &qword_1004CF7D0);
              *v86 = v84;
            }

            else
            {
              sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
              type metadata accessor for SearchReturnOption(0);
              v87 = swift_allocObject();
              *(v87 + 16) = xmmword_1004CEAA0;
              swift_storeEnumTagMultiPayload();
              sub_100025F40(v48, &qword_1005CDA68, &qword_1004CF7D0);
              *v86 = v84;
              v86[1] = v87;
            }

            type metadata accessor for ClientCommand(0);
            swift_storeEnumTagMultiPayload();
            v67 = *(*(v55 - 8) + 56);
            v68 = v88;
          }
        }

        else
        {
          v53 = a3 - 1;
          if (__OFSUB__(a3, 1))
          {
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          if (v53 > 0xFFFFFFFFLL)
          {
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          if (v53 > 0x7FFFFFFFFFFFFFFELL)
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          if (HIDWORD(a3))
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v102[0] = 1;
          LODWORD(v101) = a3;
          sub_1000796C4();
          static MessageIdentifier.... infix(_:_:)(v102, &v101, &type metadata for SequenceNumber, v99);
          v54 = v99[0];
          v55 = sub_10000C9C0(&qword_1005CEA28, &qword_1004D14E0);
          v56 = v88;
          v57 = (v88 + *(v55 + 48));
          *v88 = v40;
          *(v56 + 8) = 1;
          sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
          v58 = swift_allocBox();
          v60 = v59;
          sub_10000C9C0(&qword_1005CEC18, &unk_1004D2690);
          inited = swift_initStackObject();
          v98 = xmmword_1004CEAA0;
          *(inited + 16) = xmmword_1004CEAA0;
          LODWORD(v99[0]) = 1;
          v102[0] = v34;
          sub_100016948();
          static MessageIdentifier.... infix(_:_:)(v99, v102, &type metadata for UID, inited + 32);
          sub_100077D40(inited);
          v62 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
          (*(*(v62 - 8) + 56))(v60, 0, 1, v62);
          sub_10000C9C0(&qword_1005CD1D8, &qword_1004CEC50);
          v63 = *(type metadata accessor for SearchReturnOption(0) - 8);
          v64 = (*(v63 + 80) + 32) & ~*(v63 + 80);
          v65 = swift_allocObject();
          *(v65 + 16) = v98;
          v66 = v65 + v64;
          *v66 = v54;
          *(v66 + 8) = 1;
          swift_storeEnumTagMultiPayload();
          *v57 = v58 | 0xA000000000000000;
          v57[1] = v65;
          type metadata accessor for ClientCommand(0);
          swift_storeEnumTagMultiPayload();
          v67 = *(*(v55 - 8) + 56);
          v68 = v56;
        }

        return v67(v68, 0, 1, v55);
      }
    }
  }

  v51 = sub_10000C9C0(&qword_1005CEA28, &qword_1004D14E0);
  v52 = *(*(v51 - 8) + 56);

  return v52(a7, 1, 1, v51);
}

uint64_t sub_100074EA8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v138 = a5;
  v9 = _s20GrowWindowOfInterestV6ResultVMa(0);
  v141 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v140 = v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v11 - 8);
  v148 = v130 - v12;
  v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v146 = *(v13 - 8);
  v147 = v13;
  __chkstk_darwin(v13);
  v139 = v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v142 = v130 - v16;
  v17 = sub_10000C9C0(&qword_1005CEBE8, &qword_1004D16E0);
  __chkstk_darwin(v17 - 8);
  v145 = v130 - v18;
  v19 = sub_10000C9C0(&qword_1005CEBF0, &qword_1004D16E8);
  __chkstk_darwin(v19 - 8);
  v150 = v130 - v20;
  v21 = type metadata accessor for TaskHistory.Running(0);
  v143 = *(v21 - 8);
  __chkstk_darwin(v21);
  v136 = v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v130 - v24;
  __chkstk_darwin(v26);
  v137 = v130 - v27;
  __chkstk_darwin(v28);
  v30 = v130 - v29;
  v31 = sub_10000C9C0(&qword_1005CEA10, &qword_1004D16F0);
  __chkstk_darwin(v31 - 8);
  v144 = v130 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v149 = v130 - v34;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v151 = *(Missing - 8);
  v152 = Missing;
  __chkstk_darwin(Missing);
  v133 = v130 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v132 = v130 - v38;
  __chkstk_darwin(v39);
  v135 = v130 - v40;
  __chkstk_darwin(v41);
  v134 = v130 - v42;
  v43 = type metadata accessor for UntaggedResponse(0);
  __chkstk_darwin(v43);
  v45 = v130 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v48 = v130 - v47;
  if ((sub_100071470(0, a2, a3, a4) & 1) == 0)
  {
    result = sub_100071470(1, a2, a3, a4);
    if ((result & 1) == 0)
    {
      return result;
    }

    v60 = a4;
    sub_100079780(a1, v45, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() != 12)
    {
      sub_100078ACC(v45, type metadata accessor for UntaggedResponse);
LABEL_20:
      v81 = *(v153 + 8);
      v82 = v153;
      v83 = *(v153 + 9);
      if (*(v153 + 9))
      {
        v84 = 256;
      }

      else
      {
        v84 = 0;
      }

      v85 = v148;
      sub_100124ED4(v84 | v81, v148);
      if ((*(v146 + 48))(v85, 1, v147) == 1)
      {
        v74 = &qword_1005CD510;
        v75 = &unk_1004CF2E0;
        v76 = v85;
        return sub_100025F40(v76, v74, v75);
      }

      v102 = v142;
      v103 = sub_100025FDC(v85, v142, &unk_1005D91B0, &unk_1004CF400);
      v105 = *v82;
      v106 = *(v82 + 24);
      v107 = 256;
      if (!v83)
      {
        v107 = 0;
      }

      v108 = sub_100077BAC(v103, v107 | v81 | (*(v82 + 12) << 32), v104, *(v82 + 24));
      if ((v108 & 0x100000000) != 0)
      {
        v74 = &unk_1005D91B0;
        v75 = &unk_1004CF400;
        v76 = v102;
        return sub_100025F40(v76, v74, v75);
      }

      v109 = v108;
      v110 = v139;
      sub_10000E268(v102, v139, &unk_1005D91B0, &unk_1004CF400);
      v111 = v140;
      sub_100076E18(v110, v109, v105, v140);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v106 = sub_100086374(0, v106[2] + 1, 1, v106);
      }

      v112 = v141;
      v114 = v106[2];
      v113 = v106[3];
      if (v114 >= v113 >> 1)
      {
        v106 = sub_100086374((v113 > 1), v114 + 1, 1, v106);
      }

      sub_100025F40(v102, &unk_1005D91B0, &unk_1004CF400);
      v106[2] = v114 + 1;
      result = sub_100079718(v111, v106 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v114, _s20GrowWindowOfInterestV6ResultVMa);
      *(v82 + 24) = v106;
      return result;
    }

    v61 = *v45;
    v62 = *(v45 + 1);
    v63 = *(v45 + 2);
    v64 = *(v45 + 3);
    v65 = v45[32];
    v66 = *(v45 + 5);
    v145 = *v45;
    if (v62)
    {
      LODWORD(v134) = v65;
      v135 = v64;
      v137 = v63;

      v67._countAndFlagsBits = v61;
      v67._object = v62;
      v155 = Tag.init(_:)(v67);
      if (v155.is_nil)
      {
        v69 = v151;
        v68 = v152;
      }

      else
      {
        value = v155.value;
        v130[1] = v66;
        v131 = v60;
        v130[0] = a1;
        v116 = *(a2 + 16);

        if (v116)
        {
          LODWORD(v150) = value.connectionIdentifier;
          v149 = HIDWORD(*&value);
          v117 = a2 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
          v118 = *(v143 + 72);
          do
          {
            sub_100079780(v117, v25, type metadata accessor for TaskHistory.Running);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_100078ACC(v25, type metadata accessor for TaskHistory.Running);
            }

            else
            {
              v119 = *v25;
              v120 = a2;
              v121 = *(v25 + 1);
              v122 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
              sub_100078ACC(&v25[*(v122 + 64)], type metadata accessor for ClientCommand);
              v123 = v119 == v150 && v121 == v149;
              a2 = v120;
              if (v123)
              {
                a1 = v136;
                sub_100079780(v117, v136, type metadata accessor for TaskHistory.Running);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  goto LABEL_86;
                }

                v95 = *a1;
                v125 = *(a1 + 1);
                v124 = *(a1 + 2);
                sub_100078ACC(&a1[*(v122 + 64)], type metadata accessor for ClientCommand);

                if (v95 == v150)
                {
                  a1 = v130[0];
                  v126 = v152;
                  if (v125 == v149)
                  {
                    v58 = v144;
                    sub_100067008(v124, v131, v144);
                    sub_100073984(v145, v62, v137);

                    if ((*(v151 + 48))(v58, 1, v126) != 1)
                    {
                      v127 = v58;
                      v128 = v132;
                      sub_100079718(v127, v132, type metadata accessor for FindMissingMessages.CommandID);
                      v129 = v128;
                      v101 = v133;
                      sub_100079718(v129, v133, type metadata accessor for FindMissingMessages.CommandID);
                      result = swift_getEnumCaseMultiPayload();
                      if (result == 1)
                      {
                        if (*(v101 + 8) != 1)
                        {
                          return result;
                        }

                        goto LABEL_20;
                      }

                      return sub_100078ACC(v101, type metadata accessor for FindMissingMessages.CommandID);
                    }

LABEL_78:
                    v74 = &qword_1005CEA10;
                    v75 = &qword_1004D16F0;
                    v76 = v58;
                    return sub_100025F40(v76, v74, v75);
                  }

LABEL_84:
                  __break(1u);
LABEL_85:
                  sub_100078ACC(v95, type metadata accessor for TaskHistory.Running);
                  __break(1u);
LABEL_86:
                  result = sub_100078ACC(a1, type metadata accessor for TaskHistory.Running);
                  __break(1u);
                  return result;
                }

LABEL_83:
                __break(1u);
                goto LABEL_84;
              }
            }

            v117 += v118;
            --v116;
          }

          while (v116);
        }

        v69 = v151;
        v68 = v152;
      }

      v63 = v137;
    }

    else
    {
      v69 = v151;
      v68 = v152;
    }

    sub_100073984(v145, v62, v63);

    v58 = v144;
    (*(v69 + 56))(v144, 1, 1, v68);
    goto LABEL_78;
  }

  v148 = a2;
  v131 = a4;
  sub_100079780(a1, v48, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_100078ACC(v48, type metadata accessor for UntaggedResponse);
    goto LABEL_12;
  }

  v50 = *v48;
  v49 = *(v48 + 1);
  v51 = *(v48 + 2);
  v52 = *(v48 + 3);
  v53 = v48[32];
  v54 = *(v48 + 5);
  if (!v49)
  {
    v86 = 0;
    v57 = v151;
    v56 = v152;
    v58 = v149;
LABEL_55:
    sub_100073984(v50, v86, v51);

    (*(v57 + 56))(v58, 1, 1, v56);
    goto LABEL_78;
  }

  v55._countAndFlagsBits = v50;
  v144 = v49;
  v55._object = v49;
  v154 = Tag.init(_:)(v55);
  if (v154.is_nil)
  {
    v57 = v151;
    v56 = v152;
    v58 = v149;
LABEL_54:
    v86 = v144;
    goto LABEL_55;
  }

  v87 = v154.value;
  v136 = v50;
  LODWORD(v139) = v53;
  v140 = v52;
  v141 = v51;
  v142 = v54;
  v88 = *(v148 + 16);

  if (!v88)
  {
LABEL_53:

    v57 = v151;
    v56 = v152;
    v58 = v149;
    v51 = v141;
    v50 = v136;
    goto LABEL_54;
  }

  LODWORD(v147) = v87.connectionIdentifier;
  v146 = HIDWORD(*&v87);
  v89 = v148 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
  v90 = *(v143 + 72);
  while (1)
  {
    sub_100079780(v89, v30, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_100078ACC(v30, type metadata accessor for TaskHistory.Running);
LABEL_29:
    v89 += v90;
    if (!--v88)
    {
      goto LABEL_53;
    }
  }

  v91 = *v30;
  v92 = *(v30 + 1);
  v93 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
  sub_100078ACC(&v30[*(v93 + 64)], type metadata accessor for ClientCommand);
  v94 = v91 == v147 && v92 == v146;
  if (!v94)
  {
    goto LABEL_29;
  }

  v95 = v137;
  sub_100079780(v89, v137, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_85;
  }

  v96 = *v95;
  v97 = *(v95 + 4);
  v98 = *(v95 + 8);
  sub_100078ACC(v95 + *(v93 + 64), type metadata accessor for ClientCommand);

  v94 = v96 == v147;
  v58 = v149;
  if (!v94)
  {
    __break(1u);
    goto LABEL_82;
  }

  v99 = v152;
  if (v97 != v146)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  sub_100067008(v98, v131, v149);
  sub_100073984(v136, v144, v141);

  if ((*(v151 + 48))(v58, 1, v99) == 1)
  {
    goto LABEL_78;
  }

  v100 = v134;
  sub_100079718(v58, v134, type metadata accessor for FindMissingMessages.CommandID);
  v101 = v135;
  sub_100079718(v100, v135, type metadata accessor for FindMissingMessages.CommandID);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    return sub_100078ACC(v101, type metadata accessor for FindMissingMessages.CommandID);
  }

  if (*(v101 + 8))
  {
    return result;
  }

LABEL_12:
  v70 = v153;
  if (*(v153 + 9))
  {
    v71 = 256;
  }

  else
  {
    v71 = 0;
  }

  v72 = v150;
  sub_100124FBC(v71 | *(v153 + 8), v150);
  v73 = sub_10000C9C0(&qword_1005CDA58, &qword_1004CF7C0);
  if ((*(*(v73 - 8) + 48))(v72, 1, v73) == 1)
  {
    v74 = &qword_1005CEBF0;
    v75 = &qword_1004D16E8;
    v76 = v72;
  }

  else
  {
    v77 = v145;
    MessageIdentifierSet.ranges.getter(v145);
    v78 = sub_1000E4C20();
    v80 = v79;
    sub_100025F40(v77, &qword_1005CEBE8, &qword_1004D16E0);
    if ((v80 & 1) == 0)
    {
      result = sub_100025F40(v72, &qword_1005CDA58, &qword_1004CF7C0);
      *(v70 + 16) = HIDWORD(v78);
      *(v70 + 20) = 0;
      return result;
    }

    v74 = &qword_1005CDA58;
    v75 = &qword_1004CF7C0;
    v76 = v72;
  }

  return sub_100025F40(v76, v74, v75);
}

uint64_t sub_100075DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v102 = a2;
  v103 = a1;
  v125 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v15 = *(v125 - 8);
  __chkstk_darwin(v125);
  v114 = &v96 - v16;
  v17 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  __chkstk_darwin(v17 - 8);
  v113 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v19 - 8);
  v121 = &v96 - v20;
  v21 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v21 - 8);
  v124 = &v96 - v22;
  v126 = sub_10000C9C0(&qword_1005CEBF8, &qword_1004D16F8);
  __chkstk_darwin(v126);
  v100 = (&v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v97 = &v96 - v25;
  __chkstk_darwin(v26);
  v28 = (&v96 - v27);
  __chkstk_darwin(v29);
  v123 = &v96 - v30;
  v31 = sub_10000C9C0(&qword_1005CEC00, &qword_1004D1700);
  __chkstk_darwin(v31 - 8);
  v98 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v99 = (&v96 - v34);
  __chkstk_darwin(v35);
  v37 = &v96 - v36;
  __chkstk_darwin(v38);
  v104 = (&v96 - v39);
  v122 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v40 = *(v122 - 8);
  __chkstk_darwin(v122);
  v109 = &v96 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v108 = &v96 - v43;
  __chkstk_darwin(v44);
  v101 = &v96 - v45;
  v46 = *(a11 + 16);
  v107 = a11;

  v105 = a3;

  v111 = a4;

  v106 = a5;

  v110 = a6;

  v120 = v46;
  if (!v46)
  {
LABEL_17:
    v79 = sub_10000C9C0(&qword_1005CEC08, &qword_1004D1708);
    v80 = v104;
    (*(*(v79 - 8) + 56))(v104, 1, 1, v79);
    goto LABEL_20;
  }

  v118 = (v40 + 56);
  v119 = (v15 + 48);
  v112 = (v40 + 48);
  v47 = _s20GrowWindowOfInterestV6ResultVMa(0);
  v48 = 0;
  v49 = v107 + ((*(*(v47 - 8) + 80) + 32) & ~*(*(v47 - 8) + 80));
  v115 = *(*(v47 - 8) + 72);
  v116 = v47;
  v117 = v37;
  v50 = v121;
  while (1)
  {
    v51 = v126;
    v52 = *(v126 + 48);
    v53 = v123;
    sub_100079780(v49, &v123[v52], _s20GrowWindowOfInterestV6ResultVMa);
    *v28 = v48;
    v54 = v28 + *(v51 + 48);
    sub_100079718(&v53[v52], v54, _s20GrowWindowOfInterestV6ResultVMa);
    sub_10000E268(v54 + *(v47 + 24), v50, &qword_1005CD510, &unk_1004CF2E0);
    v55 = (*v119)(v50, 1, v125);
    sub_100025F40(v50, &qword_1005CD510, &unk_1004CF2E0);
    if (v55 != 1)
    {
      v62 = v124;
      (*v118)(v124, 1, 1, v122);
      v64 = v117;
LABEL_9:
      v67 = v62;
      v68 = &qword_1005CD518;
      v69 = &qword_1004CF2F0;
LABEL_10:
      sub_100025F40(v67, v68, v69);
      v70 = sub_10000C9C0(&qword_1005CEC08, &qword_1004D1708);
      (*(*(v70 - 8) + 56))(v64, 1, 1, v70);
      goto LABEL_11;
    }

    v56 = v54 + *(v47 + 20);
    v57 = v113;
    sub_100079780(v56, v113, _s15MissingMessagesO11QueriedUIDsVMa);
    v58 = v57;
    v59 = v114;
    sub_100025FDC(v58, v114, &unk_1005D91B0, &unk_1004CF400);
    if (MessageIdentifierSet.count.getter() <= 0)
    {
      sub_100025F40(v59, &unk_1005D91B0, &unk_1004CF400);
      v63 = 1;
      v62 = v124;
    }

    else
    {
      v60 = v109;
      sub_100025FDC(v59, v109, &unk_1005D91B0, &unk_1004CF400);
      v61 = v60;
      v62 = v124;
      sub_100025FDC(v61, v124, &qword_1005CD1D0, &unk_1004CF2C0);
      v63 = 0;
    }

    v65 = v122;
    (*v118)(v62, v63, 1, v122);
    v66 = (*v112)(v62, 1, v65);
    v64 = v117;
    if (v66 == 1)
    {
      goto LABEL_9;
    }

    v75 = v62;
    v76 = v108;
    sub_100025FDC(v75, v108, &qword_1005CD1D0, &unk_1004CF2C0);
    if (sub_10001FB6C(v48, 0, v111, v110))
    {
      v67 = v76;
      v68 = &qword_1005CD1D0;
      v69 = &unk_1004CF2C0;
      goto LABEL_10;
    }

    v77 = sub_10000C9C0(&qword_1005CEC08, &qword_1004D1708);
    v78 = *(v77 + 48);
    *v64 = v48;
    sub_100025FDC(v76, v64 + v78, &qword_1005CD1D0, &unk_1004CF2C0);
    (*(*(v77 - 8) + 56))(v64, 0, 1, v77);
LABEL_11:
    sub_100025F40(v28, &qword_1005CEBF8, &qword_1004D16F8);
    v71 = sub_10000C9C0(&qword_1005CEC08, &qword_1004D1708);
    v72 = *(v71 - 8);
    v73 = *(v72 + 48);
    v74 = v73(v64, 1, v71);
    sub_100025F40(v64, &qword_1005CEC00, &qword_1004D1700);
    if (v74 != 1)
    {
      break;
    }

    ++v48;
    v47 = v116;
    v49 += v115;
    if (v120 == v48)
    {
      goto LABEL_17;
    }
  }

  v81 = v126;
  v82 = *(v126 + 48);
  v83 = v97;
  sub_100079780(v49, &v97[v82], _s20GrowWindowOfInterestV6ResultVMa);
  v84 = v100;
  *v100 = v48;
  v85 = *(v81 + 48);
  sub_100079718(&v83[v82], v84 + v85, _s20GrowWindowOfInterestV6ResultVMa);
  v86 = v99;
  sub_100077E8C(v48, v84 + v85, v111, v110, v99);
  sub_100025F40(v84, &qword_1005CEBF8, &qword_1004D16F8);
  v87 = v98;
  sub_10000E268(v86, v98, &qword_1005CEC00, &qword_1004D1700);
  if (v73(v87, 1, v71) == 1)
  {

    __break(1u);
  }

  else
  {
    v80 = v104;
    sub_100025FDC(v87, v104, &qword_1005CEC08, &qword_1004D1708);
    sub_100025F40(v86, &qword_1005CEC00, &qword_1004D1700);
    (*(v72 + 56))(v80, 0, 1, v71);
LABEL_20:

    v88 = sub_10000C9C0(&qword_1005CEC08, &qword_1004D1708);
    if ((*(*(v88 - 8) + 48))(v80, 1, v88) == 1)
    {
      sub_100025F40(v80, &qword_1005CEC00, &qword_1004D1700);
      return 0;
    }

    else
    {
      v89 = *v80;
      v90 = v101;
      sub_100025FDC(v80 + *(v88 + 48), v101, &qword_1005CD1D0, &unk_1004CF2C0);
      v91 = sub_10000C9C0(&qword_1005CD538, &qword_1004CF310);
      swift_allocBox();
      v92 = *(v91 + 48);
      v93 = v102;
      *v94 = v103;
      v94[1] = v93;
      sub_100025FDC(v90, v94 + v92, &qword_1005CD1D0, &unk_1004CF2C0);
    }

    return v89;
  }

  return result;
}

uint64_t sub_1000769D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v35 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v31 = &v29 - v9;
  v36 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v10 = *(v36 - 8);
  __chkstk_darwin(v36);
  v34 = &v29 - v11;
  v12 = _s20GrowWindowOfInterestV6ResultVMa(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016D2C();
  result = sub_1004A7114();
  v17 = *(a4 + 16);
  if (v17)
  {
    v18 = *(v12 + 24);
    v19 = a4 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v20 = (v10 + 16);
    v21 = v13;
    v22 = (v8 + 48);
    v32 = *(v21 + 72);
    v33 = v18;
    v30 = v15;
    do
    {
      sub_100079780(v19, v15, _s20GrowWindowOfInterestV6ResultVMa);
      (*v20)(v34, v15, v36);
      sub_1004A7104();
      sub_10000E268(&v15[v33], v7, &qword_1005CD510, &unk_1004CF2E0);
      if ((*v22)(v7, 1, v35) == 1)
      {
        sub_100078ACC(v15, _s20GrowWindowOfInterestV6ResultVMa);
        result = sub_100025F40(v7, &qword_1005CD510, &unk_1004CF2E0);
      }

      else
      {
        v23 = v7;
        v24 = v22;
        v25 = v20;
        v26 = v7;
        v27 = v31;
        sub_100025FDC(v23, v31, &unk_1005D91B0, &unk_1004CF400);
        sub_1004A70F4();
        v28 = v27;
        v7 = v26;
        v20 = v25;
        v22 = v24;
        v15 = v30;
        sub_100025F40(v28, &unk_1005D91B0, &unk_1004CF400);
        result = sub_100078ACC(v15, _s20GrowWindowOfInterestV6ResultVMa);
      }

      v19 += v32;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t _s20GrowWindowOfInterestV6ResultVMa(uint64_t a1)
{
  result = qword_1005CEC80;
  if (!qword_1005CEC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100076E18@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v29 = a4;
  v30 = a1;
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v26 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  LODWORD(v32[0]) = 1;
  LODWORD(v33) = a2;
  v16 = sub_100016948();
  static MessageIdentifier.... infix(_:_:)(v32, &v33, &type metadata for UID, &v34);
  sub_100016D2C();
  sub_1004A7114();
  v32[0] = v34;
  v33 = Range<>.init<A>(_:)(v32, &type metadata for UID, v16);
  if (HIDWORD(v33) != v33)
  {
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    v17 = sub_1004A70B4();
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    sub_1004A7064();
    v17(v32, 0);
  }

  MessageIdentifierSet.intersection(_:)(v9, v12);
  sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.suffix(_:)(v27, v5, v15);
  sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
  v18 = sub_1000E5314();
  if ((v18 & 0x100000000) != 0 || (v19 = v18, v18 > a2))
  {
    v23 = v26;
    sub_1004A7114();
    LODWORD(v33) = 1;
    LODWORD(v31) = a2;
    static MessageIdentifier.... infix(_:_:)(&v33, &v31, &type metadata for UID, v32);
    v33 = v32[0];
    v31 = Range<>.init<A>(_:)(&v33, &type metadata for UID, v16);
    v24 = _s20GrowWindowOfInterestV6ResultVMa(0);
    v25 = v29;
    sub_1004A7124();
    sub_100025F40(v30, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v15, &unk_1005D91B0, &unk_1004CF400);
    (*(v28 + 56))(v25 + *(v24 + 24), 1, 1, v5);
    return sub_100025FDC(v23, v25, &unk_1005D91B0, &unk_1004CF400);
  }

  else
  {
    v20 = v29;
    sub_10000E268(v15, v29, &unk_1005D91B0, &unk_1004CF400);
    LODWORD(v33) = v19;
    LODWORD(v31) = a2;
    static MessageIdentifier.... infix(_:_:)(&v33, &v31, &type metadata for UID, v32);
    v33 = v32[0];
    v31 = Range<>.init<A>(_:)(&v33, &type metadata for UID, v16);
    v21 = _s20GrowWindowOfInterestV6ResultVMa(0);
    sub_1004A7124();
    sub_100025F40(v30, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v15, &unk_1005D91B0, &unk_1004CF400);
    return (*(v28 + 56))(v20 + *(v21 + 24), 1, 1, v5);
  }
}

uint64_t sub_100077270@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v19 = &v19 - v3;
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  v14 = _s20GrowWindowOfInterestV6ResultVMa(0);
  sub_10000E268(v1 + *(v14 + 24), v13, &qword_1005CD510, &unk_1004CF2E0);
  v15 = 1;
  LODWORD(v5) = (*(v5 + 48))(v13, 1, v4);
  v16 = v20;
  sub_100025F40(v13, &qword_1005CD510, &unk_1004CF2E0);
  if (v5 == 1)
  {
    sub_100079780(v1 + *(v14 + 20), v10, _s15MissingMessagesO11QueriedUIDsVMa);
    sub_100025FDC(v10, v7, &unk_1005D91B0, &unk_1004CF400);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
    }

    else
    {
      v17 = v19;
      sub_100025FDC(v7, v19, &unk_1005D91B0, &unk_1004CF400);
      sub_100025FDC(v17, v16, &qword_1005CD1D0, &unk_1004CF2C0);
      v15 = 0;
    }
  }

  return (*(v21 + 56))(v16, v15, 1, v22);
}

uint64_t sub_100077584(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - v12;
  v14 = *(_s20GrowWindowOfInterestV6ResultVMa(0) + 24);
  sub_10000E268(v2 + v14, v9, &qword_1005CD510, &unk_1004CF2E0);
  v15 = *(v11 + 48);
  v16 = (v11 + 56);
  if (v15(v9, 1, v10) == 1)
  {
    sub_100025F40(v9, &qword_1005CD510, &unk_1004CF2E0);
    sub_100025F40(v2 + v14, &qword_1005CD510, &unk_1004CF2E0);
    sub_10000E268(a1, v2 + v14, &unk_1005D91B0, &unk_1004CF400);
    return (*v16)(v2 + v14, 0, 1, v10);
  }

  else
  {
    sub_100025FDC(v9, v13, &unk_1005D91B0, &unk_1004CF400);
    MessageIdentifierSet.union(_:)(a1, v6);
    sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
    (*v16)(v6, 0, 1, v10);
    return sub_1000618F8(v6, v2 + v14);
  }
}

uint64_t sub_1000777F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - v6;
  v45 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v8 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = &v38 - v11;
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  v15 = _s20GrowWindowOfInterestV6ResultVMa(0);
  __chkstk_darwin(v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a4 + 16);
  if (v20)
  {
    v43 = v7;
    v21 = 0;
    v22 = *(v16 + 24);
    v23 = a4 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v40 = *(v17 + 72);
    v41 = v22;
    v24 = (v8 + 48);
    v25 = &unk_1005D91B0;
    v38 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = v24;
    while (1)
    {
      sub_100079780(v23, v19, _s20GrowWindowOfInterestV6ResultVMa);
      sub_10000E268(v19, v44, v25, &unk_1004CF400);
      v26 = v43;
      sub_10000E268(&v19[v41], v43, &qword_1005CD510, &unk_1004CF2E0);
      v27 = v25;
      v28 = *v24;
      if ((*v24)(v26, 1, v45) == 1)
      {
        sub_100016D2C();
        v29 = v42;
        sub_1004A7114();
        v30 = v26;
        v31 = v29;
        v19 = v38;
        v32 = v28(v30, 1, v45);
        v25 = v27;
        if (v32 != 1)
        {
          sub_100025F40(v43, &qword_1005CD510, &unk_1004CF2E0);
        }
      }

      else
      {
        v33 = v26;
        v31 = v42;
        sub_100025FDC(v33, v42, v27, &unk_1004CF400);
        v25 = v27;
      }

      v34 = v44;
      MessageIdentifierSet.subtracting(_:)(v31, v14);
      sub_100025F40(v34, v25, &unk_1004CF400);
      sub_100025F40(v31, v25, &unk_1004CF400);
      v35 = MessageIdentifierSet.count.getter();
      sub_100025F40(v14, v25, &unk_1004CF400);
      result = sub_100078ACC(v19, _s20GrowWindowOfInterestV6ResultVMa);
      v37 = __OFADD__(v21, v35);
      v21 += v35;
      if (v37)
      {
        break;
      }

      v24 = v39;
      v23 += v40;
      if (!--v20)
      {
        return v21;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t sub_100077BAC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v6 - 8);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v19[-v10];
  v12 = *(a4 + 16);
  if (v12)
  {
    v13 = v12 - 1;
    v14 = *(_s20GrowWindowOfInterestV6ResultVMa(0) - 8);
    sub_10000E268(a4 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v13, v8, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v8, v11, &unk_1005D91B0, &unk_1004CF400);
    v15 = sub_1000E5314();
    sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
    v16 = 0;
    v17 = 1;
    if ((v15 & 0x100000000) == 0 && (v15 & 0xFFFFFFFE) != 0)
    {
      v17 = 0;
      v16 = (v15 - 1);
    }
  }

  else
  {
    v17 = 0;
    v16 = HIDWORD(a2);
  }

  return v16 | (v17 << 32);
}

unint64_t sub_100077D40(unint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    sub_100016D2C();
    result = sub_1004A7114();
    v2 = *(v1 + 16);
    if (!v2)
    {
    }

    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v6[0] = *(v1 + 32 + 8 * v3);
      v4 = sub_100016948();
      result = Range<>.init<A>(_:)(v6, &type metadata for UID, v4);
      v6[4] = result;
      if (HIDWORD(result) != result)
      {
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        v5 = sub_1004A70B4();
        sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
        sub_1004A7064();
        result = v5(v6, 0);
      }

      if (v2 == ++v3)
      {
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100077E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v41 = a3;
  v42 = a4;
  v43 = a1;
  v47 = a5;
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v46 = &v40 - v8;
  v9 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  __chkstk_darwin(v9 - 8);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v40 - v12;
  v14 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v40 - v15;
  v17 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v44 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v40 = &v40 - v21;
  v22 = _s20GrowWindowOfInterestV6ResultVMa(0);
  sub_10000E268(a2 + *(v22 + 24), v13, &qword_1005CD510, &unk_1004CF2E0);
  LODWORD(v7) = (*(v7 + 48))(v13, 1, v6);
  sub_100025F40(v13, &qword_1005CD510, &unk_1004CF2E0);
  if (v7 != 1)
  {
    (*(v18 + 56))(v16, 1, 1, v17);
LABEL_7:
    v30 = &qword_1005CD518;
    v31 = &qword_1004CF2F0;
    v32 = v16;
LABEL_8:
    sub_100025F40(v32, v30, v31);
    v33 = sub_10000C9C0(&qword_1005CEC08, &qword_1004D1708);
    return (*(*(v33 - 8) + 56))(v47, 1, 1, v33);
  }

  v23 = a2 + *(v22 + 20);
  v24 = v45;
  sub_100079780(v23, v45, _s15MissingMessagesO11QueriedUIDsVMa);
  v25 = v24;
  v26 = v46;
  sub_100025FDC(v25, v46, &unk_1005D91B0, &unk_1004CF400);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v26, &unk_1005D91B0, &unk_1004CF400);
    v29 = 1;
  }

  else
  {
    v27 = v26;
    v28 = v44;
    sub_100025FDC(v27, v44, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v28, v16, &qword_1005CD1D0, &unk_1004CF2C0);
    v29 = 0;
  }

  (*(v18 + 56))(v16, v29, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    goto LABEL_7;
  }

  v35 = v40;
  sub_100025FDC(v16, v40, &qword_1005CD1D0, &unk_1004CF2C0);
  v36 = v43;
  if (sub_10001FB6C(v43, 0, v41, v42))
  {
    v30 = &qword_1005CD1D0;
    v31 = &unk_1004CF2C0;
    v32 = v35;
    goto LABEL_8;
  }

  v37 = sub_10000C9C0(&qword_1005CEC08, &qword_1004D1708);
  v38 = *(v37 + 48);
  v39 = v47;
  *v47 = v36;
  sub_100025FDC(v35, v39 + v38, &qword_1005CD1D0, &unk_1004CF2C0);
  return (*(*(v37 - 8) + 56))(v39, 0, 1, v37);
}

uint64_t sub_100078398(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v25 = &v25 - v5;
  v6 = sub_10000C9C0(&qword_1005CEBE0, &unk_1004D16D0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v10 - 8);
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  sub_100077270(&v25 - v16);
  sub_10000E268(a2, v14, &qword_1005CD1D0, &unk_1004CF2C0);
  (*(v4 + 56))(v14, 0, 1, v3);
  v18 = *(v7 + 56);
  sub_10000E268(v17, v9, &qword_1005CD518, &qword_1004CF2F0);
  sub_10000E268(v14, &v9[v18], &qword_1005CD518, &qword_1004CF2F0);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) != 1)
  {
    sub_10000E268(v9, v26, &qword_1005CD518, &qword_1004CF2F0);
    if (v19(&v9[v18], 1, v3) != 1)
    {
      v21 = &v9[v18];
      v22 = v25;
      sub_100025FDC(v21, v25, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100016D2C();
      v23 = v26;
      v20 = sub_1004A7034();
      sub_100025F40(v22, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v14, &qword_1005CD518, &qword_1004CF2F0);
      sub_100025F40(v17, &qword_1005CD518, &qword_1004CF2F0);
      sub_100025F40(v23, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v9, &qword_1005CD518, &qword_1004CF2F0);
      return v20 & 1;
    }

    sub_100025F40(v14, &qword_1005CD518, &qword_1004CF2F0);
    sub_100025F40(v17, &qword_1005CD518, &qword_1004CF2F0);
    sub_100025F40(v26, &qword_1005CD1D0, &unk_1004CF2C0);
    goto LABEL_6;
  }

  sub_100025F40(v14, &qword_1005CD518, &qword_1004CF2F0);
  sub_100025F40(v17, &qword_1005CD518, &qword_1004CF2F0);
  if (v19(&v9[v18], 1, v3) != 1)
  {
LABEL_6:
    sub_100025F40(v9, &qword_1005CEBE0, &unk_1004D16D0);
    v20 = 0;
    return v20 & 1;
  }

  sub_100025F40(v9, &qword_1005CD518, &qword_1004CF2F0);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1000787AC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - v5;
  v7 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s20GrowWindowOfInterestV6ResultVMa(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v14 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v28 = &v28 - v18;
  sub_100016D2C();
  sub_1004A7114();
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = v4;
    v21 = *(v10 + 20);
    v22 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v23 = *(v11 + 72);
    v24 = (v20 + 16);
    do
    {
      sub_100079780(v22, v13, _s20GrowWindowOfInterestV6ResultVMa);
      sub_100079780(&v13[v21], v9, _s15MissingMessagesO11QueriedUIDsVMa);
      (*v24)(v6, v9, v3);
      sub_1004A7104();
      sub_100078ACC(v13, _s20GrowWindowOfInterestV6ResultVMa);
      sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
      v22 += v23;
      --v19;
    }

    while (v19);
  }

  v25 = v16;
  v26 = v28;
  sub_100025FDC(v25, v28, &unk_1005D91B0, &unk_1004CF400);
  return sub_100025FDC(v26, v29, &unk_1005D91B0, &unk_1004CF400);
}

uint64_t sub_100078ACC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100078B2C(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = sub_10000C9C0(&qword_1005CEA38, &qword_1004D14F0);
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  __chkstk_darwin(v3);
  v6 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v39 = &v39 - v8;
  v9 = sub_10000C9C0(&qword_1005CEC20, &qword_1004D1710);
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for DownloadTask.CommandID(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v53 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v44 = &v39 - v16;
  v52 = type metadata accessor for TaskHistory.Running(0);
  __chkstk_darwin(v52);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v46 = &v39 - v21;
  v51 = *(a1 + 16);
  if (!v51)
  {
    return _swiftEmptyArrayStorage;
  }

  v22 = 0;
  v23 = *(v20 + 80);
  v49 = *(v20 + 72);
  v50 = a1 + ((v23 + 32) & ~v23);
  v47 = (v13 + 48);
  v48 = (v13 + 56);
  v54 = _swiftEmptyArrayStorage;
  v24 = v46;
  v42 = v13;
  v43 = v12;
  do
  {
    sub_100079780(v50 + v49 * v22, v24, type metadata accessor for TaskHistory.Running);
    sub_100079780(v24, v18, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100078ACC(v18, type metadata accessor for TaskHistory.Running);
      v25 = 1;
    }

    else
    {
      v26 = v11;
      v27 = *(v18 + 2);
      v28 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
      sub_100078ACC(&v18[*(v28 + 64)], type metadata accessor for ClientCommand);
      v29 = *(v45 + 16);
      if (v29)
      {
        v30 = v45 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v31 = *(v41 + 72);
        while (1)
        {
          sub_10000E268(v30, v6, &qword_1005CEA38, &qword_1004D14F0);
          if (*v6 == v27)
          {
            break;
          }

          sub_100025F40(v6, &qword_1005CEA38, &qword_1004D14F0);
          v30 += v31;
          if (!--v29)
          {
            v25 = 1;
            v11 = v26;
            goto LABEL_14;
          }
        }

        v32 = v39;
        sub_100025FDC(v6, v39, &qword_1005CEA38, &qword_1004D14F0);
        v11 = v26;
        sub_100079780(v32 + *(v40 + 52), v26, type metadata accessor for DownloadTask.CommandID);
        sub_100025F40(v32, &qword_1005CEA38, &qword_1004D14F0);
        v25 = 0;
LABEL_14:
        v13 = v42;
        v12 = v43;
        v24 = v46;
      }

      else
      {
        v25 = 1;
        v11 = v26;
        v13 = v42;
        v12 = v43;
      }
    }

    (*v48)(v11, v25, 1, v12);
    sub_100078ACC(v24, type metadata accessor for TaskHistory.Running);
    if ((*v47)(v11, 1, v12) == 1)
    {
      sub_100025F40(v11, &qword_1005CEC20, &qword_1004D1710);
    }

    else
    {
      v33 = v44;
      sub_100079718(v11, v44, type metadata accessor for DownloadTask.CommandID);
      sub_100079718(v33, v53, type metadata accessor for DownloadTask.CommandID);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_100085F6C(0, v54[2] + 1, 1, v54);
      }

      v35 = v54[2];
      v34 = v54[3];
      if (v35 >= v34 >> 1)
      {
        v54 = sub_100085F6C((v34 > 1), v35 + 1, 1, v54);
      }

      v36 = v53;
      v37 = v54;
      v54[2] = v35 + 1;
      sub_100079718(v36, v37 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v35, type metadata accessor for DownloadTask.CommandID);
      v24 = v46;
    }

    ++v22;
  }

  while (v22 != v51);
  return v54;
}

void *sub_1000790F8(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = sub_10000C9C0(&qword_1005CEA18, &qword_1004D14D0);
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  __chkstk_darwin(v3);
  v6 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v39 = &v39 - v8;
  v9 = sub_10000C9C0(&qword_1005CEA10, &qword_1004D16F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - v10;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v13 = *(Missing - 8);
  __chkstk_darwin(Missing);
  v53 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v44 = &v39 - v16;
  v52 = type metadata accessor for TaskHistory.Running(0);
  __chkstk_darwin(v52);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v46 = &v39 - v21;
  v51 = *(a1 + 16);
  if (!v51)
  {
    return _swiftEmptyArrayStorage;
  }

  v22 = 0;
  v23 = *(v20 + 80);
  v49 = *(v20 + 72);
  v50 = a1 + ((v23 + 32) & ~v23);
  v47 = (v13 + 48);
  v48 = (v13 + 56);
  v54 = _swiftEmptyArrayStorage;
  v24 = v46;
  v42 = v13;
  v43 = Missing;
  do
  {
    sub_100079780(v50 + v49 * v22, v24, type metadata accessor for TaskHistory.Running);
    sub_100079780(v24, v18, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100078ACC(v18, type metadata accessor for TaskHistory.Running);
      v25 = 1;
    }

    else
    {
      v26 = v11;
      v27 = *(v18 + 2);
      v28 = sub_10000C9C0(&qword_1005CD278, &qword_1004CF7B0);
      sub_100078ACC(&v18[*(v28 + 64)], type metadata accessor for ClientCommand);
      v29 = *(v45 + 16);
      if (v29)
      {
        v30 = v45 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v31 = *(v41 + 72);
        while (1)
        {
          sub_10000E268(v30, v6, &qword_1005CEA18, &qword_1004D14D0);
          if (*v6 == v27)
          {
            break;
          }

          sub_100025F40(v6, &qword_1005CEA18, &qword_1004D14D0);
          v30 += v31;
          if (!--v29)
          {
            v25 = 1;
            v11 = v26;
            goto LABEL_14;
          }
        }

        v32 = v39;
        sub_100025FDC(v6, v39, &qword_1005CEA18, &qword_1004D14D0);
        v11 = v26;
        sub_100079780(v32 + *(v40 + 52), v26, type metadata accessor for FindMissingMessages.CommandID);
        sub_100025F40(v32, &qword_1005CEA18, &qword_1004D14D0);
        v25 = 0;
LABEL_14:
        v13 = v42;
        Missing = v43;
        v24 = v46;
      }

      else
      {
        v25 = 1;
        v11 = v26;
        v13 = v42;
        Missing = v43;
      }
    }

    (*v48)(v11, v25, 1, Missing);
    sub_100078ACC(v24, type metadata accessor for TaskHistory.Running);
    if ((*v47)(v11, 1, Missing) == 1)
    {
      sub_100025F40(v11, &qword_1005CEA10, &qword_1004D16F0);
    }

    else
    {
      v33 = v44;
      sub_100079718(v11, v44, type metadata accessor for FindMissingMessages.CommandID);
      sub_100079718(v33, v53, type metadata accessor for FindMissingMessages.CommandID);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_10008634C(0, v54[2] + 1, 1, v54);
      }

      v35 = v54[2];
      v34 = v54[3];
      if (v35 >= v34 >> 1)
      {
        v54 = sub_10008634C((v34 > 1), v35 + 1, 1, v54);
      }

      v36 = v53;
      v37 = v54;
      v54[2] = v35 + 1;
      sub_100079718(v36, v37 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v35, type metadata accessor for FindMissingMessages.CommandID);
      v24 = v46;
    }

    ++v22;
  }

  while (v22 != v51);
  return v54;
}

unint64_t sub_1000796C4()
{
  result = qword_1005CEC10;
  if (!qword_1005CEC10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SequenceNumber, &type metadata for SequenceNumber, v0, v1);
    atomic_store(result, &qword_1005CEC10);
  }

  return result;
}

uint64_t sub_100079718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100079780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for PartialRange(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for PartialRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000798AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100079A18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_10000C9C0(&qword_1005CD510, &unk_1004CF2E0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_100079B7C(uint64_t a1)
{
  sub_100050DB8(319);
  if (v1 <= 0x3F)
  {
    _s15MissingMessagesO11QueriedUIDsVMa(319);
    if (v2 <= 0x3F)
    {
      sub_100035D34(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CommandID(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CommandID(uint64_t result, int a2, int a3)
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

unint64_t sub_100079C90()
{
  result = qword_1005CECC0;
  if (!qword_1005CECC0)
  {
    result = swift_getWitnessTable(byte_1004D1790, &_s20GrowWindowOfInterestV9CommandIDO4KindON, v0, v1);
    atomic_store(result, &qword_1005CECC0);
  }

  return result;
}

uint64_t sub_100079CE4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_10007CEDC(v12, v10, type metadata accessor for MessagesToRemoveHelper.Range);
      v14 = a1(v10);
      if (v3)
      {
        return sub_10007CF44(v10, type metadata accessor for MessagesToRemoveHelper.Range);
      }

      if (v14)
      {
        break;
      }

      sub_10007CF44(v10, type metadata accessor for MessagesToRemoveHelper.Range);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_10007CFA4(v10, v18, type metadata accessor for MessagesToRemoveHelper.Range);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

unint64_t sub_100079EB0(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a3 + 32); ; ++i)
  {
    v8 = *i;
    v9 = *i;
    result = a1(&v9, a2);
    if (v3)
    {
      break;
    }

    if (result)
    {
      return v8 | (HIDWORD(v8) << 32);
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100079F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = BYTE5(a4);
  v61 = a3;
  v62 = a1;
  v59 = a2;
  v63 = a6;
  v57 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v57);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v53 = &v52 - v10;
  __chkstk_darwin(v11);
  v58 = &v52 - v12;
  __chkstk_darwin(v13);
  v56 = &v52 - v14;
  v15 = type metadata accessor for MessageBatches(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v54 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v52 = &v52 - v22;
  __chkstk_darwin(v23);
  v25 = &v52 - v24;
  v26 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v26 - 8);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v52 - v30;
  LOBYTE(v66[0]) = v7 & 1;
  LOBYTE(v65) = BYTE4(a5) & 1;
  v60 = a5;
  sub_10007BCFC(v61, v62, &v52 - v30);
  sub_10000E268(v31, v28, &qword_1005CD518, &qword_1004CF2F0);
  if ((*(v19 + 48))(v28, 1, v18) == 1)
  {
    sub_100025F40(v31, &qword_1005CD518, &qword_1004CF2F0);
    sub_100025F40(v28, &qword_1005CD518, &qword_1004CF2F0);
    return (*(v19 + 56))(v63, 1, 1, v18);
  }

  v61 = v19;
  v62 = v18;
  v33 = v63;
  sub_100025FDC(v28, v25, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_10007CEDC(v59, v17, type metadata accessor for MessageBatches);
  LOBYTE(v66[0]) = 0;
  v34 = 0xFFFFFFFFLL;
  if ((v60 & &_mh_execute_header) == 0)
  {
    v34 = a5;
  }

  sub_1000D7F2C(v34);
  v35 = *(v17 + 1);

  v36 = sub_10007CF44(v17, type metadata accessor for MessageBatches);
  __chkstk_darwin(v36);
  *(&v52 - 2) = v25;
  v37 = sub_100079EB0(sub_10007C260, (&v52 - 4), v35);
  v39 = v38;

  v40 = v25;
  if ((v39 & 1) == 0)
  {
    v66[0] = v37;
    v41 = sub_100016948();
    v65 = Range<>.init<A>(_:)(v66, &type metadata for UID, v41);
    sub_100016D2C();
    v42 = v58;
    sub_1004A7124();
    v44 = v56;
    v43 = v57;
    MessageIdentifierSet.intersection(_:)(v25, v56);
    sub_100025F40(v42, &unk_1005D91B0, &unk_1004CF400);
    if ((v60 & 0x100000000) != 0 || (LODWORD(v66[0]) = v60, (MessageIdentifierSet.contains(_:)(v66, v43) & 1) == 0))
    {
      v46 = v55;
      sub_10000E268(v44, v55, &unk_1005D91B0, &unk_1004CF400);
      v50 = MessageIdentifierSet.count.getter();
      sub_100025F40(v44, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v31, &qword_1005CD518, &qword_1004CF2F0);
      if (v50 >= 1)
      {
        v48 = v46;
        v49 = v54;
        goto LABEL_13;
      }
    }

    else
    {
      LODWORD(v65) = v60;
      LODWORD(v64) = -1;
      static MessageIdentifier.... infix(_:_:)(&v65, &v64, &type metadata for UID, v66);
      v65 = v66[0];
      v64 = Range<>.init<A>(_:)(&v65, &type metadata for UID, v41);
      v45 = v58;
      sub_1004A7124();
      v46 = v53;
      MessageIdentifierSet.union(_:)(v45, v53);
      sub_100025F40(v45, &unk_1005D91B0, &unk_1004CF400);
      v47 = MessageIdentifierSet.count.getter();
      sub_100025F40(v44, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v31, &qword_1005CD518, &qword_1004CF2F0);
      if (v47 >= 1)
      {
        v48 = v46;
        v49 = v52;
LABEL_13:
        sub_100025FDC(v48, v49, &unk_1005D91B0, &unk_1004CF400);
        sub_100025FDC(v49, v33, &qword_1005CD1D0, &unk_1004CF2C0);
        v51 = 0;
LABEL_15:
        (*(v61 + 56))(v33, v51, 1, v62);
        return sub_100025F40(v40, &qword_1005CD1D0, &unk_1004CF2C0);
      }
    }

    sub_100025F40(v46, &unk_1005D91B0, &unk_1004CF400);
    v51 = 1;
    goto LABEL_15;
  }

  sub_100025F40(v31, &qword_1005CD518, &qword_1004CF2F0);
  (*(v61 + 56))(v33, 1, 1, v62);
  return sub_100025F40(v40, &qword_1005CD1D0, &unk_1004CF2C0);
}

uint64_t sub_10007A65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - v5;
  v7 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v31 = &v30 - v8;
  v33 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v34 = &v30 - v12;
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  __chkstk_darwin(v16);
  v32 = &v30 - v17;
  sub_100016D2C();
  sub_1004A7114();
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = (v4 + 16);
    v20 = (a1 + 40);
    do
    {
      if ((*v20 & 1) == 0)
      {
        v39 = *(v20 - 1);
        v21 = sub_100016948();
        v38 = Range<>.init<A>(_:)(&v39, &type metadata for UID, v21);
        sub_1004A7124();
        (*v19)(v6, v10, v3);
        sub_1004A7104();
        sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
      }

      v20 += 12;
      --v18;
    }

    while (v18);
  }

  v22 = v32;
  sub_100025FDC(v15, v32, &unk_1005D91B0, &unk_1004CF400);
  v23 = v34;
  sub_10000E268(v22, v34, &unk_1005D91B0, &unk_1004CF400);
  v24 = MessageIdentifierSet.count.getter();
  sub_100025F40(v22, &unk_1005D91B0, &unk_1004CF400);
  if (v24 <= 0)
  {
    sub_100025F40(v23, &unk_1005D91B0, &unk_1004CF400);
    v28 = 1;
    v27 = v37;
  }

  else
  {
    v25 = v31;
    sub_100025FDC(v23, v31, &unk_1005D91B0, &unk_1004CF400);
    v26 = v25;
    v27 = v37;
    sub_100025FDC(v26, v37, &qword_1005CD1D0, &unk_1004CF2C0);
    v28 = 0;
  }

  return (*(v35 + 56))(v27, v28, 1, v36);
}

void sub_10007AA20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = a1;
  v11 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v45 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  __chkstk_darwin(v24);
  if ((a1 & 0x100000000) == 0)
  {
    if (a1 == -1)
    {
      __break(1u);
      return;
    }

    ++v10;
    if ((a4 & 0x100000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  if ((a4 & 0x100000000) == 0)
  {
LABEL_6:
    if (v10 <= a4)
    {
      v31 = a4;
    }

    else
    {
      v31 = v10;
    }

    if ((a1 & &_mh_execute_header) != 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = v31;
    }

LABEL_12:
    v46 = v10;
    v47 = v26;
    v48 = v30;
    v49 = &v45 - v27;
    v50 = v29;
    v51 = v28;
    v52 = a2;
    v53 = v25;
    v54 = a5;
    sub_100016D2C();
    sub_1004A7114();
    v32 = *(a3 + 16);
    if (v32)
    {
      v33 = (a3 + 32);
      v34 = sub_100016948();
      v35 = (v45 + 16);
      do
      {
        v36 = *v33;
        v33 = (v33 + 12);
        v56[0] = v36;
        *v58 = Range<>.init<A>(_:)(v56, &type metadata for UID, v34);
        sub_1004A7124();
        (*v35)(v13, v18, v11);
        sub_1004A7104();
        sub_100025F40(v18, &unk_1005D91B0, &unk_1004CF400);
        --v32;
      }

      while (v32);
    }

    v37 = v47;
    sub_100025FDC(v21, v47, &unk_1005D91B0, &unk_1004CF400);
    LODWORD(v56[0]) = v46;
    v58[0] = -1;
    v38 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(v56, v58, &type metadata for UID, &v57);
    v39 = v48;
    sub_1004A7114();
    v56[0] = v57;
    *v58 = Range<>.init<A>(_:)(v56, &type metadata for UID, v38);
    if (v58[1] != v58[0])
    {
      v40 = sub_1004A70B4();
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      sub_1004A7064();
      v40(v56, 0);
    }

    v41 = v50;
    MessageIdentifierSet.subtracting(_:)(v39, v50);
    sub_100025F40(v37, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v39, &unk_1005D91B0, &unk_1004CF400);
    if ((v52 & &_mh_execute_header) != 0)
    {
      v42 = 1;
    }

    else
    {
      v42 = v52;
    }

    v58[0] = v42;
    LODWORD(v55) = -1;
    static MessageIdentifier.... infix(_:_:)(v58, &v55, &type metadata for UID, v56);
    *v58 = v56[0];
    v55 = Range<>.init<A>(_:)(v58, &type metadata for UID, v38);
    v43 = v51;
    sub_1004A7124();
    v44 = v49;
    MessageIdentifierSet.intersection(_:)(v43, v49);
    sub_100025F40(v43, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v41, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v44, v54, &unk_1005D91B0, &unk_1004CF400);
    return;
  }

  sub_1000E5FCC(a5);
}

BOOL sub_10007AF3C(unsigned int *a1, unsigned int *a2)
{
  if (*(a1 + 5))
  {
    return (*(a2 + 5) & 1) != 0;
  }

  if (*(a2 + 5))
  {
    return 0;
  }

  v3 = *a2 | (*(a2 + 4) << 32);
  if (((*a1 | (*(a1 + 4) << 32)) & 0x100000000) != 0)
  {
    if ((v3 & 0x100000000) != 0)
    {
      return 1;
    }
  }

  else if ((v3 & 0x100000000) == 0 && *a1 == *a2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10007B03C(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 14931;
  }

  else
  {
    v2 = 978332499;
  }

  v4 = v2;
  sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
  v5._countAndFlagsBits = sub_1004A5804();
  sub_1004A5994(v5);

  return v4;
}

uint64_t sub_10007B0CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  v15 = *v2;
  v16 = *(v2 + 8) | (*(v2 + 12) << 32);
  v17 = *(v2 + 16);
  v18 = *(v2 + 20);
  LOBYTE(v26) = *(v2 + 13);
  LOBYTE(v25) = v18;
  sub_10007B4AC(a1, a2, v15, v16 | (v26 << 40), v17 | (v18 << 32), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100025F40(v7, &qword_1005CD518, &qword_1004CF2F0);
    result = sub_1000D7EB4();
    if (v20)
    {
      return result;
    }

    LODWORD(v25) = result;
    LODWORD(v24) = -1;
    v21 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(&v25, &v24, &type metadata for UID, &v26);
    v25 = v26;
    v24 = Range<>.init<A>(_:)(&v25, &type metadata for UID, v21);
    sub_100016D2C();
    sub_1004A7124();
    sub_10007B980(v11);
    v22 = v11;
  }

  else
  {
    sub_100025FDC(v7, v14, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_10007B980(v14);
    v22 = v14;
  }

  return sub_100025F40(v22, &qword_1005CD1D0, &unk_1004CF2C0);
}

void sub_10007B35C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a2 + 8);
  v8 = *(v7 + 16);
  if (v8 > a1)
  {
    v9 = a1 - 1;
    if (__OFSUB__(a1, 1))
    {
      __break(1u);
    }

    else if (v9 < v8)
    {
      LODWORD(v13) = *(v7 + 8 * v9 + 32);
      LODWORD(v12) = -1;
      v10 = sub_100016948();
      static MessageIdentifier.... infix(_:_:)(&v13, &v12, &type metadata for UID, &v14);
      v13 = v14;
      v12 = Range<>.init<A>(_:)(&v13, &type metadata for UID, v10);
      sub_100016D2C();
      sub_1004A7124();
      sub_10007B980(v6);
      sub_100025F40(v6, &qword_1005CD1D0, &unk_1004CF2C0);
      return;
    }

    __break(1u);
  }
}

uint64_t sub_10007B4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a3;
  v49 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v46 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = v39 - v11;
  v12 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v12 - 8);
  v14 = v39 - v13;
  v15 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v42 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v47 = v39 - v19;
  v20 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v20);
  v24 = __chkstk_darwin(v21);
  v26 = v39 - v25;
  v50 = a2;
  if (*(*(a2 + 8) + 16) <= a1)
  {
    v32 = *(v42 + 56);

    return v32(a6, 1, 1, v15, v24);
  }

  else
  {
    v39[1] = v22;
    v40 = v23;
    v39[0] = v17;
    v52 = v15;
    v41 = a6;
    sub_100016D2C();
    sub_1004A7114();
    if (a1 >= 1)
    {
      v27 = a5;
      v28 = a5;
      v29 = (v42 + 48);
      v43 = (v46 + 16);
      v30 = HIDWORD(v28) & 1;
      v45 = a4 & 0xFFFFFFFFFFLL | (((a4 >> 40) & 1) << 40);
      v46 = (a4 >> 40) & 1;
      v44 = v27 | (v30 << 32);
      while (1)
      {
        v54 = v46;
        v53 = v30;
        sub_100079F40(v26, v50, v51, v45, v44, v14);
        if ((*v29)(v14, 1, v52) == 1)
        {
          break;
        }

        v31 = v47;
        sub_100025FDC(v14, v47, &qword_1005CD1D0, &unk_1004CF2C0);
        (*v43)(v48, v31, v49);
        sub_1004A7104();
        sub_100025F40(v31, &qword_1005CD1D0, &unk_1004CF2C0);
        if (!--a1)
        {
          goto LABEL_11;
        }
      }

      sub_100025F40(v14, &qword_1005CD518, &qword_1004CF2F0);
    }

LABEL_11:
    v34 = v40;
    sub_10000E268(v26, v40, &unk_1005D91B0, &unk_1004CF400);
    v35 = MessageIdentifierSet.count.getter();
    sub_100025F40(v26, &unk_1005D91B0, &unk_1004CF400);
    if (v35 < 1)
    {
      sub_100025F40(v34, &unk_1005D91B0, &unk_1004CF400);
      return (*(v42 + 56))(v41, 1, 1, v52);
    }

    else
    {
      v36 = v39[0];
      sub_100025FDC(v34, v39[0], &unk_1005D91B0, &unk_1004CF400);
      v37 = v36;
      v38 = v41;
      sub_100025FDC(v37, v41, &qword_1005CD1D0, &unk_1004CF2C0);
      return (*(v42 + 56))(v38, 0, 1, v52);
    }
  }
}

uint64_t sub_10007B980(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  v4 = *(v1 + 8);
  v5 = *(v1 + 13);
  v9[2] = a1;

  v6 = sub_1000D7608(sub_10007BA80, v9, v2);

  *v1 = v6;
  LOBYTE(v6) = sub_10010243C(v6, v2);

  if ((v6 & 1) == 0 && (v5 & 1) == 0 && ((v4 | (v3 << 32)) & 0x100000000) == 0)
  {
    if (v4 == -1)
    {
      __break(1u);
    }

    else
    {
      v10[0] = v4 + 1;
      v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      result = MessageIdentifierSet.contains(_:)(v10, v8);
      if ((result & 1) == 0)
      {
        *(v1 + 12) = 256;
        *(v1 + 8) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_10007BA80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10007BAC4(*(v2 + 16), *a1);
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_10007BAC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v4 - 8);
  v6 = &v20[-v5];
  v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v7);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v20[-v11];
  v23 = a2;
  v13 = sub_100016948();
  v22 = Range<>.init<A>(_:)(&v23, &type metadata for UID, v13);
  sub_100016D2C();
  sub_1004A7124();
  MessageIdentifierSet.intersection(_:)(a1, v12);
  sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
  v14 = sub_1000E5314();
  if (v14 & 0x100000000) != 0 || (v15 = v14, MessageIdentifierSet.ranges.getter(v6), v16 = sub_1000E4C0C() >> 32, v18 = v17, sub_100025F40(v6, &qword_1005CD7A0, &unk_1004CF590), (v18))
  {
    sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
    return 0;
  }

  else
  {
    v21 = v16;
    LODWORD(v22) = v15;
    static MessageIdentifier.... infix(_:_:)(&v22, &v21, &type metadata for UID, &v23);
    sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
    return v23;
  }
}

uint64_t sub_10007BCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v41 = a2;
  v44 = a3;
  v4 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - v6;
  v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v36 = &v35 - v9;
  v39 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v39);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v40 = &v35 - v13;
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  __chkstk_darwin(v17);
  v37 = &v35 - v18;
  __chkstk_darwin(v19);
  v38 = &v35 - v20;
  sub_100016D2C();
  sub_1004A7114();
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = (a1 + 32);
    v23 = sub_100016948();
    do
    {
      v24 = *v22;
      v22 = (v22 + 12);
      v46 = v24;
      v45 = Range<>.init<A>(_:)(&v46, &type metadata for UID, v23);
      sub_1004A7124();
      (*(v5 + 16))(v7, v11, v4);
      sub_1004A7104();
      sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
      --v21;
    }

    while (v21);
  }

  v25 = v16;
  v26 = v37;
  sub_100025FDC(v25, v37, &unk_1005D91B0, &unk_1004CF400);
  v27 = v38;
  MessageIdentifierSet.subtracting(_:)(v41, v38);
  sub_100025F40(v26, &unk_1005D91B0, &unk_1004CF400);
  v28 = v40;
  sub_10000E268(v27, v40, &unk_1005D91B0, &unk_1004CF400);
  v29 = MessageIdentifierSet.count.getter();
  sub_100025F40(v27, &unk_1005D91B0, &unk_1004CF400);
  if (v29 <= 0)
  {
    sub_100025F40(v28, &unk_1005D91B0, &unk_1004CF400);
    v33 = 1;
    v32 = v44;
  }

  else
  {
    v30 = v36;
    sub_100025FDC(v28, v36, &unk_1005D91B0, &unk_1004CF400);
    v31 = v30;
    v32 = v44;
    sub_100025FDC(v31, v44, &qword_1005CD1D0, &unk_1004CF2C0);
    v33 = 0;
  }

  return (*(v42 + 56))(v32, v33, 1, v43);
}

BOOL sub_10007C0F8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  v13 = *a1;
  v10 = sub_100016948();
  v12 = Range<>.init<A>(_:)(&v13, &type metadata for UID, v10);
  sub_100016D2C();
  sub_1004A7124();
  MessageIdentifierSet.intersection(_:)(a2, v6);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  LOBYTE(a2) = sub_1004A70C4();
  sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
  return (a2 & 1) == 0;
}

uint64_t sub_10007C280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_10010243C(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if ((a2 & 0x10000000000) != 0)
  {
    if ((a5 & 0x10000000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    if ((a5 & 0x10000000000) != 0)
    {
      return 0;
    }

    if ((a2 & 0x100000000) != 0)
    {
      if ((a5 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else if ((a5 & 0x100000000) != 0 || a5 != a2)
    {
      return 0;
    }
  }

  if ((a3 & 0x100000000) != 0)
  {
    if ((a6 & 0x100000000) != 0)
    {
      return 1;
    }
  }

  else if ((a6 & 0x100000000) == 0 && a6 == a3)
  {
    return 1;
  }

  return 0;
}

char *sub_10007C308(unint64_t a1, unint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(v63) = a5;
  v70 = a4;
  v71 = a3;
  v68 = a2;
  v7 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v7);
  v64 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = v62 - v10;
  v66 = sub_10000C9C0(&qword_1005CECC8, &qword_1004D1828);
  __chkstk_darwin(v66);
  v12 = v62 - v11;
  v13 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  __chkstk_darwin(v13 - 8);
  v15 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v16);
  v18 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v65 = v62 - v20;
  v21 = _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa(0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C9C0(&qword_1005CECD0, &unk_1004D1830);
  __chkstk_darwin(v25 - 8);
  v27 = v62 - v26;
  v69 = a1;
  sub_1000E5D14(v62 - v26);
  if ((*(v22 + 48))(v27, 1, v21) == 1)
  {
    if (v71)
    {
      LODWORD(v73) = 1;
      LODWORD(v72) = -1;
      sub_100016948();
      static MessageIdentifier.... infix(_:_:)(&v73, &v72, &type metadata for UID, &v74);
      v28 = v74;
      v16 = sub_100086338(0, 1, 1, _swiftEmptyArrayStorage);
      v30 = *(v16 + 2);
      v29 = *(v16 + 3);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v16 = sub_100086338((v29 > 1), v30 + 1, 1, v16);
      }

LABEL_55:
      sub_10007CF44(v69, _s15MissingMessagesOMa);
      *(v16 + 2) = v31;
      v60 = &v16[12 * v30];
      *(v60 + 4) = v28;
      v60[40] = 0;
      goto LABEL_56;
    }

    v39 = HIDWORD(v68);
    if (v63 > 1u)
    {
      v40 = 0xFFFFFFFFLL;
      if (v39 != 0xFFFFFFFF)
      {
        LODWORD(v73) = HIDWORD(v68) + 1;
        LODWORD(v72) = -1;
        sub_100016948();
        static MessageIdentifier.... infix(_:_:)(&v73, &v72, &type metadata for UID, &v74);
        v28 = v74;
        v16 = sub_100086338(0, 1, 1, _swiftEmptyArrayStorage);
        v30 = *(v16 + 2);
        v59 = *(v16 + 3);
        goto LABEL_53;
      }

      __break(1u);
    }

    else
    {
      if ((v68 & 0xFFFFFFFE) == 0)
      {
        v16 = _swiftEmptyArrayStorage;
        goto LABEL_48;
      }

      LODWORD(v73) = 1;
      LODWORD(v72) = v68 - 1;
      sub_100016948();
      static MessageIdentifier.... infix(_:_:)(&v73, &v72, &type metadata for UID, &v74);
      v5 = v74;
      v16 = sub_100086338(0, 1, 1, _swiftEmptyArrayStorage);
      a1 = *(v16 + 2);
      v40 = *(v16 + 3);
      v12 = (a1 + 1);
      if (a1 < v40 >> 1)
      {
LABEL_11:
        *(v16 + 2) = v12;
        v41 = &v16[12 * a1];
        *(v41 + 4) = v5;
        v41[40] = 0;
LABEL_48:
        if (v39 == 0xFFFFFFFF)
        {
          sub_10007CF44(v69, _s15MissingMessagesOMa);
          goto LABEL_56;
        }

        LODWORD(v73) = v39 + 1;
        LODWORD(v72) = -1;
        sub_100016948();
        static MessageIdentifier.... infix(_:_:)(&v73, &v72, &type metadata for UID, &v74);
        v28 = v74;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_100086338(0, *(v16 + 2) + 1, 1, v16);
        }

        v30 = *(v16 + 2);
        v59 = *(v16 + 3);
LABEL_53:
        v31 = v30 + 1;
        if (v30 >= v59 >> 1)
        {
          v16 = sub_100086338((v59 > 1), v30 + 1, 1, v16);
        }

        goto LABEL_55;
      }
    }

    v16 = sub_100086338((v40 > 1), v12, 1, v16);
    goto LABEL_11;
  }

  sub_10007CFA4(v27, v24, _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa);
  v32 = sub_100016948();
  static MessageIdentifierRange.all.getter(&type metadata for UID, v32, &v74);
  v73 = v74;
  v62[0] = v32;
  v72 = Range<>.init<A>(_:)(&v73, &type metadata for UID, v32);
  sub_100016D2C();
  sub_1004A7124();
  v33 = *(v21 + 20);
  v63 = v24;
  sub_10007CEDC(&v24[v33], v15, _s15MissingMessagesO11QueriedUIDsVMa);
  v34 = v65;
  MessageIdentifierSet.subtracting(_:)(v15, v65);
  sub_100025F40(v18, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v15, &unk_1005D91B0, &unk_1004CF400);
  v35 = v67;
  v62[1] = v16;
  MessageIdentifierSet.ranges.getter(v67);
  sub_10000E268(v35, v12, &qword_1005CD7A0, &unk_1004CF590);
  v36 = *(v66 + 36);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v37 = sub_1004A7044();
  sub_100025F40(v35, &qword_1005CD7A0, &unk_1004CF590);
  *&v12[v36] = v37;
  v38 = v34;
  if (v37 != sub_1004A7074())
  {
    v42 = v36;
    v16 = _swiftEmptyArrayStorage;
    while (1)
    {
      MessageIdentifierSet.RangeView.subscript.getter(v7, &v74);
      v43 = v74;
      v44 = sub_1004A7044();
      v45 = sub_1004A7074();
      if (v37 < v44 || v37 >= v45)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_100086338(0, *(v16 + 2) + 1, 1, v16);
      }

      v47 = *(v16 + 2);
      v46 = *(v16 + 3);
      if (v47 >= v46 >> 1)
      {
        v16 = sub_100086338((v46 > 1), v47 + 1, 1, v16);
      }

      ++v37;
      *(v16 + 2) = v47 + 1;
      v48 = &v16[12 * v47];
      *(v48 + 4) = v43;
      v48[40] = 0;
      if (v37 == sub_1004A7074())
      {
        *&v12[v42] = v37;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_21:
  sub_100025F40(v12, &qword_1005CECC8, &qword_1004D1828);
  v49 = v64;
  v44 = v38;
  MessageIdentifierSet.ranges.getter(v64);
  v50 = sub_1000E4C0C();
  v52 = v51;
  sub_100025F40(v49, &qword_1005CD7A0, &unk_1004CF590);
  v37 = v63;
  v53 = HIDWORD(v68);
  if (v71)
  {
    v54 = 0;
  }

  else
  {
    v54 = HIDWORD(v68);
  }

  if (v54 <= *v63)
  {
    v54 = *v63;
  }

  if (v71)
  {
    LODWORD(v53) = *v63;
    v54 = *v63;
  }

  if (!v63[4])
  {
    LODWORD(v53) = v54;
  }

  if (v52)
  {
    if (v63[4] & v71)
    {
      v55 = 1;
      goto LABEL_39;
    }
  }

  else
  {
    if (v53 <= HIDWORD(v50))
    {
      LODWORD(v53) = HIDWORD(v50);
    }

    if ((v63[4] & v71) != 0)
    {
      LODWORD(v53) = HIDWORD(v50);
    }
  }

  if (v53 == -1)
  {
    sub_10007CF44(v69, _s15MissingMessagesOMa);
    sub_100025F40(v38, &unk_1005D91B0, &unk_1004CF400);
    sub_10007CF44(v37, _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa);
    goto LABEL_56;
  }

  v55 = v53 + 1;
LABEL_39:
  LODWORD(v73) = v55;
  LODWORD(v72) = -1;
  static MessageIdentifier.... infix(_:_:)(&v73, &v72, &type metadata for UID, &v74);
  v43 = v74;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_58:
    v16 = sub_100086338(0, *(v16 + 2) + 1, 1, v16);
  }

  v57 = *(v16 + 2);
  v56 = *(v16 + 3);
  if (v57 >= v56 >> 1)
  {
    v16 = sub_100086338((v56 > 1), v57 + 1, 1, v16);
  }

  sub_10007CF44(v69, _s15MissingMessagesOMa);
  sub_100025F40(v44, &unk_1005D91B0, &unk_1004CF400);
  sub_10007CF44(v37, _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa);
  *(v16 + 2) = v57 + 1;
  v58 = &v16[12 * v57];
  *(v58 + 4) = v43;
  v58[40] = 1;
LABEL_56:
  LOBYTE(v74) = 0;
  LOBYTE(v73) = BYTE4(v70) & 1;
  return v16;
}

__n128 sub_10007CD80(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_10007CD94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_10007CDDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PartialRange(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s11QueryRangesV7ElementVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s11QueryRangesV7ElementVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10007CEDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007CF44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007CFA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s11QueryRangesV19FetchedWindowUpdateOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11QueryRangesV19FetchedWindowUpdateOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 6) = v3;
  return result;
}

uint64_t sub_10007D058(uint64_t a1)
{
  if (*(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007D074(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    *(result + 5) = 1;
  }

  else
  {
    *(result + 5) = 0;
  }

  return result;
}

unint64_t sub_10007D0BC()
{
  result = qword_1005CECD8;
  if (!qword_1005CECD8)
  {
    result = swift_getWitnessTable(")T\v", &_s11QueryRangesV7ElementV11PersistenceON, v0, v1);
    atomic_store(result, &qword_1005CECD8);
  }

  return result;
}

Swift::Int sub_10007D110()
{
  result = sub_100093190(&off_100598FB8);
  qword_1005DDF10 = result;
  return result;
}

uint64_t sub_10007D138(uint64_t a1)
{
  v2 = v1;
  PendingDownload = type metadata accessor for FindPendingDownload(0);
  v5 = PendingDownload - 8;
  __chkstk_darwin(PendingDownload);
  v98 = v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v97 = v92 - v8;
  v9 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v9 - 8);
  v11 = v92 - v10;
  v101 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v101);
  v93 = v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v96 = v92 - v14;
  __chkstk_darwin(v15);
  v17 = v92 - v16;
  __chkstk_darwin(v18);
  v95 = v92 - v19;
  __chkstk_darwin(v20);
  v22 = v92 - v21;
  __chkstk_darwin(v23);
  v25 = v92 - v24;
  v26 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v26);
  v28 = v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v94 = v92 - v30;
  __chkstk_darwin(v31);
  v33 = v92 - v32;
  v34 = *(v5 + 44);
  v100 = v2;
  sub_10002A54C(v2 + v34, v92 - v32);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  if (sub_1004A70C4())
  {
    sub_1000808D8(a1, v25, type metadata accessor for MailboxTaskLogger);
    sub_1000808D8(a1, v22, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v35 = sub_1004A4A54();
    v36 = sub_1004A6034();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v37 = 68159235;
      *(v37 + 4) = 2;
      *(v37 + 8) = 256;
      v38 = v101;
      v39 = &v22[*(v101 + 20)];
      *(v37 + 10) = *v39;
      *(v37 + 11) = 2082;
      v40 = &v25[*(v38 + 20)];
      *(v37 + 13) = sub_10015BA6C(*(v40 + 1), *(v40 + 2), &v104);
      *(v37 + 21) = 1040;
      *(v37 + 23) = 2;
      *(v37 + 27) = 512;
      LOWORD(v39) = *(v39 + 12);
      sub_100080940(v22, type metadata accessor for MailboxTaskLogger);
      *(v37 + 29) = v39;
      *(v37 + 31) = 2160;
      *(v37 + 33) = 0x786F626C69616DLL;
      *(v37 + 41) = 2085;
      v41 = *(v40 + 4);
      LODWORD(v40) = *(v40 + 10);

      sub_100080940(v25, type metadata accessor for MailboxTaskLogger);
      v102 = v41;
      v103 = v40;
      v42 = sub_1004A5824();
      v44 = sub_10015BA6C(v42, v43, &v104);

      *(v37 + 43) = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v37, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100080940(v22, type metadata accessor for MailboxTaskLogger);

      sub_100080940(v25, type metadata accessor for MailboxTaskLogger);
    }

    v73 = v33;
    return sub_100025F40(v73, &unk_1005D91B0, &unk_1004CF400);
  }

  v92[1] = v26;
  v99 = v33;
  MessageIdentifierSet.ranges.getter(v11);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v45 = sub_1004A7044();
  v46 = sub_1004A7074();
  v47 = sub_1004A7044();
  result = sub_1004A7074();
  if (v45 < v47 || result < v45)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v49 = sub_1004A7044();
  v50 = sub_1004A7074();
  result = sub_100025F40(v11, &qword_1005CD7A0, &unk_1004CF590);
  if (v46 < v49 || v50 < v46)
  {
    goto LABEL_26;
  }

  if (!__OFSUB__(v46, v45))
  {
    if (v46 - v45 > 19)
    {
      v74 = v96;
      sub_1000808D8(a1, v96, type metadata accessor for MailboxTaskLogger);
      v75 = v93;
      sub_1000808D8(a1, v93, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v76 = v99;
      sub_10002A54C(v99, v28);
      v77 = v98;
      sub_1000808D8(v100, v98, type metadata accessor for FindPendingDownload);
      v78 = sub_1004A4A54();
      v79 = sub_1004A6034();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v104 = v100;
        *v80 = 68159747;
        *(v80 + 4) = 2;
        *(v80 + 8) = 256;
        v81 = v101;
        v82 = v74;
        v83 = v75 + *(v101 + 20);
        *(v80 + 10) = *v83;
        *(v80 + 11) = 2082;
        v84 = v82 + *(v81 + 20);
        *(v80 + 13) = sub_10015BA6C(*(v84 + 8), *(v84 + 16), &v104);
        *(v80 + 21) = 1040;
        *(v80 + 23) = 2;
        *(v80 + 27) = 512;
        LOWORD(v83) = *(v83 + 24);
        sub_100080940(v75, type metadata accessor for MailboxTaskLogger);
        *(v80 + 29) = v83;
        *(v80 + 31) = 2160;
        *(v80 + 33) = 0x786F626C69616DLL;
        *(v80 + 41) = 2085;
        v85 = *(v84 + 32);
        LODWORD(v83) = *(v84 + 40);

        sub_100080940(v82, type metadata accessor for MailboxTaskLogger);
        v102 = v85;
        v103 = v83;
        v86 = sub_1004A5824();
        v88 = sub_10015BA6C(v86, v87, &v104);

        *(v80 + 43) = v88;
        *(v80 + 51) = 2048;
        v89 = MessageIdentifierSet.count.getter();
        sub_100025F40(v28, &unk_1005D91B0, &unk_1004CF400);
        *(v80 + 53) = v89;
        *(v80 + 61) = 2082;
        if (*(v77 + 57))
        {
          v90 = 6581810;
        }

        else
        {
          v90 = 7631665;
        }

        sub_100080940(v77, type metadata accessor for FindPendingDownload);
        v91 = sub_10015BA6C(v90, 0xE300000000000000, &v104);

        *(v80 + 63) = v91;
        _os_log_impl(&_mh_execute_header, v78, v79, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Excluding %ld, UIDs %{public}s", v80, 0x47u);
        swift_arrayDestroy();

        v73 = v99;
      }

      else
      {
        sub_100025F40(v28, &unk_1005D91B0, &unk_1004CF400);
        sub_100080940(v75, type metadata accessor for MailboxTaskLogger);

        sub_100080940(v77, type metadata accessor for FindPendingDownload);
        sub_100080940(v74, type metadata accessor for MailboxTaskLogger);
        v73 = v76;
      }
    }

    else
    {
      v51 = v95;
      sub_1000808D8(a1, v95, type metadata accessor for MailboxTaskLogger);
      sub_1000808D8(a1, v17, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v52 = v94;
      sub_10002A54C(v99, v94);
      v53 = v97;
      sub_1000808D8(v100, v97, type metadata accessor for FindPendingDownload);
      v54 = sub_1004A4A54();
      v55 = sub_1004A6034();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v104 = v100;
        *v56 = 68159747;
        *(v56 + 4) = 2;
        *(v56 + 8) = 256;
        v57 = v101;
        v58 = &v17[*(v101 + 20)];
        *(v56 + 10) = *v58;
        *(v56 + 11) = 2082;
        v59 = v52;
        v60 = v51;
        v61 = v51 + *(v57 + 20);
        *(v56 + 13) = sub_10015BA6C(*(v61 + 8), *(v61 + 16), &v104);
        *(v56 + 21) = 1040;
        *(v56 + 23) = 2;
        *(v56 + 27) = 512;
        LOWORD(v58) = *(v58 + 12);
        sub_100080940(v17, type metadata accessor for MailboxTaskLogger);
        *(v56 + 29) = v58;
        *(v56 + 31) = 2160;
        *(v56 + 33) = 0x786F626C69616DLL;
        *(v56 + 41) = 2085;
        v62 = *(v61 + 32);
        v63 = *(v61 + 40);

        sub_100080940(v60, type metadata accessor for MailboxTaskLogger);
        v102 = v62;
        v103 = v63;
        v64 = sub_1004A5824();
        v66 = sub_10015BA6C(v64, v65, &v104);

        *(v56 + 43) = v66;
        *(v56 + 51) = 2082;
        v67 = MessageIdentifierSet.debugDescription.getter();
        v69 = v68;
        sub_100025F40(v59, &unk_1005D91B0, &unk_1004CF400);
        v70 = sub_10015BA6C(v67, v69, &v104);

        *(v56 + 53) = v70;
        *(v56 + 61) = 2082;
        if (*(v53 + 57))
        {
          v71 = 6581810;
        }

        else
        {
          v71 = 7631665;
        }

        sub_100080940(v53, type metadata accessor for FindPendingDownload);
        v72 = sub_10015BA6C(v71, 0xE300000000000000, &v104);

        *(v56 + 63) = v72;
        _os_log_impl(&_mh_execute_header, v54, v55, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Excluding UIDs %{public}s, %{public}s", v56, 0x47u);
        swift_arrayDestroy();

        v73 = v99;
      }

      else
      {
        sub_100080940(v17, type metadata accessor for MailboxTaskLogger);

        sub_100080940(v53, type metadata accessor for FindPendingDownload);
        sub_100025F40(v52, &unk_1005D91B0, &unk_1004CF400);
        sub_100080940(v51, type metadata accessor for MailboxTaskLogger);
        v73 = v99;
      }
    }

    return sub_100025F40(v73, &unk_1005D91B0, &unk_1004CF400);
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_10007DDF0(uint64_t a1, char *a2)
{
  v3 = v2;
  v151 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v151);
  v7 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v138 - v9;
  __chkstk_darwin(v11);
  v149 = &v138 - v12;
  __chkstk_darwin(v13);
  v146 = &v138 - v14;
  __chkstk_darwin(v15);
  v144 = &v138 - v16;
  __chkstk_darwin(v17);
  v145 = &v138 - v18;
  __chkstk_darwin(v19);
  v147 = &v138 - v20;
  __chkstk_darwin(v21);
  v148 = &v138 - v22;
  v23 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v23 - 8);
  v25 = &v138 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v138 - v27;
  v29 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v29);
  __chkstk_darwin(v30);
  __chkstk_darwin(v31);
  __chkstk_darwin(v32);
  __chkstk_darwin(&v138 - v33);
  v35 = &v138 - v34;
  __chkstk_darwin(v36);
  v153 = &v138 - v41;
  v42 = *v3;
  if (!*v3)
  {
    sub_1000808D8(a2, v10, type metadata accessor for MailboxTaskLogger);
    sub_1000808D8(a2, v7, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v74 = sub_1004A4A54();
    v75 = sub_1004A6004();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v152 = a2;
      v153 = v77;
      v156[0] = v77;
      *v76 = 68159235;
      *(v76 + 4) = 2;
      *(v76 + 8) = 256;
      v78 = v151;
      v79 = &v7[*(v151 + 20)];
      *(v76 + 10) = *v79;
      *(v76 + 11) = 2082;
      v80 = a1;
      v81 = v3;
      v82 = &v10[*(v78 + 20)];
      *(v76 + 13) = sub_10015BA6C(*(v82 + 1), *(v82 + 2), v156);
      *(v76 + 21) = 1040;
      *(v76 + 23) = 2;
      *(v76 + 27) = 512;
      LOWORD(v79) = *(v79 + 12);
      sub_100080940(v7, type metadata accessor for MailboxTaskLogger);
      *(v76 + 29) = v79;
      *(v76 + 31) = 2160;
      *(v76 + 33) = 0x786F626C69616DLL;
      *(v76 + 41) = 2085;
      v83 = *(v82 + 4);
      LODWORD(v79) = *(v82 + 10);
      v3 = v81;
      a1 = v80;

      sub_100080940(v10, type metadata accessor for MailboxTaskLogger);
      v154 = v83;
      v155 = v79;
      v84 = sub_1004A5824();
      v86 = sub_10015BA6C(v84, v85, v156);

      *(v76 + 43) = v86;
      _os_log_impl(&_mh_execute_header, v74, v75, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned no messages to download.", v76, 0x33u);
      swift_arrayDestroy();
      a2 = v152;
    }

    else
    {
      sub_100080940(v7, type metadata accessor for MailboxTaskLogger);

      v87 = sub_100080940(v10, type metadata accessor for MailboxTaskLogger);
    }

    goto LABEL_35;
  }

  v141 = v37;
  v142 = v40;
  v143 = v39;
  v140 = v38;
  v138 = v25;
  v150 = v3;
  v43 = *(v42 + 16);
  v44 = _swiftEmptyArrayStorage;
  v152 = a2;
  if (v43)
  {
    v139 = a1;
    v154 = _swiftEmptyArrayStorage;
    sub_100091DA8(0, v43, 0);
    v44 = v154;
    v45 = (v42 + 32);
    v46 = *(v154 + 2);
    do
    {
      v48 = *v45;
      v45 += 6;
      v47 = v48;
      v154 = v44;
      v49 = *(v44 + 3);
      if (v46 >= v49 >> 1)
      {
        sub_100091DA8((v49 > 1), v46 + 1, 1);
        v44 = v154;
      }

      *(v44 + 2) = v46 + 1;
      *&v44[4 * v46++ + 32] = v47;
      --v43;
    }

    while (v43);
    a1 = v139;
    a2 = v152;
  }

  sub_100016D2C();
  sub_1004A7114();
  v50 = *(v44 + 2);
  if (v50)
  {
    v51 = (v44 + 32);
    do
    {
      v52 = *v51++;
      LODWORD(v156[0]) = v52;
      MessageIdentifierSet.insert(_:)(&v154, v156, v29);
      --v50;
    }

    while (v50);
  }

  v53 = v153;
  sub_100020950(v35, v153);
  MessageIdentifierSet.ranges.getter(v28);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v54 = sub_1004A7044();
  v55 = sub_1004A7074();
  v56 = sub_1004A7044();
  v57 = sub_1004A7074();
  if (v54 < v56 || v57 < v54)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v58 = sub_1004A7044();
  v59 = sub_1004A7074();
  sub_100025F40(v28, &qword_1005CD7A0, &unk_1004CF590);
  if (v55 < v58 || v59 < v55)
  {
    goto LABEL_39;
  }

  if (__OFSUB__(v55, v54))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if ((v55 - v54 - 21) >= 0xFFFFFFFFFFFFFFECLL)
  {
    v88 = v148;
    sub_1000808D8(a2, v148, type metadata accessor for MailboxTaskLogger);
    v89 = v147;
    sub_1000808D8(a2, v147, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v90 = v141;
    sub_10002A54C(v53, v141);
    v91 = sub_1004A4A54();
    v92 = sub_1004A6004();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v156[0] = v149;
      *v93 = 68159491;
      LODWORD(v146) = v92;
      *(v93 + 4) = 2;
      *(v93 + 8) = 256;
      v94 = v151;
      v95 = v89 + *(v151 + 20);
      *(v93 + 10) = *v95;
      *(v93 + 11) = 2082;
      v96 = v88 + *(v94 + 20);
      *(v93 + 13) = sub_10015BA6C(*(v96 + 8), *(v96 + 16), v156);
      *(v93 + 21) = 1040;
      *(v93 + 23) = 2;
      *(v93 + 27) = 512;
      LOWORD(v95) = *(v95 + 24);
      sub_100080940(v89, type metadata accessor for MailboxTaskLogger);
      *(v93 + 29) = v95;
      *(v93 + 31) = 2160;
      *(v93 + 33) = 0x786F626C69616DLL;
      *(v93 + 41) = 2085;
      v97 = v88;
      v98 = *(v96 + 32);
      LODWORD(v95) = *(v96 + 40);

      sub_100080940(v97, type metadata accessor for MailboxTaskLogger);
      v154 = v98;
      v155 = v95;
      v99 = sub_1004A5824();
      v101 = sub_10015BA6C(v99, v100, v156);

      *(v93 + 43) = v101;
      *(v93 + 51) = 2082;
      v102 = MessageIdentifierSet.debugDescription.getter();
      v104 = v103;
      sub_100025F40(v90, &unk_1005D91B0, &unk_1004CF400);
      v105 = sub_10015BA6C(v102, v104, v156);

      *(v93 + 53) = v105;
      _os_log_impl(&_mh_execute_header, v91, v146, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned UIDs %{public}s to download.", v93, 0x3Du);
      swift_arrayDestroy();

      a2 = v152;
      v106 = v153;
    }

    else
    {
      sub_100080940(v89, type metadata accessor for MailboxTaskLogger);

      sub_100025F40(v90, &unk_1005D91B0, &unk_1004CF400);
      sub_100080940(v88, type metadata accessor for MailboxTaskLogger);
      v106 = v53;
    }

    v87 = sub_100025F40(v106, &unk_1005D91B0, &unk_1004CF400);
    v3 = v150;
    goto LABEL_35;
  }

  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v60 = sub_1004A70C4();
  v3 = v150;
  if (v60)
  {
    v61 = v145;
    sub_1000808D8(a2, v145, type metadata accessor for MailboxTaskLogger);
    v62 = v144;
    sub_1000808D8(a2, v144, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v63 = sub_1004A4A54();
    v64 = sub_1004A6004();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v156[0] = v149;
      *v65 = 68159235;
      *(v65 + 4) = 2;
      *(v65 + 8) = 256;
      v66 = v151;
      v67 = v62 + *(v151 + 20);
      *(v65 + 10) = *v67;
      *(v65 + 11) = 2082;
      v68 = v61;
      v69 = v61 + *(v66 + 20);
      *(v65 + 13) = sub_10015BA6C(*(v69 + 8), *(v69 + 16), v156);
      *(v65 + 21) = 1040;
      *(v65 + 23) = 2;
      *(v65 + 27) = 512;
      LOWORD(v67) = *(v67 + 24);
      sub_100080940(v62, type metadata accessor for MailboxTaskLogger);
      *(v65 + 29) = v67;
      *(v65 + 31) = 2160;
      *(v65 + 33) = 0x786F626C69616DLL;
      *(v65 + 41) = 2085;
      v70 = *(v69 + 32);
      LODWORD(v69) = *(v69 + 40);

      sub_100080940(v68, type metadata accessor for MailboxTaskLogger);
      v154 = v70;
      v155 = v69;
      v71 = sub_1004A5824();
      v73 = sub_10015BA6C(v71, v72, v156);

      *(v65 + 43) = v73;
      a2 = v152;
      _os_log_impl(&_mh_execute_header, v63, v64, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned no messages to download.", v65, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100080940(v62, type metadata accessor for MailboxTaskLogger);

      sub_100080940(v61, type metadata accessor for MailboxTaskLogger);
    }

    v131 = v153;
    goto LABEL_34;
  }

  v107 = v146;
  sub_1000808D8(a2, v146, type metadata accessor for MailboxTaskLogger);
  sub_1000808D8(a2, v149, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_10002A54C(v53, v142);
  sub_10002A54C(v53, v143);
  v108 = v140;
  sub_10002A54C(v53, v140);
  v109 = sub_1004A4A54();
  v110 = sub_1004A6004();
  if (os_log_type_enabled(v109, v110))
  {
    LODWORD(v148) = v110;
    v111 = swift_slowAlloc();
    v156[0] = swift_slowAlloc();
    *v111 = 68160003;
    *(v111 + 4) = 2;
    *(v111 + 8) = 256;
    v112 = v151;
    v113 = v149;
    v114 = v149 + *(v151 + 20);
    *(v111 + 10) = *v114;
    *(v111 + 11) = 2082;
    v115 = v107;
    v116 = v107 + *(v112 + 20);
    *(v111 + 13) = sub_10015BA6C(*(v116 + 8), *(v116 + 16), v156);
    *(v111 + 21) = 1040;
    *(v111 + 23) = 2;
    *(v111 + 27) = 512;
    LOWORD(v114) = *(v114 + 24);
    sub_100080940(v113, type metadata accessor for MailboxTaskLogger);
    *(v111 + 29) = v114;
    *(v111 + 31) = 2160;
    *(v111 + 33) = 0x786F626C69616DLL;
    *(v111 + 41) = 2085;
    v117 = *(v116 + 32);
    LODWORD(v116) = *(v116 + 40);

    sub_100080940(v115, type metadata accessor for MailboxTaskLogger);
    v154 = v117;
    v155 = v116;
    v118 = sub_1004A5824();
    v120 = sub_10015BA6C(v118, v119, v156);

    *(v111 + 43) = v120;
    *(v111 + 51) = 2048;
    v121 = v142;
    v122 = MessageIdentifierSet.count.getter();
    sub_100025F40(v121, &unk_1005D91B0, &unk_1004CF400);
    *(v111 + 53) = v122;
    *(v111 + 61) = 1024;
    v123 = v143;
    v124 = sub_1000E5314();
    if ((v124 & 0x100000000) == 0)
    {
      v125 = v124;
      sub_100025F40(v123, &unk_1005D91B0, &unk_1004CF400);
      *(v111 + 63) = v125;
      *(v111 + 67) = 1024;
      v126 = v138;
      v127 = v140;
      MessageIdentifierSet.ranges.getter(v138);
      v128 = sub_1000E4C0C();
      v130 = v129;
      sub_100025F40(v126, &qword_1005CD7A0, &unk_1004CF590);
      if ((v130 & 1) == 0)
      {
        sub_100025F40(v127, &unk_1005D91B0, &unk_1004CF400);
        *(v111 + 69) = HIDWORD(v128);
        _os_log_impl(&_mh_execute_header, v109, v148, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned %ld (min:  %u, max: %u) messages to download.", v111, 0x49u);
        swift_arrayDestroy();

        v87 = sub_100025F40(v153, &unk_1005D91B0, &unk_1004CF400);
        a2 = v152;
        v3 = v150;
        goto LABEL_35;
      }

LABEL_42:
      __break(1u);
      return;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_100025F40(v108, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v143, &unk_1005D91B0, &unk_1004CF400);
  sub_100025F40(v142, &unk_1005D91B0, &unk_1004CF400);
  sub_100080940(v149, type metadata accessor for MailboxTaskLogger);

  sub_100080940(v107, type metadata accessor for MailboxTaskLogger);
  v131 = v53;
LABEL_34:
  v87 = sub_100025F40(v131, &unk_1005D91B0, &unk_1004CF400);
LABEL_35:
  v132 = *(v3 + 32);
  v133 = *(v3 + 40);
  __chkstk_darwin(v87);
  *(&v138 - 2) = v3;
  *(&v138 - 1) = a2;
  if (*(a1 + 192) == 1)
  {
    v135 = *(a1 + 176);
    v134 = *(a1 + 184);
    v154 = *(a1 + 168);
    v136 = v154;

    sub_1000BE940(&v154, v132, v133, 0, sub_10008078C);
    sub_100020D58(v136, v135, v134, 1);
    v137 = v154;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v137;
    *(a1 + 192) = 1;
  }
}

void sub_10007EED4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v132 = a3;
  v5 = type metadata accessor for MailboxTaskLogger(0);
  __chkstk_darwin(v5);
  v126 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v115 - v8;
  __chkstk_darwin(v10);
  v125 = &v115 - v11;
  __chkstk_darwin(v12);
  v127 = &v115 - v13;
  v14 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  __chkstk_darwin(v14 - 8);
  v16 = &v115 - v15;
  v17 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v17);
  v129 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v130 = &v115 - v20;
  __chkstk_darwin(v21);
  v133 = &v115 - v22;
  __chkstk_darwin(v23);
  v25 = &v115 - v24;
  __chkstk_darwin(v26);
  v28 = &v115 - v27;
  v29 = type metadata accessor for MessagesPendingDownload(0);
  __chkstk_darwin(v29 - 8);
  __chkstk_darwin(v30);
  __chkstk_darwin(v31);
  v35 = &v115 - v34;
  v36 = *a2;
  if (*a2)
  {
    v116 = v9;
    v117 = v5;
    v121 = v33;
    v123 = v32;
    v37 = *(a2 + 57);
    v38 = a1 + *(type metadata accessor for MailboxSyncState(0) + 52);
    v39 = v38 + *(type metadata accessor for PendingPersistenceUpdates(0) + 28);
    v40 = v39;
    v120 = v37;
    if (v37 == 1)
    {
      v40 = v39 + *(type metadata accessor for MessagesPendingDownloadPerPass(0) + 20);
    }

    v122 = v39;
    v131 = v28;
    v41 = sub_1000808D8(v40, v35, type metadata accessor for MessagesPendingDownload);
    __chkstk_darwin(v41);
    v124 = v35;
    *(&v115 - 2) = v35;

    v118 = v36;
    v42 = sub_10009EBDC(sub_100080794, (&v115 - 4), v36);
    v43 = v42[2];
    v44 = _swiftEmptyArrayStorage;
    v128 = a1;
    v119 = v42;
    if (v43)
    {
      v45 = v42;
      v134 = _swiftEmptyArrayStorage;
      sub_100091DA8(0, v43, 0);
      v44 = v134;
      v46 = (v45 + 4);
      v47 = v134[2];
      do
      {
        v49 = *v46;
        v46 += 6;
        v48 = v49;
        v134 = v44;
        v50 = v44[3];
        if (v47 >= v50 >> 1)
        {
          sub_100091DA8((v50 > 1), v47 + 1, 1);
          v44 = v134;
        }

        v44[2] = v47 + 1;
        *(v44 + v47++ + 8) = v48;
        --v43;
      }

      while (v43);
    }

    sub_100016D2C();
    sub_1004A7114();
    v51 = v44[2];
    v52 = v133;
    if (v51)
    {
      v53 = (v44 + 4);
      do
      {
        v54 = *v53++;
        LODWORD(v136[0]) = v54;
        MessageIdentifierSet.insert(_:)(&v134, v136, v17);
        --v51;
      }

      while (v51);
    }

    v55 = v131;
    sub_100020950(v25, v131);
    MessageIdentifierSet.ranges.getter(v16);
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    v56 = sub_1004A7044();
    v57 = sub_1004A7074();
    v58 = sub_1004A7044();
    v59 = sub_1004A7074();
    if (v56 < v58 || v59 < v56)
    {
      __break(1u);
    }

    else
    {
      v60 = sub_1004A7044();
      v61 = sub_1004A7074();
      sub_100025F40(v16, &qword_1005CD7A0, &unk_1004CF590);
      if (v57 >= v60 && v61 >= v57)
      {
        if (!__OFSUB__(v57, v56))
        {
          if ((v57 - v56 - 21) >= 0xFFFFFFFFFFFFFFECLL)
          {
            v83 = v132;
            v84 = v127;
            sub_1000808D8(v132, v127, type metadata accessor for MailboxTaskLogger);
            v85 = v125;
            sub_1000808D8(v83, v125, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            sub_10002A54C(v55, v52);
            v86 = v130;
            sub_10002A54C(v55, v130);
            v87 = v118;
            swift_bridgeObjectRetain_n();
            v88 = sub_1004A4A54();
            v89 = sub_1004A6034();
            if (os_log_type_enabled(v88, v89))
            {
              v90 = swift_slowAlloc();
              v132 = swift_slowAlloc();
              v136[0] = v132;
              *v90 = 68160003;
              *(v90 + 4) = 2;
              *(v90 + 8) = 256;
              v91 = v117;
              v92 = *(v117 + 20);
              LODWORD(v129) = v89;
              v93 = v85 + v92;
              *(v90 + 10) = *(v85 + v92);
              *(v90 + 11) = 2082;
              v94 = v85;
              v95 = v84;
              v96 = v84 + *(v91 + 20);
              *(v90 + 13) = sub_10015BA6C(*(v96 + 8), *(v96 + 16), v136);
              *(v90 + 21) = 1040;
              *(v90 + 23) = 2;
              *(v90 + 27) = 512;
              v97 = *(v93 + 24);
              sub_100080940(v94, type metadata accessor for MailboxTaskLogger);
              *(v90 + 29) = v97;
              *(v90 + 31) = 2160;
              *(v90 + 33) = 0x786F626C69616DLL;
              *(v90 + 41) = 2085;
              v98 = *(v96 + 32);
              LODWORD(v96) = *(v96 + 40);

              sub_100080940(v95, type metadata accessor for MailboxTaskLogger);
              v134 = v98;
              v135 = v96;
              v99 = sub_1004A5824();
              v101 = sub_10015BA6C(v99, v100, v136);

              *(v90 + 43) = v101;
              *(v90 + 51) = 2082;
              v102 = MessageIdentifierSet.debugDescription.getter();
              v104 = v103;
              sub_100025F40(v52, &unk_1005D91B0, &unk_1004CF400);
              v105 = sub_10015BA6C(v102, v104, v136);

              *(v90 + 53) = v105;
              *(v90 + 61) = 2048;
              v106 = v130;
              v107 = MessageIdentifierSet.count.getter();
              sub_100025F40(v106, &unk_1005D91B0, &unk_1004CF400);
              *(v90 + 63) = v107;
              *(v90 + 71) = 2048;
              v108 = *(v87 + 16);

              *(v90 + 73) = v108;

              _os_log_impl(&_mh_execute_header, v88, v129, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Adding %{public}s (%ld out of %ld) to download.", v90, 0x51u);
              swift_arrayDestroy();

              v55 = v131;
            }

            else
            {

              sub_100025F40(v86, &unk_1005D91B0, &unk_1004CF400);
              sub_100080940(v85, type metadata accessor for MailboxTaskLogger);

              sub_100025F40(v52, &unk_1005D91B0, &unk_1004CF400);
              sub_100080940(v84, type metadata accessor for MailboxTaskLogger);
            }

            v109 = v122;
            if (!v120)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v62 = v132;
            v63 = v116;
            sub_1000808D8(v132, v116, type metadata accessor for MailboxTaskLogger);
            v64 = v126;
            sub_1000808D8(v62, v126, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v65 = v129;
            sub_10002A54C(v55, v129);
            v66 = v118;
            swift_bridgeObjectRetain_n();
            v67 = sub_1004A4A54();
            v68 = sub_1004A6034();
            if (os_log_type_enabled(v67, v68))
            {
              v69 = v64;
              v70 = swift_slowAlloc();
              v133 = swift_slowAlloc();
              v136[0] = v133;
              *v70 = 68159747;
              *(v70 + 4) = 2;
              *(v70 + 8) = 256;
              v71 = v117;
              v72 = *(v117 + 20);
              LODWORD(v132) = v68;
              v73 = v69 + v72;
              *(v70 + 10) = *(v69 + v72);
              *(v70 + 11) = 2082;
              v74 = v63 + *(v71 + 20);
              *(v70 + 13) = sub_10015BA6C(*(v74 + 8), *(v74 + 16), v136);
              *(v70 + 21) = 1040;
              *(v70 + 23) = 2;
              *(v70 + 27) = 512;
              v75 = *(v73 + 24);
              sub_100080940(v69, type metadata accessor for MailboxTaskLogger);
              *(v70 + 29) = v75;
              *(v70 + 31) = 2160;
              *(v70 + 33) = 0x786F626C69616DLL;
              *(v70 + 41) = 2085;
              v76 = *(v74 + 32);
              LODWORD(v74) = *(v74 + 40);

              sub_100080940(v63, type metadata accessor for MailboxTaskLogger);
              v134 = v76;
              v135 = v74;
              v55 = v131;
              v77 = sub_1004A5824();
              v79 = sub_10015BA6C(v77, v78, v136);

              *(v70 + 43) = v79;
              *(v70 + 51) = 2048;
              v80 = v129;
              v81 = MessageIdentifierSet.count.getter();
              sub_100025F40(v80, &unk_1005D91B0, &unk_1004CF400);
              *(v70 + 53) = v81;
              *(v70 + 61) = 2048;
              v82 = *(v66 + 16);

              *(v70 + 63) = v82;

              _os_log_impl(&_mh_execute_header, v67, v132, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Adding %ld messages (out of %ld) to download.", v70, 0x47u);
              swift_arrayDestroy();
            }

            else
            {

              sub_100025F40(v65, &unk_1005D91B0, &unk_1004CF400);
              sub_100080940(v64, type metadata accessor for MailboxTaskLogger);

              sub_100080940(v63, type metadata accessor for MailboxTaskLogger);
            }

            v109 = v122;
            if (!v120)
            {
LABEL_24:
              v110 = v121;
              sub_1000808D8(v109, v121, type metadata accessor for MessagesPendingDownload);
              sub_1000DB55C(v119);

              sub_10003E784(v110, v109);
              v111 = v123;
              sub_1000808D8(v109, v123, type metadata accessor for MessagesPendingDownload);
              sub_1000DB72C();
              sub_10003E784(v111, v109);

              goto LABEL_28;
            }
          }

          v112 = type metadata accessor for MessagesPendingDownloadPerPass(0);
          v113 = v121;
          sub_1000808D8(v109 + *(v112 + 20), v121, type metadata accessor for MessagesPendingDownload);
          sub_1000DB55C(v119);

          sub_10003E784(v113, v109 + *(v112 + 20));
          v114 = v123;
          sub_1000808D8(v109 + *(v112 + 20), v123, type metadata accessor for MessagesPendingDownload);
          sub_1000DB72C();
          sub_10003E784(v114, v109 + *(v112 + 20));
          LOBYTE(v112) = sub_1004A6D34();

          if ((v112 & 1) == 0)
          {
LABEL_29:
            sub_100025F40(v55, &unk_1005D91B0, &unk_1004CF400);
            sub_100080940(v124, type metadata accessor for MessagesPendingDownload);
            return;
          }

LABEL_28:
          sub_10013FC9C(0xAu);
          sub_100088568(&v134, 10);
          goto LABEL_29;
        }

LABEL_33:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_33;
  }
}

uint64_t sub_10007FC14(int *a1, void *a2)
{
  v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v3);
  v5 = &v11 - v4;
  v6 = *a1;
  type metadata accessor for MessagesPendingDownload(0);
  v13 = v6;
  if (MessageIdentifierSet.contains(_:)(&v13, v3))
  {
    v7 = 0;
  }

  else
  {

    sub_1000B492C(v8);
    v12 = v6;
    v9 = MessageIdentifierSet.contains(_:)(&v12, v3);
    sub_100025F40(v5, &unk_1005D91B0, &unk_1004CF400);
    v7 = v9 ^ 1;
  }

  return v7 & 1;
}

double sub_10007FD34@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return result;
}

double sub_10007FD88()
{
  if (qword_1005CCE48 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_10007FDF4()
{
  BYTE8(v2) = 0;
  *&v2 = *(v0 + 57);
  sub_1004A6934();
  return *(&v2 + 1);
}

void sub_10007FE4C(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (sub_10001FDB8(a1, a2))
  {
    v7 = 0xF000000000000007;
  }

  else
  {
    v8 = sub_10000C9C0(&qword_1005CEE60, &unk_1004D1AC0);
    v9 = swift_allocBox();
    v11 = v10;
    v12 = v8[16];
    v13 = v10 + v8[20];
    v14 = v8[24];
    v15 = *(v4 + 16);
    *v10 = *(v4 + 8);
    *(v10 + 8) = v15;
    *(v10 + 16) = *(v4 + 57);
    sub_10002A54C(v4 + *(a3 + 36), v10 + v12);
    v16 = (v4 + *(a3 + 40));
    v17 = *v16;
    LOBYTE(v16) = *(v16 + 8);
    *v13 = v17;
    *(v13 + 8) = v16;
    *(v11 + v14) = 563;
    v7 = v9 | 0x4000000000000004;
  }

  *a4 = v7;
}

Swift::Int sub_10007FF6C()
{
  v1 = *(v0 + 8);
  sub_1004A6E94();
  sub_1004A6EB4(v1 | (v1 << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_10007FFEC(uint64_t a1)
{
  sub_1004A6EB4(*(v1 + 8) | (*(v1 + 8) << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100080060(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1004A6E94();
  sub_1004A6EB4(v2 | (v2 << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_1000800DC(uint64_t a1, uint64_t a2)
{
  v2 = &_mh_execute_header;
  if (*(a1 + 12))
  {
    v3 = &_mh_execute_header;
  }

  else
  {
    v3 = 0;
  }

  if (!*(a2 + 12))
  {
    v2 = 0;
  }

  return sub_100080118(*a1, v3 | *(a1 + 8), *a2, v2 | *(a2 + 8));
}

uint64_t sub_100080118(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4 || (v4 = *(result + 16), v4 != *(a3 + 16)))
  {
LABEL_19:
    v10 = 0;
    return v10 & 1;
  }

  if (v4)
  {
    v5 = result == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    if ((a2 & &_mh_execute_header) != 0)
    {
      v8 = 6581810;
    }

    else
    {
      v8 = 7631665;
    }

    if ((a4 & &_mh_execute_header) != 0)
    {
      v9 = 6581810;
    }

    else
    {
      v9 = 7631665;
    }

    if (v8 == v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_1004A6D34();
    }

    swift_bridgeObjectRelease_n();
    return v10 & 1;
  }

  v6 = (result + 32);
  v7 = (a3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      goto LABEL_19;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000801E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 13))
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

uint64_t sub_10008022C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 13) = 1;
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

    *(result + 13) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100080294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100080364(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FindPendingDownload(uint64_t a1)
{
  result = qword_1005CED38;
  if (!qword_1005CED38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100080460(uint64_t a1)
{
  sub_1000805AC(319);
  if (v1 <= 0x3F)
  {
    sub_10003E3DC(319, &qword_1005CD828, sub_10002AB18, &type metadata for SyncStep, &type metadata accessor for Set);
    if (v2 <= 0x3F)
    {
      sub_10003E3DC(319, &qword_1005CDDC0, sub_100016948, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
      if (v3 <= 0x3F)
      {
        sub_100080610();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000805AC(uint64_t a1)
{
  if (!qword_1005CED48)
  {
    sub_10000DEFC(&unk_1005CED50, &qword_1004D19D8);
    v1 = sub_1004A6374();
    if (!v2)
    {
      atomic_store(v1, &qword_1005CED48);
    }
  }
}

void sub_100080610()
{
  if (!qword_1005CE8C8)
  {
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CE8C8);
    }
  }
}

unint64_t sub_100080660()
{
  result = qword_1005CED98;
  if (!qword_1005CED98)
  {
    result = swift_getWitnessTable("ES\v", &type metadata for FindPendingDownload.ActionID, v0, v1);
    atomic_store(result, &qword_1005CED98);
  }

  return result;
}

unint64_t sub_1000806B4(uint64_t a1)
{
  result = sub_1000806DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000806DC()
{
  result = qword_1005CEE50;
  if (!qword_1005CEE50)
  {
    PendingDownload = type metadata accessor for FindPendingDownload(255);
    result = swift_getWitnessTable(byte_1004D19E0, PendingDownload, v0, v1);
    atomic_store(result, &qword_1005CEE50);
  }

  return result;
}

unint64_t sub_100080738()
{
  result = qword_1005CEE58;
  if (!qword_1005CEE58)
  {
    result = swift_getWitnessTable(byte_1004D1A4C, &type metadata for FindPendingDownload.TaskIDValue, v0, v1);
    atomic_store(result, &qword_1005CEE58);
  }

  return result;
}

uint64_t sub_1000807B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_10007071C(a2, a3, a4);
  if ((result & 1) != 0 && !*v4 && ((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 12)
  {
    v8 = a1 & 0xFFFFFFFFFFFFFFBLL;
    if (*(v4 + 16) == *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v10 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      result = sub_1000FFC98(*(v4 + 8), *(v8 + 16));
      if (result)
      {
        if (*(v4 + 57))
        {
          v11 = 6581810;
        }

        else
        {
          v11 = 7631665;
        }

        if (v9)
        {
          v12 = 6581810;
        }

        else
        {
          v12 = 7631665;
        }

        if (v11 == v12)
        {

          result = swift_bridgeObjectRelease_n();
LABEL_18:
          *v4 = v10;
          return result;
        }

        v13 = sub_1004A6D34();

        result = swift_bridgeObjectRelease_n();
        if (v13)
        {
          goto LABEL_18;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000808D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100080940(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000809D4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(v1 + 48) + ((v8 << 10) | (16 * v9));
      v11 = *v10;
      v12 = *(v10 + 8);

      sub_100088220(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_100080ADC(uint64_t a1)
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = 0;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = v12;
LABEL_9:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_100095778(*(a1 + 48) + *(v3 + 72) * (v18 | (v17 << 6)), v11, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_100095988(v11, v5);
    sub_100089774(v8, v5);
    sub_1000957E0(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v16)
    {

      return;
    }

    v15 = *(a1 + 56 + 8 * v17);
    ++v12;
    if (v15)
    {
      v12 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100080CD0(uint64_t result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = result;
  v8 = 0;
  v9 = result + 56;
  v10 = 1 << *(result + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(result + 56);
  v13 = (v10 + 63) >> 6;
  if (v12)
  {
    while (1)
    {
      v14 = v8;
LABEL_9:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      result = sub_1000899BC(v16, *(*(v7 + 48) + ((v14 << 8) | (4 * v15))), a2, a3, a4);
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v14 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v14);
    ++v8;
    if (v12)
    {
      v8 = v14;
      goto LABEL_9;
    }
  }
}

uint64_t sub_100080DD8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_100088568(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_100080EB4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(v1 + 48) + ((v8 << 10) | (16 * v9));
      v11 = *v10;
      v12 = *(v10 + 8);

      sub_100088220(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_100080FBC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      sub_10008867C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_100081078(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      sub_10008867C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_100081134(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      sub_10008867C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1000811C0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      sub_10008867C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_100081258(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_10008517C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10008134C(uint64_t a1)
{
  v2 = v1;
  v56 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v4 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v48 - v5;
  v6 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v6 - 8);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v48 - v9;
  __chkstk_darwin(v10);
  v57 = &v48 - v11;
  v12 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0);
  __chkstk_darwin(v15 - 8);
  v17 = (&v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *v2;
  v19 = *(*v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v21 = v18[3] >> 1, v21 < v19))
  {
    v18 = sub_100086858(isUniquelyReferenced_nonNull_native, v19, 1, v18, &qword_1005CE858, &unk_1004D1E20, &qword_1005CD1D0, &unk_1004CF2C0);
    v21 = v18[3] >> 1;
  }

  v22 = v18[2];
  v23 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v24 = *(v4 + 72);
  v25 = v21 - v22;
  v26 = v18 + v23 + v24 * v22;
  sub_100095778(a1, v14, type metadata accessor for MessageBatches.OtherUIDsBatchSequence);
  v27 = sub_100063050(v17, v26, v25);
  result = sub_1000957E0(a1, type metadata accessor for MessageBatches.OtherUIDsBatchSequence);
  if (v27 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!v27)
  {
LABEL_8:
    if (v27 != v25)
    {
      result = sub_1000957E0(v17, type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator);
LABEL_10:
      *v2 = v18;
      return result;
    }

LABEL_12:
    v32 = v18[2];
    v33 = v57;
    sub_1000D8CF4(v57);
    v34 = v54;
    sub_100095840(v33, v54);
    v50 = *(v4 + 48);
    for (i = v50(v34, 1, v56); i != 1; i = v50(v34, 1, v56))
    {
      sub_100025F40(v34, &qword_1005CD518, &qword_1004CF2F0);
      v37 = v18[3];
      v38 = v37 >> 1;
      if ((v37 >> 1) < v32 + 1)
      {
        v18 = sub_100086858((v37 > 1), v32 + 1, 1, v18, &qword_1005CE858, &unk_1004D1E20, &qword_1005CD1D0, &unk_1004CF2C0);
        v38 = v18[3] >> 1;
      }

      v39 = v55;
      sub_100095840(v57, v55);
      v40 = v50(v39, 1, v56);
      v52 = v32;
      if (v40 == 1)
      {
        v41 = v55;
LABEL_26:
        sub_100025F40(v41, &qword_1005CD518, &qword_1004CF2F0);
        v36 = v52;
      }

      else
      {
        if (v32 <= v38)
        {
          v42 = v38;
        }

        else
        {
          v42 = v32;
        }

        v49 = v42;
        v51 = v18 + v23 + v24 * v32;
        v43 = v53;
        v41 = v55;
        while (1)
        {
          sub_100025FDC(v41, v43, &qword_1005CD1D0, &unk_1004CF2C0);
          v44 = v52;
          if (v49 == v52)
          {
            break;
          }

          sub_100025F40(v57, &qword_1005CD518, &qword_1004CF2F0);
          v45 = v51;
          sub_100025FDC(v43, v51, &qword_1005CD1D0, &unk_1004CF2C0);
          v52 = v44 + 1;
          v46 = v57;
          sub_1000D8CF4(v57);
          v41 = v55;
          sub_100095840(v46, v55);
          v47 = v50(v41, 1, v56);
          v51 = v45 + v24;
          if (v47 == 1)
          {
            goto LABEL_26;
          }
        }

        sub_100025F40(v43, &qword_1005CD1D0, &unk_1004CF2C0);
        v36 = v49;
      }

      v32 = v36;
      v18[2] = v36;
      v34 = v54;
      sub_100095840(v57, v54);
    }

    sub_100025F40(v57, &qword_1005CD518, &qword_1004CF2F0);
    sub_1000957E0(v17, type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator);
    result = sub_100025F40(v34, &qword_1005CD518, &qword_1004CF2F0);
    goto LABEL_10;
  }

  v29 = v18[2];
  v30 = __OFADD__(v29, v27);
  v31 = v29 + v27;
  if (!v30)
  {
    v18[2] = v31;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000818E8(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_1000863B8(result, v10, 1, v3, &qword_1005CE240, &unk_100509A40, &type metadata for FetchAttribute);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000819F8(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000877A4(result, v11, 1, v3, &qword_1005CEFA0, &qword_1004D43B0);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100081AF4(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_100086A40(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *Flags.Label.flags.getter(unsigned __int8 a1)
{
  if (!a1)
  {
    return _swiftEmptySetSingleton;
  }

  v21 = v1;
  v22 = v2;
  sub_10000C9C0(&qword_1005CEE68, &unk_1004D1B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  v5 = Flag.flagged.unsafeMutableAddressor();
  v7 = *v5;
  v6 = *(v5 + 1);
  *(inited + 32) = v7;
  *(inited + 40) = v6;

  v8 = sub_1000933B0(inited);
  swift_setDeallocating();
  sub_100093590(inited + 32);
  v20 = v8;
  if (a1 > 3u)
  {
    if (a1 != 6)
    {
      if (a1 == 5)
      {
        goto LABEL_13;
      }

      if (a1 != 4)
      {
        goto LABEL_12;
      }
    }

LABEL_10:
    v10 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
    v11 = *v10;
    v12 = v10[1];

    sub_10008867C(&v19, v11, v12);

    if (a1 - 5 >= 2)
    {
      if (a1 == 2)
      {
        return v20;
      }

      goto LABEL_12;
    }

LABEL_13:
    v16 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
    v17 = *v16;
    v18 = v16[1];

    sub_10008867C(&v19, v17, v18);

    return v20;
  }

  if (a1 == 1)
  {
    return v20;
  }

  if (a1 == 2)
  {
    goto LABEL_10;
  }

LABEL_12:
  v13 = Flag.Keyword.colorBit1.unsafeMutableAddressor();
  v14 = *v13;
  v15 = v13[1];

  sub_10008867C(&v19, v14, v15);

  if (a1 >= 5u)
  {
    goto LABEL_13;
  }

  return v20;
}

unint64_t sub_100081D78(unsigned __int8 a1)
{
  v2 = 0x5000000000000004;
  v3 = 0x5000000000000004;
  if ((a1 - 2) <= 4u)
  {
    v3 = qword_1004D2008[(a1 - 2)];
  }

  v4 = swift_allocObject();
  v5 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
  v7 = *v5;
  v6 = *(v5 + 1);
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;

  v8 = 0x2000000000000004;
  if (a1 <= 6u)
  {
    v8 = qword_1004D2030[a1];
  }

  v9 = v3 | v4;
  v10 = swift_allocObject();
  v11 = Flag.Keyword.colorBit1.unsafeMutableAddressor();
  v13 = *v11;
  v12 = *(v11 + 1);
  *(v10 + 16) = v13;
  *(v10 + 24) = v12;
  v14 = v8 | v10;

  if (a1 >= 5u)
  {
    v2 = 0x2000000000000004;
  }

  v15 = swift_allocObject();
  v16 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
  v18 = *v16;
  v17 = *(v16 + 1);
  *(v15 + 16) = v18;
  *(v15 + 24) = v17;
  v19 = v2 | v15;

  v20 = swift_allocObject();
  sub_10000C9C0(&qword_1005CD1B8, &unk_100509A50);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004D1B20;
  *(v21 + 32) = 0xF00000000000001CLL;
  *(v21 + 40) = v9;
  *(v21 + 48) = v14;
  *(v21 + 56) = v19;
  *(v20 + 16) = v21;
  return v20 | 0xC000000000000000;
}

uint64_t FlagEncoder.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_10008517C(0, 14, 0, _swiftEmptyArrayStorage);
  v3 = v2;
  v38 = v2;
  v4 = v1[1];
  if (v4)
  {
    v5 = *v1;
    v6 = *(v2 + 2);
    v7 = *(v2 + 3);

    if (v6 >= v7 >> 1)
    {
      v3 = sub_10008517C((v7 > 1), v6 + 1, 1, v3);
    }

    *(v3 + 2) = v6 + 1;
    v8 = &v3[16 * v6];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v38 = v3;
  }

  v9 = v1[3];
  if (v9)
  {
    v10 = v1[2];
    v11 = *(v3 + 2);
    v12 = *(v3 + 3);

    if (v11 >= v12 >> 1)
    {
      v3 = sub_10008517C((v12 > 1), v11 + 1, 1, v3);
    }

    *(v3 + 2) = v11 + 1;
    v13 = &v3[16 * v11];
    *(v13 + 4) = v10;
    *(v13 + 5) = v9;
    v38 = v3;
  }

  sub_100081258(v14);

  sub_100081258(v15);

  sub_100081258(v16);

  sub_100081258(v17);

  sub_100081258(v18);
  v19 = v1[12];
  v20 = v38;
  if (v19)
  {
    v21 = v1[11];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_10008517C(0, *(v38 + 2) + 1, 1, v38);
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      v20 = sub_10008517C((v22 > 1), v23 + 1, 1, v20);
    }

    *(v20 + 2) = v24;
    v25 = &v20[16 * v23];
    *(v25 + 4) = v21;
    *(v25 + 5) = v19;
  }

  else
  {
    v24 = *(v38 + 2);
    if (!v24)
    {
      goto LABEL_20;
    }
  }

  sub_100091A08(0, v24, 0);
  v26 = (v20 + 40);
  do
  {
    v28 = *(v26 - 1);
    v27 = *v26;
    v30 = _swiftEmptyArrayStorage[2];
    v29 = _swiftEmptyArrayStorage[3];

    if (v30 >= v29 >> 1)
    {
      sub_100091A08((v29 > 1), v30 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v30 + 1;
    v31 = &_swiftEmptyArrayStorage[2 * v30];
    v31[4] = v28;
    v31[5] = v27;
    v26 += 2;
    --v24;
  }

  while (v24);
LABEL_20:

  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100031CDC();
  v32 = sub_1004A5614();
  v34 = v33;

  v39._countAndFlagsBits = v32;
  v39._object = v34;
  sub_1004A5994(v39);

  v40._countAndFlagsBits = 0x3A73726F6C6F6320;
  v40._object = 0xE900000000000020;
  sub_1004A5994(v40);
  if (v1[10])
  {
    v35._countAndFlagsBits = 7562617;
  }

  else
  {
    v35._countAndFlagsBits = 28526;
  }

  if (v1[10])
  {
    v36 = 0xE300000000000000;
  }

  else
  {
    v36 = 0xE200000000000000;
  }

  v35._object = v36;
  sub_1004A5994(v35);

  v41._countAndFlagsBits = 125;
  v41._object = 0xE100000000000000;
  sub_1004A5994(v41);
  return 123;
}

uint64_t FlagDecoder.debugDescription.getter(uint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100085070(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100085070((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6564726177726F46;
  *(v5 + 5) = 0xE900000000000064;
  if ((a1 & 0x100) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100085070((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x7463657269646552;
    *(v8 + 5) = 0xEA00000000006465;
  }

LABEL_12:
  if ((a1 & 0x10000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100085070((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 1802401098;
    *(v11 + 5) = 0xE400000000000000;
    if ((a1 & 0x1000000) == 0)
    {
LABEL_14:
      if ((a1 & 0x100000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((a1 & 0x1000000) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100085070((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  strcpy(v14 + 32, "ColoredLabel");
  v14[45] = 0;
  *(v14 + 23) = -5120;
  if ((a1 & 0x100000000) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_100085070((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    strcpy(v17 + 32, "iCloudCleanup");
    *(v17 + 23) = -4864;
  }

LABEL_31:
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100031CDC();
  v18 = sub_1004A5614();
  v20 = v19;

  v22._countAndFlagsBits = v18;
  v22._object = v20;
  sub_1004A5994(v22);

  v23._countAndFlagsBits = 125;
  v23._object = 0xE100000000000000;
  sub_1004A5994(v23);
  return 0x7374726F70707573;
}

uint64_t sub_100082658()
{
  v1 = &_mh_execute_header;
  if (!v0[4])
  {
    v1 = 0;
  }

  v2 = 0x1000000;
  if (!v0[3])
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if (!v0[2])
  {
    v3 = 0;
  }

  v4 = 256;
  if (!v0[1])
  {
    v4 = 0;
  }

  return FlagDecoder.debugDescription.getter(v4 | *v0 | v3 | v2 | v1);
}

__n128 FlagEncoder.init(permanentFlags:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_1000935E4(a2, v6);
  v3 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v3;
  *(a1 + 96) = v7;
  v4 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v4;
  result = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = result;
  return result;
}

BOOL sub_10008271C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s13IMAP2Behavior11FlagEncoderV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13);
}

unint64_t FlagDecoder.init(permanentFlags:)(uint64_t a1)
{
  v1 = sub_1000951DC(a1);

  return v1 & 0x101010101;
}

uint64_t sub_1000827C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!*(a3 + 16))
  {
    return a4 & 1;
  }

  sub_1004A6E94();
  sub_1004A6EB4(0);
  sub_1004A5834();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v6 = sub_1004A6F14();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return a4 & 1;
  }

  v9 = ~v7;
  while (1)
  {
    if (!*(*(a3 + 48) + 16 * v8 + 8))
    {
      goto LABEL_4;
    }

    v10 = sub_1004A5834();
    v12 = v11;
    if (v10 == sub_1004A5834() && v12 == v13)
    {
      break;
    }

    v15 = sub_1004A6D34();

    if (v15)
    {
      goto LABEL_13;
    }

LABEL_4:
    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return a4 & 1;
    }
  }

LABEL_13:
  a4 = 1;
  return a4 & 1;
}

uint64_t *Flag.Keyword.iCloudCleanup.unsafeMutableAddressor()
{
  if (qword_1005CCE50 != -1)
  {
    swift_once();
  }

  return &static Flag.Keyword.iCloudCleanup;
}

unint64_t FlagDecoder.decode(_:)(uint64_t a1, uint64_t a2)
{
  v4 = Flag.seen.unsafeMutableAddressor();
  v5 = *v4;
  v6 = v4[1];

  v7 = sub_100011C2C(v5, v6, a1);

  v8 = Flag.deleted.unsafeMutableAddressor();
  v9 = *v8;
  v10 = v8[1];

  v11 = sub_100011C2C(v9, v10, a1);

  v12 = Flag.answered.unsafeMutableAddressor();
  v13 = *v12;
  v14 = v12[1];

  v69 = sub_100011C2C(v13, v14, a1);

  v15 = Flag.draft.unsafeMutableAddressor();
  v16 = *v15;
  v17 = v15[1];

  v18 = sub_100011C2C(v16, v17, a1);

  if ((a2 & 1) == 0)
  {
    v22 = 0x200000000;
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v31 = Flag.Keyword.unregistered_redirected.unsafeMutableAddressor();
    v32 = *v31;
    v33 = v31[1];

    LOBYTE(v32) = sub_100011C2C(v32, v33, a1);

    if (v32)
    {
      v26 = 0x10000000000;
    }

    else
    {
      v26 = 0;
    }

    if ((a2 & 0x10000) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v30 = 0x3000000000000;
    goto LABEL_15;
  }

  v19 = Flag.Keyword.forwarded.unsafeMutableAddressor();
  v20 = *v19;
  v21 = v19[1];

  LOBYTE(v20) = sub_100011C2C(v20, v21, a1);

  v22 = &_mh_execute_header;
  if ((v20 & 1) == 0)
  {
    v23 = Flag.Keyword.unregistered_forwarded.unsafeMutableAddressor();
    v24 = *v23;
    v25 = v23[1];

    LOBYTE(v24) = sub_100011C2C(v24, v25, a1);

    if ((v24 & 1) == 0)
    {
      v22 = 0;
    }
  }

  if ((a2 & 0x100) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v26 = 0x20000000000;
  if ((a2 & 0x10000) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v27 = Flag.Keyword.notJunk.unsafeMutableAddressor();
  v28 = *v27;
  v29 = v27[1];

  LOBYTE(v28) = sub_100011C2C(v28, v29, a1);

  if (v28)
  {
LABEL_8:
    v30 = 0x2000000000000;
    goto LABEL_15;
  }

  v51 = Flag.Keyword.junk.unsafeMutableAddressor();
  v52 = *v51;
  v53 = v51[1];

  LOBYTE(v52) = sub_100011C2C(v52, v53, a1);

  if (v52)
  {
    v30 = 0x1000000000000;
  }

  else
  {
    v61 = Flag.Keyword.unregistered_notJunk.unsafeMutableAddressor();
    v62 = *v61;
    v63 = v61[1];

    LOBYTE(v62) = sub_100011C2C(v62, v63, a1);

    if (v62)
    {
      goto LABEL_8;
    }

    v64 = Flag.Keyword.unregistered_junk.unsafeMutableAddressor();
    v65 = *v64;
    v66 = v64[1];

    LOBYTE(v65) = sub_100011C2C(v65, v66, a1);

    if (v65)
    {
      v30 = 0x1000000000000;
    }

    else
    {
      v30 = 0;
    }
  }

LABEL_15:
  v34 = Flag.flagged.unsafeMutableAddressor();
  v35 = *v34;
  v36 = v34[1];

  v37 = sub_100011C2C(v35, v36, a1);

  if ((a2 & 0x1000000) == 0)
  {
    if (v37)
    {
      v38 = 0x800000000000000;
    }

    else
    {
      v38 = 0;
    }

    if ((a2 & 0x100000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (v37)
  {
    v67 = v18;
    v68 = v11;
    v39 = v7;
    v40 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
    v41 = *v40;
    v42 = v40[1];

    v43 = sub_100011C2C(v41, v42, a1);

    v44 = Flag.Keyword.colorBit1.unsafeMutableAddressor();
    v45 = *v44;
    v46 = v44[1];

    v47 = sub_100011C2C(v45, v46, a1);

    v48 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
    v49 = *v48;
    v50 = v48[1];

    LOBYTE(v49) = sub_100011C2C(v49, v50, a1);

    if (v49)
    {
      v7 = v39;
      v11 = v68;
      if (v47)
      {
        v18 = v67;
        if ((v43 & 1) == 0)
        {
          v38 = 0x700000000000000;
          if ((a2 & 0x100000000) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_30;
        }

LABEL_55:
        v38 = 0x100000000000000;
        if ((a2 & 0x100000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      v58 = (v43 & 1) == 0;
      v59 = 0x500000000000000;
      v60 = 0x600000000000000;
LABEL_47:
      if (v58)
      {
        v38 = v59;
      }

      else
      {
        v38 = v60;
      }

      v18 = v67;
      if ((a2 & 0x100000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    v7 = v39;
    v11 = v68;
    if (v47)
    {
      v58 = (v43 & 1) == 0;
      v59 = 0x300000000000000;
      v60 = 0x400000000000000;
      goto LABEL_47;
    }

    v18 = v67;
    if ((v43 & 1) == 0)
    {
      goto LABEL_55;
    }

    v38 = 0x200000000000000;
    if ((a2 & 0x100000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v38 = 0;
    if ((a2 & 0x100000000) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_30:
  if (qword_1005CCE50 != -1)
  {
    swift_once();
  }

  sub_100011C2C(static Flag.Keyword.iCloudCleanup, unk_1005DDF20, a1);
LABEL_33:
  v54 = 256;
  if ((v11 & 1) == 0)
  {
    v54 = 0;
  }

  v55 = 0x10000;
  if ((v69 & 1) == 0)
  {
    v55 = 0;
  }

  v56 = 0x1000000;
  if ((v18 & 1) == 0)
  {
    v56 = 0;
  }

  return v54 & 0xFFFFFFFFFFFFFFFELL | ((v7 & 1) == 0) | v55 | v56 | v22 | v26 | v30 | v38;
}

uint64_t IndexableMessageInfo.cc.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t static FlagUpdatesToBeSent.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if ((sub_100083750(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_100083750(a2, a4);
}

Swift::Int sub_100082EA0(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1004A6E94();
    sub_1004A6EB4(v13);
    result = sub_1004A6F14();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100083010(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_7:
    v7 &= v7 - 1;
    sub_1004A6E94();
    sub_1004A6EB4(0);
    result = sub_1004A6F14();
    v9 = result & ~(-1 << *(a2 + 32));
    if (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      return 1;
    }

    v7 = *(v4 + 8 * v10);
    ++v3;
    if (v7)
    {
      v3 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100083124(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
LABEL_7:
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(v3 + 48) + 16 * (v10 | (v4 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    sub_1004A6E94();
    v16 = v15 | (v15 << 32);
    sub_1004A6EB4(v16);
    result = sub_1004A6F14();
    v17 = -1 << *(a2 + 32);
    v18 = result & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      if ((v20[2] | (v20[2] << 32)) == v16)
      {
        v21 = *v20;
        v22 = *(*v20 + 16);
        if (v22 == *(v14 + 16))
        {
          break;
        }
      }

LABEL_16:
      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    v23 = (v21 + 32);
    if (v22)
    {
      v24 = v21 == v14;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      v25 = (v14 + 32);
      while (v22)
      {
        if (*v23 != *v25)
        {
          goto LABEL_16;
        }

        ++v23;
        ++v25;
        if (!--v22)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Int sub_100083308(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 4 * (v10 | (v4 << 6)));
    sub_1004A6E94();
    sub_1004A6EE4(v13);
    result = sub_1004A6F14();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 4 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100083478(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v37 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v38 = v7;
  v39 = result;
  v46 = a2 + 56;
  if (!v6)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v9 = __clz(__rbit64(v6));
    v41 = (v6 - 1) & v6;
LABEL_13:
    v40 = v3;
    v12 = *(result + 48) + 24 * (v9 | (v3 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 12);
    v16 = *(v12 + 16);
    v17 = *(v12 + 20);
    v18 = *(v12 + 22);
    sub_1004A6E94();
    v43 = v14;
    v47 = v16;
    v49 = v18;
    v19 = v42 & 0xFF00000000000000 | v16 | (v17 << 32) | (v18 << 48);
    QuotaRoot.hash(into:)(v50, v13, v14 | (v15 << 32), v19);
    v20 = sub_1004A6F14();
    v21 = -1 << *(v2 + 32);
    v22 = v20 & ~v21;
    if (((*(v8 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      return 0;
    }

    v42 = v19;
    v23 = ~v21;
    v24 = v15 - v43;

    v48 = v13;
    swift_beginAccess();
    v44 = (v18 | (v17 << 8)) + v43;
    v45 = v17;
    v25 = v17;
    while (1)
    {
      v26 = *(v2 + 48) + 24 * v22;
      v27 = *(v26 + 8);
      v28 = *(v26 + 12);
      if (v28 - v27 != v24)
      {
        goto LABEL_15;
      }

      v29 = v2;
      v30 = *v26;
      v31 = *(v26 + 20);
      v32 = *(v26 + 22);
      v33 = *(v26 + 16) == v47 && v31 == v25;
      v34 = v33 && v32 == v49;
      if (v34 && v30 == v48)
      {
        break;
      }

      swift_beginAccess();
      v36 = memcmp((*(v30 + 24) + (v32 | (v31 << 8)) + v27), (*(v48 + 24) + v44), v28 - v27);
      v25 = v45;
      v8 = v46;
      v2 = v29;
      if (!v36)
      {

        v7 = v38;
        result = v39;
        goto LABEL_30;
      }

LABEL_15:
      v22 = (v22 + 1) & v23;
      if (((*(v8 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {

        return 0;
      }
    }

    v7 = v38;
    result = v39;
    v2 = v29;
    v8 = v46;
LABEL_30:
    v3 = v40;
    v6 = v41;
    if (v41)
    {
      continue;
    }

    break;
  }

LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v11 = *(v37 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v41 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100083750(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v21 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v22 = v7;
  v23 = result;
  if (v6)
  {
    while (1)
    {
      v24 = (v6 - 1) & v6;
LABEL_13:
      sub_1004A6E94();
      sub_1004A5834();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v11 = sub_1004A6F14();
      v12 = -1 << *(a2 + 32);
      v13 = v11 & ~v12;
      if (((*(v8 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        break;
      }

      v14 = ~v12;
      while (1)
      {
        v15 = sub_1004A5834();
        v17 = v16;
        if (v15 == sub_1004A5834() && v17 == v18)
        {
          break;
        }

        v20 = sub_1004A6D34();

        if (v20)
        {
          goto LABEL_23;
        }

        v13 = (v13 + 1) & v14;
        if (((*(v8 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

LABEL_23:

      v7 = v22;
      result = v23;
      v6 = v24;
      if (!v24)
      {
        goto LABEL_8;
      }
    }

LABEL_26:

    return 0;
  }

LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v21 + 8 * v3);
    ++v9;
    if (v10)
    {
      v24 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100083990(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v82 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v93 = a2 + 56;
  v83 = v7;
  v84 = a1;
  while (1)
  {
    if (v6)
    {
      v9 = __clz(__rbit64(v6));
      v85 = (v6 - 1) & v6;
    }

    else
    {
      v10 = v3;
      do
      {
        v3 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
        }

        if (v3 >= v7)
        {
          return 1;
        }

        v11 = *(v82 + 8 * v3);
        ++v10;
      }

      while (!v11);
      v9 = __clz(__rbit64(v11));
      v85 = (v11 - 1) & v11;
    }

    v12 = (*(a1 + 48) + 16 * (v9 | (v3 << 6)));
    v14 = *v12;
    v13 = v12[1];
    sub_1004A6E94();
    sub_100014CEC(v14, v13);
    sub_1004A4424();
    v15 = sub_1004A6F14();
    v16 = -1 << *(v2 + 32);
    v17 = v15 & ~v16;
    if (((*(v8 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
LABEL_157:
      sub_100014D40(v14, v13);
      return 0;
    }

    v18 = ~v16;
    v19 = v13 >> 62;
    v20 = !v14 && v13 == 0xC000000000000000;
    v21 = !v20;
    v96 = v21;
    v22 = __OFSUB__(HIDWORD(v14), v14);
    v92 = v22;
    v90 = (v14 >> 32) - v14;
    v91 = v14 >> 32;
    v95 = v18;
LABEL_27:
    v23 = (*(v2 + 48) + 16 * v17);
    v25 = *v23;
    v24 = v23[1];
    v26 = v24 >> 62;
    if (v24 >> 62 == 3)
    {
      if (v25)
      {
        v27 = 0;
      }

      else
      {
        v27 = v24 == 0xC000000000000000;
      }

      v29 = !v27 || v13 >> 62 != 3;
      if (((v29 | v96) & 1) == 0)
      {
        v78 = 0;
        v79 = 0xC000000000000000;
LABEL_154:
        sub_100014D40(v78, v79);
        v7 = v83;
        a1 = v84;
        v6 = v85;
        continue;
      }

LABEL_49:
      v30 = 0;
      if (v19 <= 1)
      {
        goto LABEL_46;
      }

      goto LABEL_50;
    }

    if (v26 > 1)
    {
      if (v26 != 2)
      {
        goto LABEL_49;
      }

      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      v33 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v33)
      {
        goto LABEL_163;
      }

      if (v19 <= 1)
      {
        goto LABEL_46;
      }
    }

    else if (v26)
    {
      LODWORD(v30) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_162;
      }

      v30 = v30;
      if (v19 <= 1)
      {
LABEL_46:
        v34 = BYTE6(v13);
        if (v19)
        {
          v34 = HIDWORD(v14) - v14;
          if (v92)
          {
            goto LABEL_161;
          }
        }

        goto LABEL_52;
      }
    }

    else
    {
      v30 = BYTE6(v24);
      if (v19 <= 1)
      {
        goto LABEL_46;
      }
    }

LABEL_50:
    if (v19 != 2)
    {
      if (!v30)
      {
        goto LABEL_153;
      }

      goto LABEL_26;
    }

    v36 = *(v14 + 16);
    v35 = *(v14 + 24);
    v33 = __OFSUB__(v35, v36);
    v34 = v35 - v36;
    if (v33)
    {
      goto LABEL_160;
    }

LABEL_52:
    if (v30 != v34)
    {
      goto LABEL_26;
    }

    if (v30 < 1)
    {
      goto LABEL_153;
    }

    if (v26 <= 1)
    {
      break;
    }

    if (v26 != 2)
    {
      *&__s1[6] = 0;
      *__s1 = 0;
      if (!v19)
      {
LABEL_82:
        __s2 = v14;
        v98 = v13;
        v99 = BYTE2(v13);
        v100 = BYTE3(v13);
        v101 = BYTE4(v13);
        v102 = BYTE5(v13);
        v53 = memcmp(__s1, &__s2, BYTE6(v13));
        v18 = v95;
        if (!v53)
        {
          goto LABEL_153;
        }

        goto LABEL_26;
      }

      if (v19 == 2)
      {
        v49 = *(v14 + 16);
        v88 = *(v14 + 24);
        sub_100014CEC(v25, v24);
        v50 = sub_1004A40D4();
        if (v50)
        {
          v51 = sub_1004A4104();
          if (__OFSUB__(v49, v51))
          {
            goto LABEL_178;
          }

          v50 += v49 - v51;
        }

        v33 = __OFSUB__(v88, v49);
        v52 = v88 - v49;
        if (v33)
        {
          goto LABEL_169;
        }

        result = sub_1004A40F4();
        if (!v50)
        {
          goto LABEL_190;
        }

        goto LABEL_113;
      }

      if (v91 < v14)
      {
        goto LABEL_167;
      }

      sub_100014CEC(v25, v24);
      v64 = sub_1004A40D4();
      if (!v64)
      {
        goto LABEL_187;
      }

      v65 = v64;
      v66 = sub_1004A4104();
      if (__OFSUB__(v14, v66))
      {
        goto LABEL_173;
      }

      v40 = (v14 - v66 + v65);
      result = sub_1004A40F4();
      if (!v40)
      {
        goto LABEL_188;
      }

      goto LABEL_121;
    }

    v42 = *(v25 + 16);
    sub_100014CEC(v25, v24);
    v43 = sub_1004A40D4();
    if (v43)
    {
      v44 = v43;
      v45 = sub_1004A4104();
      if (__OFSUB__(v42, v45))
      {
        goto LABEL_165;
      }

      v86 = (v42 - v45 + v44);
    }

    else
    {
      v86 = 0;
    }

    sub_1004A40F4();
    v8 = v93;
    v2 = a2;
    if (v19 != 2)
    {
      if (v19 == 1)
      {
        if (v91 < v14)
        {
          goto LABEL_170;
        }

        v54 = sub_1004A40D4();
        if (v54)
        {
          v55 = sub_1004A4104();
          if (__OFSUB__(v14, v55))
          {
            goto LABEL_181;
          }

          v54 += v14 - v55;
        }

        v56 = sub_1004A40F4();
        v57 = (v14 >> 32) - v14;
        if (v56 < v90)
        {
          v57 = v56;
        }

        result = v86;
        if (!v86)
        {
          goto LABEL_198;
        }

        if (!v54)
        {
          goto LABEL_197;
        }

        goto LABEL_147;
      }

      result = v86;
      *__s1 = v14;
      *&__s1[8] = v13;
      __s1[10] = BYTE2(v13);
      __s1[11] = BYTE3(v13);
      __s1[12] = BYTE4(v13);
      __s1[13] = BYTE5(v13);
      if (!v86)
      {
        goto LABEL_184;
      }

LABEL_152:
      v77 = memcmp(result, __s1, BYTE6(v13));
      sub_100014D40(v25, v24);
      v18 = v95;
      if (!v77)
      {
        goto LABEL_153;
      }

      goto LABEL_26;
    }

    v69 = *(v14 + 16);
    v80 = *(v14 + 24);
    v54 = sub_1004A40D4();
    if (v54)
    {
      v70 = sub_1004A4104();
      if (__OFSUB__(v69, v70))
      {
        goto LABEL_179;
      }

      v54 += v69 - v70;
    }

    v33 = __OFSUB__(v80, v69);
    v71 = v80 - v69;
    if (v33)
    {
      goto LABEL_174;
    }

    v72 = sub_1004A40F4();
    if (v72 >= v71)
    {
      v57 = v71;
    }

    else
    {
      v57 = v72;
    }

    result = v86;
    if (!v86)
    {
      goto LABEL_194;
    }

    v2 = a2;
    if (!v54)
    {
      goto LABEL_193;
    }

LABEL_147:
    if (result != v54)
    {
      v63 = memcmp(result, v54, v57);
      sub_100014D40(v25, v24);
      goto LABEL_149;
    }

    sub_100014D40(v14, v13);
    sub_100014D40(v25, v24);
    v7 = v83;
    a1 = v84;
    v8 = v93;
    v6 = v85;
  }

  if (v26)
  {
    if (v25 > v25 >> 32)
    {
      goto LABEL_164;
    }

    sub_100014CEC(v25, v24);
    v46 = sub_1004A40D4();
    if (v46)
    {
      v47 = v46;
      v48 = sub_1004A4104();
      if (__OFSUB__(v25, v48))
      {
        goto LABEL_166;
      }

      v87 = (v25 - v48 + v47);
    }

    else
    {
      v87 = 0;
    }

    sub_1004A40F4();
    v8 = v93;
    v2 = a2;
    if (v19 == 2)
    {
      v73 = *(v14 + 16);
      v81 = *(v14 + 24);
      v54 = sub_1004A40D4();
      if (v54)
      {
        v74 = sub_1004A4104();
        if (__OFSUB__(v73, v74))
        {
          goto LABEL_180;
        }

        v54 += v73 - v74;
      }

      v33 = __OFSUB__(v81, v73);
      v75 = v81 - v73;
      if (v33)
      {
        goto LABEL_176;
      }

      v76 = sub_1004A40F4();
      if (v76 >= v75)
      {
        v57 = v75;
      }

      else
      {
        v57 = v76;
      }

      result = v87;
      if (!v87)
      {
        goto LABEL_196;
      }

      v2 = a2;
      if (!v54)
      {
        goto LABEL_195;
      }
    }

    else
    {
      if (v19 != 1)
      {
        result = v87;
        *__s1 = v14;
        *&__s1[8] = v13;
        __s1[10] = BYTE2(v13);
        __s1[11] = BYTE3(v13);
        __s1[12] = BYTE4(v13);
        __s1[13] = BYTE5(v13);
        if (!v87)
        {
          goto LABEL_189;
        }

        goto LABEL_152;
      }

      if (v91 < v14)
      {
        goto LABEL_175;
      }

      v54 = sub_1004A40D4();
      if (v54)
      {
        v58 = sub_1004A4104();
        if (__OFSUB__(v14, v58))
        {
          goto LABEL_182;
        }

        v54 += v14 - v58;
      }

      v59 = sub_1004A40F4();
      v57 = (v14 >> 32) - v14;
      if (v59 < v90)
      {
        v57 = v59;
      }

      result = v87;
      if (!v87)
      {
        goto LABEL_192;
      }

      if (!v54)
      {
        goto LABEL_191;
      }
    }

    goto LABEL_147;
  }

  *__s1 = v25;
  *&__s1[8] = v24;
  __s1[10] = BYTE2(v24);
  __s1[11] = BYTE3(v24);
  __s1[12] = BYTE4(v24);
  __s1[13] = BYTE5(v24);
  if (!v19)
  {
    goto LABEL_82;
  }

  if (v19 != 1)
  {
    v60 = *(v14 + 16);
    v89 = *(v14 + 24);
    sub_100014CEC(v25, v24);
    v50 = sub_1004A40D4();
    if (v50)
    {
      v61 = sub_1004A4104();
      if (__OFSUB__(v60, v61))
      {
        goto LABEL_177;
      }

      v50 += v60 - v61;
    }

    v33 = __OFSUB__(v89, v60);
    v52 = v89 - v60;
    if (v33)
    {
      goto LABEL_171;
    }

    result = sub_1004A40F4();
    if (!v50)
    {
      goto LABEL_186;
    }

LABEL_113:
    if (result >= v52)
    {
      v62 = v52;
    }

    else
    {
      v62 = result;
    }

    v63 = memcmp(__s1, v50, v62);
    sub_100014D40(v25, v24);
    v2 = a2;
LABEL_149:
    v8 = v93;
    v18 = v95;
    if (!v63)
    {
      goto LABEL_153;
    }

    goto LABEL_26;
  }

  if (v91 < v14)
  {
    goto LABEL_168;
  }

  sub_100014CEC(v25, v24);
  v37 = sub_1004A40D4();
  if (v37)
  {
    v38 = v37;
    v39 = sub_1004A4104();
    if (__OFSUB__(v14, v39))
    {
      goto LABEL_172;
    }

    v40 = (v14 - v39 + v38);
    result = sub_1004A40F4();
    if (!v40)
    {
      goto LABEL_185;
    }

LABEL_121:
    if (result >= v90)
    {
      v67 = (v14 >> 32) - v14;
    }

    else
    {
      v67 = result;
    }

    v68 = memcmp(__s1, v40, v67);
    sub_100014D40(v25, v24);
    v2 = a2;
    v18 = v95;
    if (!v68)
    {
LABEL_153:
      v78 = v14;
      v79 = v13;
      goto LABEL_154;
    }

LABEL_26:
    v17 = (v17 + 1) & v18;
    if (((*(v8 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_27;
  }

  sub_1004A40F4();
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  result = sub_1004A40F4();
LABEL_188:
  __break(1u);
LABEL_189:
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
  return result;
}