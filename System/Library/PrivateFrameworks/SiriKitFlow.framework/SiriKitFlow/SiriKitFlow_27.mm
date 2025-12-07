uint64_t sub_1DCDC3CDC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v37 = *(*(sub_1DD0DB04C() - 8) + 64);
  v35 = *(sub_1DD0DC76C() - 8);
  v3 = *(v35 + 80);
  v36 = *(sub_1DD0DB1EC() - 8);
  v32 = *(v36 + 80) | v3;
  v34 = *(sub_1DD0DB4BC() - 8);
  v4 = *(v34 + 80) & 0xF8;
  v5 = *(sub_1DD0DB3EC() - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v33 = *(sub_1DD0DD12C() - 8);
  v8 = *(v33 + 80);
  v9 = *(sub_1DD0DD08C() - 8);
  v10 = (v32 | (v8 | *(v9 + 80))) & 0xF8 | v7;
  v11 = (v37 + v10) & ~v10;
  v12 = *(v35 + 64);
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v36 + 64))
  {
    v12 = *(v36 + 64);
  }

  v13 = *(v5 + 64) + ((*(v34 + 64) + v6) & ~v6);
  if (!*(v5 + 84))
  {
    ++v13;
  }

  v14 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 19) | 5;
  if (v12 <= v15)
  {
    v12 = (v14 + 19) | 5;
  }

  v16 = ((((((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 <= v16)
  {
    v12 = v16;
  }

  if (v12 <= ((v15 + ((v7 + ((*(v33 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v12 = ((v15 + ((v7 + ((*(v33 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v17 = *(v9 + 64);
  if (v12 > v17)
  {
    v17 = v12;
  }

  if (v17 <= 0x18)
  {
    v17 = 24;
  }

  v18 = ((((v11 + v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v19 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v19 + 84))
  {
    v20 = *(v19 + 64);
  }

  else
  {
    v20 = *(v19 + 64) + 1;
  }

  v21 = 9;
  if (v20 <= 9)
  {
    v20 = 9;
  }

  if (v20 + 1 > v18)
  {
    v22 = v20 + 1;
  }

  else
  {
    v22 = v18;
  }

  if (v22 > 9)
  {
    v21 = v22;
  }

  v23 = (3u >> (8 * v21)) ^ 0xFB;
  if (v21 > 3)
  {
    v23 = 251;
  }

  if (!a2)
  {
    return 0;
  }

  if (v23 >= a2)
  {
    goto LABEL_48;
  }

  v24 = v21 + 1;
  v25 = 8 * (v21 + 1);
  if ((v21 + 1) <= 3)
  {
    v28 = ((~(-1 << v25) + a2 - v23) >> v25) + 1;
    if (HIWORD(v28))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_48;
      }

      goto LABEL_40;
    }

    if (v28 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_48;
      }

      goto LABEL_40;
    }

    if (v28 < 2)
    {
LABEL_48:
      v30 = *(a1 + v21);
      if (v23 <= (v30 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v30);
      }
    }
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_48;
  }

LABEL_40:
  v29 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v29 = 0;
  }

  if (v24)
  {
    if (v24 > 3)
    {
      LODWORD(v24) = 4;
    }

    switch(v24)
    {
      case 2:
        LODWORD(v24) = *a1;
        break;
      case 3:
        LODWORD(v24) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v24) = *a1;
        break;
      default:
        LODWORD(v24) = *a1;
        break;
    }
  }

  return v23 + (v24 | v29) + 1;
}

void sub_1DCDC41D0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v39 = *(*(sub_1DD0DB04C() - 8) + 64);
  v37 = *(sub_1DD0DC76C() - 8);
  v4 = *(v37 + 80);
  v38 = *(sub_1DD0DB1EC() - 8);
  v34 = *(v38 + 80) | v4;
  v36 = *(sub_1DD0DB4BC() - 8);
  v5 = *(v36 + 80) & 0xF8;
  v6 = *(sub_1DD0DB3EC() - 8);
  v7 = *(v6 + 80);
  v8 = v5 | v7 | 7;
  v35 = *(sub_1DD0DD12C() - 8);
  v9 = *(v35 + 80);
  v10 = *(sub_1DD0DD08C() - 8);
  v11 = (v34 | (v9 | *(v10 + 80))) & 0xF8 | v8;
  v12 = (v39 + v11) & ~v11;
  v13 = *(v37 + 64);
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v38 + 64))
  {
    v13 = *(v38 + 64);
  }

  v14 = *(v6 + 64) + ((*(v36 + 64) + v7) & ~v7);
  if (!*(v6 + 84))
  {
    ++v14;
  }

  v15 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 19) | 5;
  if (v13 <= v16)
  {
    v13 = (v15 + 19) | 5;
  }

  v17 = ((((((v15 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 <= v17)
  {
    v13 = v17;
  }

  if (v13 <= ((v16 + ((v8 + ((*(v35 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v13 = ((v16 + ((v8 + ((*(v35 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v18 = *(v10 + 64);
  if (v13 > v18)
  {
    v18 = v13;
  }

  if (v18 <= 0x18)
  {
    v18 = 24;
  }

  v19 = ((((v12 + v18 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v20 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v20 + 84))
  {
    v21 = *(v20 + 64);
  }

  else
  {
    v21 = *(v20 + 64) + 1;
  }

  if (v21 <= 9)
  {
    v21 = 9;
  }

  if (v21 + 1 > v19)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = v19;
  }

  if (v22 <= 9)
  {
    v22 = 9;
  }

  if (v22 <= 3)
  {
    v23 = (3u >> (8 * v22)) ^ 0xFB;
  }

  else
  {
    v23 = 251;
  }

  v24 = v22 + 1;
  v25 = 8 * (v22 + 1);
  if (v23 >= a3)
  {
    v28 = 0;
    v26 = a1;
    v27 = a2;
  }

  else
  {
    v26 = a1;
    v27 = a2;
    if (v24 <= 3)
    {
      v31 = ((~(-1 << v25) + a3 - v23) >> v25) + 1;
      if (HIWORD(v31))
      {
        v28 = 4;
      }

      else
      {
        if (v31 < 0x100)
        {
          v32 = 1;
        }

        else
        {
          v32 = 2;
        }

        if (v31 >= 2)
        {
          v28 = v32;
        }

        else
        {
          v28 = 0;
        }
      }
    }

    else
    {
      v28 = 1;
    }
  }

  if (v23 >= v27)
  {
    switch(v28)
    {
      case 1:
        v26[v24] = 0;
        if (v27)
        {
          goto LABEL_53;
        }

        break;
      case 2:
        *&v26[v24] = 0;
        if (v27)
        {
          goto LABEL_53;
        }

        break;
      case 3:
LABEL_64:
        __break(1u);
        break;
      case 4:
        *&v26[v24] = 0;
        goto LABEL_52;
      default:
LABEL_52:
        if (v27)
        {
LABEL_53:
          v26[v22] = -v27;
        }

        break;
    }
  }

  else
  {
    v29 = ~v23 + v27;
    if (v24 < 4)
    {
      v30 = (v29 >> v25) + 1;
      if (v22 != -1)
      {
        v33 = v29 & ~(-1 << v25);
        bzero(v26, v24);
        if (v24 == 3)
        {
          *v26 = v33;
          v26[2] = BYTE2(v33);
        }

        else if (v24 == 2)
        {
          *v26 = v33;
        }

        else
        {
          *v26 = v29;
        }
      }
    }

    else
    {
      bzero(v26, v24);
      *v26 = v29;
      v30 = 1;
    }

    switch(v28)
    {
      case 1:
        v26[v24] = v30;
        break;
      case 2:
        *&v26[v24] = v30;
        break;
      case 3:
        goto LABEL_64;
      case 4:
        *&v26[v24] = v30;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCDC473C(unsigned __int8 *a1, uint64_t a2)
{
  v30 = *(*(sub_1DD0DB04C() - 8) + 64);
  v28 = *(sub_1DD0DC76C() - 8);
  v2 = *(v28 + 80);
  v29 = *(sub_1DD0DB1EC() - 8);
  v25 = *(v29 + 80) | v2;
  v27 = *(sub_1DD0DB4BC() - 8);
  v3 = *(v27 + 80) & 0xF8;
  v4 = *(sub_1DD0DB3EC() - 8);
  v5 = *(v4 + 80);
  v6 = v3 | v5 | 7;
  v26 = *(sub_1DD0DD12C() - 8);
  v7 = *(v26 + 80);
  v8 = *(sub_1DD0DD08C() - 8);
  v9 = (v25 | (v7 | *(v8 + 80))) & 0xF8 | v6;
  v10 = (v30 + v9) & ~v9;
  v11 = *(v28 + 64);
  if (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v11)
  {
    v11 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v11 <= *(v29 + 64))
  {
    v11 = *(v29 + 64);
  }

  v12 = *(v4 + 64) + ((*(v27 + 64) + v5) & ~v5);
  if (!*(v4 + 84))
  {
    ++v12;
  }

  v13 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 19) | 5;
  if (v11 <= v14)
  {
    v11 = (v13 + 19) | 5;
  }

  v15 = ((((((v13 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 <= v15)
  {
    v11 = v15;
  }

  if (v11 <= ((v14 + ((v6 + ((*(v26 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v11 = ((v14 + ((v6 + ((*(v26 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v16 = *(v8 + 64);
  if (v11 > v16)
  {
    v16 = v11;
  }

  if (v16 <= 0x18)
  {
    v16 = 24;
  }

  v17 = ((((v10 + v16 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v18 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v18 + 84))
  {
    v19 = *(v18 + 64);
  }

  else
  {
    v19 = *(v18 + 64) + 1;
  }

  v20 = 9;
  if (v19 <= 9)
  {
    v19 = 9;
  }

  if (v19 + 1 > v17)
  {
    v21 = v19 + 1;
  }

  else
  {
    v21 = v17;
  }

  if (v21 > 9)
  {
    v20 = v21;
  }

  result = a1[v20];
  if (result >= 4)
  {
    if (v20 <= 3)
    {
      v23 = v20;
    }

    else
    {
      v23 = 4;
    }

    switch(v23)
    {
      case 1:
        v24 = *a1;
        goto LABEL_36;
      case 2:
        v24 = *a1;
        goto LABEL_36;
      case 3:
        v24 = *a1 | (a1[2] << 16);
        goto LABEL_36;
      case 4:
        v24 = *a1;
LABEL_36:
        if (v20 < 4)
        {
          result = (v24 | ((result - 4) << (8 * v20))) + 4;
        }

        else
        {
          result = (v24 + 4);
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1DCDC4B7C(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(sub_1DD0DB04C() - 8);
  v6 = v5;
  v57 = a2;
  if (a2 > 3)
  {
    v56 = *(v5 + 64);
    v52 = *(sub_1DD0DC76C() - 8);
    v22 = *(v52 + 80);
    v54 = *(sub_1DD0DB1EC() - 8);
    v46 = *(v54 + 80) | v22;
    v50 = *(sub_1DD0DB4BC() - 8);
    v23 = *(v50 + 80) & 0xF8;
    v24 = *(sub_1DD0DB3EC() - 8);
    v25 = *(v24 + 80);
    v26 = v23 | v25 | 7;
    v48 = *(sub_1DD0DD12C() - 8);
    v27 = *(v48 + 80);
    v28 = *(sub_1DD0DD08C() - 8);
    v29 = (v46 | (v27 | *(v28 + 80))) & 0xF8 | v26;
    v30 = (v56 + v29) & ~v29;
    v31 = *(v52 + 64);
    if (((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v31)
    {
      v31 = ((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v31 <= *(v54 + 64))
    {
      v31 = *(v54 + 64);
    }

    v32 = *(v24 + 64) + ((*(v50 + 64) + v25) & ~v25);
    if (!*(v24 + 84))
    {
      ++v32;
    }

    v33 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 19) | 5;
    if (v31 <= v34)
    {
      v31 = (v33 + 19) | 5;
    }

    v35 = ((((((v33 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    if (v31 <= v35)
    {
      v31 = v35;
    }

    if (v31 <= ((v34 + ((v26 + ((*(v48 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v31 = ((v34 + ((v26 + ((*(v48 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    v36 = *(v28 + 64);
    if (v31 > v36)
    {
      v36 = v31;
    }

    if (v36 <= 0x18)
    {
      v36 = 24;
    }

    v37 = ((((v30 + v36 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
    v38 = *(swift_getAssociatedTypeWitness() - 8);
    if (*(v38 + 84))
    {
      v39 = *(v38 + 64);
    }

    else
    {
      v39 = *(v38 + 64) + 1;
    }

    if (v39 <= 9)
    {
      v39 = 9;
    }

    if (v39 + 1 > v37)
    {
      v40 = v39 + 1;
    }

    else
    {
      v40 = v37;
    }

    if (v40 <= 9)
    {
      v41 = 9;
    }

    else
    {
      v41 = v40;
    }

    v42 = v57 - 4;
    if (v41 < 4)
    {
      v43 = a1;
      a1[v41] = (v42 >> (8 * v41)) + 4;
      if (!v41)
      {
        return;
      }

      v42 &= ~(-1 << (8 * v41));
    }

    else
    {
      v43 = a1;
      a1[v41] = 4;
    }

    if (v41 >= 4)
    {
      v44 = 4;
    }

    else
    {
      v44 = v41;
    }

    bzero(v43, v41);
    switch(v44)
    {
      case 2:
        *v43 = v42;
        break;
      case 3:
        *v43 = v42;
        v43[2] = BYTE2(v42);
        break;
      case 4:
        *v43 = v42;
        break;
      default:
        *v43 = v42;
        break;
    }
  }

  else
  {
    v55 = *(sub_1DD0DC76C() - 8);
    v53 = *(sub_1DD0DB1EC() - 8);
    v47 = *(sub_1DD0DB4BC() - 8);
    v45 = *(sub_1DD0DB3EC() - 8);
    v49 = *(sub_1DD0DD12C() - 8);
    v51 = *(sub_1DD0DD08C() - 8);
    v7 = *(swift_getAssociatedTypeWitness() - 8);
    v8 = *(v7 + 64);
    if (*(v7 + 84))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    v10 = 9;
    if (v9 <= 9)
    {
      v9 = 9;
    }

    v11 = *(v45 + 80);
    v12 = v11 | *(v47 + 80) & 0xF8 | 7;
    v13 = v12 | ((*(v53 + 80) | *(v55 + 80)) | (*(v49 + 80) | *(v51 + 80))) & 0xF8;
    v14 = (*(v6 + 64) + v13) & ~v13;
    v15 = *(v55 + 64);
    if (((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v15)
    {
      v15 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v15 <= *(v53 + 64))
    {
      v15 = *(v53 + 64);
    }

    v16 = *(v45 + 64) + ((*(v47 + 64) + v11) & ~v11);
    if (!*(v45 + 84))
    {
      ++v16;
    }

    v17 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v17 + 19) | 5;
    if (v15 <= v18)
    {
      v15 = (v17 + 19) | 5;
    }

    v19 = ((((((v17 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    if (v15 <= v19)
    {
      v15 = v19;
    }

    if (v15 <= ((v18 + ((v12 + ((*(v49 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
    {
      v15 = ((v18 + ((v12 + ((*(v49 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v15 <= *(v51 + 64))
    {
      v15 = *(v51 + 64);
    }

    if (v15 <= 0x18)
    {
      v15 = 24;
    }

    v20 = ((((v14 + v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
    if (v9 + 1 > v20)
    {
      v21 = v9 + 1;
    }

    else
    {
      v21 = v20;
    }

    if (v21 > 9)
    {
      v10 = v21;
    }

    a1[v10] = a2;
  }
}

_BYTE *sub_1DCDC5388(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DCDC5468()
{
  result = qword_1ECCA6200[0];
  if (!qword_1ECCA6200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCA6200);
  }

  return result;
}

uint64_t sub_1DCDC54D4()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return sub_1DCDBAB48(v6, v2, v1);
}

uint64_t sub_1DCDC556C()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return sub_1DCDBA9DC(v4, v0);
}

uint64_t sub_1DCDC55F4()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return sub_1DCDBA864(v4, v0);
}

uint64_t sub_1DCDC567C()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return sub_1DCDBA5D8(v4, v0);
}

uint64_t sub_1DCDC5704()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return sub_1DCDBA34C(v4, v0);
}

uint64_t sub_1DCDC578C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *sub_1DCDC57E4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1DCDC58C0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6328, &unk_1DD0F56C0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v11 = v2;
  v12 = a1;
  v13 = a2;
  (*(v8 + 104))(&v10[-v7], *MEMORY[0x1E69E8790]);
  return sub_1DD0DE54C();
}

uint64_t sub_1DCDC59C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA6310, &unk_1DD0F56B0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - v10;
  v12 = *(v8 + 16);
  v12(&v19 - v10, a1, v7);
  v13 = type metadata accessor for AnonymousLNConnectionDelegate(0);
  v14 = objc_allocWithZone(v13);
  v12(&v14[OBJC_IVAR____TtC11SiriKitFlow29AnonymousLNConnectionDelegate_continuation], v11, v7);
  v21.receiver = v14;
  v21.super_class = v13;
  v15 = objc_msgSendSuper2(&v21, sel_init);
  (*(v8 + 8))(v11, v7);
  v16 = [a2 executorForAction:a3 options:v20 delegate:v15];
  [v16 perform];
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  return sub_1DD0DE4EC();
}

void sub_1DCDC5B8C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DB04C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v9 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v9, qword_1EDE57E00);
  v10 = a3;
  v20 = sub_1DD0DD8EC();
  v11 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v20, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    v14 = [v10 identifier];
    sub_1DD0DB02C();

    sub_1DCB28A60();
    v15 = sub_1DD0DF03C();
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = sub_1DCB10E9C(v15, v17, &v21);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1DCAFC000, v20, v11, "App intent AsyncStream terminated. Stopping executor %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12A8390](v13, -1, -1);
    MEMORY[0x1E12A8390](v12, -1, -1);
  }

  else
  {
    v19 = v20;
  }
}

void sub_1DCDC5DEC()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6308, &qword_1DD0F56A8);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_4_1();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v9 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v9, qword_1EDE57E00);
  v10 = OUTLINED_FUNCTION_10_43(v3);
  v11 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_151();
    v22 = v4;
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = [v1 parameterName];
    v15 = sub_1DD0DDFBC();
    v17 = v16;

    v18 = sub_1DCB10E9C(v15, v17, &v23);

    *(v12 + 4) = v18;
    OUTLINED_FUNCTION_8_50(&dword_1DCAFC000, v19, v20, "App intent executore got LNNeedsValueRequest: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    v4 = v22;
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v23 = v1;
  v24 = 0;
  v21 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA6310, &unk_1DD0F56B0);
  OUTLINED_FUNCTION_5_62();
  sub_1DD0DE4FC();
  (*(v6 + 8))(v0, v4);
  OUTLINED_FUNCTION_49();
}

void sub_1DCDC6068()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6308, &qword_1DD0F56A8);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v23 - v8;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v10 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v10, qword_1EDE57E00);
  v11 = OUTLINED_FUNCTION_10_43(v2);
  v12 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v13 = 136315394;
    v14 = [v0 parameterName];
    v15 = sub_1DD0DDFBC();
    v24 = v12;
    v16 = v15;
    v18 = v17;

    v19 = sub_1DCB10E9C(v16, v18, &v27);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    v20 = [v0 value];
    *(v13 + 14) = v20;
    v21 = v25;
    *v25 = v20;
    _os_log_impl(&dword_1DCAFC000, v11, v24, "App intent executor got LNConfirmationRequest: %s, value: %@", v13, 0x16u);
    sub_1DCC3C9EC(v21);
    OUTLINED_FUNCTION_80();
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v27 = v0;
  v28 = 1;
  v22 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA6310, &unk_1DD0F56B0);
  OUTLINED_FUNCTION_5_62();
  sub_1DD0DE4FC();
  (*(v5 + 8))(v9, v3);
  OUTLINED_FUNCTION_49();
}

void sub_1DCDC6364()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6308, &qword_1DD0F56A8);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_4_1();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v9 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v9, qword_1EDE57E00);
  v10 = OUTLINED_FUNCTION_10_43(v3);
  v11 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 136315394;
    v26 = v4;
    v13 = [v1 parameterName];
    v14 = sub_1DD0DDFBC();
    v16 = v15;

    v17 = sub_1DCB10E9C(v14, v16, &v27);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v18 = [v1 items];
    v19 = sub_1DCDC6F98();
    v20 = sub_1DD0DE2EC();

    v21 = MEMORY[0x1E12A6960](v20, v19);
    v23 = v22;

    v24 = sub_1DCB10E9C(v21, v23, &v27);
    v4 = v26;

    *(v12 + 14) = v24;
    _os_log_impl(&dword_1DCAFC000, v10, v11, "App intent executor got LNDisambiguationRequest: %s, items: %s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v27 = v1;
  v28 = 2;
  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA6310, &unk_1DD0F56B0);
  OUTLINED_FUNCTION_5_62();
  sub_1DD0DE4FC();
  (*(v6 + 8))(v0, v4);
  OUTLINED_FUNCTION_49();
}

void sub_1DCDC6688()
{
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6308, &qword_1DD0F56A8);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_4_1();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v9 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v9, qword_1EDE57E00);
  v10 = OUTLINED_FUNCTION_10_43(v3);
  v11 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_151();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v1;
    *v13 = v1;
    v14 = v1;
    OUTLINED_FUNCTION_8_50(&dword_1DCAFC000, v15, v16, "App intent executor got LNActionConfirmationRequest: %@");
    sub_1DCC3C9EC(v13);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v17 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA6310, &unk_1DD0F56B0);
  OUTLINED_FUNCTION_5_62();
  sub_1DD0DE4FC();
  (*(v6 + 8))(v0, v4);
  OUTLINED_FUNCTION_49();
}

void sub_1DCDC68B4()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6308, &qword_1DD0F56A8);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v33 - v9;
  if (v1)
  {
    v11 = v1;
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v12 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v12, qword_1EDE57E00);
    v13 = v1;
    v14 = sub_1DD0DD8EC();
    v15 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_151();
      v17 = swift_slowAlloc();
      v33[1] = v1;
      v34 = v17;
      *v16 = 136315138;
      v18 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
      v19 = sub_1DD0DE02C();
      v21 = sub_1DCB10E9C(v19, v20, &v34);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1DCAFC000, v14, v15, "App intent executor finished with error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v34 = v1;
    v22 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA6310, &unk_1DD0F56B0);
    OUTLINED_FUNCTION_5_62();
    sub_1DD0DE50C();

LABEL_13:
    OUTLINED_FUNCTION_49();
    return;
  }

  if (v3)
  {
    v23 = qword_1EDE4F900;
    v24 = v3;
    if (v23 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v25 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v25, qword_1EDE57E00);
    v26 = v24;
    v27 = sub_1DD0DD8EC();
    v28 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_151();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v3;
      v31 = v26;
      _os_log_impl(&dword_1DCAFC000, v27, v28, "App intent executor finished with result: %@", v29, 0xCu);
      sub_1DCC3C9EC(v30);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v34 = v3;
    v35 = 4;
    v32 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA6310, &unk_1DD0F56B0);
    sub_1DD0DE4FC();
    (*(v6 + 8))(v10, v4);
    v34 = 0;
    sub_1DD0DE50C();

    goto LABEL_13;
  }

  __break(1u);
}

id sub_1DCDC6CF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnonymousLNConnectionDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AnonymousLNConnectionDelegate(uint64_t a1)
{
  result = qword_1ECCA62E8;
  if (!qword_1ECCA62E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DCDC6DF8(uint64_t a1)
{
  sub_1DCDC6E88(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DCDC6E88(uint64_t a1)
{
  if (!qword_1ECCA62F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v1 = sub_1DD0DE51C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECCA62F8);
    }
  }
}

uint64_t assignWithCopy for LinkConnectionEvent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = v3;

  return a1;
}

uint64_t assignWithTake for LinkConnectionEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

unint64_t sub_1DCDC6F98()
{
  result = qword_1ECCA6320;
  if (!qword_1ECCA6320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCA6320);
  }

  return result;
}

uint64_t sub_1DCDC6FF4(unint64_t a1)
{
  if ((~a1 & 0xF000000000000006) == 0)
  {
    return 0x65746544746F6E2ELL;
  }

  sub_1DCBF4488(a1);
  v2 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v2);

  return 0x757365527361682ELL;
}

uint64_t sub_1DCDC70A8(unint64_t a1, unint64_t a2)
{
  switch(a1 >> 62)
  {
    case 1uLL:
      if (a2 >> 62 != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    case 2uLL:
      if (a2 >> 62 != 2)
      {
        goto LABEL_20;
      }

      v2 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
      v3 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
      v4 = sub_1DD0DE02C();
      v6 = v5;
      v7 = v2;
      if (v4 != sub_1DD0DE02C() || v6 != v8)
      {
        v10 = sub_1DD0DF0AC();

        return v10 & 1;
      }

      goto LABEL_22;
    case 3uLL:
      if (a1 == 0xC000000000000000)
      {
        if (a2 != 0xC000000000000000)
        {
LABEL_20:
          v10 = 0;
          return v10 & 1;
        }
      }

      else if (a1 == 0xC000000000000001 || a2 != 0xC000000000000008)
      {
        goto LABEL_20;
      }

LABEL_22:
      v10 = 1;
      return v10 & 1;
    default:
      if (a2 >> 62)
      {
        goto LABEL_20;
      }

LABEL_18:
      v10 = a2 ^ a1 ^ 1;
      return v10 & 1;
  }
}

unint64_t sub_1DCDC720C(unint64_t a1)
{
  v1 = a1;
  switch(a1 >> 62)
  {
    case 1uLL:
      sub_1DD0DEC1C();

      v2 = 0xD000000000000019;
      goto LABEL_11;
    case 2uLL:
      v9 = 0x2F726F7272652ELL;
      v3 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
      v4 = sub_1DD0DE02C();
      goto LABEL_18;
    case 3uLL:
      if (a1 == 0xC000000000000001)
      {
        v6 = 0xD000000000000010;
      }

      else
      {
        v6 = 0x6C6C65636E61632ELL;
      }

      if (a1 == 0xC000000000000000)
      {
        return 0x68747541746F6E2ELL;
      }

      else
      {
        return v6;
      }

    default:
      sub_1DD0DEC1C();

      v2 = 0xD000000000000010;
LABEL_11:
      v9 = v2;
      if (v1)
      {
        v4 = 0x6365725068746977;
      }

      else
      {
        v4 = 0x7369636572506F6ELL;
      }

      if (v1)
      {
        v8 = 0xED00006E6F697369;
      }

      else
      {
        v8 = 0xEB000000006E6F69;
      }

      v5 = v8;
LABEL_18:
      MEMORY[0x1E12A6780](v4, v5);

      return v9;
  }
}

uint64_t sub_1DCDC7408(uint64_t a1, uint64_t a2)
{
  result = 0xF000000000000006;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
    case 2:
      result = 0xC000000000000000;
      break;
    case 3:
    case 4:
      result = a2 == 0;
      break;
    case 5:
      result = 0xC000000000000001;
      break;
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v6 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v6, qword_1EDE57E00);
      v7 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();
      v8 = OUTLINED_FUNCTION_44_14();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        OUTLINED_FUNCTION_14_4();
        v11 = swift_slowAlloc();
        v20 = v11;
        *v10 = 136315394;
        type metadata accessor for AFLocationAuthorizationStyle(0);
        v12 = sub_1DD0DE02C();
        sub_1DCB10E9C(v12, v13, &v20);
        OUTLINED_FUNCTION_31_18();

        *(v10 + 4) = v2;
        *(v10 + 12) = 2048;
        *(v10 + 14) = a1;
        OUTLINED_FUNCTION_34_3();
        _os_log_impl(v14, v15, v16, v17, v10, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        v18 = OUTLINED_FUNCTION_3_71();
        MEMORY[0x1E12A8390](v18);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      sub_1DCDCB0A4();
      swift_allocError();
      *v19 = 0;
      result = swift_willThrow();
      break;
  }

  return result;
}

uint64_t sub_1DCDC75DC()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  *(v0 + 80) = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  OUTLINED_FUNCTION_40_17();
  OUTLINED_FUNCTION_25_1();
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_18_30(v10);
  OUTLINED_FUNCTION_150();

  return v13(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1DCDC7764()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  *v3 = *v1;
  v2[12] = v4;
  v2[13] = v5;
  v2[14] = v0;

  if (v0)
  {
    v6 = sub_1DCDC7C70;
  }

  else
  {
    v6 = sub_1DCDC786C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DCDC786C()
{
  v45 = v0;
  v2 = *(v0 + 112);
  v3 = sub_1DCDC7408(*(v0 + 96), *(v0 + 104));
  if (v2)
  {
    *(v0 + 16) = v2;
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    OUTLINED_FUNCTION_51_16();
    if (swift_dynamicCast())
    {

      v5 = *(v0 + 24);
      v6 = sub_1DD0DD8EC();
      v7 = sub_1DD0DE6EC();

      if (OUTLINED_FUNCTION_62_0())
      {
        v8 = OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_14_4();
        v9 = swift_slowAlloc();
        v44[0] = v9;
        *v8 = 136315138;
        *(v0 + 40) = v5;
        v10 = v5;
        v11 = sub_1DD0DE02C();
        v13 = sub_1DCB10E9C(v11, v12, v44);

        *(v8 + 4) = v13;
        OUTLINED_FUNCTION_65_8(&dword_1DCAFC000, v6, v7, "#AFLocationServiceAdapter checkSiriLocationAccess - TCC access check failed; AFLocationServiceError=%s");
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
        v14 = OUTLINED_FUNCTION_3_71();
        MEMORY[0x1E12A8390](v14);
      }

      swift_willThrow();
    }

    else
    {

      v29 = v2;
      v30 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();

      if (OUTLINED_FUNCTION_57_9())
      {
        v31 = OUTLINED_FUNCTION_151();
        OUTLINED_FUNCTION_14_4();
        v32 = swift_slowAlloc();
        v44[0] = v32;
        *v31 = 136315138;
        *(v0 + 32) = v2;
        v33 = v2;
        v34 = sub_1DD0DE02C();
        v36 = sub_1DCB10E9C(v34, v35, v44);

        *(v31 + 4) = v36;
        OUTLINED_FUNCTION_34_3();
        OUTLINED_FUNCTION_65_8(v37, v38, v39, v40);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
        v41 = OUTLINED_FUNCTION_3_71();
        MEMORY[0x1E12A8390](v41);
      }

      swift_willThrow();
    }

    OUTLINED_FUNCTION_29();

    return v42();
  }

  else
  {
    v15 = v3;
    sub_1DCDCB08C(v3);
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6DC();
    sub_1DCBB1234(v15);
    if (OUTLINED_FUNCTION_62_0())
    {
      v18 = *(v0 + 104);
      v43 = *(v0 + 96);
      OUTLINED_FUNCTION_14_4();
      v19 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v19 = 136315650;
      *(v0 + 48) = v15;
      sub_1DCDCB08C(v15);
      v20 = sub_1DD0DE02C();
      sub_1DCB10E9C(v20, v21, v44);
      OUTLINED_FUNCTION_31_18();

      *(v19 + 4) = v1;
      *(v19 + 12) = 2080;
      *(v0 + 56) = v18;
      type metadata accessor for CLAccuracyAuthorization(0);
      v22 = sub_1DD0DE02C();
      sub_1DCB10E9C(v22, v23, v44);
      OUTLINED_FUNCTION_31_18();

      *(v19 + 14) = v1;
      *(v19 + 22) = 2080;
      *(v0 + 64) = v43;
      type metadata accessor for AFLocationAuthorizationStyle(0);
      v24 = sub_1DD0DE02C();
      sub_1DCB10E9C(v24, v25, v44);
      OUTLINED_FUNCTION_31_18();

      *(v19 + 24) = v1;
      _os_log_impl(&dword_1DCAFC000, v16, v17, "#AFLocationServiceAdapter checkSiriLocationAccess - TCC access check result: status=%s; accuracy=%s; style=%s", v19, 0x20u);
      OUTLINED_FUNCTION_53_13();
      v26 = OUTLINED_FUNCTION_3_71();
      MEMORY[0x1E12A8390](v26);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v27 = *(v0 + 8);

    return v27(v15);
  }
}

uint64_t sub_1DCDC7E64(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 192) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDC7E7C()
{
  OUTLINED_FUNCTION_41();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = *(v0 + 192);
    v5 = swift_slowAlloc();
    *v5 = 67109376;
    *(v5 + 4) = v4;
    *(v5 + 8) = 2048;
    *(v5 + 10) = 0x403E000000000000;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v6, v7, v8, v9, v10, 0x12u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v11 = *(v0 + 144);
  v12 = *(v0 + 192);

  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  if (v12 == 1)
  {
    OUTLINED_FUNCTION_8();
    v13 = swift_task_alloc();
    *(v0 + 160) = v13;
    *v13 = v0;
    v14 = OUTLINED_FUNCTION_37_21(v13);
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v17 = swift_task_alloc();
    *(v0 + 176) = v17;
    *v17 = v0;
    v14 = OUTLINED_FUNCTION_37_21(v17);
  }

  return v15(v14);
}

uint64_t sub_1DCDC811C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 168) = v0;

  if (v0)
  {
    v9 = sub_1DCDC882C;
  }

  else
  {
    v9 = sub_1DCDC8220;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCDC84A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v2[6] = v1;
  v2[7] = v4;
  v2[8] = v5;
  v2[9] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 184) = v0;

  if (v0)
  {
    v9 = sub_1DCDC8A20;
  }

  else
  {
    v9 = sub_1DCDC85A8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DCDC8C14(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDC8C28()
{
  OUTLINED_FUNCTION_125();
  v24 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  v0[9] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = v0[7];
    v5 = OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_14_4();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    v0[6] = v4;
    type metadata accessor for AFUserSelectedLocationAuthorizationStyle(0);
    v7 = sub_1DD0DE02C();
    v9 = sub_1DCB10E9C(v7, v8, &v23);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v15 = v0[8];
  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  OUTLINED_FUNCTION_8();
  v22 = (v18 + *v18);
  v19 = swift_task_alloc();
  v0[10] = v19;
  *v19 = v0;
  v19[1] = sub_1DCDC8E48;
  v20 = v0[7];

  return v22(v20, v16, v17);
}

uint64_t sub_1DCDC8E48()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    v7 = sub_1DCDC8FEC;
  }

  else
  {
    v7 = sub_1DCDC8F44;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCDC8F44()
{
  OUTLINED_FUNCTION_39();
  v0 = sub_1DD0DD8EC();
  v1 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v1))
  {
    v2 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v2);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1DCDC91E0(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 80) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDC91F8()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  *(v0 + 56) = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v5[1] = v4;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v6, v7, v8, v9, v10, 8u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  OUTLINED_FUNCTION_40_17();
  OUTLINED_FUNCTION_25_1();
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  v11[1] = sub_1DCDC93AC;
  OUTLINED_FUNCTION_150();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1DCDC93AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    v7 = sub_1DCDC9550;
  }

  else
  {
    v7 = sub_1DCDC94A8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCDC94A8()
{
  OUTLINED_FUNCTION_39();
  v0 = sub_1DD0DD8EC();
  v1 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v1))
  {
    v2 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v2);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  OUTLINED_FUNCTION_29();

  return v8();
}

void sub_1DCDC9744()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v8 - v3;
  v5 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_1DCDCB0F8(v0, v9);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = v9[1];
  *(v6 + 32) = v9[0];
  *(v6 + 48) = v7;
  *(v6 + 64) = v10;
  sub_1DCBC61E8();
}

uint64_t sub_1DCDC9854()
{
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_33();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  *(v0 + 32) = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  OUTLINED_FUNCTION_40_17();
  OUTLINED_FUNCTION_25_1();
  v10 = swift_task_alloc();
  *(v0 + 40) = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_18_30(v10);
  OUTLINED_FUNCTION_150();

  return v13(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1DCDC99DC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    v7 = sub_1DCDC9B7C;
  }

  else
  {
    v7 = sub_1DCDC9AD8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCDC9AD8()
{
  OUTLINED_FUNCTION_39();
  v0 = sub_1DD0DD8EC();
  v1 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v1))
  {
    v2 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v2);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1DCDC9B7C()
{
  OUTLINED_FUNCTION_41();
  v3 = *(v0 + 48);
  v4 = v3;
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6EC();

  if (OUTLINED_FUNCTION_62_0())
  {
    v7 = *(v0 + 48);
    v8 = OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_14_4();
    swift_slowAlloc();
    OUTLINED_FUNCTION_192();
    *v8 = 136315138;
    *(v0 + 16) = v7;
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v10 = sub_1DD0DE02C();
    OUTLINED_FUNCTION_67_1(v10, v11, v12, v13, v14, v15, v16, v17, v22);
    OUTLINED_FUNCTION_31_18();

    *(v8 + 4) = v2;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "#AFLocationServiceAdapter dismissTCCDialog - dismissing TCC Dialog failed; error=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v1);
    v18 = OUTLINED_FUNCTION_3_71();
    MEMORY[0x1E12A8390](v18);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  else
  {
    v19 = *(v0 + 48);
  }

  OUTLINED_FUNCTION_29();

  return v20();
}

uint64_t sub_1DCDC9CFC()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_54_2();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DCDC9D8C;
  v2 = OUTLINED_FUNCTION_10_44();

  return v4(v2);
}

uint64_t sub_1DCDC9D8C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_32_1();
  v4 = *v3;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v8 = *(v4 + 8);
  if (!v1)
  {
    v6 = v2;
    v7 = v0;
  }

  return v8(v6, v7);
}

uint64_t sub_1DCDC9E88()
{
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1DCDCB72C;
  v2 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6338, &qword_1DD0F5898);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DCDC9FA4;
  v1[13] = &block_descriptor_53;
  v1[14] = v2;
  [v0 currentAuthorizationStyle_];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1DCDC9FA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v8 = a4;

    return sub_1DCEA2438();
  }

  else
  {
    v10 = *v7;

    return sub_1DCE9B260(v10, a2, a3);
  }
}

uint64_t sub_1DCDCA030(uint64_t a1, double a2)
{
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  *(v3 + 32) = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DCDCA05C, 0, 0);
}

uint64_t sub_1DCDCA05C()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_54_2();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1DCDCA0F4;
  v2 = OUTLINED_FUNCTION_10_44();

  return v4(v2);
}

uint64_t sub_1DCDCA0F4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_32_1();
  v4 = *v3;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v8 = *(v4 + 8);
  if (!v1)
  {
    v6 = v2;
    v7 = v0;
  }

  return v8(v6, v7);
}

uint64_t sub_1DCDCA1F0(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = v5;
  v5[7] = v5 + 18;
  v5[3] = sub_1DCDCA324;
  v8 = swift_continuation_init();
  v5[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6338, &qword_1DD0F5898);
  v5[10] = MEMORY[0x1E69E9820];
  v5[11] = 1107296256;
  v5[12] = sub_1DCDC9FA4;
  v5[13] = &block_descriptor_47;
  v5[14] = v8;
  [v4 requestAuthorizationWithStyle:a4 timeout:v5 + 10 completion:a1];

  return MEMORY[0x1EEE6DEC8](v5 + 2);
}

uint64_t sub_1DCDCA324()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  if (*(v4 + 48))
  {
    swift_willThrow();
    v5 = *(v3 + 8);

    return v5();
  }

  else
  {
    v7 = *(v1 + 144);
    v8 = *(v1 + 152);
    v9 = *(v3 + 8);

    return v9(v7, v8);
  }
}

uint64_t sub_1DCDCA458(uint64_t a1, double a2)
{
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  *(v3 + 32) = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DCDCA484, 0, 0);
}

uint64_t sub_1DCDCA484()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_54_2();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1DCDCB730;
  v2 = OUTLINED_FUNCTION_10_44();

  return v4(v2);
}

uint64_t sub_1DCDCA51C(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = v5;
  v5[7] = v5 + 18;
  v5[3] = sub_1DCDCB72C;
  v8 = swift_continuation_init();
  v5[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6338, &qword_1DD0F5898);
  v5[10] = MEMORY[0x1E69E9820];
  v5[11] = 1107296256;
  v5[12] = sub_1DCDC9FA4;
  v5[13] = &block_descriptor_41;
  v5[14] = v8;
  [v4 requestTemporaryAccuracyAuthorizationWithStyle:a4 timeout:v5 + 10 completion:a1];

  return MEMORY[0x1EEE6DEC8](v5 + 2);
}

uint64_t sub_1DCDCA650(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DCDCA674, 0, 0);
}

uint64_t sub_1DCDCA674()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_54_2();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB3F98C;
  v2 = OUTLINED_FUNCTION_10_44();

  return v4(v2);
}

uint64_t sub_1DCDCA704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = v4;
  v4[3] = sub_1DCDCB738;
  v6 = swift_continuation_init();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2638, &qword_1DD0E5C98);
  v4[10] = MEMORY[0x1E69E9820];
  v4[11] = 1107296256;
  v4[12] = sub_1DCC40AF8;
  v4[13] = &block_descriptor_35;
  v4[14] = v6;
  [v3 updateAuthorizationStyleWithUserSelection:a3 completion:v4 + 10];

  return MEMORY[0x1EEE6DEC8](v4 + 2);
}

uint64_t sub_1DCDCA828(char a1)
{
  *(v2 + 32) = a1;
  *(v2 + 16) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCDCA850, 0, 0);
}

uint64_t sub_1DCDCA850()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_54_2();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB81A34;
  v2 = OUTLINED_FUNCTION_10_44();

  return v4(v2);
}

uint64_t sub_1DCDCA8E4(uint64_t a1, uint64_t a2, char a3)
{
  v4[2] = v4;
  v4[3] = sub_1DCDCB738;
  v6 = swift_continuation_init();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2638, &qword_1DD0E5C98);
  v4[10] = MEMORY[0x1E69E9820];
  v4[11] = 1107296256;
  v4[12] = sub_1DCC40AF8;
  v4[13] = &block_descriptor_29_0;
  v4[14] = v6;
  [v3 updateTemporaryAuthorizationForAccurateLocation:a3 & 1 completion:v4 + 10];

  return MEMORY[0x1EEE6DEC8](v4 + 2);
}

uint64_t sub_1DCDCAA2C()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_54_2();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB81954;
  v2 = OUTLINED_FUNCTION_10_44();

  return v4(v2);
}

uint64_t sub_1DCDCAABC()
{
  v1[2] = v1;
  v1[3] = sub_1DCDCABD0;
  v2 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2638, &qword_1DD0E5C98);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DCC40AF8;
  v1[13] = &block_descriptor_7;
  v1[14] = v2;
  [v0 dismissTCCDialogIfNeeded_];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1DCDCABD0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  if (*(v2 + 48))
  {
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

unint64_t CLAccuracyAuthorization.debugDescription.getter(uint64_t a1)
{
  v1 = 0xD00000000000001FLL;
  if (a1 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6363416C6C75662ELL;
  }
}

uint64_t related decl e for AFLocationServiceErrorCode.debugDescription.getter(uint64_t a1)
{
  type metadata accessor for AFLocationServiceError(0);
  sub_1DCDCB02C();
  sub_1DD0DADCC();
  result = 0x6E6F69737365732ELL;
  switch(v6)
  {
    case 0:
      result = 0xD000000000000012;
      break;
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x54746E65696C632ELL;
      break;
    case 4:
      result = 0x6D6954697269732ELL;
      break;
    case 5:
      OUTLINED_FUNCTION_13_14();
      result = v3 + 10;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      OUTLINED_FUNCTION_13_14();
      result = v5 + 3;
      break;
    case 9:
      OUTLINED_FUNCTION_13_14();
      result = v2 + 6;
      break;
    default:
      OUTLINED_FUNCTION_13_14();
      result = v4 | 0xC;
      break;
  }

  return result;
}

unint64_t sub_1DCDCB02C()
{
  result = qword_1EDE462F8;
  if (!qword_1EDE462F8)
  {
    type metadata accessor for AFLocationServiceError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE462F8);
  }

  return result;
}

unint64_t sub_1DCDCB08C(unint64_t result)
{
  if ((~result & 0xF000000000000006) != 0)
  {
    return sub_1DCBF4488(result);
  }

  return result;
}

unint64_t sub_1DCDCB0A4()
{
  result = qword_1ECCA6330;
  if (!qword_1ECCA6330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6330);
  }

  return result;
}

uint64_t sub_1DCDCB130()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_30_1(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AD3C;

  return sub_1DCDC9834(v2, v3, v4, v0 + 32);
}

void sub_1DCDCB1E4(unint64_t *a1)
{
  v1 = *a1;
  if (!((v1 >> 58) & 0xC | (v1 >> 1) & 3))
  {
    sub_1DCBF44A0(v1);
  }
}

unint64_t *sub_1DCDCB200(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  if (!((*a2 >> 58) & 0xC | (*a2 >> 1) & 3))
  {
    sub_1DCBF4488(*a2);
  }

  *a1 = v3;
  return a1;
}

unint64_t *sub_1DCDCB244(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = (*a2 >> 58) & 0xC | (*a2 >> 1) & 3;
  if ((v3 >> 58) & 0xC | (v3 >> 1) & 3)
  {
    if (!v5)
    {
      sub_1DCBF4488(*a2);
    }

    *a1 = v4;
  }

  else if (v5)
  {
    sub_1DCBF44A0(v3);
    *a1 = *a2;
  }

  else
  {
    sub_1DCBF4488(*a2);
    v7 = *a1;
    *a1 = v4;
    sub_1DCBF44A0(v7);
  }

  return a1;
}

unint64_t *sub_1DCDCB2D4(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (!((v3 >> 58) & 0xC | (v3 >> 1) & 3))
  {
    if (!((v4 >> 58) & 0xC | (v4 >> 1) & 3))
    {
      *a1 = v4;
      sub_1DCBF44A0(v3);
      return a1;
    }

    sub_1DCBF44A0(v3);
  }

  *a1 = v4;
  return a1;
}

uint64_t sub_1DCDCB334(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3C && *(a1 + 8))
  {
    return (*a1 + 60);
  }

  v3 = (((*a1 >> 58) >> 4) | (4 * ((*a1 >> 58) & 0xC | (*a1 >> 1) & 3))) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCDCB390(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3B)
  {
    *result = 0;
    *result = a2 - 60;
    if (a3 >= 0x3C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (16 * (a2 ^ 0x3F)) | ((a2 ^ 0x3F) >> 2);
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1DCDCB3E8(void *a1)
{
  v1 = *a1 >> 58;
  v2 = v1 & 0xC | (*a1 >> 1) & 3;
  if (v2)
  {
    return 64 - ((v1 >> 4) | (4 * v2));
  }

  else
  {
    return 0;
  }
}

unint64_t *sub_1DCDCB414(unint64_t *result, unsigned int a2)
{
  if (a2 > 0x3C)
  {
    v3 = a2 - 61;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (-a2 >> 2) & 0xF | (16 * (-a2 & 0x3F));
    v3 = ((v2 << 58) | (2 * v2)) & 0xF000000000000007;
  }

  *result = v3;
  return result;
}

_BYTE *sub_1DCDCB454(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t *assignWithCopy for PermissionPromptSchemaLogger.LoggedResult(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  sub_1DCBF4488(*a2);
  v4 = *a1;
  *a1 = v3;
  sub_1DCBF44A0(v4);
  return a1;
}

unint64_t *assignWithTake for PermissionPromptSchemaLogger.LoggedResult(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_1DCBF44A0(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for PermissionPromptSchemaLogger.LoggedResult(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3D && *(a1 + 8))
    {
      v2 = *a1 + 60;
    }

    else
    {
      v2 = (((*a1 >> 58) >> 4) | (4 * ((*a1 >> 58) & 0xC | (*a1 >> 1) & 3))) ^ 0x3F;
      if (v2 >= 0x3C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for PermissionPromptSchemaLogger.LoggedResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xF | (16 * (-a2 & 0x3F));
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1DCDCB64C(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return ((*a1 >> 2) & 0xFFFFFFFE | *a1 & 1) + 3;
  }

  else
  {
    return v1;
  }
}

unint64_t *sub_1DCDCB66C(unint64_t *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF9 | (a2 << 62);
  }

  else
  {
    v2 = (4 * (a2 - 3)) & 0x3FFFFFFF8 | (a2 - 3) & 1 | 0xC000000000000000;
  }

  *result = v2;
  return result;
}

unint64_t sub_1DCDCB6B0()
{
  result = qword_1ECCA6340;
  if (!qword_1ECCA6340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6340);
  }

  return result;
}

uint64_t sub_1DCDCB754(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F7268746C6C6166 && a2 == 0xEB00000000686775;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B61657262 && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756E69746E6F63 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD0DF0AC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DCDCB86C(char a1)
{
  if (!a1)
  {
    return 0x6F7268746C6C6166;
  }

  if (a1 == 1)
  {
    return 0x6B61657262;
  }

  return 0x65756E69746E6F63;
}

uint64_t sub_1DCDCB8C8(uint64_t a1)
{
  v2 = sub_1DCDCBE84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDCB904(uint64_t a1)
{
  v2 = sub_1DCDCBE84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCDCB948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCDCB754(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCDCB970@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCDCB864();
  *a1 = result;
  return result;
}

uint64_t sub_1DCDCB998(uint64_t a1)
{
  v2 = sub_1DCDCBDDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDCB9D4(uint64_t a1)
{
  v2 = sub_1DCDCBDDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCDCBA10(uint64_t a1)
{
  v2 = sub_1DCDCBE30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDCBA4C(uint64_t a1)
{
  v2 = sub_1DCDCBE30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCDCBA88(uint64_t a1)
{
  v2 = sub_1DCDCBED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDCBAC4(uint64_t a1)
{
  v2 = sub_1DCDCBED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FlowLoopControl.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_20_3();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6348, &qword_1DD0F5A60);
  OUTLINED_FUNCTION_9();
  v61 = v31;
  v62 = v30;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_34_0();
  v60 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6350, &qword_1DD0F5A68);
  OUTLINED_FUNCTION_9();
  v58 = v36;
  v59 = v35;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v37, v38);
  OUTLINED_FUNCTION_34_0();
  v57 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6358, &qword_1DD0F5A70);
  OUTLINED_FUNCTION_9();
  v55 = v41;
  v56 = v40;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v54 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6360, &qword_1DD0F5A78);
  OUTLINED_FUNCTION_9();
  v48 = v47;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v49, v50);
  OUTLINED_FUNCTION_15_3();
  v51 = *v24;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_1DCDCBDDC();
  sub_1DD0DF24C();
  if (v51)
  {
    if (v51 == 1)
    {
      a13 = 1;
      sub_1DCDCBE84();
      v45 = v57;
      OUTLINED_FUNCTION_3_72(&type metadata for FlowLoopControl.BreakCodingKeys, &a13);
      v53 = v58;
      v52 = v59;
    }

    else
    {
      a14 = 2;
      sub_1DCDCBE30();
      v45 = v60;
      OUTLINED_FUNCTION_3_72(&type metadata for FlowLoopControl.ContinueCodingKeys, &a14);
      v53 = v61;
      v52 = v62;
    }
  }

  else
  {
    a12 = 0;
    sub_1DCDCBED8();
    OUTLINED_FUNCTION_3_72(&type metadata for FlowLoopControl.FallthroughCodingKeys, &a12);
    v53 = v55;
    v52 = v56;
  }

  (*(v53 + 8))(v45, v52);
  (*(v48 + 8))(v25, v46);
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCDCBDDC()
{
  result = qword_1ECCA6368;
  if (!qword_1ECCA6368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6368);
  }

  return result;
}

unint64_t sub_1DCDCBE30()
{
  result = qword_1ECCA6370;
  if (!qword_1ECCA6370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6370);
  }

  return result;
}

unint64_t sub_1DCDCBE84()
{
  result = qword_1ECCA6378;
  if (!qword_1ECCA6378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6378);
  }

  return result;
}

unint64_t sub_1DCDCBED8()
{
  result = qword_1ECCA6380;
  if (!qword_1ECCA6380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6380);
  }

  return result;
}

uint64_t FlowLoopControl.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

void FlowLoopControl.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_20_3();
  a23 = v25;
  a24 = v26;
  v93 = v24;
  v28 = v27;
  v88 = v29;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6388, &qword_1DD0F5A80);
  OUTLINED_FUNCTION_9();
  v89 = v30;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_34_0();
  v91 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6390, &qword_1DD0F5A88);
  OUTLINED_FUNCTION_9();
  v86 = v35;
  v87 = v34;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v80 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6398, &qword_1DD0F5A90);
  OUTLINED_FUNCTION_9();
  v85 = v41;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v80 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA63A0, &unk_1DD0F5A98);
  OUTLINED_FUNCTION_9();
  v90 = v47;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v80 - v50;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1DCDCBDDC();
  v52 = v93;
  sub_1DD0DF23C();
  if (v52)
  {
    goto LABEL_10;
  }

  v82 = v40;
  v83 = v45;
  v84 = v39;
  v54 = v91;
  v53 = v92;
  v93 = v28;
  v55 = sub_1DD0DEF5C();
  sub_1DCB547F8(v55, 0);
  if (v58 == v59 >> 1)
  {
    goto LABEL_9;
  }

  v81 = 0;
  if (v58 < (v59 >> 1))
  {
    LODWORD(v60) = *(v57 + v58);
    sub_1DCB54800(v58 + 1, v59 >> 1, v56, v57, v58, v59);
    v62 = v61;
    v64 = v63;
    swift_unknownObjectRelease();
    v65 = v62 == v64 >> 1;
    v66 = v89;
    if (v65)
    {
      if (v60)
      {
        if (v60 == 1)
        {
          a13 = 1;
          sub_1DCDCBE84();
          v67 = v84;
          OUTLINED_FUNCTION_12_40(&type metadata for FlowLoopControl.BreakCodingKeys, &a13);
          v68 = v88;
          v69 = v46;
          v70 = v90;
          swift_unknownObjectRelease();
          (*(v86 + 8))(v67, v87);
          (*(v70 + 8))(v51, v69);
        }

        else
        {
          LODWORD(v87) = v60;
          a14 = 2;
          sub_1DCDCBE30();
          v77 = v81;
          sub_1DD0DEEBC();
          v68 = v88;
          v60 = v46;
          v78 = v90;
          if (v77)
          {
            (*(v90 + 8))(v51, v60);
            swift_unknownObjectRelease();
            v28 = v93;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v66 + 8))(v54, v53);
          (*(v78 + 8))(v51, v60);
          LOBYTE(v60) = v87;
        }
      }

      else
      {
        a12 = 0;
        sub_1DCDCBED8();
        v76 = v83;
        OUTLINED_FUNCTION_12_40(&type metadata for FlowLoopControl.FallthroughCodingKeys, &a12);
        swift_unknownObjectRelease();
        (*(v85 + 8))(v76, v82);
        OUTLINED_FUNCTION_6_49();
        v79(v51, v46);
        v68 = v88;
      }

      *v68 = v60;
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      goto LABEL_11;
    }

LABEL_9:
    v71 = sub_1DD0DECAC();
    swift_allocError();
    v73 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640);
    *v73 = &type metadata for FlowLoopControl;
    v74 = sub_1DD0DEECC();
    OUTLINED_FUNCTION_89_0(v74);
    (*(*(v71 - 8) + 104))(v73, *MEMORY[0x1E69E6AF8], v71);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_6_49();
    v75(v51, v46);
    v28 = v93;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
LABEL_11:
    OUTLINED_FUNCTION_19_19();
    return;
  }

  __break(1u);
}

void sub_1DCDCC5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDCC65C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(a1 + 16) == 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = v2;
  return v1;
}

void sub_1DCDCC67C(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  if (*(v1 + 32) == 1)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6460, &unk_1DD0F5F90);
    a1[3] = v4;
    a1[4] = &protocol witness table for Conclude<A>;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    v6 = v4[7];
    *(boxed_opaque_existential_1Tm + v6) = v3;
    v7 = v4[8];
    sub_1DCBD0C2C(v12, boxed_opaque_existential_1Tm + v7);
    *(boxed_opaque_existential_1Tm + v4[9]) = 0;
    boxed_opaque_existential_1Tm[3] = &type metadata for FlowLoopControl;
    *boxed_opaque_existential_1Tm = *(boxed_opaque_existential_1Tm + v6);
    sub_1DCBD0C9C(v12);
    sub_1DCBD0C2C(boxed_opaque_existential_1Tm + v7, (boxed_opaque_existential_1Tm + 4));
    *(boxed_opaque_existential_1Tm + 72) = 0;
    type metadata accessor for FlowActionType(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v8 = *(v1 + 16);
      if (v3 < *(v8 + 16))
      {
        sub_1DCB17CA0(v8 + 40 * v3 + 32, &v10);
        __swift_project_boxed_opaque_existential_1(&v10, v11);
        v9 = swift_allocObject();
        *(v9 + 16) = v1;
        *(v9 + 24) = v3;
        sub_1DD0DCF8C();
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DCDCC86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DCB0DF6C(a1, v12);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = v11;
    if (v11 == 1)
    {
      v8 = 1;
LABEL_10:
      *(a2 + 24) = v8;
      *(a2 + 32) = v7;
      return result;
    }
  }

  sub_1DCB0DF6C(a1, v12);
  result = swift_dynamicCast();
  if (result && v11 == 2)
  {
    v7 = 1;
    v8 = 2;
    goto LABEL_10;
  }

  v8 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = *(*(a2 + 16) + 16);
    v10 = v8 < v9;
    v7 = v8 >= v9;
    if (!v10)
    {
      v8 = 0;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCDCC954(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79646F426E7572 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701736292 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DCDCCA1C(char a1)
{
  if (a1)
  {
    return 1701736292;
  }

  else
  {
    return 0x79646F426E7572;
  }
}

void sub_1DCDCCA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_20_3();
  v57 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6440, &qword_1DD0F5F78);
  OUTLINED_FUNCTION_9();
  v54 = v30;
  v55 = v29;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v31, v32);
  OUTLINED_FUNCTION_34_0();
  v53 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6448, &qword_1DD0F5F80);
  OUTLINED_FUNCTION_9();
  v51 = v35;
  v52 = v34;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v50 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6450, &qword_1DD0F5F88);
  OUTLINED_FUNCTION_9();
  v42 = v41;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v43, v44);
  OUTLINED_FUNCTION_15_3();
  v56 = *v24;
  v45 = *(v24 + 8);
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1DCDCD9EC();
  sub_1DD0DF24C();
  if (v45 == 1)
  {
    sub_1DCDCDA40();
    v46 = v53;
    sub_1DD0DEF7C();
    sub_1DCDCDB3C();
    v47 = v55;
    sub_1DD0DEFFC();
    OUTLINED_FUNCTION_6_49();
    v49 = v46;
  }

  else
  {
    sub_1DCDCDAE8();
    sub_1DD0DEF7C();
    v47 = v52;
    sub_1DD0DEFEC();
    v48 = *(v51 + 8);
    v49 = v39;
  }

  v48(v49, v47);
  (*(v42 + 8))(v26, v40);
  OUTLINED_FUNCTION_19_19();
}

void sub_1DCDCCD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, unsigned __int8 a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_20_3();
  a24 = v27;
  a25 = v28;
  v74 = v29;
  v75 = v25;
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6408, &qword_1DD0F5F60);
  OUTLINED_FUNCTION_9();
  v72[5] = v32;
  v72[6] = v33;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v34, v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6410, &qword_1DD0F5F68);
  OUTLINED_FUNCTION_9();
  v72[4] = v37;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v38, v39);
  OUTLINED_FUNCTION_15_3();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6418, &qword_1DD0F5F70);
  OUTLINED_FUNCTION_9();
  v73 = v41;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = v72 - v44;
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_1DCDCD9EC();
  v46 = v75;
  sub_1DD0DF23C();
  if (v46)
  {
    goto LABEL_9;
  }

  v72[2] = v36;
  v72[3] = v26;
  v75 = v31;
  v47 = v74;
  v48 = sub_1DD0DEF5C();
  sub_1DCB547F8(v48, 0);
  if (v51 == v52 >> 1)
  {
LABEL_7:
    v59 = sub_1DD0DECAC();
    swift_allocError();
    v61 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640);
    *v61 = &type metadata for LoopBodyFlow.State;
    v62 = sub_1DD0DEECC();
    OUTLINED_FUNCTION_89_0(v62);
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v73 + 8))(v45, v40);
    v31 = v75;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
LABEL_10:
    OUTLINED_FUNCTION_19_19();
    return;
  }

  v72[1] = 0;
  if (v51 < (v52 >> 1))
  {
    v53 = *(v50 + v51);
    sub_1DCB54800(v51 + 1, v52 >> 1, v49, v50, v51, v52);
    v55 = v54;
    v57 = v56;
    swift_unknownObjectRelease();
    if (v55 == v57 >> 1)
    {
      a10 = v53;
      if (v53)
      {
        a15 = 1;
        sub_1DCDCDA40();
        OUTLINED_FUNCTION_8_51(&type metadata for LoopBodyFlow.State.DoneCodingKeys, &a15);
        v58 = v47;
        sub_1DCDCDA94();
        sub_1DD0DEF4C();
        swift_unknownObjectRelease();
        v63 = OUTLINED_FUNCTION_5_63();
        v64(v63);
        v65 = OUTLINED_FUNCTION_2_66();
        v66(v65);
        v67 = a14;
      }

      else
      {
        a13 = 0;
        sub_1DCDCDAE8();
        OUTLINED_FUNCTION_8_51(&type metadata for LoopBodyFlow.State.RunBodyCodingKeys, &a13);
        v58 = v47;
        v67 = sub_1DD0DEF3C();
        swift_unknownObjectRelease();
        v68 = OUTLINED_FUNCTION_5_63();
        v69(v68);
        v70 = OUTLINED_FUNCTION_2_66();
        v71(v70);
      }

      *v58 = v67;
      *(v58 + 8) = a10;
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1DCDCD1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCDCC954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCDCD208(uint64_t a1)
{
  v2 = sub_1DCDCD9EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDCD244(uint64_t a1)
{
  v2 = sub_1DCDCD9EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCDCD280(uint64_t a1)
{
  v2 = sub_1DCDCDA40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDCD2BC(uint64_t a1)
{
  v2 = sub_1DCDCDA40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCDCD2F8(uint64_t a1)
{
  v2 = sub_1DCDCDAE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDCD334(uint64_t a1)
{
  v2 = sub_1DCDCDAE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCDCD3A0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DCDCD3FC@<X0>(char *a1@<X8>)
{
  result = (*(v1 + 32))();
  if (result)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t sub_1DCDCD43C()
{
  result = qword_1ECCA63A8;
  if (!qword_1ECCA63A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63A8);
  }

  return result;
}

unint64_t sub_1DCDCD4C4()
{
  result = qword_1ECCA63B0;
  if (!qword_1ECCA63B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA63B8, &qword_1DD0F5BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LoopBodyFlow.State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LoopBodyFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DCDCD5C8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DCDCD6D8()
{
  result = qword_1ECCA63C0;
  if (!qword_1ECCA63C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63C0);
  }

  return result;
}

unint64_t sub_1DCDCD730()
{
  result = qword_1ECCA63C8;
  if (!qword_1ECCA63C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63C8);
  }

  return result;
}

unint64_t sub_1DCDCD788()
{
  result = qword_1ECCA63D0;
  if (!qword_1ECCA63D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63D0);
  }

  return result;
}

unint64_t sub_1DCDCD7E0()
{
  result = qword_1ECCA63D8;
  if (!qword_1ECCA63D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63D8);
  }

  return result;
}

unint64_t sub_1DCDCD838()
{
  result = qword_1ECCA63E0;
  if (!qword_1ECCA63E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63E0);
  }

  return result;
}

unint64_t sub_1DCDCD890()
{
  result = qword_1ECCA63E8;
  if (!qword_1ECCA63E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63E8);
  }

  return result;
}

unint64_t sub_1DCDCD8E8()
{
  result = qword_1ECCA63F0;
  if (!qword_1ECCA63F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63F0);
  }

  return result;
}

unint64_t sub_1DCDCD940()
{
  result = qword_1ECCA63F8;
  if (!qword_1ECCA63F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63F8);
  }

  return result;
}

unint64_t sub_1DCDCD998()
{
  result = qword_1ECCA6400;
  if (!qword_1ECCA6400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6400);
  }

  return result;
}

unint64_t sub_1DCDCD9EC()
{
  result = qword_1ECCA6420;
  if (!qword_1ECCA6420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6420);
  }

  return result;
}

unint64_t sub_1DCDCDA40()
{
  result = qword_1ECCA6428;
  if (!qword_1ECCA6428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6428);
  }

  return result;
}

unint64_t sub_1DCDCDA94()
{
  result = qword_1ECCA6430;
  if (!qword_1ECCA6430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6430);
  }

  return result;
}

unint64_t sub_1DCDCDAE8()
{
  result = qword_1ECCA6438;
  if (!qword_1ECCA6438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6438);
  }

  return result;
}

unint64_t sub_1DCDCDB3C()
{
  result = qword_1ECCA6458;
  if (!qword_1ECCA6458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6458);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LoopBodyFlow.State.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DCDCDC84(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DCDCDD34()
{
  result = qword_1ECCA6468;
  if (!qword_1ECCA6468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6468);
  }

  return result;
}

unint64_t sub_1DCDCDD8C()
{
  result = qword_1ECCA6470;
  if (!qword_1ECCA6470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6470);
  }

  return result;
}

unint64_t sub_1DCDCDDE4()
{
  result = qword_1ECCA6478;
  if (!qword_1ECCA6478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6478);
  }

  return result;
}

unint64_t sub_1DCDCDE3C()
{
  result = qword_1ECCA6480;
  if (!qword_1ECCA6480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6480);
  }

  return result;
}

unint64_t sub_1DCDCDE94()
{
  result = qword_1ECCA6488;
  if (!qword_1ECCA6488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6488);
  }

  return result;
}

unint64_t sub_1DCDCDEEC()
{
  result = qword_1ECCA6490;
  if (!qword_1ECCA6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6490);
  }

  return result;
}

unint64_t sub_1DCDCDF44()
{
  result = qword_1ECCA6498;
  if (!qword_1ECCA6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6498);
  }

  return result;
}

unint64_t sub_1DCDCDF9C()
{
  result = qword_1ECCA64A0;
  if (!qword_1ECCA64A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA64A0);
  }

  return result;
}

unint64_t sub_1DCDCDFF4()
{
  result = qword_1ECCA64A8[0];
  if (!qword_1ECCA64A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCA64A8);
  }

  return result;
}

void ActingFlow.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TransformFlow(0, v14, v13, v14);
  (*(v8 + 16))(v12, v5, a3);
  swift_getAssociatedTypeWitness();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDCE220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TransformFlow.State(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1DCDCE2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a4;
  v25 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_storeEnumTagSinglePayload(v6 + *(v14 + 104), 1, 1, *(v14 + 80));
  v6[7] = a5;
  v6[8] = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v6 + 4);
  v16 = *(v11 + 16);
  v16(boxed_opaque_existential_1Tm, a1, a5);
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_1DD0DEC1C();

  strcpy(v26, "TransformFlow<");
  HIBYTE(v26[1]) = -18;
  v16(v13, a1, a5);
  v17 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v17);

  MEMORY[0x1E12A6780](62, 0xE100000000000000);
  v18 = v26[1];
  v6[2] = v26[0];
  v6[3] = v18;
  v19 = swift_allocObject();
  v20 = v24;
  v21 = v25;
  v19[2] = v24;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = v6;
  v19[6] = v21;
  v19[7] = a3;
  v26[3] = type metadata accessor for LifeCycleModifierFlow(0, v20, v22, v23);
  v26[4] = swift_getWitnessTable();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDCE568(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = *(*a2 + 80);
  v8 = type metadata accessor for TransformFlow.State(0, v7, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v15 - v11;
  a3(a1);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v7);
  v13 = *(*a2 + 104);
  swift_beginAccess();
  (*(v9 + 40))(a2 + v13, v12, v8);
  return swift_endAccess();
}

uint64_t sub_1DCDCE6B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v28 - v9;
  v13 = type metadata accessor for TransformFlow.State(0, v4, v11, v12);
  OUTLINED_FUNCTION_0_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v28 - v18;
  v20 = *(v3 + 104);
  swift_beginAccess();
  (*(v15 + 16))(v19, v1 + v20, v13);
  if (__swift_getEnumTagSinglePayload(v19, 1, v4) == 1)
  {
    swift_beginAccess();
    sub_1DCB17CA0((v1 + 4), v29);
    sub_1DCB17CA0(v29, v28);
    a1[3] = type metadata accessor for Delegate(0);
    a1[4] = &protocol witness table for Delegate;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    sub_1DCAFF9E8(v28, boxed_opaque_existential_1Tm);
    type metadata accessor for FlowActionType(0);
    swift_storeEnumTagMultiPayload();
    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    (*(v6 + 32))(v10, v19, v4);
    a1[3] = type metadata accessor for Conclude(0, v4, v23, v24);
    a1[4] = &protocol witness table for Conclude<A>;
    v25 = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for TransformFlow(0, v4, v26, v27);
    OUTLINED_FUNCTION_0_65();
    swift_getWitnessTable();
    ActingFlow.conclude(with:)(v10, v25);
    return (*(v6 + 8))(v10, v4);
  }
}

char *sub_1DCDCE948()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = *(*v0 + 104);
  v5 = type metadata accessor for TransformFlow.State(0, *(v1 + 80), v3, v4);
  (*(*(v5 - 8) + 8))(&v0[v2], v5);
  return v0;
}

uint64_t sub_1DCDCE9E4()
{
  sub_1DCDCE948();

  return swift_deallocClassInstance();
}

uint64_t *sub_1DCDCEA54(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  if (*(v6 + 80) > 7u || (*(v6 + 80) & 0x100000) != 0 || v7 > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v5))
  {

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
    return a1;
  }
}

uint64_t sub_1DCDCEB8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = __swift_getEnumTagSinglePayload(a1, 1, v3);
  if (!result)
  {
    v5 = *(*(v3 - 8) + 8);

    return v5(a1, v3);
  }

  return result;
}

void *sub_1DCDCEC08(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a2, 1, v5);
  v7 = *(v5 - 8);
  if (EnumTagSinglePayload)
  {
    if (*(v7 + 84))
    {
      v8 = *(v7 + 64);
    }

    else
    {
      v8 = *(v7 + 64) + 1;
    }

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
    return a1;
  }
}

void *sub_1DCDCECE0(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v5);
  v7 = __swift_getEnumTagSinglePayload(a2, 1, v5);
  v8 = *(v5 - 8);
  if (!EnumTagSinglePayload)
  {
    if (v7)
    {
      v11 = v8 + 8;
      (*(v8 + 8))(a1, v5);
      v9 = *(v11 + 76);
      v10 = *(v11 + 56);
      goto LABEL_6;
    }

    (*(v8 + 24))(a1, a2, v5);
    return a1;
  }

  if (!v7)
  {
    (*(v8 + 16))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
    return a1;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
LABEL_6:
  if (v9)
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 + 1;
  }

  return memcpy(a1, a2, v12);
}

void *sub_1DCDCEE20(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a2, 1, v5);
  v7 = *(v5 - 8);
  if (EnumTagSinglePayload)
  {
    if (*(v7 + 84))
    {
      v8 = *(v7 + 64);
    }

    else
    {
      v8 = *(v7 + 64) + 1;
    }

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
    return a1;
  }
}

void *sub_1DCDCEEF8(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v5);
  v7 = __swift_getEnumTagSinglePayload(a2, 1, v5);
  v8 = *(v5 - 8);
  if (!EnumTagSinglePayload)
  {
    if (v7)
    {
      v11 = v8 + 8;
      (*(v8 + 8))(a1, v5);
      v9 = *(v11 + 76);
      v10 = *(v11 + 56);
      goto LABEL_6;
    }

    (*(v8 + 40))(a1, a2, v5);
    return a1;
  }

  if (!v7)
  {
    (*(v8 + 32))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
    return a1;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
LABEL_6:
  if (v9)
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 + 1;
  }

  return memcpy(a1, a2, v12);
}

uint64_t sub_1DCDCF038(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1DCDCF1B0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

void ReactiveFlowPlan.map<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  (*(v17 + 16))(v15 - v14, v18);
  v21[0] = a1;
  v21[1] = a2;
  v22 = 0;
  v19 = type metadata accessor for MapModifier(0, a3, a4, a5);
  OUTLINED_FUNCTION_0_66();
  WitnessTable = swift_getWitnessTable();
  sub_1DCDDC1D8(v16, v21, a3, v19, WitnessTable, a6);
  sub_1DD0DCF8C();
}

{
  v7 = v6;
  OUTLINED_FUNCTION_0_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_16();
  v20 = v19 - v18;
  OUTLINED_FUNCTION_1_1();
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a1;
  v21[6] = a2;
  (*(v15 + 16))(v20, v7, a3);
  v24[0] = sub_1DCDCFB14;
  v24[1] = v21;
  v25 = 1;
  v22 = type metadata accessor for MapModifier(0, a3, a4, a5);
  OUTLINED_FUNCTION_0_66();
  WitnessTable = swift_getWitnessTable();
  sub_1DCDDC1D8(v20, v24, a3, v22, WitnessTable, a6);
  sub_1DD0DCF8C();
}

void ReactiveFlowPlan.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_1();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a1;
  v10[6] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDCF604(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1DCB193FC;

  return v9(a1, a2);
}

uint64_t sub_1DCDCF708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 40);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB193FC;

  return sub_1DCDCF604(a1, a2, a3, v8);
}

void sub_1DCDCF944(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v24 = a2;
  v25 = a3;
  v26 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v15 = &v24 - v14;
  v18 = type metadata accessor for Perform(0, a5, v16, v17);
  (*(v12 + 16))(v15, a1, AssociatedTypeWitness);
  v19 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a4;
  *(v20 + 3) = a5;
  v21 = v24;
  *(v20 + 4) = a6;
  *(v20 + 5) = v21;
  *(v20 + 6) = v25;
  (*(v12 + 32))(&v20[v19], v15, AssociatedTypeWitness);
  v27 = 0;
  v22 = Perform.__allocating_init(interruptionPolicy:operateWithSideEffect:operation:)();
  v23 = v26;
  v26[3] = v18;
  v23[4] = swift_getWitnessTable();
  *v23 = v22;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDCFBBC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v11 = (a3 + *a3);
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1DCB4A548;

  return v11(a1, a5, a2);
}

void sub_1DCDCFCD0()
{
  OUTLINED_FUNCTION_4_69();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_16();
  (*(v6 + 16))(v5 - v4);
  sub_1DCDCFDB4();
  sub_1DCB9E288(v1, v0);
}

uint64_t sub_1DCDCFDB4()
{
  OUTLINED_FUNCTION_4_69();
  (*(*(v7 - 8) + 32))(v6);
  result = type metadata accessor for MappingPlan(0, v2, v1, v0);
  v9 = v6 + *(result + 44);
  *v9 = v5;
  *(v9 + 8) = v4;
  *(v9 + 16) = v3 & 1;
  return result;
}

uint64_t sub_1DCDCFE74(uint64_t a1, uint64_t a2)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1DCB4A548;

  return sub_1DCDCFBBC(a1, a2, v8, v9, v2 + v7);
}

uint64_t sub_1DCDCFFA8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1DCDD0040(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  if ((*(v4 + 80) & 0x1000F8) == 0 && ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 17 <= 0x18)
  {
    (*(v4 + 16))(a1, a2);
    sub_1DCB9E288(*((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8), *(((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));
  }

  *a1 = *a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDD0158(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = ((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = v4[1];

  return sub_1DCB9E2A0(v5, v6);
}

void sub_1DCDD01CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8) + 16;
  (*v4)();
  v5 = ((*(v4 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  sub_1DCB9E288(*v5, v5[1]);
}

void sub_1DCDD0268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8) + 24;
  (*v4)();
  v5 = ((*(v4 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  sub_1DCB9E288(*v5, v5[1]);
}

uint64_t sub_1DCDD0310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  return a1;
}

uint64_t sub_1DCDD0394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  v10 = *v7;
  v11 = *(v7 + 8);
  *v7 = *v8;
  *(v7 + 16) = v9;
  sub_1DCB9E2A0(v10, v11);
  return a1;
}

uint64_t sub_1DCDD0424(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0xFE)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      if (v16 > 1)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
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

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DCDD0570(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
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
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0xFE)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0xFE)
            {
              *(v17 + 16) = 0;
              *v17 = (a2 - 255);
              *(v17 + 8) = 0;
            }

            else
            {
              *(v17 + 16) = -a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCDD0764(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  a4(*a2, v6, v7);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  return a1;
}

uint64_t *sub_1DCDD07B4(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  a4(*a2, v8, v9);
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 16);
  *a1 = v7;
  a1[1] = v8;
  *(a1 + 16) = v9;
  a5(v10, v11, v12);
  return a1;
}

uint64_t *sub_1DCDD0820(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  a4(v6, v7, v8);
  return a1;
}

void sub_1DCDD088C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _FlowPlanEvent(255, a3, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_9_46();
  sub_1DD0DF21C();
  OUTLINED_FUNCTION_9_46();
  sub_1DD0DDB2C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DD0DDABC();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, AssociatedTypeWitness, v8, v9);
  sub_1DD0DDAEC();
  swift_getWitnessTable();
  sub_1DD0DDA9C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DD0DDA7C();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_34_0();
  swift_getWitnessTable();
  sub_1DD0DDA5C();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_34_0();
  sub_1DD0DDACC();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_34_0();
  swift_getWitnessTable();
  sub_1DD0DDA5C();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_34_0();
  (*(a4 + 48))(a1, a2, a4);
  v18 = a3;
  v19 = a1 + *(type metadata accessor for MappingPlan(0, a2, a3, a4) + 44);
  v21 = *v19;
  v20 = *(v19 + 8);
  if (*(v19 + 16))
  {
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_1_1();
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = v18;
  v22[4] = a4;
  v22[5] = v21;
  v22[6] = v20;
  sub_1DCB9E288(v21, v20);
}

uint64_t sub_1DCDD0F38@<X0>(void (*a1)(char *)@<X1>, uint64_t a2@<X2>, uint64_t a4@<X4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for _FlowPlanEvent(0, AssociatedTypeWitness, v11, v12);
  return sub_1DCD495EC(a1, a2, v13, a4, a6);
}

unint64_t sub_1DCDD0FF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter(a1, WitnessTable);
}

uint64_t sub_1DCDD1048(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

char *sub_1DCDD10C0(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCDD36C4(a1, type metadata accessor for RelationshipLabel);
    type metadata accessor for RelationshipLabel(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);

    if (EnumCaseMultiPayload != 1)
    {
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v8 = sub_1DD0DB0FC();
      (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
    }

    swift_storeEnumTagMultiPayload();
  }

  v9 = *(a3 + 20);
  v10 = &a1[v9];
  v11 = &a2[v9];
  *v10 = *v11;
  *(v10 + 1) = *(v11 + 1);

  return a1;
}

_OWORD *sub_1DCDD11F0(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCDD36C4(a1, type metadata accessor for RelationshipLabel);
    v6 = type metadata accessor for RelationshipLabel(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v8 = sub_1DD0DB0FC();
      (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
      swift_storeEnumTagMultiPayload();
    }
  }

  v9 = *(a3 + 20);
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v13 = *v11;
  v12 = v11[1];
  *v10 = v13;
  v10[1] = v12;

  return a1;
}

uint64_t sub_1DCDD1380()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA20E8, &unk_1DD0E40F0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - v4;
  sub_1DD0DC72C();
  v6 = sub_1DD0DBD0C();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1DCB0E9D8(v5, &qword_1ECCA20E8, &unk_1DD0E40F0);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DCAFC000, v8, v9, "Unable to determine domain node from NLIntent", v10, 2u);
      OUTLINED_FUNCTION_80();
    }

    v11 = 0;
  }

  else
  {
    v12 = sub_1DD0DBCFC();
    v14 = v13;
    (*(*(v6 - 8) + 8))(v5, v6);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v15 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v15, qword_1EDE57E00);

    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1DCB10E9C(v12, v14, &v24);
      _os_log_impl(&dword_1DCAFC000, v16, v17, "MessageUnsetRelationshipFlowConfig testing %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v20 = (v1 + *(type metadata accessor for MessageUnsetRelationshipFlowConfig(0) + 20));
    if (*v20 == v12 && v20[1] == v14)
    {

      v11 = 1;
    }

    else
    {
      v11 = sub_1DD0DF0AC();
    }
  }

  return v11 & 1;
}

uint64_t sub_1DCDD1674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6750, &qword_1DD0F6550);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v46 - v6;
  type metadata accessor for SmsIntent(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SmsIntent.Contact(0);
  OUTLINED_FUNCTION_2();
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v46 - v19;
  sub_1DD0DC76C();
  OUTLINED_FUNCTION_2();
  (*(v21 + 16))(v11, a1);
  if (qword_1ECCA12F8 != -1)
  {
    OUTLINED_FUNCTION_8_52(&qword_1ECCA12F8);
  }

  OUTLINED_FUNCTION_5_65();
  sub_1DCDD373C(v22, v23, &unk_1DD0F67B8);
  OUTLINED_FUNCTION_4_70();
  sub_1DCDD373C(v24, v25, &unk_1DD0F6778);
  v26 = sub_1DD0DBCCC();
  OUTLINED_FUNCTION_1_77();
  sub_1DCDD36C4(v11, v27);
  sub_1DCC62338(v26, v7);

  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    result = sub_1DCB0E9D8(v7, &qword_1ECCA6750, &qword_1DD0F6550);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    *a2 = xmmword_1DD0E3FF0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    sub_1DCDD3784(v7, v20);
    sub_1DCDD37E8(v20, v17, type metadata accessor for SmsIntent.Contact);
    OUTLINED_FUNCTION_4_70();
    sub_1DCDD373C(v35, v36, &unk_1DD0F6750);
    OUTLINED_FUNCTION_11_43();
    v37 = sub_1DD0DBE8C();
    v48 = v38;
    v49 = v37;
    OUTLINED_FUNCTION_11_43();
    v39 = sub_1DD0DBE6C();
    v46 = v40;
    v47 = v39;
    OUTLINED_FUNCTION_11_43();
    v29 = sub_1DD0DBE4C();
    v30 = v41;
    OUTLINED_FUNCTION_11_43();
    v31 = sub_1DD0DBE5C();
    v32 = v42;
    OUTLINED_FUNCTION_11_43();
    v33 = sub_1DD0DBE7C();
    v34 = v43;
    sub_1DCDD36C4(v20, type metadata accessor for SmsIntent.Contact);
    result = sub_1DCDD36C4(v17, type metadata accessor for SmsIntent.Contact);
    v44 = v48;
    *a2 = v49;
    *(a2 + 8) = v44;
    v45 = v46;
    *(a2 + 16) = v47;
    *(a2 + 24) = v45;
  }

  *(a2 + 32) = v29;
  *(a2 + 40) = v30;
  *(a2 + 48) = v31;
  *(a2 + 56) = v32;
  *(a2 + 64) = v33;
  *(a2 + 72) = v34;
  return result;
}

uint64_t sub_1DCDD19E0(uint64_t a1)
{
  type metadata accessor for SmsIntent(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DC76C();
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(v5, a1);
  if (qword_1ECCA1308 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_65();
  sub_1DCDD373C(v7, v8, &unk_1DD0F67B8);
  sub_1DD0DBCEC();
  v9 = v18;
  if (v18 == 4)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v10 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v10, qword_1EDE57E00);
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DCAFC000, v11, v12, "Could not parse confirmation node for smsIntent", v13, 2u);
      OUTLINED_FUNCTION_80();
    }

    OUTLINED_FUNCTION_1_77();
    sub_1DCDD36C4(v5, v14);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_1_77();
    sub_1DCDD36C4(v5, v16);
    return 0x10001u >> (8 * v9);
  }
}

uint64_t sub_1DCDD1BD0@<X0>(uint64_t a1@<X8>)
{
  NLContextUpdate.init()(a1);
  v2 = sub_1DCDD1D38(0);
  v4 = v3;

  *(a1 + 184) = v2;
  *(a1 + 192) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  v5 = swift_allocObject();
  v6 = OUTLINED_FUNCTION_13_42(v5, xmmword_1DD0E07C0);
  v14 = OUTLINED_FUNCTION_10_45(v6, v7, v8, v9, v10, v11, v12, v13, v27, v28);
  OUTLINED_FUNCTION_3_74(v14, v15, v16, v17, v18, v19, MEMORY[0x1E69E6158], v20, MEMORY[0x1E69E6158], v14, v14, v14, v29, v30, v31);
  sub_1DD0DEA3C();

  sub_1DCDD1D38(4);
  OUTLINED_FUNCTION_9_47();
  v21 = sub_1DD0DE06C();
  MEMORY[0x1E12A6780](v21);

  v5[2].n128_u64[0] = v32;
  v5[2].n128_u64[1] = v33;

  *(a1 + 168) = v5;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1DD0E4010;
  *(v22 + 32) = sub_1DCDD1D38(2);
  *(v22 + 40) = v23;
  *(v22 + 48) = sub_1DCDD1D38(3);
  *(v22 + 56) = v24;
  *(v22 + 64) = sub_1DCDD1D38(7);
  *(v22 + 72) = v25;

  *(a1 + 160) = v22;
  *(a1 + 176) = 1;
  return result;
}

unint64_t sub_1DCDD1D38(uint64_t a1)
{
  v1 = a1;
  sub_1DD0DEC1C();

  sub_1DCDD27B4(v1);

  sub_1DCB598EC(1);
  v2 = sub_1DD0DE99C();
  v4 = v3;

  sub_1DCB594B0(1uLL);
  sub_1DCB59970();

  sub_1DD0DE11C();

  MEMORY[0x1E12A6780](v2, v4);

  return 0xD000000000000012;
}

uint64_t sub_1DCDD1E5C@<X0>(uint64_t a2@<X8>)
{
  NLContextUpdate.init()(a2);
  v3 = sub_1DCDD1D38(0);
  v5 = v4;

  *(a2 + 184) = v3;
  *(a2 + 192) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_13_42(v6, xmmword_1DD0E07C0);
  v15 = OUTLINED_FUNCTION_10_45(v7, v8, v9, v10, v11, v12, v13, v14, v28, v29);
  OUTLINED_FUNCTION_3_74(v15, v16, v17, v18, v19, v20, MEMORY[0x1E69E6158], v21, MEMORY[0x1E69E6158], v15, v15, v15, v30, v31, v32);
  sub_1DD0DEA3C();

  sub_1DCDD1D38(4);
  OUTLINED_FUNCTION_9_47();
  v22 = sub_1DD0DE06C();
  MEMORY[0x1E12A6780](v22);

  v6[2].n128_u64[0] = v33;
  v6[2].n128_u64[1] = v34;

  *(a2 + 168) = v6;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DD0E32B0;
  *(v23 + 32) = sub_1DCDD1D38(2);
  *(v23 + 40) = v24;
  *(v23 + 48) = sub_1DCDD1D38(3);
  *(v23 + 56) = v25;

  *(a2 + 160) = v23;
  *(a2 + 176) = 1;
  v26 = sub_1DCDD1FE4();

  *(a2 + 104) = v26;
  return result;
}

uint64_t sub_1DCDD1FE4()
{
  __src[0] = &unk_1F584EF70;
  __src[1] = 1953718636;
  __src[2] = 0xE400000000000000;
  strcpy(&__src[3], "secondToLast");
  BYTE5(__src[4]) = 0;
  HIWORD(__src[4]) = -5120;
  __src[5] = 0x4C6F546472696874;
  __src[6] = 0xEB00000000747361;
  __src[7] = 0xD000000000000013;
  __src[8] = 0x80000001DD11DC00;
  v52 = MEMORY[0x1E69E7CC0];
  v53 = MEMORY[0x1E69E7CC0];
  if (qword_1EDE4F900 != -1)
  {
LABEL_41:
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DCAFC000, v1, v2, "Building display hints for regular contact disambiguation", v3, 2u);
    OUTLINED_FUNCTION_80();
  }

  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1DCC34890();
  v7 = v6;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v45 = *(v6 + 16);
  v10 = 32;
  while (v45 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v11 = v7;
    v12 = *(v7 + v10);
    v13 = *(v12 + 16);
    v14 = *(v9 + 16);
    v15 = __OFADD__(v14, v13);

    if (v15)
    {
      goto LABEL_36;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v14 + v13 > *(v9 + 24) >> 1)
    {
      sub_1DCE18ECC();
      v9 = v16;
    }

    if (*(v12 + 16))
    {
      if ((*(v9 + 24) >> 1) - *(v9 + 16) < v13)
      {
        goto LABEL_39;
      }

      swift_arrayInitWithCopy();

      v7 = v11;
      if (v13)
      {
        v17 = *(v9 + 16);
        v18 = __OFADD__(v17, v13);
        v19 = v17 + v13;
        if (v18)
        {
          goto LABEL_40;
        }

        *(v9 + 16) = v19;
      }
    }

    else
    {

      v7 = v11;
      if (v13)
      {
        goto LABEL_37;
      }
    }

    v10 += 56;
    ++v8;
  }

  sub_1DCBB9680(v9);
  v20 = *(v7 + 16);
  if (v20)
  {
    v51[0] = MEMORY[0x1E69E7CC0];
    sub_1DCE06C08();
    v21 = v51[0];
    v22 = (v7 + 80);
    do
    {
      v23 = *(v22 - 4);
      v46 = *(v22 - 5);
      v24 = *(v22 - 2);
      v25 = *v22;
      v43 = *(v22 - 1);
      v44 = *(v22 - 3);
      v51[0] = v21;
      v27 = *(v21 + 16);
      v26 = *(v21 + 24);

      if (v27 >= v26 >> 1)
      {
        sub_1DCE06C08();
        v21 = v51[0];
      }

      v22 += 7;
      *(v21 + 16) = v27 + 1;
      v28 = (v21 + 48 * v27);
      v28[4] = v46;
      v28[5] = v23;
      v28[6] = v44;
      v28[7] = v24;
      v28[8] = v43;
      v28[9] = v25;
      --v20;
    }

    while (v20);
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  sub_1DCBB9718(v21);
  memcpy(v51, __src, 0x48uLL);
  v29 = OrdinalDisplayHintsBuilder.build(for:)(v52);
  sub_1DCC08984(__src);
  sub_1DCBB9680(v29);
  v30 = v53;
  v31 = *(v53 + 16);

  v32 = 0;
  v33 = 32;
  v47 = v30;
  while (v31 != v32)
  {
    if (v32 >= *(v30 + 16))
    {
      goto LABEL_38;
    }

    memcpy(v51, (v30 + v33), 0x60uLL);
    sub_1DCC089D8(v51, v50);
    sub_1DCC089D8(v51, v50);
    v34 = sub_1DD0DD8EC();
    v35 = sub_1DD0DE6DC();
    sub_1DCC08A34(v51);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v31;
      v38 = swift_slowAlloc();
      v49 = v38;
      *v36 = 136315138;
      memcpy(v50, v51, sizeof(v50));
      sub_1DCC089D8(v51, &v48);
      v39 = sub_1DD0DE02C();
      v41 = sub_1DCB10E9C(v39, v40, &v49);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1DCAFC000, v34, v35, "DisplayHint: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      v31 = v37;
      v30 = v47;
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    sub_1DCC08A34(v51);
    v33 += 96;
    ++v32;
  }

  return v30;
}

uint64_t sub_1DCDD2568@<X0>(uint64_t a1@<X8>)
{
  NLContextUpdate.init()(a1);
  v2 = sub_1DCDD1D38(0);
  v4 = v3;

  *(a1 + 184) = v2;
  *(a1 + 192) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_13_42(v5, xmmword_1DD0E32B0);
  v6 = sub_1DCB1C4D8();
  OUTLINED_FUNCTION_3_74(v6, v7, v8, v9, v10, v11, v12, v13, MEMORY[0x1E69E6158], v6, v6, v6, 95, 0xE100000000000000, 32);
  sub_1DD0DEA3C();

  v21 = sub_1DCDD1D38(4);
  v23 = v14;
  MEMORY[0x1E12A6780](0x2E65756C61562ELL, 0xE700000000000000);
  v15 = sub_1DD0DE06C();
  MEMORY[0x1E12A6780](v15);

  v5[2].n128_u64[0] = v21;
  v5[2].n128_u64[1] = v23;
  sub_1DD0DE06C();
  sub_1DD0DEA3C();

  v22 = sub_1DCDD1D38(4);
  v24 = v16;
  MEMORY[0x1E12A6780](0x2E65756C61562ELL, 0xE700000000000000);
  v17 = sub_1DD0DE06C();
  MEMORY[0x1E12A6780](v17);

  v5[3].n128_u64[0] = v22;
  v5[3].n128_u64[1] = v24;

  *(a1 + 168) = v5;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DD0E07C0;
  *(v18 + 32) = sub_1DCDD1D38(4);
  *(v18 + 40) = v19;

  *(a1 + 160) = v18;
  *(a1 + 176) = 1;
  return result;
}

unint64_t sub_1DCDD27B4(char a1)
{
  result = 7564659;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x61746E6F43736D73;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x69666E6F43736D73;
      break;
    case 5:
      result = 0x6D754E656E6F6870;
      break;
    case 6:
      result = 0x6464416C69616D65;
      break;
    case 7:
      result = 0x54746361746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCDD28B4(uint64_t a1, void *a2)
{
  v4 = sub_1DD003DB0(a2);
  v6 = v5;
  swift_bridgeObjectRelease_n();
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = sub_1DCDD1D38(1);
  v11 = v10;

  v12 = sub_1DCCC331C(a2);
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v12;
  v15 = v13;
  v16 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v16 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

LABEL_15:
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v50 = v7;

  swift_bridgeObjectRelease_n();
  v47 = sub_1DD002414(7);
  v18 = v17;

  sub_1DCB22A50(0, 1, 0, 0, 0, 0);
  sub_1DCB22A50(0, 1, 0, 0, 0, 0);
  sub_1DCE18ECC();
  v20 = v19;
  v21 = *(v19 + 16);
  if (v21 >= *(v19 + 24) >> 1)
  {
    sub_1DCE18ECC();
    v20 = v42;
  }

  *(v20 + 16) = v21 + 1;
  v22 = v20 + 96 * v21;
  v7 = v50;
  *(v22 + 32) = v50;
  *(v22 + 40) = v8;
  *(v22 + 48) = xmmword_1DD0F64E0;
  *(v22 + 64) = v9;
  *(v22 + 72) = v11;
  *(v22 + 80) = v14;
  *(v22 + 88) = v15;
  *(v22 + 96) = xmmword_1DD0E4020;
  *(v22 + 112) = v47;
  *(v22 + 120) = v18;
LABEL_16:
  v23 = sub_1DCC6E534(a2);
  if (v24)
  {
    v25 = v23;
    v26 = v24;
    v27 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v27 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {

      swift_bridgeObjectRelease_n();
      v51 = sub_1DD002414(8);
      v48 = v28;

      sub_1DCB22A50(0, 1, 0, 0, 0, 0);
      sub_1DCB22A50(0, 1, 0, 0, 0, 0);
      v29 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DCE18ECC();
        v20 = v43;
      }

      v30 = *(v20 + 16);
      if (v30 >= *(v20 + 24) >> 1)
      {
        sub_1DCE18ECC();
        v20 = v44;
      }

      *(v20 + 16) = v30 + 1;
      v31 = v20 + 96 * v30;
      v7 = v29;
      *(v31 + 32) = v29;
      *(v31 + 40) = v8;
      *(v31 + 48) = xmmword_1DD0F64E0;
      *(v31 + 64) = v9;
      *(v31 + 72) = v11;
      *(v31 + 80) = v25;
      *(v31 + 88) = v26;
      *(v31 + 96) = xmmword_1DD0E4030;
      *(v31 + 112) = v51;
      *(v31 + 120) = v48;
    }

    else
    {
    }
  }

  v32 = sub_1DCC6E540(a2);
  if (v33)
  {
    v34 = v32;
    v35 = v33;
    v36 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v36 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (v36)
    {

      swift_bridgeObjectRelease_n();
      v49 = sub_1DD002414(9);
      v38 = v37;

      sub_1DCB22A50(0, 1, 0, 0, 0, 0);
      sub_1DCB22A50(0, 1, 0, 0, 0, 0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DCE18ECC();
        v20 = v45;
      }

      v39 = *(v20 + 16);
      if (v39 >= *(v20 + 24) >> 1)
      {
        sub_1DCE18ECC();
        v20 = v46;
      }

      *(v20 + 16) = v39 + 1;
      v40 = v20 + 96 * v39;
      *(v40 + 32) = v7;
      *(v40 + 40) = v8;
      *(v40 + 48) = xmmword_1DD0F64E0;
      *(v40 + 64) = v9;
      *(v40 + 72) = v11;
      *(v40 + 80) = v34;
      *(v40 + 88) = v35;
      *(v40 + 96) = xmmword_1DD0E4040;
      *(v40 + 112) = v49;
      *(v40 + 120) = v38;
    }

    else
    {
    }
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = xmmword_1DD0F64E0;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  return v20;
}

void sub_1DCDD2E04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA20D8, &unk_1DD10A050);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD0E32B0;
  if (qword_1ECCA12F8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECCD2658;
  v2 = sub_1DD0DB95C();
  v3 = MEMORY[0x1E69D1510];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  sub_1DD0DCF8C();
}

void sub_1DCDD2F7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA20D8, &unk_1DD10A050);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD0E07C0;
  if (qword_1ECCA1300 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECCD2660;
  v2 = sub_1DD0DB9AC();
  v3 = MEMORY[0x1E69D1510];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  sub_1DD0DB95C();
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDD3070()
{
  sub_1DD0DB9AC();
  swift_allocObject();
  result = sub_1DD0DB99C();
  qword_1ECCD2660 = result;
  return result;
}

uint64_t sub_1DCDD30C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6748, &qword_1DD0F6548);
  swift_allocObject();
  result = sub_1DD0DB9BC();
  qword_1ECCD2668 = result;
  return result;
}

void sub_1DCDD3134()
{
  if (qword_1ECCA12F0 != -1)
  {
    swift_once();
  }

  sub_1DD0DCF8C();
}

void sub_1DCDD3190(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DD0DBD0C();
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(a2, a1);
  v5 = *(type metadata accessor for SmsIntent.Contact(0) + 20);
  if (qword_1ECCA12F8 != -1)
  {
    OUTLINED_FUNCTION_8_52(&qword_1ECCA12F8);
  }

  *(a2 + v5) = qword_1ECCD2658;

  sub_1DD0DCF8C();
}

uint64_t sub_1DCDD3234(uint64_t a1)
{
  v2 = sub_1DCDD373C(&qword_1ECCA6758, type metadata accessor for SmsIntent.Contact, &unk_1DD0F6778);

  return MEMORY[0x1EEE3E098](a1, v2);
}

uint64_t sub_1DCDD32B0(uint64_t a1)
{
  v2 = sub_1DCDD373C(&qword_1ECCA6758, type metadata accessor for SmsIntent.Contact, &unk_1DD0F6778);

  return MEMORY[0x1EEE3E090](a1, v2);
}

unint64_t sub_1DCDD331C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD0DEE9C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DCDD3368(char a1)
{
  result = 7562617;
  switch(a1)
  {
    case 1:
      result = 28526;
      break;
    case 2:
      result = 0x206D7269666E6F63;
      break;
    case 3:
      result = 0x63207463656A6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCDD3408(uint64_t a1)
{
  v2 = sub_1DCDD373C(&qword_1ECCA67C0, type metadata accessor for SmsIntent, &unk_1DD0F65A4);

  return MEMORY[0x1EEE3D728](a1, v2);
}

uint64_t sub_1DCDD3484(uint64_t a1)
{
  v2 = sub_1DCDD373C(&qword_1ECCA67C0, type metadata accessor for SmsIntent, &unk_1DD0F65A4);

  return MEMORY[0x1EEE3D718](a1, v2);
}

uint64_t sub_1DCDD34F0(uint64_t a1)
{
  v2 = sub_1DCDD373C(&qword_1ECCA67C0, type metadata accessor for SmsIntent, &unk_1DD0F65A4);

  return MEMORY[0x1EEE3D720](a1, v2);
}

unint64_t sub_1DCDD3580@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DCDD331C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DCDD35B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DCDD3368(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DCDD35EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DCDD3BE0();
  v5 = sub_1DCDD3C34();
  v6 = sub_1DCDD3C88();

  return MEMORY[0x1EEE3E530](a1, a2, v4, v5, v6);
}

uint64_t sub_1DCDD3660@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DCDD28B4((a2 + 1), *a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DCDD36C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCDD373C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DCDD3784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmsIntent.Contact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCDD37E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SmsConfirmation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DCDD3A08()
{
  result = qword_1ECCA6790;
  if (!qword_1ECCA6790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6790);
  }

  return result;
}

unint64_t sub_1DCDD3AA4()
{
  result = qword_1ECCA67A8;
  if (!qword_1ECCA67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA67A8);
  }

  return result;
}

unint64_t sub_1DCDD3AFC()
{
  result = qword_1ECCA67B0;
  if (!qword_1ECCA67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA67B0);
  }

  return result;
}

unint64_t sub_1DCDD3BE0()
{
  result = qword_1ECCA67C8;
  if (!qword_1ECCA67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA67C8);
  }

  return result;
}

unint64_t sub_1DCDD3C34()
{
  result = qword_1ECCA67D0;
  if (!qword_1ECCA67D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA67D0);
  }

  return result;
}

unint64_t sub_1DCDD3C88()
{
  result = qword_1ECCA67D8;
  if (!qword_1ECCA67D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA67D8);
  }

  return result;
}

void sub_1DCDD3D48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67E8, &qword_1DD0F67F0);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_67(&qword_1ECCA67F0);
  sub_1DD0DCEDC();
}

void sub_1DCDD3E0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67E8, &qword_1DD0F67F0);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_67(&qword_1ECCA67F0);
  sub_1DD0DCF8C();
}

void sub_1DCDD3EB0()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_11_5(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67E8, &qword_1DD0F67F0);
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  OUTLINED_FUNCTION_0_67(&qword_1ECCA67F0);
  OUTLINED_FUNCTION_4_71();
  sub_1DD0DCECC();
}

void sub_1DCDD3F6C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67F8, &qword_1DD0F6840);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_4_1();
  swift_beginAccess();
  v3 = OUTLINED_FUNCTION_3_8();
  v4(v3);
  sub_1DD0DCF8C();
}

void sub_1DCDD4068()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *OUTLINED_FUNCTION_11_5(v2) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67F8, &qword_1DD0F6840);
  OUTLINED_FUNCTION_10_46(v3);
  v1[2] = v4;
  v6 = *(v5 + 64);
  v1[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v1[4] = v7;
  sub_1DCC627B8(v7, v8);
}

void sub_1DCDD41B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6800, &qword_1DD0F6848);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_67(&qword_1ECCA67F0);
  sub_1DD0DCEDC();
}

void sub_1DCDD425C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6800, &qword_1DD0F6848);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DCDD4314(a1, v2);
  OUTLINED_FUNCTION_0_67(&qword_1ECCA67F0);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDD4314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA35F8, &qword_1DD0E97A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCDD4384(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA35F8, &qword_1DD0E97A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DCDD43EC()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_11_5(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6800, &qword_1DD0F6848);
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  OUTLINED_FUNCTION_0_67(&qword_1ECCA67F0);
  OUTLINED_FUNCTION_4_71();
  sub_1DD0DCECC();
}

void sub_1DCDD44AC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1DCDD4514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_4_1();
  (*(v12 + 16))(v7, a1);
  return a7(v7);
}

void sub_1DCDD45D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6808, &qword_1DD0F68A0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_4_1();
  swift_beginAccess();
  v3 = OUTLINED_FUNCTION_3_8();
  v4(v3);
  sub_1DD0DCF8C();
}

void sub_1DCDD46D0()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *OUTLINED_FUNCTION_11_5(v2) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6808, &qword_1DD0F68A0);
  OUTLINED_FUNCTION_10_46(v3);
  v1[2] = v4;
  v6 = *(v5 + 64);
  v1[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v1[4] = v7;
  sub_1DCC62954(v7, v8);
}

void sub_1DCDD47B8(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  if (a2)
  {
    v7 = v4[1];
    v8 = v4[2];
    (*(v8 + 16))(*(*a1 + 24), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 32));
  }

  free(v6);
  free(v5);

  free(v4);
}

void MetricsEnvironmentProvider.__allocating_init(taskName:eventSender:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_5_66();
  swift_allocObject();
  MetricsEnvironmentProvider.init(taskName:eventSender:)(a1, a2, a3);
}

void MetricsEnvironmentProvider.init(taskName:eventSender:)(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 16) = 0;
  v5 = 0;
  v6 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67E8, &qword_1DD0F67F0);
  OUTLINED_FUNCTION_73_1(v4);
  OUTLINED_FUNCTION_9_48();
  sub_1DD0DCE9C();
}

void MetricsEnvironmentProvider.__allocating_init(storage:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_66();
  swift_allocObject();
  MetricsEnvironmentProvider.init(storage:)(a1);
}

void MetricsEnvironmentProvider.init(storage:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = 0;
  v4 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67E8, &qword_1DD0F67F0);
  OUTLINED_FUNCTION_73_1(v2);
  OUTLINED_FUNCTION_9_48();
  sub_1DD0DCE9C();
}

void *MetricsEnvironmentProvider.deinit()
{

  return v0;
}

uint64_t MetricsEnvironmentProvider.__deallocating_deinit()
{
  MetricsEnvironmentProvider.deinit();
  OUTLINED_FUNCTION_5_66();

  return swift_deallocClassInstance();
}

void sub_1DCDD4BAC()
{
  type metadata accessor for MetricsEnvironmentProvider();

    ;
  }
}

void sub_1DCDD4BF8()
{
  type metadata accessor for MetricsEnvironmentProvider();

  sub_1DD0DCF8C();
}

uint64_t sub_1DCDD4C48@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MetricsEnvironmentProvider();
  result = sub_1DD0DDAFC();
  *a2 = result;
  return result;
}

void SiriEnvironment.metricsEnvironment.getter()
{
  type metadata accessor for MetricsEnvironmentProvider();
  OUTLINED_FUNCTION_1_78(&qword_1ECCA35F0);

  sub_1DD0DCA7C();
}

uint64_t sub_1DCDD4D04(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MetricsEnvironmentProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1DCDD4FA8()
{
  type metadata accessor for RefreshableMetricsState();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  qword_1EDE57D98 = v0;
  return result;
}

uint64_t sub_1DCDD4FE8()
{
  v0 = type metadata accessor for EnvironmentBackedMetricsState();
  result = swift_allocObject();
  qword_1ECCD2688 = v0;
  unk_1ECCD2690 = &off_1F58640E8;
  qword_1ECCD2670 = result;
  return result;
}

void static Metrics.current.getter()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "MetricsState has been deprecated. Please use values provided by SiriEnvironment's 'currentRequest' and 'flowTask' instead.", v4, 2u);
    OUTLINED_FUNCTION_80();
  }

  sub_1DD0DCA6C();
}

void sub_1DCDD5204(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v28 - v8;
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v28 - v15;
  v17 = *(v4 + 16);
  v17(&v28 - v15, v2, a1);
  type metadata accessor for EnvironmentBackedMetricsState();
  if (swift_dynamicCast() || (v17(v13, v2, a1), type metadata accessor for RefreshableMetricsState(), swift_dynamicCast()))
  {
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v18 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v18, qword_1EDE57E00);
    v17(v9, v2, a1);
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v19, v20))
    {
      swift_slowAlloc();
      v29 = OUTLINED_FUNCTION_109();
      *v16 = 136315138;
      v21 = OUTLINED_FUNCTION_19();
      (v17)(v21);
      v22 = sub_1DD0DE02C();
      v24 = v23;
      (*(v4 + 8))(v9, a1);
      v25 = sub_1DCB10E9C(v22, v24, &v29);

      *(v16 + 4) = v25;
      OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v26, v27, "Ignoring externally provided MetricsState: %s");
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_80();
    }

    else
    {

      (*(v4 + 8))(v9, a1);
    }
  }
}

void sub_1DCDD556C()
{
  v0 = sub_1DD0DAFDC();
  MEMORY[0x1EEE9AC00](v0, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1DD0DCA6C();
}

double sub_1DCDD599C@<D0>(uint64_t a2@<X8>)
{
  os_unfair_lock_lock(v2 + 4);
  sub_1DCDD67C8(&v2[6], v17);
  os_unfair_lock_unlock(v2 + 4);
  sub_1DCDD67C8(v17, &v14);
  if (v15)
  {
    sub_1DCAFF9E8(&v14, v16);
    sub_1DD0DCA6C();
  }

  sub_1DCB16D50(&v14, &qword_1ECCA6818, &qword_1DD0F69D0);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v5 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v5, qword_1EDE57E00);

  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v6, v7))
  {
    swift_slowAlloc();
    v16[0] = OUTLINED_FUNCTION_109();
    *v3 = 136315138;
    v8 = OUTLINED_FUNCTION_19();
    *(v3 + 4) = sub_1DCB10E9C(v8, v9, v10);
    OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v11, v12, "Uninitialized MetricsState when getting %s, this should not happen");
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_80();
  }

  sub_1DCB16D50(v17, &qword_1ECCA6818, &qword_1DD0F69D0);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1DCDD5D10()
{
  sub_1DCDD599C(v5);
  if (v5[3])
  {
    OUTLINED_FUNCTION_4_38(v5);
    v0 = OUTLINED_FUNCTION_7_1();
    v2 = v1(v0);
    OUTLINED_FUNCTION_6_51(v2, v3);
  }

  else
  {
    sub_1DCB16D50(v5, &qword_1ECCA6818, &qword_1DD0F69D0);
  }

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCDD5DA4()
{
  sub_1DCDD599C(v5);
  if (v5[3])
  {
    OUTLINED_FUNCTION_4_38(v5);
    v0 = OUTLINED_FUNCTION_7_1();
    v2 = v1(v0);
    OUTLINED_FUNCTION_6_51(v2, v3);
  }

  else
  {
    sub_1DCB16D50(v5, &qword_1ECCA6818, &qword_1DD0F69D0);
  }

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCDD5E48()
{
  OUTLINED_FUNCTION_7_44();
  sub_1DCDD599C(v0);
  if (v6[3])
  {
    OUTLINED_FUNCTION_4_38(v6);
    v1 = OUTLINED_FUNCTION_7_1();
    v3 = v2(v1);
    OUTLINED_FUNCTION_6_51(v3, v4);
  }

  else
  {
    sub_1DCB16D50(v6, &qword_1ECCA6818, &qword_1DD0F69D0);
  }

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCDD5EDC()
{
  OUTLINED_FUNCTION_7_44();
  sub_1DCDD599C(v0);
  v1 = v6;
  if (v6)
  {
    OUTLINED_FUNCTION_4_38(v5);
    v2 = OUTLINED_FUNCTION_7_1();
    v1 = v3(v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    sub_1DCB16D50(v5, &qword_1ECCA6818, &qword_1DD0F69D0);
  }

  return v1;
}

uint64_t sub_1DCDD5F80()
{
  sub_1DCDD599C(v4);
  v0 = v5;
  if (v5)
  {
    OUTLINED_FUNCTION_4_38(v4);
    v1 = OUTLINED_FUNCTION_7_1();
    v0 = v2(v1);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_1DCB16D50(v4, &qword_1ECCA6818, &qword_1DD0F69D0);
  }

  return v0 & 1;
}

uint64_t sub_1DCDD6024()
{
  OUTLINED_FUNCTION_7_44();
  sub_1DCDD599C(v0);
  if (v6[3])
  {
    OUTLINED_FUNCTION_4_38(v6);
    v1 = OUTLINED_FUNCTION_7_1();
    v3 = v2(v1);
    OUTLINED_FUNCTION_6_51(v3, v4);
  }

  else
  {
    sub_1DCB16D50(v6, &qword_1ECCA6818, &qword_1DD0F69D0);
  }

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCDD60B8()
{
  os_unfair_lock_lock(v0 + 4);
  sub_1DCDD6100(&v0[6], &v2);
  os_unfair_lock_unlock(v0 + 4);
  return v2;
}

uint64_t sub_1DCDD6100@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1DCDD67C8(a1, &v33);
  if (v34)
  {
    sub_1DCAFF9E8(&v33, v35);
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    sub_1DD0DEC1C();
    MEMORY[0x1E12A6780](0xD000000000000015, 0x80000001DD11DD30);
    v3 = v36;
    v4 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v5 = (*(v4 + 8))(v3, v4);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v5 = 7104878;
      v7 = 0xE300000000000000;
    }

    MEMORY[0x1E12A6780](v5, v7);

    MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD11DD50);
    v8 = v36;
    v9 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v10 = (*(v9 + 16))(v8, v9);
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v10 = 7104878;
      v12 = 0xE300000000000000;
    }

    MEMORY[0x1E12A6780](v10, v12);

    MEMORY[0x1E12A6780](0xD000000000000015, 0x80000001DD11DD70);
    v13 = v36;
    v14 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v15 = (*(v14 + 24))(v13, v14);
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v15 = 7104878;
      v17 = 0xE300000000000000;
    }

    MEMORY[0x1E12A6780](v15, v17);

    MEMORY[0x1E12A6780](0xD000000000000015, 0x80000001DD11DD90);
    v18 = v36;
    v19 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v19 + 32))(v18, v19);
    sub_1DD0DE56C();
    MEMORY[0x1E12A6780](0xD000000000000016, 0x80000001DD11DDB0);
    v20 = v36;
    v21 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v22 = (*(v21 + 48))(v20, v21);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v22 = 7104878;
      v24 = 0xE300000000000000;
    }

    MEMORY[0x1E12A6780](v22, v24);

    MEMORY[0x1E12A6780](0xD000000000000010, 0x80000001DD11DDD0);
    v25 = v36;
    v26 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v27 = (*(v26 + 40))(v25, v26);
    v28 = (v27 & 1) == 0;
    if (v27)
    {
      v29 = 1702195828;
    }

    else
    {
      v29 = 0x65736C6166;
    }

    if (v28)
    {
      v30 = 0xE500000000000000;
    }

    else
    {
      v30 = 0xE400000000000000;
    }

    MEMORY[0x1E12A6780](v29, v30);

    v31 = *(&v33 + 1);
    *a2 = v33;
    result = __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  else
  {
    result = sub_1DCB16D50(&v33, &qword_1ECCA6818, &qword_1DD0F69D0);
    v31 = 0x80000001DD11DD10;
    *a2 = 0xD00000000000001CLL;
  }

  a2[1] = v31;
  return result;
}

uint64_t sub_1DCDD6494()
{
  sub_1DCB16D50(v0 + 24, &qword_1ECCA6818, &qword_1DD0F69D0);

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for Metrics(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DCDD6770()
{
  result = qword_1EDE4B0C0;
  if (!qword_1EDE4B0C0)
  {
    type metadata accessor for FlowTaskProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4B0C0);
  }

  return result;
}

uint64_t sub_1DCDD67C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6818, &qword_1DD0F69D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCDD6884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDD6B24()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCDD6C38()
{
  OUTLINED_FUNCTION_42();

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1DCDD6C9C()
{
  OUTLINED_FUNCTION_39();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCDD6D1C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCDD6E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDD70E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCDD71F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCDD72EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDD7580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCDD75A8, 0, 0);
}

uint64_t sub_1DCDD787C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCDD7990()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCDD79EC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCDD7ACC()
{
  OUTLINED_FUNCTION_39();

  OUTLINED_FUNCTION_29();

  return v0();
}

void sub_1DCDD7B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_1DD0DCC3C();
}

uint64_t sub_1DCDD7C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v16 = OUTLINED_FUNCTION_42_19();
  __swift_project_value_buffer(v16, qword_1EDE57E00);
  v17 = OUTLINED_FUNCTION_17_26();
  v18(v17);
  v19 = sub_1DD0DD8EC();
  v20 = sub_1DD0DE6DC();
  OUTLINED_FUNCTION_51_14(v20);
  OUTLINED_FUNCTION_84_6();
  if (v21)
  {
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_88_6();
    *v15 = 136315138;
    sub_1DD0DCC1C();
  }

  v22 = OUTLINED_FUNCTION_14_40();
  v23(v22);
  OUTLINED_FUNCTION_3_76();
  v36 = v24;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v14 + 72) = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_34_23(v25);
  OUTLINED_FUNCTION_76();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, a11, a12, a13, a14);
}

uint64_t sub_1DCDD7D9C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCDD7E94()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1DCDD7EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_1DD0DCC3C();
}

uint64_t sub_1DCDD7FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v16 = OUTLINED_FUNCTION_42_19();
  __swift_project_value_buffer(v16, qword_1EDE57E00);
  v17 = OUTLINED_FUNCTION_17_26();
  v18(v17);
  v19 = sub_1DD0DD8EC();
  v20 = sub_1DD0DE6DC();
  OUTLINED_FUNCTION_51_14(v20);
  OUTLINED_FUNCTION_84_6();
  if (v21)
  {
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_88_6();
    *v15 = 136315138;
    sub_1DD0DCC1C();
  }

  v22 = OUTLINED_FUNCTION_14_40();
  v23(v22);
  OUTLINED_FUNCTION_3_76();
  v36 = v24;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v14 + 72) = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_34_23(v25);
  OUTLINED_FUNCTION_76();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, a11, a12, a13, a14);
}

uint64_t sub_1DCDD814C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCDD8244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1DD0DCC3C();
}

uint64_t sub_1DCDD8308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v16 = OUTLINED_FUNCTION_42_19();
  __swift_project_value_buffer(v16, qword_1EDE57E00);
  v17 = OUTLINED_FUNCTION_17_26();
  v18(v17);
  v19 = sub_1DD0DD8EC();
  v20 = sub_1DD0DE6DC();
  OUTLINED_FUNCTION_51_14(v20);
  OUTLINED_FUNCTION_84_6();
  if (v21)
  {
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_88_6();
    *v15 = 136315138;
    sub_1DD0DCC1C();
  }

  v22 = OUTLINED_FUNCTION_14_40();
  v23(v22);
  OUTLINED_FUNCTION_3_76();
  v36 = v24;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v14 + 72) = v25;
  *v25 = v26;
  v25[1] = sub_1DCDD84A4;
  OUTLINED_FUNCTION_76();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, a11, a12, a13, a14);
}

uint64_t sub_1DCDD84A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

void sub_1DCDD8874()
{
  OUTLINED_FUNCTION_74_0();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_78_0();
  sub_1DCDD8904(v0, v1, v2, v3);
}

void sub_1DCDD88BC()
{
  OUTLINED_FUNCTION_74_0();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_78_0();
  sub_1DCDDA110(v0, v1, v2, v3);
}

void sub_1DCDD8904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[17] = a4;
  v8[14] = a2;
  v8[15] = a1;
  v8[12] = *v4;
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8[4] = v8 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DCC3C();
}

uint64_t sub_1DCDD8CE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v9 = *a1;
  *(v8 + 72) = a8;
  *(v8 + 80) = v9;
  *(v8 + 120) = *(a1 + 8);
  *(v8 + 121) = *(a1 + 9);
  *(v8 + 88) = a1[2];
  *(v8 + 122) = *(a1 + 24);
  *(v8 + 123) = *(a1 + 25);
  *(v8 + 124) = *(a1 + 26);
  return MEMORY[0x1EEE6DFA0](sub_1DCDD8D44, 0, 0);
}

uint64_t sub_1DCDD8E20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCDD8F20(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, int a6, uint64_t a7)
{
  *(v7 + 48) = a1;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 42) = BYTE2(a6);
  v9 = *(v15 + 8);
  v12 = (*(v9 + 24) + **(v9 + 24));
  v10 = swift_task_alloc();
  *(v7 + 56) = v10;
  *v10 = v7;
  v10[1] = sub_1DCDD9078;

  return v12(v7 + 16, a7, v14, v9);
}

uint64_t sub_1DCDD9078()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCDD917C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v9 = *a1;
  *(v8 + 72) = a8;
  *(v8 + 80) = v9;
  *(v8 + 120) = *(a1 + 8);
  *(v8 + 121) = *(a1 + 9);
  *(v8 + 88) = a1[2];
  *(v8 + 122) = *(a1 + 24);
  *(v8 + 123) = *(a1 + 25);
  *(v8 + 124) = *(a1 + 26);
  return MEMORY[0x1EEE6DFA0](sub_1DCDD91DC, 0, 0);
}

uint64_t sub_1DCDD92B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCDD93C0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCDD941C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, int a6, uint64_t a7)
{
  *(v7 + 16) = a3;
  *(v7 + 48) = a1;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 42) = BYTE2(a6);
  v11 = (*(v13 + 16) + **(v13 + 16));
  v9 = swift_task_alloc();
  *(v7 + 56) = v9;
  *v9 = v7;
  v9[1] = sub_1DCDD9078;

  return v11(v7 + 16, a7);
}

uint64_t sub_1DCDD9570(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *a1;
  *(v7 + 104) = *(a1 + 8);
  *(v7 + 105) = *(a1 + 9);
  v9 = a1[2];
  *(v7 + 64) = v8;
  *(v7 + 72) = v9;
  *(v7 + 106) = *(a1 + 24);
  *(v7 + 107) = *(a1 + 25);
  *(v7 + 108) = *(a1 + 26);
  return MEMORY[0x1EEE6DFA0](sub_1DCDD95CC, 0, 0);
}

uint64_t sub_1DCDD95CC()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  v1 = *(v0 + 108);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v3;
  *(OUTLINED_FUNCTION_27_22(v2) + 82) = v1;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1DCDD96AC;
  OUTLINED_FUNCTION_61(*(v0 + 16));
  OUTLINED_FUNCTION_117();

  return sub_1DCDD6884(v5, v6, v7);
}

uint64_t sub_1DCDD96AC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_45_12();

    return v11(v10);
  }
}

uint64_t sub_1DCDD97D4(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, int a6)
{
  *(v6 + 16) = a3;
  *(v6 + 48) = a1;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 42) = BYTE2(a6);
  v9 = (*(v11 + 24) + **(v11 + 24));
  v7 = swift_task_alloc();
  *(v6 + 56) = v7;
  *v7 = v6;
  v7[1] = sub_1DCDD9078;

  return v9(v6 + 16);
}

uint64_t sub_1DCDD9940()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_1_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_86_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_24(v1);

  return v4(v3);
}

uint64_t sub_1DCDD99F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_130();

    return v11(v10);
  }
}

uint64_t sub_1DCDD9B2C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_1_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_86_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_24(v1);

  return v4(v3);
}

uint64_t sub_1DCDD9BE0(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 48) = v1;
  *(v2 + 56) = v3;
  *(v2 + 43) = *(a1 + 8);
  *(v2 + 44) = *(a1 + 9);
  *(v2 + 64) = a1[2];
  *(v2 + 45) = *(a1 + 24);
  *(v2 + 46) = *(a1 + 25);
  *(v2 + 47) = *(a1 + 26);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDD9C28()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 47);
  v2 = *(v0 + 46);
  v3 = *(v0 + 45);
  v4 = *(v0 + 64);
  v5 = *(v0 + 44);
  v6 = *(v0 + 43);
  v7 = *(*(v0 + 48) + 48);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 24) = v6;
  *(v0 + 25) = v5;
  *(v0 + 32) = v4;
  *(v0 + 40) = v3;
  *(v0 + 41) = v2;
  *(v0 + 42) = v1;
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1DCDD9D50;

  return v10(v0 + 16);
}

uint64_t sub_1DCDD9D50()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_130();

    return v11(v10);
  }
}

void *sub_1DCDD9E64()
{

  return v0;
}

uint64_t sub_1DCDD9E94()
{
  sub_1DCDD9E64();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCDD9F28(uint64_t *a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCDDC1B0;

  return sub_1DCDD9B08(a1, a2);
}

uint64_t sub_1DCDD9FD0(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCDDC1B0;

  return sub_1DCDD9BE0(a1);
}

uint64_t sub_1DCDDA068(uint64_t *a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCDDC1B0;

  return sub_1DCDD991C(a1, a2);
}

void sub_1DCDDA110(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8[10] = a4;
  v8[6] = a2;
  v8[7] = a1;
  v8[8] = *v4;
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8[5] = v7;
  v8[2] = v8 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DCC3C();
}

uint64_t sub_1DCDDA400(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *a1;
  *(v7 + 104) = *(a1 + 8);
  *(v7 + 105) = *(a1 + 9);
  v9 = a1[2];
  *(v7 + 64) = v8;
  *(v7 + 72) = v9;
  *(v7 + 106) = *(a1 + 24);
  *(v7 + 107) = *(a1 + 25);
  *(v7 + 108) = *(a1 + 26);
  return MEMORY[0x1EEE6DFA0](sub_1DCDDA45C, 0, 0);
}

uint64_t sub_1DCDDA508(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, int a6, uint64_t a7)
{
  *(v7 + 48) = a1;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 42) = BYTE2(a6);
  v9 = *(v15 + 8);
  v12 = (*(v9 + 24) + **(v9 + 24));
  v10 = swift_task_alloc();
  *(v7 + 56) = v10;
  *v10 = v7;
  v10[1] = sub_1DCDD9078;

  return v12(v7 + 16, a7, v14, v9);
}

uint64_t sub_1DCDDA660(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *a1;
  *(v7 + 104) = *(a1 + 8);
  *(v7 + 105) = *(a1 + 9);
  v9 = a1[2];
  *(v7 + 64) = v8;
  *(v7 + 72) = v9;
  *(v7 + 106) = *(a1 + 24);
  *(v7 + 107) = *(a1 + 25);
  *(v7 + 108) = *(a1 + 26);
  return MEMORY[0x1EEE6DFA0](sub_1DCDDA6BC, 0, 0);
}

uint64_t sub_1DCDDA768()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_45_12();

    return v11(v10);
  }
}

uint64_t sub_1DCDDA890(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, int a6, uint64_t a7)
{
  *(v7 + 16) = a3;
  *(v7 + 48) = a1;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 42) = BYTE2(a6);
  v11 = (*(v13 + 16) + **(v13 + 16));
  v9 = swift_task_alloc();
  *(v7 + 56) = v9;
  *v9 = v7;
  v9[1] = sub_1DCDDA9E4;

  return v11(v7 + 16, a7);
}

uint64_t sub_1DCDDA9E4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCDDAAE8()
{
  **(v0 + 48) = *(v0 + 72);
  OUTLINED_FUNCTION_29();
  return v1();
}

uint64_t sub_1DCDDAB3C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_1_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_86_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_24(v1);

  return v4(v3);
}

uint64_t sub_1DCDDABF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_130();

    return v11(v10);
  }
}

uint64_t sub_1DCDDAD28()
{

  return v0;
}

uint64_t sub_1DCDDAD50()
{
  sub_1DCDDAD28();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCDDAD9C(uint64_t *a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCDDC1B0;

  return sub_1DCDD9B08(a1, a2);
}

uint64_t sub_1DCDDAE44(uint64_t *a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCDDAEEC;

  return sub_1DCDDAB18(a1, a2);
}

uint64_t sub_1DCDDAEEC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v3 = *v2;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v6 = *(v3 + 8);
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1DCDDAFD8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCDDB014(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1DCDDB050()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_51_17();
  sub_1DD0DCC3C();
}

void sub_1DCDDB174()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_51_17();
  sub_1DD0DCC3C();
}

uint64_t sub_1DCDDB298()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_130();

  return v4(v3);
}

void sub_1DCDDB428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1DCDDB4D8;

  sub_1DCDD7B4C(a2, a3, a4);
}

uint64_t sub_1DCDDB4D8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_19_0();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  if (!v1)
  {
    **(v4 + 16) = v0;
  }

  v8 = *(v6 + 8);

  return v8();
}

void sub_1DCDDB5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1DCDDC194;

  sub_1DCDD7EFC(a2, a3, a4);
}

void sub_1DCDDB67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1DCDDC194;

  sub_1DCDD7EFC(a2, a3, a4);
}

uint64_t sub_1DCDDB72C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_71_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_24(v1);

  return v4(v3);
}

uint64_t sub_1DCDDB7C4()
{
  result = qword_1ECCA6938;
  if (!qword_1ECCA6938)
  {
    sub_1DD0DD50C();
  }

  return result;
}

void sub_1DCDDB81C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_11_0(v6);
  *v7 = v8;
  v7[1] = sub_1DCB4AE1C;

  sub_1DCDD8244(v2, v3, v5, v4);
}

uint64_t sub_1DCDDB980()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_71_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_24(v1);

  return v4(v3);
}

void sub_1DCDDBA18()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_51_17();
  sub_1DD0DCC3C();
}

void sub_1DCDDBB38()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_51_17();
  sub_1DD0DCC3C();
}

uint64_t sub_1DCDDBE7C()
{
  OUTLINED_FUNCTION_92_5();
  OUTLINED_FUNCTION_51_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_73();

  return sub_1DCDD97D4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCDDBF7C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_71_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_24(v1);

  return v4(v3);
}

uint64_t sub_1DCDDC014()
{
  OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_37_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40_18(v1, v3, v4, v5, v6, v7, v8, v9, v19, v20, v21);
  OUTLINED_FUNCTION_73();

  return sub_1DCDD941C(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1DCDDC0D0()
{
  OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_37_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40_18(v1, v3, v4, v5, v6, v7, v8, v9, v19, v20, v21);
  OUTLINED_FUNCTION_73();

  return sub_1DCDD8F20(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t OUTLINED_FUNCTION_81_6(uint64_t a1)
{
  *(v1 + 136) = a1;

  return swift_task_alloc();
}

uint64_t sub_1DCDDC1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 32))(a6, a1);
  v11 = type metadata accessor for ModifiedPlan(0, a3, a4, a5);
  v12 = *(*(a4 - 8) + 32);
  v13 = a6 + *(v11 + 44);

  return v12(v13, a2, a4);
}

void ModifiedPlan.body.getter(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();

  nullsub_1();
}

uint64_t static ModifiedPlan._buildEventPublisher(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = v20 - v11;
  type metadata accessor for ModifiedPlan(0, a2, a3, a4);
  (*(a4 + 40))(a1, a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = (*(AssociatedConformanceWitness + 48))(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  v20[1] = v14;
  v15 = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, v15, v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DDAEC();
  swift_getWitnessTable();
  v18 = sub_1DD0DDBFC();

  return v18;
}

uint64_t sub_1DCDDC5A4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DCDDC5E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter(a1, WitnessTable);
}

uint64_t sub_1DCDDC634(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1DCDDC704(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8;
  v10 = *(v5 + 64) + v8;
  v11 = *(v5 + 80) | v8;
  v12 = v11;
  v13 = v11 & 0x100000;
  if (v12 > 7 || v13 != 0 || (v10 & ~v9) + *(v7 + 64) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v16 = ~v9;
  (*(v5 + 16))(a1, a2);
  (*(v7 + 16))((a1 + v10) & v16, (a2 + v10) & v16, v6);
  return a1;
}

uint64_t sub_1DCDDC860(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 24) - 8);
  v6 = *(v5 + 8);
  v7 = (*(v4 + 56) + a1 + *(v5 + 80)) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t sub_1DCDDC904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 16))((*(v6 + 48) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 48) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_1DCDDC9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 24))((*(v6 + 40) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 40) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_1DCDDCA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 32))((*(v6 + 32) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 32) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_1DCDDCAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 40))((*(v6 + 24) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 24) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_1DCDDCBA4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_1DCDDCD6C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

void NamedParseTransformer.resolve()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4228, &unk_1DD0F6E40);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  sub_1DD0DCF7C();
}

void NamedParseTransformer.init(transformer:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  OUTLINED_FUNCTION_5_67();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  sub_1DCB0E9D8(a2, &qword_1ECCA4DC0, &unk_1DD0EFEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  OUTLINED_FUNCTION_3_77();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  type metadata accessor for NamedParseTransformer(0);
  sub_1DD0DCF7C();
}

void NamedParseTransformer.init(id:)(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  OUTLINED_FUNCTION_5_67();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  sub_1DCB0E9D8(a2, &qword_1ECCA4DC0, &unk_1DD0EFEA0);
  OUTLINED_FUNCTION_5_67();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  type metadata accessor for NamedParseTransformer(0);
  sub_1DD0DCF7C();
}

void NamedParseTransformer.init(transformer:id:)(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  __swift_storeEnumTagSinglePayload(a3, 1, 1, v5);
  sub_1DCB0E9D8(a3, &qword_1ECCA4DC0, &unk_1DD0EFEA0);
  (*(*(v5 - 8) + 32))(a3, a1, v5);
  __swift_storeEnumTagSinglePayload(a3, 0, 1, v5);
  type metadata accessor for NamedParseTransformer(0);
  sub_1DD0DCF7C();
}

uint64_t NamedParseTransformer.resolveAndCache()@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v25 - v16;
  sub_1DCB09910(v1, v8, &qword_1ECCA4DC0, &unk_1DD0EFEA0);
  OUTLINED_FUNCTION_11_44(v8);
  if (v18)
  {
    sub_1DCB0E9D8(v8, &qword_1ECCA4DC0, &unk_1DD0EFEA0);
    NamedParseTransformer.resolve()();
  }

  v19 = *(v11 + 32);
  v19(v17, v8, v9);
  v19(a1, v17, v9);
  OUTLINED_FUNCTION_5_67();
  return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
}

void initializeBufferWithCopyOfBuffer for NamedParseTransformer(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) == 0)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
    if (__swift_getEnumTagSinglePayload(a2, 1, v5))
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      (*(*(v5 - 8) + 16))(a1, a2, v5);
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
    }

    sub_1DD0DCF7C();
  }

  *a1 = *a2;
  sub_1DD0DCF8C();
}

void destroy for NamedParseTransformer(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  if (!__swift_getEnumTagSinglePayload(a1, 1, v3))
  {
    (*(*(v3 - 8) + 8))(a1, v3);
  }

  sub_1DD0DCF7C();
}

void initializeWithCopy for NamedParseTransformer(char *a1, char *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  if (__swift_getEnumTagSinglePayload(a2, 1, v5))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
  }

  sub_1DD0DCF7C();
}

void assignWithCopy for NamedParseTransformer(char *a1, char *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v5);
  v7 = __swift_getEnumTagSinglePayload(a2, 1, v5);
  if (EnumTagSinglePayload)
  {
    if (!v7)
    {
      (*(*(v5 - 8) + 16))(a1, a2, v5);
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
      goto LABEL_7;
    }
  }

  else
  {
    v8 = *(v5 - 8);
    if (!v7)
    {
      (*(v8 + 24))(a1, a2, v5);
LABEL_7:
      sub_1DD0DCF7C();
    }

    (*(v8 + 8))(a1, v5);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
  memcpy(a1, a2, *(*(v9 - 8) + 64));
  goto LABEL_7;
}

void initializeWithTake for NamedParseTransformer(char *a1, char *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  if (__swift_getEnumTagSinglePayload(a2, 1, v5))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
  }

  sub_1DD0DCF7C();
}

void assignWithTake for NamedParseTransformer(char *a1, char *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v5);
  v7 = __swift_getEnumTagSinglePayload(a2, 1, v5);
  if (EnumTagSinglePayload)
  {
    if (!v7)
    {
      (*(*(v5 - 8) + 32))(a1, a2, v5);
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
      goto LABEL_7;
    }
  }

  else
  {
    v8 = *(v5 - 8);
    if (!v7)
    {
      (*(v8 + 40))(a1, a2, v5);
LABEL_7:
      sub_1DD0DCF7C();
    }

    (*(v8 + 8))(a1, v5);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
  memcpy(a1, a2, *(*(v9 - 8) + 64));
  goto LABEL_7;
}

void sub_1DCDDEA08(uint64_t a1)
{
  sub_1DCDDEAD0(319);
  if (v1 <= 0x3F)
  {
    sub_1DCDDEB34(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_1DCDDEAD0(uint64_t a1)
{
  if (!qword_1EDE463C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
    v1 = sub_1DD0DE97C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE463C0);
    }
  }
}