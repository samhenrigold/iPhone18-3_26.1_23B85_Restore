void sub_1000AA1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *sub_1000AA228@<X0>(std::string *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (result < 0x8000)
  {
    if (result > 127)
    {
      if (result > 4127)
      {
        if (result >= 12288)
        {
          if (result == 12288)
          {
            v3 = 17;
            *(a2 + 23) = 17;
            *(a2 + 16) = 114;
            v5 = "kTypeDrivingOther";
          }

          else
          {
            if (result != 0x4000)
            {
              goto LABEL_87;
            }

            v3 = 19;
            *(a2 + 23) = 19;
            *(a2 + 15) = 1684370542;
            v5 = "kTypeDrivingMounted";
          }
        }

        else
        {
          if (result == 4128)
          {
            v7 = "kTypeDrivingOrWalkingSlow";
            return sub_100006BE0(a2, v7, 0x19uLL);
          }

          if (result != 0x2000)
          {
            goto LABEL_87;
          }

          v3 = 20;
          *(a2 + 23) = 20;
          *(a2 + 16) = 1684955464;
          v5 = "kTypeVehicularInHand";
        }

        goto LABEL_84;
      }

      if (result > 511)
      {
        if (result == 512)
        {
          v3 = 20;
          *(a2 + 23) = 20;
          *(a2 + 16) = 1667855457;
          v5 = "kTypeInVehicleStatic";
          goto LABEL_84;
        }

        if (result == 4096)
        {
          v3 = 12;
          *(a2 + 23) = 12;
          *(a2 + 8) = 1735289206;
          v4 = "kTypeDriving";
          goto LABEL_75;
        }
      }

      else
      {
        if (result == 128)
        {
          v3 = 12;
          *(a2 + 23) = 12;
          *(a2 + 8) = 1735289196;
          v4 = "kTypeCycling";
          goto LABEL_75;
        }

        if (result == 256)
        {
          v3 = 20;
          *(a2 + 23) = 20;
          *(a2 + 16) = 1852144239;
          v5 = "kTypeInVehicleFrozen";
          goto LABEL_84;
        }
      }
    }

    else if (result > 11)
    {
      if (result > 31)
      {
        if (result == 32)
        {
          v3 = 16;
          *(a2 + 23) = 16;
          v5 = "kTypeWalkingSlow";
          goto LABEL_84;
        }

        if (result == 64)
        {
          v3 = 12;
          *(a2 + 23) = 12;
          *(a2 + 8) = 1735289198;
          v4 = "kTypeRunning";
          goto LABEL_75;
        }
      }

      else
      {
        if (result == 12)
        {
          v3 = 19;
          *(a2 + 23) = 19;
          *(a2 + 15) = 2037539182;
          v5 = "kTypeSemiStationary";
          goto LABEL_84;
        }

        if (result == 16)
        {
          v3 = 12;
          *(a2 + 23) = 12;
          *(a2 + 8) = 1735289195;
          v4 = "kTypeWalking";
          goto LABEL_75;
        }
      }
    }

    else if (result > 1)
    {
      if (result == 2)
      {
        v3 = 11;
        *(a2 + 23) = 11;
        *(a2 + 7) = 1667855457;
        v4 = "kTypeStatic";
        goto LABEL_75;
      }

      if (result == 4)
      {
        v3 = 11;
        *(a2 + 23) = 11;
        *(a2 + 7) = 1735289206;
        v4 = "kTypeMoving";
        goto LABEL_75;
      }
    }

    else
    {
      if (!result)
      {
        v3 = 12;
        *(a2 + 23) = 12;
        *(a2 + 8) = 1853321070;
        v4 = "kTypeUnknown";
        goto LABEL_75;
      }

      if (result == 1)
      {
        v3 = 11;
        *(a2 + 23) = 11;
        *(a2 + 7) = 1852144239;
        v4 = "kTypeFrozen";
        goto LABEL_75;
      }
    }

LABEL_87:
    v3 = 5;
    *(a2 + 23) = 5;
    *a2 = 1330795077;
    *(a2 + 4) = 82;
    goto LABEL_85;
  }

  if (result < 528384)
  {
    if (result > 262271)
    {
      if (result >= 397312)
      {
        if (result == 397312)
        {
          v3 = 16;
          *(a2 + 23) = 16;
          v5 = "kTypeDrivingSeat";
          goto LABEL_84;
        }

        if (result != 462848)
        {
          goto LABEL_87;
        }

        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeDrivingArm";
        goto LABEL_81;
      }

      if (result == 262272)
      {
        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeCyclingArm";
        goto LABEL_81;
      }

      if (result != 327808)
      {
        goto LABEL_87;
      }

      v3 = 17;
      *(a2 + 23) = 17;
      *(a2 + 16) = 111;
      v5 = "kTypeCyclingTorso";
    }

    else
    {
      if (result > 131199)
      {
        if (result == 131200)
        {
          v3 = 19;
          *(a2 + 23) = 19;
          *(a2 + 15) = 1936290675;
          v5 = "kTypeCyclingChassis";
          goto LABEL_84;
        }

        if (result != 196608)
        {
          goto LABEL_87;
        }

        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeCyclingLeg";
        goto LABEL_81;
      }

      if (result == 0x8000)
      {
        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeMotorcycle";
        goto LABEL_81;
      }

      if (result != 65664)
      {
        goto LABEL_87;
      }

      v3 = 16;
      *(a2 + 23) = 16;
      v5 = "kTypeCyclingSeat";
    }

LABEL_84:
    *a2 = *v5;
    goto LABEL_85;
  }

  if (result <= 786447)
  {
    if (result > 655423)
    {
      if (result == 655424)
      {
        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeRunningArm";
      }

      else
      {
        if (result != 720912)
        {
          goto LABEL_87;
        }

        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeWalkingLeg";
      }

      goto LABEL_81;
    }

    if (result != 528384)
    {
      if (result != 589888)
      {
        goto LABEL_87;
      }

      v3 = 15;
      *(a2 + 23) = 15;
      v6 = "kTypeRunningLeg";
      goto LABEL_81;
    }

    v3 = 18;
    *(a2 + 23) = 18;
    *(a2 + 16) = 25701;
    v5 = "kTypeDrivingStowed";
    goto LABEL_84;
  }

  if (result <= 917515)
  {
    if (result != 786448)
    {
      if (result != 851980)
      {
        goto LABEL_87;
      }

      v7 = "kTypeSemiStationaryPocket";
      return sub_100006BE0(a2, v7, 0x19uLL);
    }

    v3 = 15;
    *(a2 + 23) = 15;
    v6 = "kTypeWalkingArm";
LABEL_81:
    *a2 = *v6;
    *(a2 + 7) = *(v6 + 7);
    goto LABEL_85;
  }

  if (result == 917516)
  {
    v3 = 22;
    *(a2 + 23) = 22;
    qmemcpy(a2, "kTypeSemiStationaryArm", 22);
    goto LABEL_85;
  }

  if (result == 0x100000)
  {
    v3 = 19;
    *(a2 + 23) = 19;
    *(a2 + 15) = 1953853291;
    v5 = "kTypeMachineWorkout";
    goto LABEL_84;
  }

  if (result != 0x200000)
  {
    goto LABEL_87;
  }

  v3 = 12;
  *(a2 + 23) = 12;
  *(a2 + 8) = 1953853291;
  v4 = "kTypeWorkout";
LABEL_75:
  *a2 = *v4;
LABEL_85:
  *(a2 + v3) = 0;
  return result;
}

void sub_1000AA7FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000AA818(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x19)
  {
    a2 = 1;
  }

  if (v2 < 0x32)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 25;
  }

  return v4 ^ 1u;
}

__n128 sub_1000AA884@<Q0>(uint64_t *a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, char *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    i = a5;
    v14 = a6;
  }

  else
  {
    v16 = (a3 - 1);
    sub_1000AA970(*a3, a4, a5, a6, &v19);
    v14 = v20.n128_u64[1];
    for (i = v20.n128_u64[0]; v16 != a1; i = v20.n128_u64[0])
    {
      v17 = *v16--;
      sub_1000AA970(v17, v17 + 5248, i, v14, &v19);
      v14 = v20.n128_u64[1];
    }

    v12 = (*v16 + 5248);
    v11 = a2;
  }

  sub_1000AA970(v11, v12, i, v14, &v19);
  result = v20;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_1000AA970@<X0>(char *a1@<X1>, char *a2@<X2>, char *a3@<X3>, char *a4@<X4>, char **a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = 0x8F9C18F9C18F9C19 * (&a4[-v10] >> 3);
      if ((0x8F9C18F9C18F9C19 * ((v11 - a1) >> 3)) < v12)
      {
        v12 = 0x8F9C18F9C18F9C19 * ((v11 - a1) >> 3);
      }

      v11 -= 328 * v12;
      a4 -= 328 * v12;
      if (v12)
      {
        result = memmove(a4, v11, 328 * v12);
      }

      if (v11 == a1)
      {
        break;
      }

      v14 = *(v6 - 1);
      v6 -= 8;
      v10 = v14;
      a4 = (v14 + 5248);
    }

    if ((*v6 + 5248) == a4)
    {
      v15 = *(v6 + 1);
      v6 += 8;
      a4 = v15;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

uint64_t sub_1000AAA64(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x10)
  {
    a2 = 1;
  }

  if (v2 < 0x20)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 16;
  }

  return v4 ^ 1u;
}

uint64_t sub_1000AAAC4(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x12)
  {
    a2 = 1;
  }

  if (v2 < 0x24)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 18;
  }

  return v4 ^ 1u;
}

__n128 sub_1000AAB24@<Q0>(uint64_t *a1@<X1>, char *a2@<X2>, char **a3@<X3>, unint64_t a4@<X4>, char *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = (a3 - 1);
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      sub_1000AABF4(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = (v19 + 4096);
    }

    v12 = (*v17 + 4096);
    v11 = a2;
  }

  sub_1000AABF4(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_1000AABF4@<X0>(char *a1@<X1>, char *a2@<X2>, char *a3@<X3>, char *a4@<X4>, char **a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = &a4[-v10];
      if ((v11 - a1) >> 6 >= v12 >> 6)
      {
        v13 = v12 >> 6;
      }

      else
      {
        v13 = (v11 - a1) >> 6;
      }

      v11 -= 64 * v13;
      a4 -= 64 * v13;
      if (v13)
      {
        result = memmove(a4, v11, v13 << 6);
      }

      if (v11 == a1)
      {
        break;
      }

      v15 = *(v6 - 1);
      v6 -= 8;
      v10 = v15;
      a4 = (v15 + 4096);
    }

    if ((*v6 + 4096) == a4)
    {
      v16 = *(v6 + 1);
      v6 += 8;
      a4 = v16;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

uint64_t sub_1000AACB0(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x40)
  {
    a2 = 1;
  }

  if (v2 < 0x80)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 64;
  }

  return v4 ^ 1u;
}

uint64_t sub_1000AAD18(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 8 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x40)
  {
    a2 = 1;
  }

  if (v5 < 0x80)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

double sub_1000AAD88(void **a1, uint64_t *__src, void **a3, uint64_t *a4, void ***a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_1000AAE4C(&v15, __src, a5[1], *a1 + 500, *a5);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_1000AAE4C(&v15, v13, a5[1], v13 + 500, *a5);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = a5[1];
  }

  sub_1000AAE4C(&v15, v9, v8, a4, v7);
  result = *&v16;
  *a5 = v16;
  return result;
}

uint64_t *sub_1000AAE4C@<X0>(uint64_t **__return_ptr a1@<X8>, uint64_t *__src@<X0>, char *__dst@<X3>, uint64_t *a4@<X1>, void **a5@<X2>)
{
  v6 = a5;
  if (__src != a4)
  {
    v9 = __src;
    v6 = a5 + 1;
    v10 = *a5;
    while (1)
    {
      v11 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - __dst + 4000) >> 5);
      if ((0xCCCCCCCCCCCCCCCDLL * ((a4 - v9) >> 5)) < v11)
      {
        v11 = 0xCCCCCCCCCCCCCCCDLL * ((a4 - v9) >> 5);
      }

      v12 = 5 * v11;
      v13 = 160 * v11;
      if (v11)
      {
        __src = memmove(__dst, v9, 160 * v11);
      }

      v9 += 4 * v12;
      if (v9 == a4)
      {
        break;
      }

      v14 = *v6++;
      v10 = v14;
      __dst = v14;
    }

    __dst += v13;
    if (*(v6 - 1) + 4000 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = __dst;
  return __src;
}

uint64_t sub_1000AAF2C(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 25 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x19)
  {
    a2 = 1;
  }

  if (v5 < 0x32)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

double sub_1000AAFA4(void **a1, uint64_t *__src, void **a3, uint64_t *a4, void ***a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_1000AB078(&v14, __src, a5[1], *a1 + 656, *a5);
    for (*a5 = v15; v11 != a3; *a5 = v15)
    {
      v12 = *v11++;
      sub_1000AB078(&v14, v12, a5[1], v12 + 656, *a5);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = a5[1];
  }

  sub_1000AB078(&v14, v9, v8, a4, v7);
  result = *&v15;
  *a5 = v15;
  return result;
}

uint64_t *sub_1000AB078@<X0>(uint64_t **__return_ptr a1@<X8>, uint64_t *__src@<X0>, char *__dst@<X3>, uint64_t *a4@<X1>, void **a5@<X2>)
{
  v6 = a5;
  if (__src != a4)
  {
    v9 = __src;
    v6 = a5 + 1;
    v10 = *a5;
    while (1)
    {
      v11 = 0x8F9C18F9C18F9C19 * ((v10 - __dst + 5248) >> 3);
      if ((0x8F9C18F9C18F9C19 * (a4 - v9)) < v11)
      {
        v11 = 0x8F9C18F9C18F9C19 * (a4 - v9);
      }

      v12 = 328 * v11;
      if (v11)
      {
        __src = memmove(__dst, v9, 328 * v11);
      }

      v9 = (v9 + v12);
      if (v9 == a4)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += v12;
    if (*(v6 - 1) + 5248 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = __dst;
  return __src;
}

uint64_t sub_1000AB170(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x10)
  {
    a2 = 1;
  }

  if (v5 < 0x20)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t sub_1000AB1E0(_DWORD *a1, unsigned int (*a2)(uint64_t, uint64_t (***)()), uint64_t a3)
{
  if (!a1[30])
  {
    sub_1000AC16C((a1 + 16), (a1 + 2));
  }

  v6 = a1[18];
  v7 = a1[19];
  if (v6 <= v7)
  {
    v8 = a1[19];
  }

  else
  {
    v8 = a1[18];
  }

  if (v7)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  return sub_1000AB784(a1, v10, (a1 + 16), a2, a3);
}

double sub_1000AB25C(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_101BB49B4();
  }

  if (a2 < 0)
  {
    sub_101BB4988();
  }

  if (*(a1 + 16) <= a2)
  {
    sub_101BB495C();
  }

  return *(v2 + 8 * a2);
}

_DWORD *sub_1000AB298(_DWORD *result, int a2, int a3)
{
  if (a2 < 0)
  {
    sub_101A26874();
  }

  if (result[6] < a2)
  {
    sub_101A26848();
  }

  if (a3 < 0)
  {
    sub_101A2681C();
  }

  if (result[7] < a3)
  {
    sub_101A267F0();
  }

  result[2] = a2;
  result[3] = a3;
  result[4] = a3 * a2;
  result[5] = a2;
  return result;
}

uint64_t sub_1000AB2E8(double *a1, _DWORD *a2)
{
  v2 = *a1;
  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v2 >= 0.0 ? (v3 = v2 <= 1.0) : (v3 = 0), !v3))
  {
    if (qword_1025D4760 != -1)
    {
      sub_10030C654();
    }

    v4 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "OutdoorEstimatorTransitionProbability,Invalid Indoor Given Indoor Probability", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101BB46A0();
    }

    return 0xFFFFFFFFLL;
  }

  v6 = a1[1];
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v6 >= 0.0 ? (v7 = v6 <= 1.0) : (v7 = 0), !v7))
  {
    if (qword_1025D4760 != -1)
    {
      sub_10030C654();
    }

    v8 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "OutdoorEstimatorTransitionProbability,Invalid Outdoor Given Outdoor Probability", v11, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101BB45C4();
    }

    return 0xFFFFFFFFLL;
  }

  sub_1000AC264(a2, 2u, 2u);
  *sub_1000AC220(a2, 0, 0) = v2;
  *sub_1000AC220(a2, 0, 1) = 1.0 - v6;
  *sub_1000AC220(a2, 1, 0) = 1.0 - v2;
  v10 = sub_1000AC220(a2, 1, 1);
  result = 0;
  *v10 = v6;
  return result;
}

double sub_1000AB4C0(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_101A269A8();
  }

  v4 = a2 + *(a1 + 20) * a3;
  if ((v4 & 0x80000000) != 0)
  {
    sub_101A2697C();
  }

  if (v4 >= *(a1 + 16))
  {
    sub_101A26950();
  }

  return *(v3 + 8 * v4);
}

float64x2_t sub_1000AB504(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 == a2)
  {
    sub_101AF2B04();
  }

  sub_1000AB298(a2, *(a1 + 8), *(a1 + 12));
  v6 = *(a2 + 16);
  if (v6 > 3)
  {
    v10 = *(a1 + 32);
    v11 = *(a2 + 32);
    v12 = (v10 + 8 * (v6 - 2));
    v13 = (v11 + 8 * (v6 - 2));
    v14 = (v6 - 1) >> 1;
    do
    {
      v15 = *v10++;
      *v11++ = vmulq_n_f64(v15, a3);
      --v14;
    }

    while (v14);
    result = vmulq_n_f64(*v12, a3);
    *v13 = result;
  }

  else if (v6 >= 1)
  {
    v7 = *(a1 + 32);
    v8 = *(a2 + 32);
    do
    {
      v9 = *v7++;
      result.f64[0] = v9 * a3;
      *v8++ = v9 * a3;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1000AB5C4(uint64_t a1, int a2)
{
  if (a2 <= 127)
  {
    if (a2 > 31)
    {
      if (a2 != 32)
      {
        if (a2 == 64)
        {
          return 3;
        }

        return 0;
      }
    }

    else
    {
      if (a2 == 4)
      {
        return 1;
      }

      if (a2 != 16)
      {
        return 0;
      }
    }

    return 2;
  }

  if (a2 >= 0x2000)
  {
    if (a2 != 0x2000 && a2 != 12288 && a2 != 0x4000)
    {
      return 0;
    }

    return 5;
  }

  if (a2 == 128)
  {
    return 4;
  }

  if (a2 == 4096)
  {
    return 5;
  }

  return 0;
}

uint64_t sub_1000AB658(uint64_t a1, int a2, unsigned int a3, double *a4)
{
  v5 = a3;
  if (a3 < 8)
  {
    v9 = sub_1000AB5C4(a1, a2);
    result = 0;
    v7 = dbl_101D7F420[v9] * dbl_101D7F3B0[2 * v5 + 1];
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_101BAFA70();
    }

    v6 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      v11 = v5;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,lookupActivityStateProbabilityGivenIndoor(),latent probability index out of bound,%lu", &v10, 0xCu);
    }

    v7 = -1.0;
    if (sub_10000A100(121, 0))
    {
      sub_101BB00B4();
    }

    result = 0xFFFFFFFFLL;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_1000AB784(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(uint64_t, uint64_t (***)()), uint64_t a5)
{
  if (a2 <= 0)
  {
    sub_101BB4CCC();
  }

  v8 = a2;
  v10 = *(a1 + 128);
  v11 = *(a3 + 8);
  v12 = *(a3 + 12);
  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if (v11 <= v12)
    {
      v11 = *(a3 + 12);
    }

    if (v11 != a2)
    {
      sub_101BB4C48();
    }

    for (i = 0; i != v8; ++i)
    {
      v15 = sub_1000AB25C(a3, i);
      if (v15 < 0.0 || v15 > 1.0)
      {
        sub_101BB4C74();
      }
    }

    v11 = *(a3 + 8);
    v12 = *(a3 + 12);
  }

  if (v11)
  {
    v17 = v12 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    sub_10131AD8C(&v33, v8, 1u);
    if (v35 < v8)
    {
      sub_101BB2528(2708, "nr <= O.MaxNumRows()");
    }

    if (!HIDWORD(v35))
    {
      sub_101BB2528(2709, "nc <= O.MaxNumCols()");
    }

    sub_1000AB298(&v33, v8, 1);
    sub_100323BB4(&v33, 1.0);
    v30 = 0x100000002;
    v28 = off_1024DFF00;
    v29 = xmmword_101D7F650;
    v31 = v32;
    sub_1000AB504(&v33, &v28, 1.0 / v8);
    sub_1000AC16C(a1 + 64, &v28);
  }

  else
  {
    v30 = 0x100000002;
    v28 = off_1024DFF00;
    v29 = xmmword_101D7F650;
    v31 = v32;
    v18 = sub_1000ABE20(a3, 1, &v28);
    if (DWORD2(v29) != 1)
    {
      sub_101BB1720();
    }

    v19 = *v31;
    if (*v31 <= 0.0)
    {
      sub_101BB4CA0();
    }

    if (fabs(v19 + -1.0) <= v10)
    {
      sub_1000ABF7C(&v28, a3);
      sub_1000AC10C(&v28, v8, 1);
      sub_1000AC16C(a1 + 64, &v28);
    }

    else
    {
      if (cnprint::CNPrinter::GetLogLevel(v18) <= 1)
      {
        LOWORD(v28) = 2;
        LOBYTE(v33) = 1;
        cnprint::CNPrinter::Print(&v28, &v33, "WARNING: HMM prediction passed a non-normalized probability vector.");
      }

      sub_1000ABF7C(&v33, a3);
      sub_1000AC10C(&v33, v8, 1);
      v30 = 0x100000002;
      v28 = off_1024DFF00;
      v29 = xmmword_101D7F650;
      v31 = v32;
      sub_1000AB504(&v33, &v28, 1.0 / v19);
      sub_1000AC16C(a1 + 64, &v28);
    }
  }

  *(a1 + 120) = 1;
  v30 = 0x200000002;
  v28 = off_1024E00E8;
  v29 = xmmword_101D7F660;
  v31 = v32;
  if (a4(a5, &v28))
  {
    LOWORD(v33) = 2;
    LOBYTE(v23) = 4;
    cnprint::CNPrinter::Print(&v33, &v23, "ERROR: HMM transition probability function failed.");
    return 27;
  }

  else
  {
    v21 = sub_1000AC2A4(a1, v8, &v28);
    if (v21)
    {
      v35 = 0x100000002;
      v34 = xmmword_101D7F650;
      v33 = off_1024DFF00;
      v36 = v37;
      sub_1000AC374(&v28, a1 + 64, &v33);
      sub_1000AC16C(a1 + 8, &v33);
      v25 = 0x100000002;
      v23 = off_1024DFF00;
      v24 = xmmword_101D7F650;
      v26 = &v27;
      sub_1000ABE20(a1 + 8, 1, &v23);
      if (DWORD2(v24) != 1)
      {
        __assert_rtn("operator double", "cnmatrixbase.h", 979, "num_elements_ == 1");
      }

      v22 = 1.0 / *v26;
      v35 = 0x100000002;
      v34 = xmmword_101D7F650;
      v33 = off_1024DFF00;
      v36 = v37;
      sub_1000AB504(a1 + 8, &v33, v22);
      sub_1000AC16C(a1 + 8, &v33);
      result = 0;
      *(a1 + 120) = 0;
    }

    else
    {
      if (cnprint::CNPrinter::GetLogLevel(v21) <= 1)
      {
        LOWORD(v33) = 2;
        LOBYTE(v23) = 1;
        cnprint::CNPrinter::Print(&v33, &v23, "ERROR: HMM transition probability matrix is invalid.");
      }

      return 28;
    }
  }

  return result;
}

double sub_1000ABCB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x100000002;
  *a2 = off_1024DFF00;
  *(a2 + 8) = xmmword_101D7F650;
  *(a2 + 32) = a2 + 40;
  v3 = 64;
  if (!*(a1 + 120))
  {
    v3 = 8;
  }

  *&result = sub_1000AC16C(a2, a1 + v3).n128_u64[0];
  return result;
}

double sub_1000ABD54(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 240))
  {
    sub_1000ABCB8(a1, v6);
    return *sub_1000AC838(v6, *a2);
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_10030C654();
    }

    v4 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,getStateProbability(),HMM Not initialized", v6, 2u);
    }

    v3 = -1.0;
    if (sub_10000A100(121, 0))
    {
      sub_101BB1778();
    }
  }

  return v3;
}

_DWORD *sub_1000ABE20(uint64_t a1, int a2, uint64_t a3)
{
  if ((a2 - 3) <= 0xFFFFFFFD)
  {
    sub_101BB4A38();
  }

  if (a2 == 1)
  {
    v5 = *(a3 + 28);
    v6 = *(a1 + 12);
    if (v5 < v6)
    {
      sub_101BB4A0C();
    }

    result = sub_1000AB298(a3, 1, v6);
    v8 = *(a1 + 12);
    if (v8)
    {
      v9 = 0;
      v10 = *(a1 + 8);
      v11 = *(a1 + 32);
      v12 = *(a3 + 32);
      v13 = 1;
      do
      {
        v14 = *(v11 + 8 * (v10 * v9));
        v15 = v10 - 1;
        v16 = v13;
        if (v10 >= 2)
        {
          do
          {
            v14 = v14 + *(v11 + 8 * v16++);
            --v15;
          }

          while (v15);
        }

        *(v12 + 8 * v9++) = v14;
        v13 += v10;
      }

      while (v9 != v8);
    }
  }

  else
  {
    v17 = *(a1 + 8);
    if (*(a3 + 24) < v17)
    {
      sub_101BB49E0();
    }

    result = sub_1000AB298(a3, v17, 1);
    v18 = *(a1 + 8);
    if (v18)
    {
      v19 = *(a1 + 32);
      v20 = *(a3 + 32);
      v21 = *(a1 + 8);
      do
      {
        v22 = *v19++;
        *v20++ = v22;
        --v21;
      }

      while (v21);
    }

    v23 = *(a1 + 12);
    if (v23 >= 2)
    {
      v24 = *(a1 + 32);
      v25 = *(a3 + 32);
      v26 = 1;
      v27 = v18;
      do
      {
        v28 = v18;
        v29 = v27;
        v30 = v25;
        if (v18)
        {
          do
          {
            *v30 = *(v24 + 8 * v29) + *v30;
            ++v30;
            ++v29;
            --v28;
          }

          while (v28);
        }

        ++v26;
        v27 += v18;
      }

      while (v26 != v23);
    }
  }

  return result;
}

__n128 sub_1000ABF7C(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000002;
  *(a1 + 24) = 0x100000002;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1024DFF00;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 2)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 2)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 2u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 1u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

_DWORD *sub_1000AC10C(_DWORD *result, int a2, int a3)
{
  if (a2 < 0)
  {
    sub_101BB4B14();
  }

  if (a3 < 0)
  {
    sub_101BB4AE8();
  }

  if (a3 * a2 != result[4])
  {
    sub_101BB4A64();
  }

  if (result[6] < a2)
  {
    sub_101BB4ABC();
  }

  if (result[7] < a3)
  {
    sub_101BB4A90();
  }

  result[2] = a2;
  result[3] = a3;
  result[4] = a3 * a2;
  result[5] = a2;
  return result;
}

__n128 sub_1000AC16C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a2 + 8);
    if (*(a1 + 24) < v2)
    {
      sub_101A267C4();
    }

    v3 = *(a2 + 12);
    if (*(a1 + 28) < v3)
    {
      sub_101A26798();
    }

    *(a1 + 8) = v2;
    *(a1 + 12) = v3;
    v4 = v3 * v2;
    *(a1 + 16) = v4;
    *(a1 + 20) = v2;
    v5 = *(a2 + 16);
    if (v5 > 3)
    {
      v10 = *(a1 + 32);
      v11 = *(a2 + 32);
      v12 = (v10 + 8 * (v5 - 2));
      v13 = (v11 + 8 * (v5 - 2));
      v14 = (v5 - 1) >> 1;
      do
      {
        v15 = *v11++;
        *v10++ = v15;
        --v14;
      }

      while (v14);
      result = *v13;
      *v12 = *v13;
    }

    else if (v4 >= 1)
    {
      v6 = *(a2 + 32);
      v7 = *(a1 + 32);
      do
      {
        v8 = *v6++;
        result.n128_u64[0] = v8;
        *v7++ = v8;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t sub_1000AC220(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_101A26A2C();
  }

  v4 = a2 + *(a1 + 20) * a3;
  if ((v4 & 0x80000000) != 0)
  {
    sub_101A26A00();
  }

  if (v4 >= *(a1 + 16))
  {
    sub_101A269D4();
  }

  return v3 + 8 * v4;
}

_DWORD *sub_1000AC264(_DWORD *result, unsigned int a2, unsigned int a3)
{
  if (result[6] < a2)
  {
    sub_101AF29FC();
  }

  if (result[7] < a3)
  {
    sub_101AF29D0();
  }

  result[2] = a2;
  result[3] = a3;
  result[4] = a3 * a2;
  result[5] = a2;
  return result;
}

BOOL sub_1000AC2A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 <= 0)
  {
    sub_101BB4D24();
  }

  if (*(a3 + 8) != a2 || *(a3 + 12) != a2)
  {
    sub_101BB4CF8();
  }

  v6 = 0;
  v7 = 0;
  v8 = *(a1 + 128);
LABEL_8:
  v9 = 0;
  v10 = 0.0;
  while (1)
  {
    v11 = sub_1000AB4C0(a3, v9, v7);
    if (v11 < 0.0 || v11 > 1.0)
    {
      return v6;
    }

    v10 = v10 + v11;
    if (a2 == ++v9)
    {
      if (fabs(v10 + -1.0) <= v8)
      {
        v6 = ++v7 >= a2;
        if (v7 != a2)
        {
          goto LABEL_8;
        }
      }

      return v6;
    }
  }
}

double *sub_1000AC374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 12);
  if (v3 != *(a2 + 8))
  {
    sub_101A268A0();
  }

  if (a1 == a3)
  {
    sub_101A268F8();
  }

  if (a2 == a3)
  {
    sub_101A268CC();
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 12);
  result = sub_1000AB298(a3, *(a1 + 8), *(a2 + 12));
  if (v3 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v3;
  }

  if (v10 <= v7)
  {
    v10 = v7;
  }

  v11 = *(a1 + 32);
  if (v10 > 5)
  {
    return cblas_dgemm_NEWLAPACK();
  }

  if (v8)
  {
    v12 = 0;
    v13 = *(a2 + 32);
    v14 = *(a3 + 32);
    do
    {
      if (v7)
      {
        v15 = 0;
        v16 = v11;
        do
        {
          v17 = 0.0;
          if (v3)
          {
            v18 = v3;
            v19 = v13;
            result = v16;
            do
            {
              v20 = *v19++;
              v17 = v17 + *result * v20;
              result += v7;
              --v18;
            }

            while (v18);
          }

          *(v14 + 8 * v12 * v7 + 8 * v15++) = v17;
          ++v16;
        }

        while (v15 != v7);
      }

      ++v12;
      v13 += v3;
    }

    while (v12 != v8);
  }

  return result;
}

void sub_1000AC4D8(uint64_t a1)
{
  *(a1 + 184) = *(a1 + 248);
  *(a1 + 192) = sub_1000081AC();
  *buf = 1;
  v2 = sub_1000ABD54(a1, buf);
  *(a1 + 200) = 0;
  *(a1 + 216) = v2;
  *(a1 + 208) = 0;
  if (v2 > 0.525 && v2 <= 0.7)
  {
    v3 = xmmword_101CEFBC0;
LABEL_16:
    *(a1 + 200) = v3;
    goto LABEL_17;
  }

  if (v2 > 0.7 && v2 <= 0.9)
  {
    v4 = 2;
LABEL_7:
    v3 = vdupq_n_s64(v4);
    goto LABEL_16;
  }

  if (v2 > 0.9 && v2 <= 1.0)
  {
    v3 = xmmword_101C65490;
    goto LABEL_16;
  }

  if (v2 > 0.3 && v2 <= 0.45)
  {
    v4 = 1;
    goto LABEL_7;
  }

  if (v2 > 0.1 && v2 <= 0.3)
  {
    v3 = xmmword_101D17760;
    goto LABEL_16;
  }

  v15 = v2 > 0.1 || v2 <= 0.0;
  v16 = fabs(v2);
  if (!v15 || v16 < 2.22044605e-16)
  {
    v3 = xmmword_101D17750;
    goto LABEL_16;
  }

LABEL_17:
  if (qword_1025D4760 != -1)
  {
    sub_10030C654();
  }

  v6 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 184);
    v8 = *(a1 + 192);
    v9 = *(a1 + 200);
    v10 = *(a1 + 208);
    v11 = *(a1 + 232);
    v12 = *(a1 + 216);
    v13 = *(a1 + 224);
    v14 = *(a1 + 248);
    *buf = 134219777;
    v45 = v7;
    v46 = 2048;
    v47 = v8;
    v48 = 2049;
    v49 = v9;
    v50 = 2049;
    v51 = v10;
    v52 = 2049;
    v53 = v12;
    v54 = 1025;
    v55 = v11;
    v56 = 2049;
    v57 = v13;
    v58 = 2048;
    v59 = v14;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_updateOutdoorEstimate,startTime,%f,mctTimestampSec,%f,type,%{private}ld,confidence,%{private}ld,estimatedStateProbabilityOutdoor,%{private}f,isAstronomicalDaytime,%{private}d,daylightConfidence,%{private}ld,EstimatorTimeCfaSec,%f", buf, 0x4Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4760 != -1)
    {
      sub_101BB14F4();
    }

    v18 = *(a1 + 184);
    v19 = *(a1 + 192);
    v20 = *(a1 + 200);
    v21 = *(a1 + 208);
    v22 = *(a1 + 232);
    v23 = *(a1 + 216);
    v24 = *(a1 + 224);
    v25 = *(a1 + 248);
    v28 = 134219777;
    v29 = v18;
    v30 = 2048;
    v31 = v19;
    v32 = 2049;
    v33 = v20;
    v34 = 2049;
    v35 = v21;
    v36 = 2049;
    v37 = v23;
    v38 = 1025;
    v39 = v22;
    v40 = 2049;
    v41 = v24;
    v42 = 2048;
    v43 = v25;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4768, 2, "CLOutdoorEstimator_updateOutdoorEstimate,startTime,%f,mctTimestampSec,%f,type,%{private}ld,confidence,%{private}ld,estimatedStateProbabilityOutdoor,%{private}f,isAstronomicalDaytime,%{private}d,daylightConfidence,%{private}ld,EstimatorTimeCfaSec,%f", &v28, 78);
    v27 = v26;
    sub_100152C7C("Generic", 1, 0, 2, "void CLOutdoorEstimator::updateOutdoorEstimate()", "%s\n", v26);
    if (v27 != buf)
    {
      free(v27);
    }
  }
}

uint64_t sub_1000AC838(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_101AF2C38();
  }

  if (a2 < 0)
  {
    sub_101AF2C0C();
  }

  if (*(a1 + 16) <= a2)
  {
    sub_101AF2BE0();
  }

  return v2 + 8 * a2;
}

void sub_1000AC874(uint64_t a1, int a2, double a3)
{
  if (*(a1 + 257))
  {
    v6 = a3;
    v7 = 1;
    v8 = a2;
    sub_1000AC9F4(a1, &v6);
    if (qword_1025D4760 != -1)
    {
      sub_101B52FC8();
    }

    v4 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67174913;
      v10 = v8;
      v11 = 2048;
      v12 = a3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimatorController_feedMotionActivity,activityStateEvidence,%{private}d,currentTime,%f", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B532B0();
    }
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_101B52ED8();
    }

    v5 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimatorController,CLOutdoorEstimatorTurnOffMotionActivity", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B531DC();
    }
  }
}

void sub_1000AC9F4(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D4760 != -1)
  {
    sub_10030C654();
  }

  v4 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator,processEvidence(),Process ActivityState", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101BB2BF8();
  }

  *(a1 + 168) = *(a2 + 3);
  *(a1 + 176) = *a2;
  if (*(a1 + 240))
  {
    v39 = 0x100000001;
    *&v5 = 0x100000001;
    *(&v5 + 1) = 0x100000001;
    v38 = v5;
    v37 = off_1024E0058;
    v40 = &v41;
    *sub_1000AC220(&v37, 0, 0) = sub_1000ADBE8;
    v34 = 0x100000001;
    v32 = off_1024E00A0;
    *&v6 = 0x100000001;
    *(&v6 + 1) = 0x100000001;
    v33 = v6;
    v35 = &v36;
    __asm { FMOV            V0.2D, #-1.0 }

    v30 = _Q0;
    v31 = *a2;
    v29 = -1.0;
    if (sub_1000AD0C0(a1 + 136, *(a2 + 3), *(a1 + 160), &v29))
    {
      if (qword_1025D4760 != -1)
      {
        sub_101BB14F4();
      }

      v12 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),ActivityState,lookupActivityStateProbabilityGivenOutdoor failed", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BB2DC8();
      }
    }

    else if (v29 < 0.0 || v29 > 1.0 || (*&v29 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      if (qword_1025D4760 != -1)
      {
        sub_101BB14F4();
      }

      v15 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),ActivityState,lookupActivityStateProbabilityGivenOutdoor returned invalid probability", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BB2EAC();
      }
    }

    else
    {
      *(&v30 + 1) = v29;
      v29 = -1.0;
      if (sub_1000AB658(a1 + 136, *(a2 + 3), *(a1 + 160), &v29))
      {
        if (qword_1025D4760 != -1)
        {
          sub_101BB14F4();
        }

        v14 = qword_1025D4768;
        if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),ActivityState,lookupActivityStateProbabilityGivenIndoor failed", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101BB2F90();
        }
      }

      else if (v29 < 0.0 || v29 > 1.0 || (*&v29 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        if (qword_1025D4760 != -1)
        {
          sub_101BB14F4();
        }

        v18 = qword_1025D4768;
        if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),ActivityState,lookupActivityStateProbabilityGivenIndoor returned invalid probability", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101BB3074();
        }
      }

      else
      {
        *&v30 = v29;
        *sub_1000AC220(&v32, 0, 0) = &v30;
        sub_1000ABCB8(a1, buf);
        sub_1000AD1EC(&v52, &v37);
        sub_1000AD380(v28, &v32);
        v16 = sub_1000AD4D8(a1, 2, buf, 1, &v52, v28);
        if (v16)
        {
          if (qword_1025D4760 != -1)
          {
            sub_101BB14F4();
          }

          v17 = qword_1025D4768;
          if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v43) = v16;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),ActivityState,HMM update failed,%d", buf, 8u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101BB3158();
          }
        }

        else
        {
          if (qword_1025D4760 != -1)
          {
            sub_101BB14F4();
          }

          v19 = qword_1025D4768;
          if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
          {
            v20 = *a2;
            v21 = *(a2 + 3);
            v22 = *(a1 + 248);
            *buf = 134219009;
            v43 = v20;
            v44 = 1025;
            v45 = v21;
            v46 = 2048;
            v47 = v22;
            v48 = 2049;
            v49 = *(&v30 + 1);
            v50 = 2049;
            v51 = v30;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_ActivityState,evidenceCfatSec,%f,motionActivityType,%{private}d,EstimatorTimeCfaSec,%f,likelihoodObservationGivenOutdoor,%{private}f,likelihoodObservationGivenIndoor,%{private}f", buf, 0x30u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4760 != -1)
            {
              sub_101BB14F4();
            }

            v23 = *a2;
            v24 = *(a2 + 3);
            v25 = *(a1 + 248);
            v52 = 134219009;
            v53 = v23;
            v54 = 1025;
            v55 = v24;
            v56 = 2048;
            v57 = v25;
            v58 = 2049;
            v59 = *(&v30 + 1);
            v60 = 2049;
            v61 = v30;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4768, 2, "CLOutdoorEstimator_ActivityState,evidenceCfatSec,%f,motionActivityType,%{private}d,EstimatorTimeCfaSec,%f,likelihoodObservationGivenOutdoor,%{private}f,likelihoodObservationGivenIndoor,%{private}f", &v52, 48);
            v27 = v26;
            sub_100152C7C("Generic", 1, 0, 2, "void CLOutdoorEstimator::processEvidence(const CLOutdoorEstimator_Type::ActivityStateEvidence &)", "%s\n", v26);
            if (v27 != buf)
            {
              free(v27);
            }
          }

          sub_1000AC4D8(a1);
        }
      }
    }
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_101BB14F4();
    }

    v13 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),ActivityState,HMM Not initialized", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101BB2CE4();
    }
  }
}

uint64_t sub_1000AD0C0(uint64_t a1, int a2, unsigned int a3, double *a4)
{
  v5 = a3;
  if (a3 < 8)
  {
    v9 = sub_1000AB5C4(a1, a2);
    result = 0;
    v7 = dbl_101D7F380[v9] * dbl_101D7F3B0[2 * v5 + 1];
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_101BAFA70();
    }

    v6 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      v11 = v5;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,lookupActivityStateProbabilityGivenOutdoor(),latent probability index out of bound,%lu", &v10, 0xCu);
    }

    v7 = -1.0;
    if (sub_10000A100(121, 0))
    {
      sub_101BAFFD4();
    }

    result = 0xFFFFFFFFLL;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_1000AD1EC(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0x100000002;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1024DFF48;
  v3 = *(a2 + 8);
  if (v3 > 2)
  {
    v9 = "this->max_num_rows_ >= num_rows";
    v10 = 422;
LABEL_11:
    v11 = "cnmatrixbase.h";
    v12 = "SetMatrixSize";
    goto LABEL_15;
  }

  v5 = *(a2 + 12);
  if (v5 >= 2)
  {
    v9 = "this->max_num_cols_ >= num_cols";
    v10 = 423;
    goto LABEL_11;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v5;
  v6 = v5 * v3;
  *(a1 + 16) = v6;
  *(a1 + 20) = v3;
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 2u)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
LABEL_14:
    v11 = "cnmatrix.h";
    v12 = "CNMatrix";
LABEL_15:
    __assert_rtn(v12, v11, v10, v9);
  }

  if (*(a2 + 12) > 1u)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
    goto LABEL_14;
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      *(*(a1 + 32) + 8 * v7) = sub_1000AD344(a2, v7);
      ++v7;
    }

    while (v7 < *(a1 + 16));
  }

  return a1;
}

uint64_t sub_1000AD344(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_101BB4C1C();
  }

  if (a2 < 0)
  {
    sub_101BB4BF0();
  }

  if (*(a1 + 16) <= a2)
  {
    sub_101BB4BC4();
  }

  return *(v2 + 8 * a2);
}

uint64_t sub_1000AD380(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0x100000002;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1024DFFD0;
  v3 = *(a2 + 8);
  if (v3 > 2)
  {
    v9 = "this->max_num_rows_ >= num_rows";
    v10 = 422;
LABEL_11:
    v11 = "cnmatrixbase.h";
    v12 = "SetMatrixSize";
    goto LABEL_15;
  }

  v5 = *(a2 + 12);
  if (v5 >= 2)
  {
    v9 = "this->max_num_cols_ >= num_cols";
    v10 = 423;
    goto LABEL_11;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v5;
  v6 = v5 * v3;
  *(a1 + 16) = v6;
  *(a1 + 20) = v3;
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 2u)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
LABEL_14:
    v11 = "cnmatrix.h";
    v12 = "CNMatrix";
LABEL_15:
    __assert_rtn(v12, v11, v10, v9);
  }

  if (*(a2 + 12) > 1u)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
    goto LABEL_14;
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      *(*(a1 + 32) + 8 * v7) = sub_1000AD344(a2, v7);
      ++v7;
    }

    while (v7 < *(a1 + 16));
  }

  return a1;
}

uint64_t sub_1000AD4D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a2 <= 0)
  {
    sub_101BB257C();
  }

  v10 = a2;
  v12 = *(a1 + 128);
  v13 = *(a3 + 8);
  v14 = *(a3 + 12);
  if (v13)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (v13 <= v14)
    {
      v13 = *(a3 + 12);
    }

    if (v13 != a2)
    {
      sub_101BB244C();
    }

    for (i = 0; i != v10; ++i)
    {
      v17 = sub_1000AB25C(a3, i);
      if (v17 < 0.0 || v17 > 1.0)
      {
        sub_101BB2478();
      }
    }
  }

  if (a4 <= 0)
  {
    sub_101BB2550();
  }

  v19 = *(a5 + 8);
  v20 = *(a5 + 12);
  if (v19 <= v20)
  {
    v21 = *(a5 + 12);
  }

  else
  {
    v21 = *(a5 + 8);
  }

  if (v20)
  {
    v22 = v19 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  if (v23 != a4)
  {
    sub_101BB24A4();
  }

  v24 = *(a6 + 8);
  v25 = *(a6 + 12);
  if (v24 <= v25)
  {
    v26 = *(a6 + 12);
  }

  else
  {
    v26 = *(a6 + 8);
  }

  if (v25)
  {
    v27 = v24 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26;
  }

  if (v28 != a4)
  {
    sub_101BB24D0();
  }

  if (*(a3 + 8) && *(a3 + 12))
  {
    v57 = 0x100000002;
    v56 = xmmword_101D7F650;
    v55 = off_1024DFF00;
    v58 = v59;
    v29 = sub_1000ABE20(a3, 1, &v55);
    if (DWORD2(v56) != 1)
    {
      sub_101BB1720();
    }

    v30 = *v58;
    if (*v58 <= 0.0)
    {
      sub_101BB24FC();
    }

    if (fabs(v30 + -1.0) <= v12)
    {
      sub_1000ABF7C(&v55, a3);
      sub_1000AC10C(&v55, v10, 1);
      sub_1000AC16C(a1 + 8, &v55);
    }

    else
    {
      if (cnprint::CNPrinter::GetLogLevel(v29) <= 1)
      {
        LOWORD(v55) = 2;
        LOBYTE(v50) = 1;
        cnprint::CNPrinter::Print(&v55, &v50, "WARNING: HMM update passed a non-normalized probability vector.");
      }

      sub_1000ABF7C(&v50, a3);
      sub_1000AC10C(&v50, v10, 1);
      v57 = 0x100000002;
      v56 = xmmword_101D7F650;
      v55 = off_1024DFF00;
      v58 = v59;
      sub_1000AB504(&v50, &v55, 1.0 / v30);
      sub_1000AC16C(a1 + 8, &v55);
    }
  }

  else
  {
    sub_10131AD8C(&v50, v10, 1u);
    if (v52 < v10)
    {
      sub_101BB2528(2708, "nr <= O.MaxNumRows()");
    }

    if (!HIDWORD(v52))
    {
      sub_101BB2528(2709, "nc <= O.MaxNumCols()");
    }

    sub_1000AB298(&v50, v10, 1);
    sub_100323BB4(&v50, 1.0);
    v57 = 0x100000002;
    v56 = xmmword_101D7F650;
    v55 = off_1024DFF00;
    v58 = v59;
    sub_1000AB504(&v50, &v55, 1.0 / v10);
    sub_1000AC16C(a1 + 8, &v55);
  }

  sub_1000ABF7C(&v55, a1 + 8);
  v31 = 0;
  while (1)
  {
    v32 = sub_1000ADBAC(a5, v31);
    v52 = 0x100000002;
    v50 = off_1024DFF00;
    v51 = xmmword_101D7F650;
    v53 = &v54;
    v33 = sub_1000ADBAC(a6, v31);
    if (v32(v33, &v50))
    {
      break;
    }

    v34 = 0;
    v35 = 0.0;
    do
    {
      v36 = *sub_1000AC838(&v50, v34);
      if (v36 < 0.0 || v36 > 1.0)
      {
        LOWORD(v44) = 2;
        v49 = 4;
        cnprint::CNPrinter::Print(&v44, &v49, "ERROR: HMM emission probability matrix is invalid.", v36);
        return 30;
      }

      v35 = v35 + v36;
      ++v34;
    }

    while (v10 != v34);
    if (fabs(v35) <= v12)
    {
      LOWORD(v44) = 2;
      v49 = 4;
      cnprint::CNPrinter::Print(&v44, &v49, "ERROR: HMM emission probability matrix is null matrix");
      return 30;
    }

    for (j = 0; j != v10; ++j)
    {
      v39 = *sub_1000AC838(&v50, j);
      v40 = sub_1000AC838(&v55, j);
      *v40 = v39 * *v40;
    }

    v46 = 0x100000002;
    v44 = off_1024DFF00;
    v45 = xmmword_101D7F650;
    v47 = v48;
    v41 = sub_1000ABE20(&v55, 1, &v44);
    if (DWORD2(v45) != 1)
    {
      __assert_rtn("operator double", "cnmatrixbase.h", 979, "num_elements_ == 1");
    }

    v42 = *v47;
    if (fabs(*v47) < 2.22044605e-16)
    {
      if (cnprint::CNPrinter::GetLogLevel(v41) <= 1)
      {
        LOWORD(v44) = 2;
        v49 = 1;
        cnprint::CNPrinter::Print(&v44, &v49, "HMM state is null vector after update; revert to input state");
      }

      sub_1000AC16C(&v55, a1 + 8);
      v46 = 0x100000002;
      v44 = off_1024DFF00;
      v45 = xmmword_101D7F650;
      v47 = v48;
      sub_1000ABE20(&v55, 1, &v44);
      if (DWORD2(v45) != 1)
      {
        __assert_rtn("operator double", "cnmatrixbase.h", 979, "num_elements_ == 1");
      }

      v42 = *v47;
    }

    v46 = 0x100000002;
    v44 = off_1024DFF00;
    v45 = xmmword_101D7F650;
    v47 = v48;
    sub_1000AB504(&v55, &v44, 1.0 / v42);
    sub_1000AC16C(&v55, &v44);
    if (++v31 == a4)
    {
      sub_1000AC16C(a1 + 64, &v55);
      result = 0;
      *(a1 + 120) = 1;
      return result;
    }
  }

  LOWORD(v44) = 2;
  v49 = 4;
  cnprint::CNPrinter::Print(&v44, &v49, "ERROR: HMM emission function failed.");
  return 29;
}

uint64_t sub_1000ADBAC(uint64_t a1, signed int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_101BB49B4();
  }

  if (a2 < 0)
  {
    sub_101BB4988();
  }

  if (*(a1 + 16) <= a2)
  {
    sub_101BB495C();
  }

  return *(v2 + 8 * a2);
}

uint64_t sub_1000ADBE8(double *a1, _DWORD *a2)
{
  v3 = *a1;
  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v3 >= 0.0 ? (v4 = v3 <= 1.0) : (v4 = 0), !v4))
  {
    if (qword_1025D4760 != -1)
    {
      sub_10030C654();
    }

    v5 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      v6 = *a1;
      v17 = 134217984;
      v18 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "OutdoorEstimatorEmissionLikelihood,Invalid Likelihood Observation Given Indoor,likelihoodObservationGivenIndoor,%f", &v17, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101BB235C(a1);
    }

    return 0xFFFFFFFFLL;
  }

  v8 = (a1 + 1);
  v9 = a1[1];
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v9 >= 0.0 ? (v10 = v9 <= 1.0) : (v10 = 0), !v10))
  {
    if (qword_1025D4760 != -1)
    {
      sub_10030C654();
    }

    v11 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      v12 = *v8;
      v17 = 134217984;
      v18 = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "OutdoorEstimatorEmissionLikelihood,Invalid Likelihood Observation Given Outdoor,likelihoodObservationGivenOutdoor,%f", &v17, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101BB226C(v8);
    }

    return 0xFFFFFFFFLL;
  }

  sub_1000ADDF4(a2, 2u, 1);
  v14 = *a1;
  *sub_1000AC220(a2, 0, 0) = v14;
  v15 = *(a1 + 1);
  v16 = sub_1000AC220(a2, 1, 0);
  result = 0;
  *v16 = v15;
  return result;
}

_DWORD *sub_1000ADDF4(_DWORD *result, unsigned int a2, int a3)
{
  if (result[6] < a2)
  {
    sub_101BB4B98();
  }

  if (a3 < 0)
  {
    sub_101BB4B6C();
  }

  if (result[7] < a3)
  {
    sub_101BB4B40();
  }

  result[2] = a2;
  result[3] = a3;
  result[4] = a3 * a2;
  result[5] = a2;
  return result;
}

uint64_t sub_1000ADE3C(uint64_t a1, _DWORD *a2, double a3, double a4)
{
  if (*(a1 + 56) != 1)
  {
    return 0;
  }

  if (*(a1 + 8) <= 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v13 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 56);
      v15 = *(a1 + 8);
      *buf = 67240448;
      *v25 = v14;
      *&v25[4] = 2050;
      *&v25[6] = v15;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "KFCV:#Error,updateAltitudeRate,failed with invalid var,initialized,%{public}d,altVar,%{public}.2f", buf, 0x12u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101912E28(buf);
      v16 = *(a1 + 56);
      v17 = *(a1 + 8);
      v22 = 67240448;
      *v23 = v16;
      *&v23[4] = 2050;
      *&v23[6] = v17;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "KFCV:#Error,updateAltitudeRate,failed with invalid var,initialized,%{public}d,altVar,%{public}.2f", &v22, 18);
      v12 = v18;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::LCFusionAltitudePropagator::updateAltitudeRate(const double, const double, const LCFusionDynamicsMode &)", "%s\n", v18);
      if (v12 == buf)
      {
        return 0;
      }

LABEL_21:
      free(v12);
      return 0;
    }
  }

  else
  {
    if (a4 <= 0.0)
    {
      goto LABEL_7;
    }

    v7 = *a2 - 1;
    v8 = 4.0;
    if (v7 <= 9)
    {
      v8 = dbl_101C89760[v7];
    }

    if (v8 >= a4)
    {
      if (v7 > 9)
      {
        v19 = 1600.0;
      }

      else
      {
        v19 = dbl_101C897B0[v7];
      }

      if (a3 * a3 <= v19)
      {
        *(a1 + 16) = a3;
        *(a1 + 24) = a4 * a4;
        *(a1 + 40) = a3;
        return 1;
      }

      if (qword_1025D4770 != -1)
      {
        sub_1001D30A0();
      }

      v20 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *v25 = a3;
        *&v25[8] = 2050;
        *&v25[10] = a4;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "KFCV:invalid altRate,altRate,%{public}.2f,altRateUnc,%{public}.2f", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_101912E28(buf);
        v22 = 134349312;
        *v23 = a3;
        *&v23[8] = 2050;
        *&v23[10] = a4;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:invalid altRate,altRate,%{public}.2f,altRateUnc,%{public}.2f", &v22, 22);
        v12 = v21;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::LCFusionAltitudePropagator::updateAltitudeRate(const double, const double, const LCFusionDynamicsMode &)", "%s\n", v21);
LABEL_13:
        if (v12 == buf)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    else
    {
LABEL_7:
      if (qword_1025D4770 != -1)
      {
        sub_1001D30A0();
      }

      v9 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *v25 = a3;
        *&v25[8] = 2050;
        *&v25[10] = a4;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "KFCV:invalid altRateUnc,altRate,%{public}.2f,altRateUnc,%{public}.2f", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_101912E28(buf);
        v22 = 134349312;
        *v23 = a3;
        *&v23[8] = 2050;
        *&v23[10] = a4;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:invalid altRateUnc,altRate,%{public}.2f,altRateUnc,%{public}.2f", &v22, 22);
        v12 = v11;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::LCFusionAltitudePropagator::updateAltitudeRate(const double, const double, const LCFusionDynamicsMode &)", "%s\n", v11);
        goto LABEL_13;
      }
    }
  }

  return result;
}

void sub_1000AE2A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t *sub_1000AE2AC(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

BOOL sub_1000AE380(uint64_t a1, double *a2, double a3)
{
  v5 = *a2;
  v6 = *(a1 + 368);
  if (a3 < 0.0 || v5 >= v6)
  {
LABEL_14:
    *buf = v5;
    *v22 = 0;
    *&v22[8] = 0;
    *&v22[16] = vdupq_n_s64(0x3F847AE147AE147CuLL);
    v23 = 0;
    v11 = sub_1000AE5EC(a1, buf, *&v22[16]);
    if (*(a1 + 352) == 1)
    {
      v17 = v5;
      *v18 = xmmword_101C89500;
      return v11 & sub_1000AF298(a1, &v17, 0.0);
    }

    return v11;
  }

  if (v6 - v5 <= a3)
  {
    v5 = v6 + 0.001;
    goto LABEL_14;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1001D30A0();
  }

  v8 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 596);
    v10 = *(a1 + 368);
    *buf = 67240960;
    *&buf[4] = v9;
    *v22 = 2050;
    *&v22[2] = v10;
    *&v22[10] = 2050;
    *&v22[12] = v10 - v5;
    *&v22[20] = 2050;
    *&v22[22] = a3;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,time-lagged zupt is ignored,filter mct,%{public}.3f,zupt timelag,%{public}.3f,tolerance,%{public}.3f", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101912E28(buf);
    v13 = *(a1 + 596);
    v14 = *(a1 + 368);
    LODWORD(v17) = 67240960;
    HIDWORD(v17) = v13;
    *v18 = 2050;
    *&v18[2] = v14;
    *&v18[10] = 2050;
    *&v18[12] = v14 - v5;
    v19 = 2050;
    v20 = a3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,time-lagged zupt is ignored,filter mct,%{public}.3f,zupt timelag,%{public}.3f,tolerance,%{public}.3f", &v17, 38);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::zupt(const CFTimeInterval &, const double)", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  return 0;
}

void sub_1000AE5E0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

BOOL sub_1000AE5EC(uint64_t a1, uint64_t a2, int8x16_t a3)
{
  if ((*a1 & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v23 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a1 + 596);
      v25 = *a2;
      *buf = 67240448;
      v102 = v24;
      v103 = 2050;
      v104 = v25;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,filter is not initializedm, ENVelMeas Meas ignored,mct,%{public}.3f", buf, 0x12u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_101912E28(buf);
    v75 = *(a1 + 596);
    v76 = *a2;
    *v97 = 67240448;
    *&v97[4] = v75;
    *&v97[8] = 2050;
    *&v97[10] = v76;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,filter is not initializedm, ENVelMeas Meas ignored,mct,%{public}.3f", v97, 18);
    v22 = v77;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithEastingNorthingVelocity(const EastNorthVelocityMeasurement &)", "%s\n", v77);
    goto LABEL_69;
  }

  if (*a2 <= 0.0 || *(a2 + 24) <= 0.0 || (v5 = *(a2 + 32), v5 <= 0.0) || fabs(*(a2 + 8)) > 70.0 || fabs(*(a2 + 16)) > 70.0 || *(a2 + 40) > 0.616850275)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v6 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 596);
      v8 = *a2;
      v9 = *(a2 + 8);
      v10 = *(a2 + 16);
      v11 = *(a2 + 24);
      v12 = *(a2 + 32);
      v13 = *(a2 + 40);
      *buf = 67241729;
      v102 = v7;
      v103 = 2050;
      v104 = v8;
      v105 = 2049;
      v106 = v9;
      v107 = 2049;
      v108 = v10;
      v109 = 2050;
      v110 = v11;
      v111 = 2050;
      v112 = v12;
      v113 = 2050;
      v114 = v13;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,invalid/out-of-range ENVel Meas ignored,timetagMCT,%{public}.3f,VEmps,%{private}.2f,VNmps,%{private}.2f,VEvar,%{public}.2f,VNvar,%{public}.2f,DOTvar,%{public}.2f", buf, 0x44u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_101912E28(buf);
    v14 = *(a1 + 596);
    v15 = *a2;
    v16 = *(a2 + 8);
    v17 = *(a2 + 16);
    v18 = *(a2 + 24);
    v19 = *(a2 + 32);
    v20 = *(a2 + 40);
    *v97 = 67241729;
    *&v97[4] = v14;
    *&v97[8] = 2050;
    *&v97[10] = v15;
    *&v97[18] = 2049;
    *&v97[20] = v16;
    *&v97[28] = 2049;
    *&v97[30] = v17;
    *&v97[38] = 2050;
    *&v97[40] = v18;
    *v98 = 2050;
    *&v98[2] = v19;
    *&v98[10] = 2050;
    *&v98[12] = v20;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,invalid/out-of-range ENVel Meas ignored,timetagMCT,%{public}.3f,VEmps,%{private}.2f,VNmps,%{private}.2f,VEvar,%{public}.2f,VNvar,%{public}.2f,DOTvar,%{public}.2f", v97, 68);
    v22 = v21;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithEastingNorthingVelocity(const EastNorthVelocityMeasurement &)", "%s\n", v21);
    goto LABEL_69;
  }

  if (*a2 < *(a1 + 368))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v28 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a1 + 596);
      v30 = *(a1 + 368);
      v31 = *a2;
      *buf = 67240704;
      v102 = v29;
      v103 = 2050;
      v104 = v30;
      v105 = 2050;
      v106 = *&v31;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,old ENVel Meas ignored,filterMCT,%{public}.3f,ENVelMeasMCT,%{public}.3f", buf, 0x1Cu);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_101912E28(buf);
    v32 = *(a1 + 596);
    v33 = *(a1 + 368);
    v34 = *a2;
    *v97 = 67240704;
    *&v97[4] = v32;
    *&v97[8] = 2050;
    *&v97[10] = v33;
    *&v97[18] = 2050;
    *&v97[20] = v34;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,old ENVel Meas ignored,filterMCT,%{public}.3f,ENVelMeasMCT,%{public}.3f", v97, 28);
    v22 = v35;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithEastingNorthingVelocity(const EastNorthVelocityMeasurement &)", "%s\n", v35);
LABEL_69:
    if (v22 == buf)
    {
      return 0;
    }

LABEL_70:
    free(v22);
    return 0;
  }

  if ((*(a1 + 592) & 1) == 0)
  {
    if (!sub_10002980C(a1, a2))
    {
      if (qword_1025D4770 != -1)
      {
        sub_1001D30A0();
      }

      v54 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v55 = *(a1 + 596);
        v56 = *(a1 + 368);
        v57 = *a2;
        *buf = 67240704;
        v102 = v55;
        v103 = 2050;
        v104 = v56;
        v105 = 2050;
        v106 = *&v57;
        _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,filter time-update failed ENVel Meas ignored,filterMCT,%{public}.3f,ENVelMeasMCT,%{public}.3f", buf, 0x1Cu);
      }

      if (!sub_10000A100(121, 2))
      {
        return 0;
      }

      sub_101912E28(buf);
      v58 = *(a1 + 596);
      v59 = *(a1 + 368);
      v60 = *a2;
      *v97 = 67240704;
      *&v97[4] = v58;
      *&v97[8] = 2050;
      *&v97[10] = v59;
      *&v97[18] = 2050;
      *&v97[20] = v60;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,filter time-update failed ENVel Meas ignored,filterMCT,%{public}.3f,ENVelMeasMCT,%{public}.3f", v97, 28);
      v22 = v61;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithEastingNorthingVelocity(const EastNorthVelocityMeasurement &)", "%s\n", v61);
      goto LABEL_69;
    }

    v5 = *(a2 + 32);
  }

  v36 = *(a1 + 168);
  v37 = *(a1 + 192);
  v99 = *(a1 + 176);
  v100 = v37;
  v38 = *(a1 + 208);
  v39 = *(a1 + 264);
  v40 = *(a1 + 280);
  *&v97[32] = *(a1 + 248);
  *v98 = v39;
  v41 = *(a1 + 232);
  *&v98[16] = v40;
  v42 = *(a1 + 216);
  *v97 = v42;
  *&v97[16] = v41;
  v42.i64[0] = *(a1 + 248);
  v43 = *v42.i64 + v5;
  if (*v42.i64 + v5 <= 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v50 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      v51 = *(a1 + 596);
      *buf = 67240192;
      v102 = v51;
      _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,#Error,ENVelMeas velN innovation_var <= 0", buf, 8u);
    }

    if (!sub_10000A100(121, 0))
    {
      return 0;
    }

    sub_101912E28(buf);
    v52 = *(a1 + 596);
    LODWORD(v94.f64[0]) = 67240192;
    HIDWORD(v94.f64[0]) = v52;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "KFCV:,ID,%{public}d,#Error,ENVelMeas velN innovation_var <= 0", &v94, 8);
    v22 = v53;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithEastingNorthingVelocity(const EastNorthVelocityMeasurement &)", "%s\n", v53);
    if (v22 == buf)
    {
      return 0;
    }

    goto LABEL_70;
  }

  v44 = *(a1 + 216) / v43;
  v94.f64[0] = *(a1 + 184) / v43;
  v94.f64[1] = v44;
  v45 = *v42.i64 / v43;
  v46 = *(a1 + 280) / v43;
  v95 = v45;
  v96 = v46;
  *a3.i64 = *(a2 + 16) - *(a1 + 24);
  v47 = *a3.i64 * *a3.i64 / v43;
  v26 = v47 <= 100.0;
  if (v47 > 100.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v62 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v63 = *(a1 + 596);
      *buf = 67240704;
      v102 = v63;
      v103 = 2050;
      v104 = v47;
      v105 = 2050;
      v106 = 0x4059000000000000;
      _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,ENVelMeas velN innovation test failed,nis,%{public}.3f,threshold,%{public}.3f", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912E28(buf);
      v78 = *(a1 + 596);
      v88 = 67240704;
      v89 = v78;
      v90 = 2050;
      v91 = v47;
      v92 = 2050;
      v93 = 0x4059000000000000;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,ENVelMeas velN innovation test failed,nis,%{public}.3f,threshold,%{public}.3f", &v88, 28);
      v80 = v79;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithEastingNorthingVelocity(const EastNorthVelocityMeasurement &)", "%s\n", v79);
      if (v80 != buf)
      {
        free(v80);
      }
    }
  }

  else
  {
    *v42.i64 = *a3.i64 * *a3.i64;
    sub_1000AF8CC(a1, v94.f64, a3, 100.0, v42);
    sub_1000AFBD0(a1, &v94, 2, 1.0);
  }

  v64 = *(a1 + 288);
  v65 = v64 + *(a2 + 24);
  if (v65 <= 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_101912E6C();
    }

    v70 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      v71 = *(a1 + 596);
      *buf = 67240192;
      v102 = v71;
      _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,#Error,ENVelMeas velE innovation_var <= 0", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101912E28(buf);
      v81 = *(a1 + 596);
      v88 = 67240192;
      v89 = v81;
      LODWORD(v87) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "KFCV:,ID,%{public}d,#Error,ENVelMeas velE innovation_var <= 0", &v88, v87);
      v83 = v82;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithEastingNorthingVelocity(const EastNorthVelocityMeasurement &)", "%s\n", v82);
      if (v83 != buf)
      {
        free(v83);
      }
    }

    v26 = 0;
    *(a1 + 168) = v36;
    v72 = v100;
    *(a1 + 176) = v99;
    *(a1 + 192) = v72;
    *(a1 + 208) = v38;
    v73 = *v98;
    *(a1 + 248) = *&v97[32];
    *(a1 + 264) = v73;
    *(a1 + 280) = *&v98[16];
    v74 = *&v97[16];
    *(a1 + 216) = *v97;
    *(a1 + 232) = v74;
  }

  else
  {
    v66 = *(a1 + 224) / v65;
    v94.f64[0] = *(a1 + 192) / v65;
    v94.f64[1] = v66;
    v95 = *(a1 + 256) / v65;
    v96 = v64 / v65;
    *v48.i64 = *(a2 + 8) - *(a1 + 32);
    v67 = *v48.i64 * *v48.i64 / v65;
    if (v67 <= 100.0)
    {
      *v49.i64 = *v48.i64 * *v48.i64;
      sub_1000AF8CC(a1, v94.f64, v48, 100.0, v49);
      sub_1000AFBD0(a1, &v94, 3, 1.0);
    }

    else
    {
      if (qword_1025D4770 != -1)
      {
        sub_101912E6C();
      }

      v68 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v69 = *(a1 + 596);
        *buf = 67240704;
        v102 = v69;
        v103 = 2050;
        v104 = v67;
        v105 = 2050;
        v106 = 0x4059000000000000;
        _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,ENVelMeas velE innovation test failed,nis,%{public}.3f,threshold,%{public}.3f", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101912E28(buf);
        v84 = *(a1 + 596);
        v88 = 67240704;
        v89 = v84;
        v90 = 2050;
        v91 = v67;
        v92 = 2050;
        v93 = 0x4059000000000000;
        LODWORD(v87) = 28;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,ENVelMeas velE innovation test failed,nis,%{public}.3f,threshold,%{public}.3f", &v88, v87);
        v86 = v85;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithEastingNorthingVelocity(const EastNorthVelocityMeasurement &)", "%s\n", v85);
        if (v86 != buf)
        {
          free(v86);
        }
      }

      v26 = 0;
    }

    *(a1 + 168) = v36;
    *(a1 + 208) = v38;
    *(a1 + 592) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = 0;
  }

  return v26;
}

void sub_1000AF28C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1000AF298(uint64_t a1, double *a2, double a3)
{
  if ((*a1 & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v17 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 596);
      v19 = *a2;
      *buf = 67240448;
      v49 = v18;
      v50 = 2050;
      v51 = v19;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,filter is not initialized VVel Meas ignored,mct,%{public}.3f", buf, 0x12u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_101912E28(buf);
    v37 = *(a1 + 596);
    v38 = *a2;
    v40 = 67240448;
    v41 = v37;
    v42 = 2050;
    v43 = v38;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,filter is not initialized VVel Meas ignored,mct,%{public}.3f", &v40, 18);
    v16 = v39;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithVerticalVelocity(const VerticalVelocityMeasurement &)", "%s\n", v39);
LABEL_53:
    if (v16 != buf)
    {
      free(v16);
    }

    return 0;
  }

  if (*(a1 + 352) != 1)
  {
    return 0;
  }

  v5 = *a2;
  if (*a2 <= 0.0 || (v6 = a2[2], v6 <= 0.0))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v21 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 596);
      v23 = *a2;
      v24 = *(a2 + 1);
      v25 = *(a2 + 2);
      *buf = 67240961;
      v49 = v22;
      v50 = 2050;
      v51 = v23;
      v52 = 2049;
      v53 = v24;
      v54 = 2050;
      v55 = v25;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,invalid VVel Meas ignored,timetagMCT,%{public}.3f,VVel_mps,%{private}.2f,VVelVar,%{public}.2f", buf, 0x26u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_101912E28(buf);
    v26 = *(a1 + 596);
    v27 = *a2;
    v28 = *(a2 + 1);
    v29 = *(a2 + 2);
    v40 = 67240961;
    v41 = v26;
    v42 = 2050;
    v43 = v27;
    v44 = 2049;
    v45 = v28;
    v46 = 2050;
    v47 = v29;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,invalid VVel Meas ignored,timetagMCT,%{public}.3f,VVel_mps,%{private}.2f,VVelVar,%{public}.2f", &v40, 38);
    v16 = v30;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithVerticalVelocity(const VerticalVelocityMeasurement &)", "%s\n", v30);
    goto LABEL_53;
  }

  v7 = *(a1 + 368);
  if (v5 < v7)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v8 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 596);
      v10 = *(a1 + 368);
      v11 = *a2;
      *buf = 67240704;
      v49 = v9;
      v50 = 2050;
      v51 = v10;
      v52 = 2050;
      v53 = v11;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,old VVel Meas ignored,filterMCT,%{public}.3f,VVelMCT,%{public}.3f", buf, 0x1Cu);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_101912E28(buf);
    v12 = *(a1 + 596);
    v13 = *(a1 + 368);
    v14 = *a2;
    v40 = 67240704;
    v41 = v12;
    v42 = 2050;
    v43 = v13;
    v44 = 2050;
    v45 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,old VVel Meas ignored,filterMCT,%{public}.3f,VVelMCT,%{public}.3f", &v40, 28);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithVerticalVelocity(const VerticalVelocityMeasurement &)", "%s\n", v15);
    goto LABEL_53;
  }

  if (v5 > *(a1 + 344) + 0.001)
  {
    v31 = *(a1 + 360);
    v32 = (v5 - v7) * (v5 - v7);
    v33 = v32 * 0.5 * (v32 * 0.5);
    v34 = 9.0;
    v35 = 0.00694444444;
    if (v31 > 5)
    {
      if (v31 <= 7)
      {
        if (v31 == 6)
        {
          v33 = v33 * 0.100489;
          v34 = 4.0;
          v35 = 0.01;
        }

        goto LABEL_48;
      }

      switch(v31)
      {
        case 8:
          v34 = 25.0;
          v35 = 0.0625;
          goto LABEL_48;
        case 9:
          v33 = v33 * 9.0;
          v35 = 0.5;
          v34 = 225.0;
          goto LABEL_48;
        case 10:
          v33 = v33 * 1.0e10;
          v35 = 1.0;
          v34 = 1000000.0;
LABEL_48:
          sub_100028AA0(a1 + 296, v5, v33, v32 * (v34 * v35));
          v6 = a2[2];
          goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (v31 > 3)
    {
      if (v31 != 4)
      {
        v33 = v33 * 0.04;
        v35 = 0.0144927536;
        v34 = 0.49;
        goto LABEL_48;
      }
    }

    else
    {
      if (!v31)
      {
        goto LABEL_48;
      }

      if (v31 != 3)
      {
LABEL_39:
        v34 = 0.0;
        v33 = v33 * 0.0;
        v35 = 0.00694444444;
        if (v31 == 1)
        {
          v35 = 1.0;
        }

        if (v31 == 2)
        {
          v35 = 1.0;
        }

        goto LABEL_48;
      }
    }

    v33 = v33 * 0.04;
    v34 = 0.25;
    v35 = 0.0204081633;
    goto LABEL_48;
  }

LABEL_49:
  v36 = a2[1];

  return sub_1000ADE3C(a1 + 296, (a1 + 360), v36, v6);
}

void sub_1000AF8C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1000AF8CC(uint64_t a1, double *a2, int8x16_t a3, double a4, int8x16_t a5)
{
  v6 = *a3.i64;
  if (*(a1 + 456) == 1 && (*(a1 + 472) & 1) != 0)
  {
    goto LABEL_5;
  }

  v25 = 0;
  v26 = 0;
  if (sub_100208760((a1 + 512), &v26, &v25, *(a1 + 8) * 57.2957795, *(a1 + 408)))
  {
    v8 = v26;
    *(a1 + 448) = v25;
    *(a1 + 456) = 1;
    *(a1 + 464) = v8;
    *(a1 + 472) = 1;
LABEL_5:
    *a3.i64 = *(a1 + 8) + *a2 * v6 / *(a1 + 464);
    a5.i64[0] = 0x400921FB54442D18;
    v23 = a5;
    if (fabs(*a3.i64) > 3.14159265)
    {
      v9.f64[0] = NAN;
      v9.f64[1] = NAN;
      v22 = *vbslq_s8(vnegq_f64(v9), a5, a3).i64;
      *a3.i64 = fmod(*a3.i64 + v22, 6.28318531) - v22;
    }

    if (*a3.i64 >= 1.57079633)
    {
      v10 = v23;
      *a3.i64 = *v23.i64 - *a3.i64;
    }

    else
    {
      v10 = v23;
      if (*a3.i64 < -1.57079633)
      {
        *a3.i64 = -3.14159265 - *a3.i64;
      }
    }

    *(a1 + 8) = a3.i64[0];
    v14 = *(a1 + 448);
    v15 = *(a1 + 16);
    v16 = a2[1];
    if (v14 <= 0.0)
    {
      *a3.i64 = v15 + v16 * v6;
    }

    else
    {
      *a3.i64 = v15 + v16 * v6 / v14;
    }

    if (fabs(*a3.i64) > *v10.i64)
    {
      v17.f64[0] = NAN;
      v17.f64[1] = NAN;
      v24 = *vbslq_s8(vnegq_f64(v17), v10, a3).i64;
      *a3.i64 = fmod(*a3.i64 + v24, 6.28318531) - v24;
    }

    *(a1 + 16) = a3.i64[0];
    v18 = *(a1 + 32);
    *(a1 + 24) = *(a1 + 24) + a2[2] * v6;
    *(a1 + 32) = v18 + a2[3] * v6;
    return 1;
  }

  if (qword_1025D4770 != -1)
  {
    sub_101912E6C();
  }

  v11 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 596);
    *buf = 67240192;
    v29 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,#Error,updateStateVector calc_dNdE failed", buf, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101912E28(buf);
    v19 = *(a1 + 596);
    v27[0] = 67240192;
    v27[1] = v19;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "KFCV:,ID,%{public}d,#Error,updateStateVector calc_dNdE failed", v27, 8);
    v21 = v20;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::updateStateVector(const double, const std::array<double, 4> &)", "%s\n", v20);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  return 0;
}

void sub_1000AFBC4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

double sub_1000AFBD0(uint64_t a1, float64x2_t *a2, uint64_t a3, double a4)
{
  v5 = 0;
  v6 = (a1 + 168);
  v7 = *(a1 + 248);
  v47 = *(a1 + 232);
  v48 = v7;
  v8 = *(a1 + 280);
  v49 = *(a1 + 264);
  v50 = v8;
  v9 = *(a1 + 184);
  v43 = *(a1 + 168);
  v44 = v9;
  v10 = *(a1 + 216);
  v45 = *(a1 + 200);
  v46 = v10;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = (a1 + 168 + 32 * a3);
  v12 = v11 + 3;
  v13 = v11 + 2;
  v14 = vld1q_dup_f64(v11++);
  v15 = vld1q_dup_f64(v11);
  v16 = vld1q_dup_f64(v13);
  v17 = vld1q_dup_f64(v12);
  do
  {
    v18 = *a2++;
    v19 = vmulq_n_f64(v18, a4);
    v51.val[0] = vmulq_f64(v19, v14);
    v51.val[1] = vmulq_f64(v19, v15);
    v51.val[2] = vmulq_f64(v19, v16);
    v51.val[3] = vmulq_f64(v19, v17);
    v20 = (&v32 + v5);
    vst4q_f64(v20, v51);
    v5 += 64;
  }

  while (v5 != 128);
  for (i = 0; i != 16; i += 2)
  {
    *&v6[i] = vsubq_f64(*&v6[i], *(&v32 + i * 8));
  }

  if (*v6 <= 0.0 || *(a1 + 208) <= 0.0 || *(a1 + 248) <= 0.0 || (result = *(a1 + 288), result <= 0.0))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v23 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 596);
      *buf = 67240192;
      v42 = v24;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,#Error,error covariance matrix diagonal element < 0", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101912E28(buf);
      v29 = *(a1 + 596);
      v40[0] = 67240192;
      v40[1] = v29;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "KFCV:,ID,%{public}d,#Error,error covariance matrix diagonal element < 0", v40, 8, v32, v33, v34, v35, v36, v37, v38, v39);
      v31 = v30;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::updateErrorCovMat(const std::array<double, 4> &, std::size_t, const double)", "%s\n", v30);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    v25 = v48;
    *(v6 + 4) = v47;
    *(v6 + 5) = v25;
    v26 = v50;
    *(v6 + 6) = v49;
    *(v6 + 7) = v26;
    v27 = v44;
    *v6 = v43;
    *(v6 + 1) = v27;
    result = *&v45;
    v28 = v46;
    *(v6 + 2) = v45;
    *(v6 + 3) = v28;
  }

  return result;
}

void sub_1000AFE60(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void *sub_1000AFE74(void *a1, double *__dst, uint64_t a3, double *a4, uint64_t a5, uint64_t a6)
{
  v8 = __dst;
  if (__dst != a4)
  {
    while (*&a5 - *v8 <= *(a6 + 88))
    {
      v8 += 41;
      if ((v8 - *a1) == 5248)
      {
        v11 = a1[1];
        ++a1;
        v8 = v11;
      }

      if (v8 == a4)
      {
        v8 = a4;
        break;
      }
    }
  }

  if (v8 != a4)
  {
    v13 = v8;
    v14 = a1;
    while (1)
    {
      v13 += 41;
      if ((v13 - *v14) == 5248)
      {
        v15 = v14[1];
        ++v14;
        v13 = v15;
      }

      if (v13 == a4)
      {
        break;
      }

      if (*&a5 - *v13 <= *(a6 + 88))
      {
        memcpy(v8, v13, 0x148uLL);
        v8 += 41;
        if ((v8 - *a1) == 5248)
        {
          v16 = a1[1];
          ++a1;
          v8 = v16;
        }
      }
    }
  }

  return a1;
}

void sub_1000AFF84(uint64_t a1, __n128 a2, __n128 a3)
{
  if (qword_1025D4600 != -1)
  {
    sub_10023A174();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "WifiZMetrics, Attempt to publish z axis metric", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10174A6DC();
  }

  if (*(a1 + 176) == 1 && *(a1 + 192) == 1 && (*(a1 + 256) & 1) != 0)
  {
    if ((*(a1 + 280) & 1) != 0 || *(a1 + 160) != 1 || (v5 = *(a1 + 184), v6 = v5 - *(a1 + 136), v6 > 600.0) || v6 < 0.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_100312410();
      }

      v9 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "WifiZMetrics, publishMetricToCoreAnalytics, no good map match recently completed, return", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10174AA60();
      }
    }

    else
    {
      if ((*(a1 + 272) & 1) == 0)
      {
        goto LABEL_70;
      }

      if (vabdd_f64(*(a1 + 264), v5) > 3.0)
      {
        if (qword_1025D4600 != -1)
        {
          sub_100312410();
        }

        v7 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "WifiZMetrics, publishMetricToCoreAnalytics, device pressure based altitude and wifi z fix not close enough in time, return.", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10174A984();
        }

        return;
      }

      v10 = *(a1 + 248) - *(a1 + 144);
      if (v10 != 0.0 && v10 >= -450.0 && v10 <= 8850.0)
      {
        v11 = -1.0;
        if (*(a1 + 240) == 1 && *(a1 + 224) == 1 && (v12 = vabdd_f64(*(a1 + 232), v5), v12 <= 60.0))
        {
          v13 = *(a1 + 216);
          v11 = v12;
        }

        else
        {
          v13 = 0xBFF0000000000000;
        }

        v14 = *(a1 + 152);
        if (qword_1025D4600 != -1)
        {
          sub_100312410();
        }

        v15 = v10 + v14;
        v16 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          if ((*(a1 + 176) & 1) == 0 || (*(a1 + 208) & 1) == 0)
          {
            goto LABEL_70;
          }

          v17 = *(a1 + 168);
          v18 = *(a1 + 200);
          *buf = 134350336;
          v37 = v17;
          v38 = 2050;
          v39 = v15;
          v40 = 2050;
          v41 = v10;
          v42 = 2050;
          v43 = v18;
          v44 = 2050;
          v45 = v13;
          v46 = 2050;
          v47 = v11;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "WifiZMetrics, publish metric, LastWiFiZAlt_m,%{public}.3lf, groundTruthAltitudeEstimate_m,%{public}.3lf, altitudeChangeFromPressureDifference_m,%{public}.3lf,LastWiFiZAltUnc_m,%{public}.3lf,LastOutdoorProbability,%{public}.3lf,timeSinceOutdoorProb_s,%{public}.3lf", buf, 0x3Eu);
        }

        if (!sub_10000A100(121, 2))
        {
LABEL_49:
          AnalyticsSendEventLazy();
          if (*(a1 + 176) == 1)
          {
            *(a1 + 176) = 0;
          }

          if (*(a1 + 192) == 1)
          {
            *(a1 + 192) = 0;
          }

          if (*(a1 + 208) == 1)
          {
            *(a1 + 208) = 0;
          }

          if (*(a1 + 256) == 1)
          {
            *(a1 + 256) = 0;
          }

          return;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_100312410();
        }

        if (*(a1 + 176) & 1) != 0 && (*(a1 + 208))
        {
          v20 = *(a1 + 168);
          v21 = *(a1 + 200);
          v24 = 134350336;
          v25 = v20;
          v26 = 2050;
          v27 = v15;
          v28 = 2050;
          v29 = v10;
          v30 = 2050;
          v31 = v21;
          v32 = 2050;
          v33 = v13;
          v34 = 2050;
          v35 = v11;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "WifiZMetrics, publish metric, LastWiFiZAlt_m,%{public}.3lf, groundTruthAltitudeEstimate_m,%{public}.3lf, altitudeChangeFromPressureDifference_m,%{public}.3lf,LastWiFiZAltUnc_m,%{public}.3lf,LastOutdoorProbability,%{public}.3lf,timeSinceOutdoorProb_s,%{public}.3lf", &v24, 62);
          v23 = v22;
          sub_100152C7C("Generic", 1, 0, 2, "void CLBarometricAltimeter::WifiZaxisMetric::publishMetricToCoreAnalytics()", "%s\n", v22);
          if (v23 != buf)
          {
            free(v23);
          }

          goto LABEL_49;
        }

LABEL_70:
        sub_100173BA0();
      }

      if (qword_1025D4600 != -1)
      {
        sub_100312410();
      }

      v19 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        v37 = v10;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "WifiZMetrics, publishMetricToCoreAnalytics, invalid alt change from pressure difference, %{public}.3lf, return", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10174A894();
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_100312410();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "WifiZMetrics, publishMetricToCoreAnalytics, no good fix available, return", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10174A7B8();
    }
  }
}

id sub_1000B056C(void *a1, int a2, void *__src, size_t a4)
{
  if (a4 >= 0xE8)
  {
    v8 = 232;
  }

  else
  {
    v8 = a4;
  }

  memcpy(__dst, __src, v8);
  if (a4 >= 0xE9)
  {
    if (qword_1025D4200 != -1)
    {
      dispatch_once(&qword_1025D4200, &stru_1025024E0);
    }

    v9 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v46 = "N28CLMotionCoprocessorInterface16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
      v47 = 2048;
      v48 = 232;
      v49 = 2048;
      v50 = a4;
      v51 = 1024;
      v52 = a2;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "SIZE MISMATCH: %s=%lu vs sz=%zu notification=%d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4200 != -1)
      {
        dispatch_once(&qword_1025D4200, &stru_1025024E0);
      }

      v37 = 136315906;
      v38 = "N28CLMotionCoprocessorInterface16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
      v39 = 2048;
      v40 = 232;
      v41 = 2048;
      v42 = a4;
      v43 = 1024;
      v44 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 2, "SIZE MISMATCH: %s=%lu vs sz=%zu notification=%d", &v37, 38, v17, LODWORD(v18[0]));
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMotionNotifier::SiloDispatcher<CLMotionCoprocessorInterface::NotificationData>::dispatchData(int, const void *, size_t) [T = CLMotionCoprocessorInterface::NotificationData]", "%s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[6];
  v13 = a1[4];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000B08C4;
  v18[3] = &unk_102464C48;
  v18[4] = v12;
  v18[5] = v11;
  v31 = __dst[12];
  v32 = __dst[13];
  v27 = __dst[8];
  v28 = __dst[9];
  v30 = __dst[11];
  v29 = __dst[10];
  v23 = __dst[4];
  v24 = __dst[5];
  v26 = __dst[7];
  v25 = __dst[6];
  v19 = __dst[0];
  v20 = __dst[1];
  v22 = __dst[3];
  v21 = __dst[2];
  v33 = v36;
  v34 = v10;
  return [v13 async:v18];
}

uint64_t sub_1000B08C4(void *a1)
{
  result = (*(a1[4] + 16))();
  if (result)
  {
    v3 = a1[5];
    v4 = a1[35];

    return v3(a1 + 6, v4);
  }

  return result;
}

void *sub_1000B0920(void *result, double *a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a4)
  {
    while (*&a5 - *a2 <= *(a6 + 88))
    {
      a2 += 2;
      if ((a2 - *result) == 4096)
      {
        v6 = result[1];
        ++result;
        a2 = v6;
      }

      if (a2 == a4)
      {
        a2 = a4;
        break;
      }
    }
  }

  if (a2 != a4)
  {
    v7 = a2;
    v8 = result;
    while (1)
    {
      v7 += 2;
      if ((v7 - *v8) == 4096)
      {
        v9 = v8[1];
        ++v8;
        v7 = v9;
      }

      if (v7 == a4)
      {
        break;
      }

      if (*&a5 - *v7 <= *(a6 + 88))
      {
        *a2 = *v7;
        a2 += 2;
        if ((a2 - *result) == 4096)
        {
          v10 = result[1];
          ++result;
          a2 = v10;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000B09CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  CLMotionActivity::init(a2);
  *a2 = sub_1000B0AD8(a1);
  v4 = sub_1000B0AD8((a1 + 24));
  v5 = *(a1 + 29);
  *(a2 + 88) = v4;
  *(a2 + 92) = v5;
  *(a2 + 80) = *(a1 + 16) * 0.000001;
  v6 = *(a1 + 4);
  v7 = v6 == 3;
  if (v6 == 3)
  {
    v6 = 2;
  }

  *(a2 + 48) = v7;
  *(a2 + 4) = v6;
  v8 = *(a1 + 6);
  *(a2 + 12) = *(a1 + 5);
  *(a2 + 16) = v8;
  v9 = *(a1 + 84);
  *(a2 + 20) = v9 >= 0.75;
  *(a2 + 24) = v9;
  *(a2 + 52) = *(a1 + 11);
  *(a2 + 96) = *(a2 + 96) & 0xE0 | *(a1 + 36) & 0x1F;
  if (*(a1 + 38) - 1 < 3)
  {
    v10 = (*(a1 + 38) - 1) + 1;
  }

  else
  {
    v10 = 0;
  }

  *(a2 + 64) = v10;
  *(a2 + 74) = *(a1 + 46);
  result = sub_1000B0AD8((a1 + 56));
  *(a2 + 120) = *(a1 + 72);
  *(a2 + 100) = *(a1 + 37);
  *(a2 + 104) = result;
  if (*(a1 + 80) - 1 < 3)
  {
    v12 = (*(a1 + 80) - 1) + 1;
  }

  else
  {
    v12 = 0;
  }

  *(a2 + 128) = v12;
  return result;
}

uint64_t sub_1000B0AD8(int *a1)
{
  v1 = *a1;
  if (*a1 <= 255)
  {
    if (v1 == 128)
    {
      v5 = 6;
    }

    else
    {
      v5 = 0;
    }

    if (v1 == 64)
    {
      v6 = 8;
    }

    else
    {
      v6 = v5;
    }

    if (v1 == 32)
    {
      v7 = 41;
    }

    else
    {
      v7 = 0;
    }

    if (v1 == 16)
    {
      v8 = 4;
    }

    else
    {
      v8 = v7;
    }

    if (v1 <= 63)
    {
      v6 = v8;
    }

    if (v1 == 12)
    {
      v9 = 7;
    }

    else
    {
      v9 = 0;
    }

    if (v1 == 4)
    {
      v10 = 3;
    }

    else
    {
      v10 = v9;
    }

    if (v1 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    if (v1 == 1)
    {
      v11 = 1;
    }

    if (v1 <= 3)
    {
      v10 = v11;
    }

    v14 = __OFSUB__(v1, 15);
    v12 = v1 == 15;
    v13 = v1 - 15 < 0;
    goto LABEL_54;
  }

  if (v1 < 12288)
  {
    if (v1 == 0x2000)
    {
      v15 = 52;
    }

    else
    {
      v15 = 0;
    }

    if (v1 == 4096)
    {
      v6 = 5;
    }

    else
    {
      v6 = v15;
    }

    if (v1 == 512)
    {
      v16 = 11;
    }

    else
    {
      v16 = 0;
    }

    if (v1 == 256)
    {
      v10 = 10;
    }

    else
    {
      v10 = v16;
    }

    v14 = __OFSUB__(v1, 4095);
    v12 = v1 == 4095;
    v13 = v1 - 4095 < 0;
LABEL_54:
    if (v13 ^ v14 | v12)
    {
      return v10;
    }

    else
    {
      return v6;
    }
  }

  if (v1 < 196608)
  {
    if (v1 == 12288 || v1 == 0x4000)
    {
      return 56;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v1 == 0x200000)
    {
      v2 = 62;
    }

    else
    {
      v2 = 0;
    }

    if (v1 == 0x100000)
    {
      v3 = 61;
    }

    else
    {
      v3 = v2;
    }

    if (v1 == 196608)
    {
      return 41;
    }

    else
    {
      return v3;
    }
  }
}

double sub_1000B0BE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 128) = 0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_1000B09CC(a1 + 24, a2);
  *(a2 + 68) = *(a1 + 148);
  *(a2 + 72) = *(a1 + 152);
  v4 = *(a1 + 8);
  *(a2 + 40) = *a1;
  *(a2 + 80) = v4;
  result = *(a1 + 16);
  *(a2 + 112) = result;
  *(a2 + 32) = *(a1 + 144);
  return result;
}

void sub_1000B0C58(uint64_t a1, __int128 *a2)
{
  v3 = a2[7];
  v29 = a2[6];
  v30 = v3;
  v4 = a2[9];
  v31 = a2[8];
  v32 = v4;
  v5 = a2[3];
  v25 = a2[2];
  v26 = v5;
  v6 = a2[5];
  v27 = a2[4];
  v28 = v6;
  v7 = a2[1];
  v23 = *a2;
  v24 = v7;
  v8 = *(a1 + 280);
  if (v8)
  {
    (*(*v8 + 48))(v8, &v23);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = v9 + *(a1 + 48) - 1;
    v11 = *(a1 + 24);
    v12 = *(v11[v10 / 0x19] + 20 * (v10 % 0x19) + 1);
    if (v12 > *(&v23 + 1))
    {
      v13 = *(a1 + 32);
      *(a1 + 56) = 0;
      v14 = (v13 - v11) >> 3;
      if (v14 >= 3)
      {
        do
        {
          operator delete(*v11);
          v15 = *(a1 + 32);
          v11 = (*(a1 + 24) + 8);
          *(a1 + 24) = v11;
          v14 = (v15 - v11) >> 3;
        }

        while (v14 > 2);
      }

      if (v14 == 1)
      {
        v16 = 12;
      }

      else
      {
        if (v14 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101A89534();
          }

          v17 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v34 = *(&v23 + 1);
            v35 = 2048;
            v36 = v12;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A8955C();
          }

          goto LABEL_18;
        }

        v16 = 25;
      }

      *(a1 + 48) = v16;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_1000B1980((a1 + 16), &v23);
  v18 = v30;
  *(a1 + 192) = v29;
  *(a1 + 208) = v18;
  v19 = v32;
  *(a1 + 224) = v31;
  *(a1 + 240) = v19;
  v20 = v26;
  *(a1 + 128) = v25;
  *(a1 + 144) = v20;
  v21 = v28;
  *(a1 + 160) = v27;
  *(a1 + 176) = v21;
  v22 = v24;
  *(a1 + 96) = v23;
  *(a1 + 112) = v22;
}

void sub_1000B0EAC(uint64_t a1, double a2)
{
  v4 = (*(**(a1 + 24) + 96))(*(a1 + 24));
  v5.n128_f64[0] = a2;
  sub_1000B2F7C(v4, v5);
  v6 = (*(**(a1 + 24) + 104))(*(a1 + 24));
  v7.n128_f64[0] = a2;
  sub_1000B4344(v6, v7);
  v8 = (*(**(a1 + 24) + 112))(*(a1 + 24));
  v9.n128_f64[0] = a2;
  sub_1000B10BC(v8, v9);
  v10 = (*(**(a1 + 24) + 128))(*(a1 + 24));
  v11.n128_f64[0] = a2;
  sub_1000BD89C(v10, v11);
  v12 = (*(**(a1 + 24) + 120))(*(a1 + 24));
  v13.n128_f64[0] = a2;
  sub_1000B3CE8(v12, v13);
  v14 = (*(**(a1 + 24) + 136))(*(a1 + 24));
  v15.n128_f64[0] = a2;
  sub_1000BDB68(v14, v15);
  v16 = (*(**(a1 + 24) + 144))(*(a1 + 24));
  v17.n128_f64[0] = a2;
  sub_1000BE25C(v16, v17);
  v18 = (*(**(a1 + 24) + 160))(*(a1 + 24));
  v19.n128_f64[0] = a2;
  sub_1000B5844(v18, v19);
  v20 = (*(**(a1 + 24) + 152))(*(a1 + 24));
  v21.n128_f64[0] = a2;
  sub_1000BC28C(v20, v21);
  v22 = (*(**(a1 + 24) + 168))(*(a1 + 24));
  v23.n128_f64[0] = a2;
  sub_1000B5C90(v22, v23);
  *(a1 + 32) = a2;
}

void sub_1000B10BC(uint64_t result, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (result + 64);
  a2.n128_u64[0] = *(result + 64);
  *(result + 64) = v2;
  if (*(result + 8) == 1 && *(result + 72) < v2)
  {
    *(result + 8) = 0;
    v5 = *(*result + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(result + 24);
    v7 = *(result + 32);
    *(result + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(result + 32);
        v6 = (*(result + 24) + 8);
        *(result + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 8;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(result + 96) = 0xBFF0000000000000;
        if (*(result + 8) == 1)
        {
          sub_1000C042C(result);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019C9EAC();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019CA0B8();
        }

        return;
      }

      v10 = 16;
    }

    *(result + 48) = v10;
    goto LABEL_17;
  }

  if (*(result + 96) != -1.0)
  {
    v11 = *(result + 48);
    v12 = *(result + 24);
    v13 = *(result + 32);
    v14 = (v12 + 8 * (v11 >> 4));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (result + 56);
      v18 = (v12 + 8 * ((*(result + 56) + v11) >> 4));
    }

    else
    {
      v15 = (*v14 + 328 * (*(result + 48) & 0xFLL));
      v16 = (result + 56);
      v17 = *(result + 56) + v11;
      v18 = (v12 + 8 * (v17 >> 4));
      v19 = (*v18 + 328 * (v17 & 0xF));
    }

    v23 = sub_1000AFE74(v14, v15, v18, v19, *&v2, result);
    v24 = *(result + 48) + *(result + 56);
    v25 = *(result + 24);
    v26 = (v25 + 8 * (v24 >> 4));
    v27 = *(result + 32) == v25 ? 0 : (*v26 + 328 * (v24 & 0xF));
    sub_1000A28B0((result + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(result + 96) = 0xBFF0000000000000;
    }
  }
}

void sub_1000B13B0(uint64_t a1, uint64_t a2)
{
  sub_1000B0C58(a1 + 24, a2);
  if (qword_1025D4760 != -1)
  {
    sub_101A89240();
  }

  v4 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_INFO))
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 24);
    v7 = 134218240;
    v8 = v5;
    v9 = 1024;
    v10 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Received motion state, startTime, %f, activityType, %u", &v7, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A89424(a2);
  }

  sub_1000B17F4(a1, *(a2 + 8));
}

uint64_t sub_1000B14B8(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

void sub_1000B14E0(uint64_t *a1, uint64_t a2)
{
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  sub_1000B0BE8(a2, &v29);
  if (qword_1025D4760 != -1)
  {
    sub_1019CA8C0();
  }

  v4 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1;
    if (*(a1 + 23) < 0)
    {
      v5 = *a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 144);
    v8 = *(a2 + 112);
    v9 = *(a2 + 116);
    v10 = *(a2 + 132);
    v11 = *(a2 + 136);
    v12 = *(a2 + 128);
    v13 = *(a2 + 124);
    v14 = *(a2 + 120);
    v15 = *(a2 + 140);
    *buf = 136317954;
    v63 = v5;
    v64 = 2048;
    v65 = v6;
    v66 = 1024;
    v67 = v29;
    v68 = 1024;
    v69 = v7;
    v70 = 2048;
    v71 = v8;
    v72 = 2048;
    v73 = v9;
    v74 = 2048;
    v75 = v10;
    v76 = 2048;
    v77 = v11;
    v78 = 2048;
    v79 = v12;
    v80 = 2048;
    v81 = v13;
    v82 = 2048;
    v83 = v14;
    v84 = 1024;
    v85 = v15;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Activity,context,%s,startTime,%f,type,%u,standing,%d,angeX,%f,vectorMag,%f,strokeAmp,%f,strokePwr,%f,strokeFreq,%f,machineFreq,%f,pushVectorMag,%f,epochType,%d", buf, 0x6Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4760 != -1)
    {
      sub_1019CA8C0();
    }

    if (*(a1 + 23) < 0)
    {
      a1 = *a1;
    }

    v16 = *(a2 + 8);
    v17 = *(a2 + 144);
    v18 = *(a2 + 112);
    v19 = *(a2 + 116);
    v20 = *(a2 + 132);
    v21 = *(a2 + 136);
    v22 = *(a2 + 128);
    v23 = *(a2 + 124);
    v24 = *(a2 + 120);
    v25 = *(a2 + 140);
    v38 = 136317954;
    v39 = a1;
    v40 = 2048;
    v41 = v16;
    v42 = 1024;
    v43 = v29;
    v44 = 1024;
    v45 = v17;
    v46 = 2048;
    v47 = v18;
    v48 = 2048;
    v49 = v19;
    v50 = 2048;
    v51 = v20;
    v52 = 2048;
    v53 = v21;
    v54 = 2048;
    v55 = v22;
    v56 = 2048;
    v57 = v23;
    v58 = 2048;
    v59 = v24;
    v60 = 1024;
    v61 = v25;
    LODWORD(v28) = 110;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4768, 2, "Activity,context,%s,startTime,%f,type,%u,standing,%d,angeX,%f,vectorMag,%f,strokeAmp,%f,strokePwr,%f,strokeFreq,%f,machineFreq,%f,pushVectorMag,%f,epochType,%d", &v38, v28, v29, DWORD2(v29), *&v30, *(&v30 + 1), *&v31, *(&v31 + 1), *&v32, *(&v32 + 1), *&v33, DWORD2(v33));
    v27 = v26;
    sub_100152C7C("Generic", 1, 0, 2, "void CLOutdoorInputs::logActivity(const CLOutdoorActivity &)", "%s\n", v26);
    if (v27 != buf)
    {
      free(v27);
    }
  }
}

void sub_1000B17F4(uint64_t a1, double a2)
{
  v11 = a2;
  sub_1000A2B60((a1 + 8968), &v11);
  if ((*a1 & 1) == 0 && *(a1 + 9008))
  {
    do
    {
      v3 = objc_autoreleasePoolPush();
      v4 = *(*(*(a1 + 8976) + ((*(a1 + 9000) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 9000) & 0x1FFLL));
      *(a1 + 9000) = vaddq_s64(*(a1 + 9000), xmmword_101C66230);
      sub_1000A2BE8(a1 + 8968, 1);
      sub_1000B0EAC(a1 + 2512, v4);
      sub_1000B9B5C(a1 + 2552, v10, v4);
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 16))(v5, v10);
      }

      sub_1000C61E8(a1 + 6392, v10, &__p);
      v6 = __p;
      if (*(a1 + 6376))
      {
        v7 = v9;
        if (__p != v9)
        {
          do
          {
            sub_100ED4008(*(a1 + 6376), v6);
            v6 += 2;
          }

          while (v6 != v7);
          v6 = __p;
        }
      }

      if (v6)
      {
        v9 = v6;
        operator delete(v6);
      }

      objc_autoreleasePoolPop(v3);
    }

    while (*(a1 + 9008));
  }
}

void sub_1000B1964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1000B1980(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 25 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10028C478(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x19)) + 160 * (v7 % 0x19);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 80);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 80) = v12;
  *(v8 + 32) = v10;
  *(v8 + 48) = v11;
  result = *(a2 + 96);
  v14 = *(a2 + 112);
  v15 = *(a2 + 144);
  *(v8 + 128) = *(a2 + 128);
  *(v8 + 144) = v15;
  *(v8 + 96) = result;
  *(v8 + 112) = v14;
  ++a1[5];
  return result;
}

void sub_1000B1A58(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];

  sub_1000B1AB0(a2, a1, 0);
}

void sub_1000B1AB0(uint64_t a1, uint64_t a2, char a3)
{
  *buf = 5;
  if (sub_10000608C(a1, buf, 1))
  {
    v5 = (*(**(a1 + 6680) + 40))(*(a1 + 6680));
    sub_10069B530(v5);
  }

  sub_1000B1EF4(a1 + 6648, a2);
  v6 = *(a1 + 8736);
  if (v6)
  {
    sub_10071E75C(v6);
  }

  v7 = *(a1 + 10160);
  if (v7)
  {
    sub_100FD68FC(v7);
  }

  if (*(a1 + 9856) > *(a2 + 8))
  {
    (*(**(a1 + 8264) + 24))(*(a1 + 8264));
  }

  if (!*(a1 + 8256))
  {
    if (qword_1025D44D0 != -1)
    {
      sub_101901508();
    }

    v8 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "IndoorOutdoor detector running without turn detector.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101901530();
    }
  }

  (*(**(a1 + 8264) + 16))(*(a1 + 8264), *(a2 + 8));
  *(a1 + 9856) = *(a2 + 8);
  *&v18 = 0;
  *(&v18 + 1) = 7;
  Current = CFAbsoluteTimeGetCurrent();
  if (sub_1000BC56C(a1 + 3760, &v18, Current))
  {
    v11 = sub_100023ED4(0, v10);
    buf[0] = sub_100EA038C(&v18 + 2);
    *&buf[4] = HIDWORD(v18);
    v12 = CFAbsoluteTimeGetCurrent();
    v20[0] = sub_100F9AEB4((a1 + 6680), v12, 23.0);
    (*(*(v11 + 96) + 40))(v11 + 96, buf);
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_1000B0BE8(a2, v16);
  if (*(a1 + 592) == 1)
  {
    LODWORD(v16[0]) = 18200;
  }

  v15 = *(a1 + 376);
  sub_10001A3E8(v13, v14);
  if (sub_10001CF3C())
  {
    if (v15)
    {
      LODWORD(v16[0]) = CLMotionActivity::remapActivityTypeForWheelchairUsers();
    }
  }

  sub_1000C1934(a1 + 136, v16);
}

uint64_t sub_1000B1EF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 712);
  if (v4 != 0x7FFFFFFF && *(a1 + 1372) == 1)
  {
    v5 = *(a1 + 716) + 1;
    *(a1 + 716) = v5;
    if (v5 >= v4)
    {
      if ((*(*a1 + 16))(a1))
      {
        sub_1000CE87C(a1 + 8, 13, buf);
      }
    }
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  sub_1000B0BE8(a2, v27);
  sub_1000B2824(a1, v27);
  if (*(&v30 + 1) != *(a1 + 688))
  {
    *(a1 + 688) = *(&v30 + 1);
    v6 = sub_100D30940(a1, a2);
    if (*(a1 + 688))
    {
      v7 = v6;
      v8 = v30;
      v9 = sub_1000C0CAC([CMWorkout CMWorkoutTypeFromCLMotionActivityType:DWORD2(v29)]);
      v23 = v8;
      v24 = v28;
      v25 = v9;
      v26 = v7;
      if (qword_1025D43F0 != -1)
      {
        sub_101A681F8();
      }

      v10 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349568;
        *&buf[4] = v9;
        *&buf[12] = 2050;
        *&buf[14] = v8;
        *&buf[22] = 1026;
        LODWORD(v39) = v7;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "CLAS,new AP escalation detected for workout type,%{public}ld,startTime,%{public}f,is early detection,%{public}d", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D43F0 != -1)
        {
          sub_101A681F8();
        }

        v32 = 134349568;
        v33 = v9;
        v34 = 2050;
        v35 = v8;
        v36 = 1026;
        v37 = v7;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 0, "CLAS,new AP escalation detected for workout type,%{public}ld,startTime,%{public}f,is early detection,%{public}d", &v32, 28, v23, v24, v25, v26);
        v22 = v21;
        sub_100152C7C("Generic", 1, 0, 2, "void CLWorkoutPredictor::feedMotionStateUpdate(const CLWorkoutPredictorActivity &)", "%s\n", v21);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      if ((*(*a1 + 16))(a1))
      {
        sub_1000CE87C(a1 + 8, 1, &v23);
      }
    }
  }

  v11 = *(a1 + 488) + 1;
  *(a1 + 488) = v11;
  if (v11 >= 0x17)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_101A681F8();
    }

    v12 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 24);
      *buf = 67240448;
      *&buf[4] = v13;
      *&buf[8] = 1024;
      *&buf[10] = v27[0];
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Current state of Workout Predictor: %{public}d,motiontype,%d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A68ADC();
    }

    *(a1 + 488) = 0;
  }

  sub_1000B23B4((a1 + 32), a2);
  v14 = *(a2 + 8);
  if (*(a1 + 480) > v14)
  {
    v15 = *(a1 + 424);
    if (v15)
    {
      sub_101255E68(v15);
    }

    v16 = *(a1 + 472);
    if (v16)
    {
      sub_1007465F0(v16);
    }

    nullsub_34();
    v14 = *(a2 + 8);
  }

  *(a1 + 480) = v14;
  sub_1000BEE88((a1 + 1352));
  v17 = *(a1 + 424);
  if (v17)
  {
    sub_10125653C(v17);
  }

  v18 = *(a1 + 432);
  if (v18)
  {
    (*(*v18 + 16))(v18);
  }

  sub_1000BFEAC(*(a1 + 1416), (a1 + 32));
  v19 = *(a1 + 472);
  if (v19)
  {
    sub_100746834(v19);
  }

  if (sub_1000C0B18(*(a1 + 1416), a1 + 1376))
  {
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    *&buf[8] = 0u;
    *buf = *(a1 + 1376);
    sub_100746770(a1 + 1432, 7);
  }

  return sub_1000C0BC0(a1);
}

void sub_1000B23B4(double *a1, uint64_t a2)
{
  v3 = a1[37];
  v4 = *(a2 + 8);
  sub_1000B0C58((a1 + 1), a2);
  v5.n128_u64[0] = v4;
  sub_1000B2F7C((a1 + 1), v5);
  v6 = (*(**a1 + 104))();
  v7.n128_u64[0] = v4;
  sub_1000B32B0(v6, v7);
  v8 = (*(**a1 + 112))();
  v9.n128_u64[0] = v4;
  sub_1000B3A10(v8, v9);
  v10 = (*(**a1 + 120))();
  v11.n128_u64[0] = v4;
  sub_1000B3CE8(v10, v11);
  v12 = (*(**a1 + 128))();
  v13.n128_u64[0] = v4;
  sub_1000B4024(v12, v13);
  v14 = (*(**a1 + 136))();
  v15.n128_u64[0] = v4;
  sub_1000B10BC(v14, v15);
  v16 = (*(**a1 + 144))();
  v17.n128_u64[0] = v4;
  sub_1000B488C(v16, v17);
  v18 = (*(**a1 + 152))();
  v19.n128_u64[0] = v4;
  sub_1000B4BB8(v18, v19);
  v20 = (*(**a1 + 160))();
  v21.n128_u64[0] = v4;
  sub_1000BDB68(v20, v21);
  v22 = (*(**a1 + 168))();
  v23.n128_u64[0] = v4;
  sub_1000BDF40(v22, v23);
  v24 = (*(**a1 + 176))();
  v25.n128_u64[0] = v4;
  sub_1000B4F8C(v24, v25);
  v26 = (*(**a1 + 184))();
  v27.n128_u64[0] = v4;
  sub_1000B5260(v26, v27);
  v28 = (*(**a1 + 192))();
  v29.n128_u64[0] = v4;
  sub_1000B5568(v28, v29);
  v30 = (*(**a1 + 200))();
  v31.n128_u64[0] = v4;
  sub_1000BE8A4(v30, v31);
  v32 = *&v4 <= v3 || a1[37] == -1.0;
  v33 = *&v4 - v3;
  if (v32)
  {
    v33 = 0.0;
  }

  a1[40] = v33;
  a1[37] = *&v4;
}

void sub_1000B268C(uint64_t a1)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_1000B0BE8(a1, v13);
  if (qword_1025D43F0 != -1)
  {
    sub_101AE9F58();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 144);
    v5 = *(a1 + 112);
    v6 = *(a1 + 116);
    v7 = *(a1 + 132);
    v8 = *(a1 + 136);
    v9 = *(a1 + 128);
    v10 = *(a1 + 124);
    v11 = *(a1 + 120);
    v12 = *(a1 + 140);
    *buf = 134220544;
    v16 = v3;
    v17 = 1024;
    v18 = v13[0];
    v19 = 1024;
    v20 = v4;
    v21 = 2048;
    v22 = v5;
    v23 = 2048;
    v24 = v6;
    v25 = 2048;
    v26 = v7;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v9;
    v31 = 2048;
    v32 = v10;
    v33 = 2048;
    v34 = v11;
    v35 = 1024;
    v36 = v12;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Activity,%f,type,%u,standing,%d,angeX,%f,vectorMag,%f,strokeAmp,%f,strokePwr,%f,strokeFreq,%f,machineFreq,%f,pushVectorMag,%f,epochType,%d", buf, 0x64u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AEAD38(a1, v13);
  }
}

void sub_1000B2824(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 520) != 1 || *(a1 + 24))
  {
    return;
  }

  v4 = sub_1000081AC();
  if ((*(a1 + 504) & 1) == 0 && (CLMotionActivity::isTypeWalking() & 1) == 0)
  {
    *(a1 + 496) = v4;
    *(a1 + 504) = 1;
    if (qword_1025D43F0 != -1)
    {
      sub_101A68264();
    }

    v8 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 504) & 1) == 0)
      {
        goto LABEL_63;
      }

      v9 = *(a1 + 496);
      v10 = *a2;
      *buf = 134218240;
      *v36 = v9;
      *&v36[8] = 1024;
      *&v36[10] = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "CLAS,user switched out of walking state,%.1lf,type,%d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_101A681F8();
      }

      if ((*(a1 + 504) & 1) == 0)
      {
        sub_100173BA0();
      }

      v15 = *(a1 + 496);
      v16 = *a2;
      v29 = 134218240;
      v30 = v15;
      v31 = 1024;
      LODWORD(v32) = v16;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 0, "CLAS,user switched out of walking state,%.1lf,type,%d", COERCE_DOUBLE(&v29), 18);
      v18 = v17;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWorkoutPredictor::reactivateEarlyWorkoutDetectionIfNecessary(const CLMotionActivity &)", "%s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    goto LABEL_22;
  }

  if (CLMotionActivity::isTypeWalking())
  {
    if (*(a1 + 504) != 1)
    {
LABEL_14:
      if (*(a1 + 504) == 1)
      {
        *(a1 + 504) = 0;
      }

      goto LABEL_22;
    }

    if (qword_1025D43F0 != -1)
    {
      sub_101A68264();
    }

    v5 = qword_1025D43F8;
    if (!os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:
      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D43F0 != -1)
        {
          sub_101A681F8();
        }

        if ((*(a1 + 504) & 1) == 0)
        {
          sub_100173BA0();
        }

        v22 = *(a1 + 496);
        v23 = *a2;
        v29 = 134218240;
        v30 = v22;
        v31 = 1024;
        LODWORD(v32) = v23;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 0, "CLAS,user switched back into walking state,%.1lf,type,%d", COERCE_DOUBLE(&v29), 18);
        v25 = v24;
        sub_100152C7C("Generic", 1, 0, 2, "void CLWorkoutPredictor::reactivateEarlyWorkoutDetectionIfNecessary(const CLMotionActivity &)", "%s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      goto LABEL_14;
    }

    if (*(a1 + 504))
    {
      v6 = *(a1 + 496);
      v7 = *a2;
      *buf = 134218240;
      *v36 = v6;
      *&v36[8] = 1024;
      *&v36[10] = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLAS,user switched back into walking state,%.1lf,type,%d", buf, 0x12u);
      goto LABEL_13;
    }

LABEL_63:
    sub_100173BA0();
  }

LABEL_22:
  v27 = 0x4088600000000000;
  v28 = 0x405E000000000000;
  if ((atomic_load_explicit(&qword_10265E3D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10265E3D0))
  {
    sub_10183A3AC(buf, "kMaxTimeSinceLastWalkingStateBeforeResetEarlyWorkoutDetectionS", &v28, 0);
    qword_10265E3C8 = *&v36[4];
    __cxa_guard_release(&qword_10265E3D0);
  }

  if ((atomic_load_explicit(&qword_10265E3E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10265E3E0))
  {
    sub_10183A3AC(buf, "kMaxTimeSinceEscalationBeforeResetEarlyWorkoutDetectionS", &v27, 0);
    qword_10265E3D8 = *&v36[4];
    __cxa_guard_release(&qword_10265E3E0);
  }

  if (*(a1 + 504) == 1)
  {
    v11 = vabdd_f64(v4, *(a1 + 496));
    if (v11 >= *&qword_10265E3C8)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_101A681F8();
      }

      v12 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *v36 = v11;
        *&v36[8] = 2048;
        *&v36[10] = qword_10265E3C8;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "CLAS,enable early workout detection due to non-walking timeout,timeSinceLastWalkingStateS,%.1lf,maxTimeSinceLastWalkingStateBeforeResetEarlyWorkoutDetectionS,%.0lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A68BE4(v11);
      }

      sub_10049CCE8(a1 + 1552, (a1 + 592), *(a1 + 512), *(a1 + 520), 0);
      sub_100D302C8(a1, 0);
      if (*(a1 + 504) == 1)
      {
        *(a1 + 504) = 0;
      }
    }
  }

  else
  {
    if ((*(a1 + 520) & 1) == 0)
    {
      sub_100173BA0();
    }

    if (v4 - *(a1 + 512) > *&qword_10265E3D8)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_101A681F8();
      }

      v13 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(a1 + 520) & 1) == 0)
        {
          sub_100173BA0();
        }

        v14 = *(a1 + 512);
        *buf = 134349568;
        *v36 = v14;
        *&v36[8] = 2050;
        *&v36[10] = v4;
        v37 = 2048;
        v38 = qword_10265E3D8;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "CLAS,enable early workout detection due to time out since first escalated,last update,%{public}.1lf,current time,%{public}.1lf,maxTimeInSecondsBeforeResetEarlyWorkoutDetection,%.0lf", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D43F0 != -1)
        {
          sub_101A681F8();
        }

        if ((*(a1 + 520) & 1) == 0)
        {
          sub_100173BA0();
        }

        v19 = *(a1 + 512);
        v29 = 134349568;
        v30 = v19;
        v31 = 2050;
        v32 = v4;
        v33 = 2048;
        v34 = qword_10265E3D8;
        LODWORD(v26) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 0, "CLAS,enable early workout detection due to time out since first escalated,last update,%{public}.1lf,current time,%{public}.1lf,maxTimeInSecondsBeforeResetEarlyWorkoutDetection,%.0lf", &v29, v26, v27, v28);
        v21 = v20;
        sub_100152C7C("Generic", 1, 0, 2, "void CLWorkoutPredictor::reactivateEarlyWorkoutDetectionIfNecessary(const CLMotionActivity &)", "%s\n", v20);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      sub_10049CCE8(a1 + 1552, (a1 + 592), *(a1 + 512), *(a1 + 520), 0);
      sub_100D302C8(a1, 0);
    }
  }
}

void sub_1000B2F7C(uint64_t result, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (result + 64);
  a2.n128_u64[0] = *(result + 64);
  *(result + 64) = v2;
  if (*(result + 8) == 1 && *(result + 72) < v2)
  {
    *(result + 8) = 0;
    v5 = *(*result + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(result + 24);
    v7 = *(result + 32);
    *(result + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(result + 32);
        v6 = (*(result + 24) + 8);
        *(result + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 12;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(result + 104) = 0xBFF0000000000000;
        if (*(result + 8) == 1)
        {
          sub_100A3B02C(result);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019C9EAC();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019C9EC0();
        }

        return;
      }

      v10 = 25;
    }

    *(result + 48) = v10;
    goto LABEL_17;
  }

  if (*(result + 104) != -1.0)
  {
    v11 = *(result + 48);
    v12 = *(result + 24);
    v13 = *(result + 32);
    v14 = (v12 + 8 * (v11 / 0x19));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (result + 56);
      v18 = (v12 + 8 * ((*(result + 56) + v11) / 0x19));
    }

    else
    {
      v15 = *(v12 + 8 * (v11 / 0x19)) + 160 * (v11 % 0x19);
      v16 = (result + 56);
      v17 = *(result + 56) + v11;
      v18 = (v12 + 8 * (v17 / 0x19));
      v19 = *v18 + 160 * (v17 % 0x19);
    }

    v23 = sub_1000B387C(v14, v15, v18, v19, *&v2, result);
    v24 = *(result + 48) + *(result + 56);
    v25 = *(result + 24);
    v26 = (v25 + 8 * (v24 / 0x19));
    v27 = *(result + 32) == v25 ? 0 : (*v26 + 160 * (v24 % 0x19));
    sub_1000B4610((result + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(result + 104) = 0xBFF0000000000000;
    }
  }
}

void sub_1000B32B0(uint64_t result, __n128 a2)
{
  v2 = a2.n128_f64[0];
  a2.n128_u64[0] = *(result + 320);
  *(result + 320) = v2;
  if (*(result + 264) == 1 && *(result + 328) < v2)
  {
    *(result + 264) = 0;
    v4 = *(*result + 24);

    v4(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v5 = *(result + 280);
    v6 = *(result + 288);
    *(result + 312) = 0;
    v7 = (v6 - v5) >> 3;
    if (v7 >= 3)
    {
      do
      {
        operator delete(*v5);
        v8 = *(result + 288);
        v5 = (*(result + 280) + 8);
        *(result + 280) = v5;
        v7 = (v8 - v5) >> 3;
      }

      while (v7 > 2);
    }

    if (v7 == 1)
    {
      v9 = 32;
    }

    else
    {
      if (v7 != 2)
      {
LABEL_17:
        *(result + 360) = 0xBFF0000000000000;
        if (*(result + 264) == 1)
        {
          sub_100F98AA4(result);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v19 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v20 = *(result + 320);
          v27 = 134218240;
          v28 = v2;
          v29 = 2048;
          v30 = v20;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v27, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC070();
        }

        return;
      }

      v9 = 64;
    }

    *(result + 304) = v9;
    goto LABEL_17;
  }

  if (*(result + 360) != -1.0)
  {
    v10 = *(result + 304);
    v11 = *(result + 280);
    v12 = *(result + 288);
    v13 = (v11 + 8 * (v10 >> 6));
    if (v12 == v11)
    {
      v14 = 0;
      v18 = 0;
      v15 = (result + 312);
      v17 = (v11 + 8 * ((*(result + 312) + v10) >> 6));
    }

    else
    {
      v14 = (*v13 + ((v10 & 0x3F) << 6));
      v15 = (result + 312);
      v16 = *(result + 312) + v10;
      v17 = (v11 + 8 * (v16 >> 6));
      v18 = (*v17 + ((v16 & 0x3F) << 6));
    }

    v22 = sub_1000B3584(v13, v14, v17, v18, *&v2, result);
    v23 = *(result + 304) + *(result + 312);
    v24 = *(result + 280);
    v25 = (v24 + 8 * (v23 >> 6));
    v26 = *(result + 288) == v24 ? 0 : *v25 + ((v23 & 0x3F) << 6);
    sub_1000A2D90((result + 272), v22, v21, v25, v26);
    if (!*v15)
    {
      *(result + 360) = 0xBFF0000000000000;
    }
  }
}

void *sub_1000B3584(void *result, double *a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a4)
  {
    while (*&a5 - a2[1] <= *(a6 + 344))
    {
      a2 += 8;
      if ((a2 - *result) == 4096)
      {
        v6 = result[1];
        ++result;
        a2 = v6;
      }

      if (a2 == a4)
      {
        a2 = a4;
        break;
      }
    }
  }

  if (a2 != a4)
  {
    v7 = a2;
    v8 = result;
    while (1)
    {
      v7 += 8;
      if ((v7 - *v8) == 4096)
      {
        v9 = v8[1];
        ++v8;
        v7 = v9;
      }

      if (v7 == a4)
      {
        break;
      }

      if (*&a5 - v7[1] <= *(a6 + 344))
      {
        v10 = *v7;
        v11 = *(v7 + 1);
        v12 = *(v7 + 3);
        *(a2 + 2) = *(v7 + 2);
        *(a2 + 3) = v12;
        *a2 = v10;
        *(a2 + 1) = v11;
        a2 += 8;
        if ((a2 - *result) == 4096)
        {
          v13 = result[1];
          ++result;
          a2 = v13;
        }
      }
    }
  }

  return result;
}

void *sub_1000B3638(void *a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((a5 - *a4) >> 4) + 32 * (a4 - a2) - ((a3 - *a2) >> 4);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 >> 8));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9 + 16 * v7;
  }

  v36 = v9;
  v37 = v10;
  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = ((a3 - *a2) >> 4) + 32 * (a2 - v9) - ((v10 - *v9) >> 4);
  }

  v12 = sub_100014378(&v36, v11);
  v35.n128_u64[0] = v12;
  v35.n128_u64[1] = v13;
  if (v6 >= 1)
  {
    if (v11 <= (a1[5] - v6) >> 1)
    {
      v20 = v12;
      v21 = v13;
      v22 = v36;
      v23 = v37;
      v24 = sub_100014378(&v35, v6);
      sub_10029660C(v22, v23, v20, v21, v24, v25, &v38);
      v26 = v37;
      if (v37 != v39)
      {
        v27 = v36;
        do
        {
          v26 += 16;
          v37 = v26;
          if (&v26[-*v27] == 4096)
          {
            v28 = v27[1];
            ++v27;
            v26 = v28;
            v36 = v27;
            v37 = v28;
          }
        }

        while (v26 != v39);
      }

      v29 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v29;
        ;
      }
    }

    else
    {
      v14 = sub_100014378(&v35, v6);
      v16 = a1[4] + a1[5];
      v17 = a1[1];
      v18 = (v17 + 8 * (v16 >> 8));
      if (a1[2] == v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = (*v18 + 16 * v16);
      }

      v38 = v35;
      sub_100115040(v14, v15, v18, v19, &v38);
      a1[5] -= v6;
        ;
      }
    }
  }

  v30 = a1[4];
  v31 = a1[1];
  v32 = (v31 + 8 * (v30 >> 8));
  if (a1[2] == v31)
  {
    v33 = 0;
  }

  else
  {
    v33 = *v32 + 16 * v30;
  }

  v38.n128_u64[0] = v32;
  v38.n128_u64[1] = v33;
  return sub_100014378(&v38, v11);
}

void *sub_1000B387C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a4)
  {
    while (*&a5 - *(a2 + 8) <= *(a6 + 88))
    {
      a2 += 160;
      if (a2 - *result == 4000)
      {
        v6 = result[1];
        ++result;
        a2 = v6;
      }

      if (a2 == a4)
      {
        a2 = a4;
        break;
      }
    }
  }

  if (a2 != a4)
  {
    v7 = a2;
    v8 = result;
    while (1)
    {
      v7 += 160;
      if (v7 - *v8 == 4000)
      {
        v9 = v8[1];
        ++v8;
        v7 = v9;
      }

      if (v7 == a4)
      {
        break;
      }

      if (*&a5 - *(v7 + 8) <= *(a6 + 88))
      {
        v10 = *(v7 + 16);
        *a2 = *v7;
        *(a2 + 16) = v10;
        v11 = *(v7 + 32);
        v12 = *(v7 + 48);
        v13 = *(v7 + 80);
        *(a2 + 64) = *(v7 + 64);
        *(a2 + 80) = v13;
        *(a2 + 32) = v11;
        *(a2 + 48) = v12;
        v14 = *(v7 + 96);
        v15 = *(v7 + 112);
        v16 = *(v7 + 144);
        *(a2 + 128) = *(v7 + 128);
        *(a2 + 144) = v16;
        *(a2 + 96) = v14;
        *(a2 + 112) = v15;
        a2 += 160;
        if (a2 - *result == 4000)
        {
          v17 = result[1];
          ++result;
          a2 = v17;
        }
      }
    }
  }

  return result;
}

void *sub_1000B394C(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x3333333333333333 * ((result[1] - **result) >> 5);
    if (v3 < 1)
    {
      v5 = 24 - v3;
      v6 = &v2[-(v5 / 0x19)];
      *result = v6;
      v4 = *v6 + 160 * (25 * (v5 / 0x19) - v5) + 3840;
    }

    else
    {
      *result = &v2[v3 / 0x19];
      v4 = v2[v3 / 0x19] + 160 * (v3 % 0x19);
    }

    result[1] = v4;
  }

  return result;
}

void sub_1000B3A10(uint64_t result, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (result + 64);
  a2.n128_u64[0] = *(result + 64);
  *(result + 64) = v2;
  if (*(result + 8) == 1 && *(result + 72) < v2)
  {
    *(result + 8) = 0;
    v5 = *(*result + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(result + 24);
    v7 = *(result + 32);
    *(result + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(result + 32);
        v6 = (*(result + 24) + 8);
        *(result + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 32;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(result + 136) = 0xBFF0000000000000;
        if (*(result + 8) == 1)
        {
          sub_100F98C20(result);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC16C();
        }

        return;
      }

      v10 = 64;
    }

    *(result + 48) = v10;
    goto LABEL_17;
  }

  if (*(result + 136) != -1.0)
  {
    v11 = *(result + 48);
    v12 = *(result + 24);
    v13 = *(result + 32);
    v14 = (v12 + 8 * (v11 >> 6));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (result + 56);
      v18 = (v12 + 8 * ((*(result + 56) + v11) >> 6));
    }

    else
    {
      v15 = (*v14 + ((v11 & 0x3F) << 6));
      v16 = (result + 56);
      v17 = *(result + 56) + v11;
      v18 = (v12 + 8 * (v17 >> 6));
      v19 = (*v18 + ((v17 & 0x3F) << 6));
    }

    v23 = sub_100F9DA54(v14, v15, v18, v19, *&v2, result);
    v24 = *(result + 48) + *(result + 56);
    v25 = *(result + 24);
    v26 = (v25 + 8 * (v24 >> 6));
    v27 = *(result + 32) == v25 ? 0 : *v26 + ((v24 & 0x3F) << 6);
    sub_1000A2D90((result + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(result + 136) = 0xBFF0000000000000;
    }
  }
}

void sub_1000B3CE8(uint64_t result, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (result + 64);
  a2.n128_u64[0] = *(result + 64);
  *(result + 64) = v2;
  if (*(result + 8) == 1 && *(result + 72) < v2)
  {
    *(result + 8) = 0;
    v5 = *(*result + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(result + 24);
    v7 = *(result + 32);
    *(result + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(result + 32);
        v6 = (*(result + 24) + 8);
        *(result + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 10;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(result + 96) = 0xBFF0000000000000;
        if (*(result + 8) == 1)
        {
          sub_1006AE61C(result);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019C9EAC();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019CA2B0();
        }

        return;
      }

      v10 = 21;
    }

    *(result + 48) = v10;
    goto LABEL_17;
  }

  if (*(result + 96) != -1.0)
  {
    v11 = *(result + 48);
    v12 = *(result + 24);
    v13 = *(result + 32);
    v14 = (v12 + 8 * (v11 / 0x15));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (result + 56);
      v18 = (v12 + 8 * ((*(result + 56) + v11) / 0x15));
    }

    else
    {
      v15 = (*(v12 + 8 * (v11 / 0x15)) + 192 * (v11 % 0x15));
      v16 = (result + 56);
      v17 = *(result + 56) + v11;
      v18 = (v12 + 8 * (v17 / 0x15));
      v19 = (*v18 + 192 * (v17 % 0x15));
    }

    v23 = sub_10025BB1C(v14, v15, v18, v19, *&v2, result);
    v24 = *(result + 48) + *(result + 56);
    v25 = *(result + 24);
    v26 = (v25 + 8 * (v24 / 0x15));
    v27 = *(result + 32) == v25 ? 0 : (*v26 + 192 * (v24 % 0x15));
    sub_10009CB8C((result + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(result + 96) = 0xBFF0000000000000;
    }
  }
}

void sub_1000B4024(uint64_t result, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (result + 64);
  a2.n128_u64[0] = *(result + 64);
  *(result + 64) = v2;
  if (*(result + 8) == 1 && *(result + 72) < v2)
  {
    *(result + 8) = 0;
    v5 = *(*result + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(result + 24);
    v7 = *(result + 32);
    *(result + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(result + 32);
        v6 = (*(result + 24) + 8);
        *(result + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 11;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(result + 104) = 0xBFF0000000000000;
        if (*(result + 8) == 1)
        {
          sub_100F98DF4(result);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC268();
        }

        return;
      }

      v10 = 22;
    }

    *(result + 48) = v10;
    goto LABEL_17;
  }

  if (*(result + 104) != -1.0)
  {
    v11 = *(result + 48);
    v12 = *(result + 24);
    v13 = *(result + 32);
    v14 = (v12 + 8 * (v11 / 0x16));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (result + 56);
      v18 = (v12 + ((2 * (((*(result + 56) + v11) * 0x2E8BA2E8BA2E8BA3uLL) >> 64)) & 0x7FFFFFFFFFFFFFF8));
    }

    else
    {
      v15 = (*(v12 + 8 * (v11 / 0x16)) + 184 * (v11 % 0x16));
      v16 = (result + 56);
      v17 = *(result + 56) + v11;
      v18 = (v12 + 8 * (v17 / 0x16));
      v19 = (*v18 + 184 * (v17 % 0x16));
    }

    v23 = sub_100F9DB08(v14, v15, v18, v19, *&v2, result);
    v24 = *(result + 48) + *(result + 56);
    v25 = *(result + 24);
    v26 = (v25 + 8 * (v24 / 0x16));
    v27 = *(result + 32) == v25 ? 0 : (*v26 + 184 * (v24 % 0x16));
    sub_1009BA3B0((result + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(result + 104) = 0xBFF0000000000000;
    }
  }
}

void sub_1000B4344(uint64_t result, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (result + 64);
  a2.n128_u64[0] = *(result + 64);
  *(result + 64) = v2;
  if (*(result + 8) == 1 && *(result + 72) < v2)
  {
    *(result + 8) = 0;
    v5 = *(*result + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(result + 24);
    v7 = *(result + 32);
    *(result + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(result + 32);
        v6 = (*(result + 24) + 8);
        *(result + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 128;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(result + 96) = 0xBFF0000000000000;
        if (*(result + 8) == 1)
        {
          sub_100A3B27C(result);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019C9EAC();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019C9FBC();
        }

        return;
      }

      v10 = 256;
    }

    *(result + 48) = v10;
    goto LABEL_17;
  }

  if (*(result + 96) != -1.0)
  {
    v11 = *(result + 48);
    v12 = *(result + 24);
    v13 = *(result + 32);
    v14 = (v12 + 8 * (v11 >> 8));
    if (v13 == v12)
    {
      v16 = 0;
      v19 = 0;
      v15 = (result + 56);
      v18 = (v12 + 8 * ((*(result + 56) + v11) >> 8));
    }

    else
    {
      v15 = (result + 56);
      v16 = (*v14 + 16 * v11);
      v17 = *(result + 56) + v11;
      v18 = (v12 + 8 * (v17 >> 8));
      v19 = (*v18 + 16 * v17);
    }

    v23 = sub_1000B0920(v14, v16, v18, v19, *&v2, result);
    v24 = *(result + 48) + *(result + 56);
    v25 = *(result + 24);
    v26 = (v25 + 8 * (v24 >> 8));
    v27 = *(result + 32) == v25 ? 0 : *v26 + 16 * v24;
    sub_1000B3638((result + 16), v23, v22, v26, v27);
    if (!*v15)
    {
      *(result + 96) = 0xBFF0000000000000;
    }
  }
}

unint64_t sub_1000B4610(void *a1, void *a2, char *a3, void *a4, char *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 25 * (a4 - a2) - 0x3333333333333333 * (&a5[-*a4] >> 5) + 0x3333333333333333 * (&a3[-*a2] >> 5);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 / 0x19));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*v9 + 160 * (v7 % 0x19));
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 25 * (a2 - v9) - 0x3333333333333333 * (&a3[-*a2] >> 5) + 0x3333333333333333 * (&v10[-*v9] >> 5);
  }

  v24[0].n128_u64[0] = v8 + 8 * (v7 / 0x19);
  v24[0].n128_u64[1] = v10;
  sub_1000B394C(v24, v11);
  if (v6 >= 1)
  {
    v12 = v24[0];
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_1000B394C(v24, v6);
      sub_100A3B0C8(v9, v10, v12.n128_u64[0], v12.n128_u64[1], v24[0].n128_u64[0], v24[0].n128_u64[1], v24);
      v18 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v18;
        ;
      }
    }

    else
    {
      sub_1000B394C(v24, v6);
      v13 = v24[0];
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 / 0x19));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = (*v16 + 160 * (v14 % 0x19));
      }

      v24[0] = v12;
      sub_1000AAD88(v13.n128_u64[0], v13.n128_u64[1], v16, v17, v24);
      a1[5] -= v6;
        ;
      }
    }
  }

  v19 = a1[4];
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 / 0x19));
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21 + 160 * (v19 % 0x19);
  }

  v24[0].n128_u64[0] = v21;
  v24[0].n128_u64[1] = v22;
  sub_1000B394C(v24, v11);
  return v24[0].n128_u64[0];
}

void sub_1000B488C(uint64_t result, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (result + 64);
  a2.n128_u64[0] = *(result + 64);
  *(result + 64) = v2;
  if (*(result + 8) == 1 && *(result + 72) < v2)
  {
    *(result + 8) = 0;
    v5 = *(*result + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(result + 24);
    v7 = *(result + 32);
    *(result + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(result + 32);
        v6 = (*(result + 24) + 8);
        *(result + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 28;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(result + 96) = 0xBFF0000000000000;
        if (*(result + 8) == 1)
        {
          sub_10069B530(result);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC364();
        }

        return;
      }

      v10 = 56;
    }

    *(result + 48) = v10;
    goto LABEL_17;
  }

  if (*(result + 96) != -1.0)
  {
    v11 = *(result + 48);
    v12 = *(result + 24);
    v13 = *(result + 32);
    v14 = (v12 + 8 * (v11 / 0x38));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (result + 56);
      v18 = (v12 + 8 * ((*(result + 56) + v11) / 0x38));
    }

    else
    {
      v15 = *(v12 + 8 * (v11 / 0x38)) + 72 * (v11 % 0x38);
      v16 = (result + 56);
      v17 = *(result + 56) + v11;
      v18 = (v12 + 8 * (v17 / 0x38));
      v19 = *v18 + 72 * (v17 % 0x38);
    }

    v23 = sub_100A3B6BC(v14, v15, v18, v19, *&v2, result);
    v24 = *(result + 48) + *(result + 56);
    v25 = *(result + 24);
    v26 = (v25 + 8 * (v24 / 0x38));
    v27 = *(result + 32) == v25 ? 0 : (*v26 + 72 * (v24 % 0x38));
    sub_100A3B450((result + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(result + 96) = 0xBFF0000000000000;
    }
  }
}

void sub_1000B4BB8(uint64_t result, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (result + 64);
  a2.n128_u64[0] = *(result + 64);
  *(result + 64) = v2;
  if (*(result + 8) == 1 && *(result + 72) < v2)
  {
    *(result + 8) = 0;
    v5 = *(*result + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(result + 24);
    v7 = *(result + 32);
    *(result + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(result + 32);
        v6 = (*(result + 24) + 8);
        *(result + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 51;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(result + 96) = 0xBFF0000000000000;
        if (*(result + 8) == 1)
        {
          sub_100F98F90(result);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC460();
        }

        return;
      }

      v10 = 102;
    }

    *(result + 48) = v10;
    goto LABEL_17;
  }

  if (*(result + 96) != -1.0)
  {
    v11 = *(result + 48);
    v12 = *(result + 24);
    v13 = *(result + 32);
    v14 = (v12 + 8 * (v11 / 0x66));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (result + 56);
      v18 = (v12 + 8 * ((*(result + 56) + v11) / 0x66));
    }

    else
    {
      v15 = (*(v12 + 8 * (v11 / 0x66)) + 40 * (v11 % 0x66));
      v16 = (result + 56);
      v17 = *(result + 56) + v11;
      v18 = (v12 + 8 * (v17 / 0x66));
      v19 = (*v18 + 40 * (v17 % 0x66));
    }

    v23 = sub_100F9DBE8(v14, v15, v18, v19, *&v2, result);
    v24 = *(result + 48) + *(result + 56);
    v25 = *(result + 24);
    v26 = (v25 + 8 * (v24 / 0x66));
    v27 = *(result + 32) == v25 ? 0 : (*v26 + 40 * (v24 % 0x66));
    sub_1000C6E90((result + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(result + 96) = 0xBFF0000000000000;
    }
  }
}

unint64_t sub_1000B4ECC(uint64_t a1, double a2)
{
  sub_1000BDE7C(a1, a2);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3 == v4)
  {
    v10 = 0;
    v11 = 0.0;
  }

  else
  {
    v5 = 0.0;
    v6 = -1;
    v7 = 0.0;
    do
    {
      v8 = *(v3 + 8);
      v9 = v8 - v7;
      v7 = v7 + ((v8 - v7) / (v6 + 2));
      v5 = v5 + (v9 * (v8 - v7));
      v3 += 16;
      ++v6;
    }

    while (v3 != v4);
    v10 = LODWORD(v7) << 32;
    if (v6)
    {
      v11 = v5 / v6;
    }

    else
    {
      v11 = 0.0;
    }
  }

  return v10 | COERCE_UNSIGNED_INT(sqrtf(v11));
}

void sub_1000B4F8C(uint64_t result, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (result + 64);
  a2.n128_u64[0] = *(result + 64);
  *(result + 64) = v2;
  if (*(result + 8) == 1 && *(result + 72) < v2)
  {
    *(result + 8) = 0;
    v5 = *(*result + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(result + 24);
    v7 = *(result + 32);
    *(result + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(result + 32);
        v6 = (*(result + 24) + 8);
        *(result + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 128;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(result + 96) = 0xBFF0000000000000;
        if (*(result + 8) == 1)
        {
          sub_1006ACA0C(result);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC658();
        }

        return;
      }

      v10 = 256;
    }

    *(result + 48) = v10;
    goto LABEL_17;
  }

  if (*(result + 96) != -1.0)
  {
    v11 = *(result + 48);
    v12 = *(result + 24);
    v13 = *(result + 32);
    v14 = (v12 + 8 * (v11 >> 8));
    if (v13 == v12)
    {
      v16 = 0;
      v19 = 0;
      v15 = (result + 56);
      v18 = (v12 + 8 * ((*(result + 56) + v11) >> 8));
    }

    else
    {
      v15 = (result + 56);
      v16 = (*v14 + 16 * v11);
      v17 = *(result + 56) + v11;
      v18 = (v12 + 8 * (v17 >> 8));
      v19 = (*v18 + 16 * v17);
    }

    v23 = sub_1000B0920(v14, v16, v18, v19, *&v2, result);
    v24 = *(result + 48) + *(result + 56);
    v25 = *(result + 24);
    v26 = (v25 + 8 * (v24 >> 8));
    v27 = *(result + 32) == v25 ? 0 : *v26 + 16 * v24;
    sub_1000B3638((result + 16), v23, v22, v26, v27);
    if (!*v15)
    {
      *(result + 96) = 0xBFF0000000000000;
    }
  }
}

void sub_1000B5260(uint64_t result, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (result + 64);
  a2.n128_u64[0] = *(result + 64);
  *(result + 64) = v2;
  if (*(result + 8) == 1 && *(result + 72) < v2)
  {
    *(result + 8) = 0;
    v5 = *(*result + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(result + 24);
    v7 = *(result + 32);
    *(result + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(result + 32);
        v6 = (*(result + 24) + 8);
        *(result + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 85;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(result + 104) = 0xBFF0000000000000;
        if (*(result + 8) == 1)
        {
          sub_1006ACAA8(result);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC754();
        }

        return;
      }

      v10 = 170;
    }

    *(result + 48) = v10;
    goto LABEL_17;
  }

  if (*(result + 104) != -1.0)
  {
    v11 = *(result + 48);
    v12 = *(result + 24);
    v13 = *(result + 32);
    v14 = (v12 + 8 * (v11 / 0xAA));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (result + 56);
      v18 = (v12 + 8 * ((*(result + 56) + v11) / 0xAA));
    }

    else
    {
      v15 = (*(v12 + 8 * (v11 / 0xAA)) + 24 * (v11 % 0xAA));
      v16 = (result + 56);
      v17 = *(result + 56) + v11;
      v18 = (v12 + 8 * (v17 / 0xAA));
      v19 = (*v18 + 24 * (v17 % 0xAA));
    }

    v23 = sub_100F9DF2C(v14, v15, v18, v19, *&v2, result);
    v24 = *(result + 48) + *(result + 56);
    v25 = *(result + 24);
    v26 = (v25 + 8 * (v24 / 0xAA));
    v27 = *(result + 32) == v25 ? 0 : (*v26 + 24 * (v24 % 0xAA));
    sub_1000CA088((result + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(result + 104) = 0xBFF0000000000000;
    }
  }
}

void sub_1000B5568(uint64_t result, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (result + 64);
  a2.n128_u64[0] = *(result + 64);
  *(result + 64) = v2;
  if (*(result + 8) == 1 && *(result + 72) < v2)
  {
    *(result + 8) = 0;
    v5 = *(*result + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(result + 24);
    v7 = *(result + 32);
    *(result + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(result + 32);
        v6 = (*(result + 24) + 8);
        *(result + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 128;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(result + 96) = 0xBFF0000000000000;
        if (*(result + 8) == 1)
        {
          sub_100F991F4(result);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC850();
        }

        return;
      }

      v10 = 256;
    }

    *(result + 48) = v10;
    goto LABEL_17;
  }

  if (*(result + 96) != -1.0)
  {
    v11 = *(result + 48);
    v12 = *(result + 24);
    v13 = *(result + 32);
    v14 = (v12 + 8 * (v11 >> 8));
    if (v13 == v12)
    {
      v16 = 0;
      v19 = 0;
      v15 = (result + 56);
      v18 = (v12 + 8 * ((*(result + 56) + v11) >> 8));
    }

    else
    {
      v15 = (result + 56);
      v16 = (*v14 + 16 * v11);
      v17 = *(result + 56) + v11;
      v18 = (v12 + 8 * (v17 >> 8));
      v19 = (*v18 + 16 * v17);
    }

    v23 = sub_1000B0920(v14, v16, v18, v19, *&v2, result);
    v24 = *(result + 48) + *(result + 56);
    v25 = *(result + 24);
    v26 = (v25 + 8 * (v24 >> 8));
    v27 = *(result + 32) == v25 ? 0 : *v26 + 16 * v24;
    sub_1000B3638((result + 16), v23, v22, v26, v27);
    if (!*v15)
    {
      *(result + 96) = 0xBFF0000000000000;
    }
  }
}

void sub_1000B5844(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    if (v7 == v6)
    {
      v8 = (a1 + 56);
      v7 = *(a1 + 24);
    }

    else
    {
      v8 = (a1 + 56);
      v9 = *(a1 + 48);
      v10 = &v6[v9 / 0x55];
      v11 = *v10;
      v12 = *v10 + 48 * (v9 % 0x55);
      v13 = v6[(*(a1 + 56) + v9) / 0x55] + 48 * ((*(a1 + 56) + v9) % 0x55);
      if (v12 != v13)
      {
        do
        {
          v14 = *(v12 + 24);
          if (v14)
          {
            *(v12 + 32) = v14;
            operator delete(v14);
            v11 = *v10;
          }

          v12 += 48;
          if (v12 - v11 == 4080)
          {
            v15 = v10[1];
            ++v10;
            v11 = v15;
            v12 = v15;
          }
        }

        while (v12 != v13);
        v6 = *(a1 + 24);
        v7 = *(a1 + 32);
      }
    }

    *v8 = 0;
    v25 = v7 - v6;
    if (v25 >= 3)
    {
      do
      {
        operator delete(*v6);
        v26 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v25 = (v26 - v6) >> 3;
      }

      while (v25 > 2);
    }

    if (v25 == 1)
    {
      v27 = 42;
    }

    else
    {
      if (v25 != 2)
      {
LABEL_28:
        *(a1 + 96) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_100A3C4C8(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019C9EAC();
        }

        v28 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v29 = *v4;
          LODWORD(v36[0]) = 134218240;
          *(v36 + 4) = v2;
          WORD6(v36[0]) = 2048;
          *(v36 + 14) = v29;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", v36, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019CA5CC();
        }

        return;
      }

      v27 = 85;
    }

    *(a1 + 48) = v27;
    goto LABEL_28;
  }

  v37 = 0u;
  memset(v36, 0, sizeof(v36));
  v16 = (a1 + 96);
  if (*(a1 + 96) != -1.0)
  {
    v36[0] = *v16;
    *&v36[1] = *(a1 + 112);
    if (v36 != v16)
    {
      sub_10028F1A8(&v36[1] + 1, *(a1 + 120), *(a1 + 128), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 128) - *(a1 + 120)) >> 2));
    }

    v17 = *(a1 + 48);
    v18 = *(a1 + 24);
    v19 = (v18 + 8 * (v17 / 0x55));
    if (*(a1 + 32) == v18)
    {
      v20 = 0;
      v24 = 0;
      v21 = (a1 + 56);
      v23 = (v18 + 8 * ((*(a1 + 56) + v17) / 0x55));
    }

    else
    {
      v20 = (*(v18 + 8 * (v17 / 0x55)) + 48 * (v17 % 0x55));
      v21 = (a1 + 56);
      v22 = *(a1 + 56) + v17;
      v23 = (v18 + 8 * (v22 / 0x55));
      v24 = (*v23 + 48 * (v22 % 0x55));
    }

    v31 = sub_10030CBC4(v19, v20, v23, v24, *&v2, a1);
    v32 = *(a1 + 48) + *(a1 + 56);
    v33 = *(a1 + 24);
    v34 = (v33 + 8 * (v32 / 0x55));
    if (*(a1 + 32) == v33)
    {
      v35 = 0;
    }

    else
    {
      v35 = *v34 + 48 * (v32 % 0x55);
    }

    sub_10030CCD0((a1 + 16), v31, v30, v34, v35);
    if (!*v21)
    {
      *v16 = 0xBFF0000000000000;
    }
  }

  if (*(&v36[1] + 1))
  {
    *&v37 = *(&v36[1] + 1);
    operator delete(*(&v36[1] + 1));
  }
}

void sub_1000B5C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B5C90(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    if (v7 == v6)
    {
      v8 = (a1 + 56);
      v7 = *(a1 + 24);
    }

    else
    {
      v8 = (a1 + 56);
      v9 = *(a1 + 48);
      v10 = &v6[v9 / 0x49];
      v11 = *v10;
      v12 = *v10 + 56 * (v9 % 0x49);
      v13 = v6[(*(a1 + 56) + v9) / 0x49] + 56 * ((*(a1 + 56) + v9) % 0x49);
      if (v12 != v13)
      {
        do
        {
          v14 = *(v12 + 16);
          if (v14)
          {
            *(v12 + 24) = v14;
            operator delete(v14);
            v11 = *v10;
          }

          v12 += 56;
          if (v12 - v11 == 4088)
          {
            v15 = v10[1];
            ++v10;
            v11 = v15;
            v12 = v15;
          }
        }

        while (v12 != v13);
        v6 = *(a1 + 24);
        v7 = *(a1 + 32);
      }
    }

    *v8 = 0;
    v30 = v7 - v6;
    if (v30 >= 3)
    {
      do
      {
        operator delete(*v6);
        v31 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v30 = (v31 - v6) >> 3;
      }

      while (v30 > 2);
    }

    if (v30 == 1)
    {
      v32 = 36;
    }

    else
    {
      if (v30 != 2)
      {
LABEL_28:
        *(a1 + 96) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_100A3C974(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019C9EAC();
        }

        v33 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v34 = *v4;
          *v41 = 134218240;
          *&v41[4] = v2;
          *&v41[12] = 2048;
          *&v41[14] = v34;
          _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", v41, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019CA7C4();
        }

        return;
      }

      v32 = 73;
    }

    *(a1 + 48) = v32;
    goto LABEL_28;
  }

  *v41 = 0;
  *&v41[8] = 0x600000006;
  v42 = 0;
  v43 = 0;
  *&v41[16] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v44 = _Q0;
  v21 = (a1 + 96);
  if (*(a1 + 96) != -1.0)
  {
    *v41 = *(a1 + 96);
    *&v41[8] = *(a1 + 104);
    if (v41 != v21)
    {
      sub_100306558(&v41[16], *(a1 + 112), *(a1 + 120), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 120) - *(a1 + 112)) >> 3));
    }

    v44 = *(a1 + 136);
    v22 = *(a1 + 48);
    v23 = *(a1 + 24);
    v24 = (v23 + 8 * (v22 / 0x49));
    if (*(a1 + 32) == v23)
    {
      v25 = 0;
      v29 = 0;
      v26 = (a1 + 56);
      v28 = (v23 + (((((*(a1 + 56) + v22) * 0x70381C0E070381C1uLL) >> 64) >> 2) & 0x1FFFFFFFFFFFFFF8));
    }

    else
    {
      v25 = *(v23 + 8 * (v22 / 0x49)) + 56 * (v22 % 0x49);
      v26 = (a1 + 56);
      v27 = *(a1 + 56) + v22;
      v28 = (v23 + 8 * (v27 / 0x49));
      v29 = *v28 + 56 * (v27 % 0x49);
    }

    v36 = sub_100A3CD2C(v24, v25, v28, v29, *&v2, a1);
    v37 = *(a1 + 48) + *(a1 + 56);
    v38 = *(a1 + 24);
    v39 = (v38 + 8 * (v37 / 0x49));
    if (*(a1 + 32) == v38)
    {
      v40 = 0;
    }

    else
    {
      v40 = *v39 + 56 * (v37 % 0x49);
    }

    sub_100A3CA10((a1 + 16), v36, v35, v39, v40);
    if (!*v26)
    {
      *v21 = 0xBFF0000000000000;
    }
  }

  if (*&v41[16])
  {
    v42 = *&v41[16];
    operator delete(*&v41[16]);
  }
}

void sub_1000B60C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B60F4(void *a1, double a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v4 = a1 + 3;
  if (v5 != v6)
  {
LABEL_2:
    v8 = *v5;
    v7 = *(v5 + 8);
    while (v8 != v7)
    {
      if (vabdd_f64(a2, *v8) <= 150.0)
      {
        v5 += 80;
        if (v5 != v6)
        {
          goto LABEL_2;
        }

        v13 = v6;
        goto LABEL_28;
      }

      v9 = v7 - (v8 + 1);
      if (v7 != v8 + 1)
      {
        memmove(v8, v8 + 1, v7 - (v8 + 1));
      }

      v7 = (v8 + v9);
      *(v5 + 8) = v8 + v9;
      v11 = *(v5 + 32);
      v10 = *(v5 + 40);
      v12 = v10 - (v11 + 4);
      if (v10 != v11 + 4)
      {
        memmove(*(v5 + 32), (v11 + 4), v10 - (v11 + 4));
        v7 = *(v5 + 8);
      }

      *(v5 + 40) = v11 + v12;
      v8 = *v5;
    }
  }

  v14 = v5 + 80;
  if (v5 == v6 || v14 == v6)
  {
    v13 = v5;
  }

  else
  {
    v13 = v5;
    do
    {
      v16 = v5;
      v5 = v14;
      v18 = *(v16 + 80);
      v17 = *(v16 + 88);
      while (v18 != v17)
      {
        if (vabdd_f64(a2, *v18) <= 150.0)
        {
          sub_10007057C(v13, v5);
          *(v13 + 24) = *(v16 + 104);
          sub_10007057C(v13 + 32, (v16 + 112));
          v23 = *(v16 + 136);
          *(v13 + 72) = *(v16 + 152);
          *(v13 + 56) = v23;
          v13 += 80;
          break;
        }

        v19 = v17 - (v18 + 1);
        if (v17 != v18 + 1)
        {
          memmove(v18, v18 + 1, v17 - (v18 + 1));
        }

        v17 = (v18 + v19);
        *(v16 + 88) = v18 + v19;
        v21 = *(v16 + 112);
        v20 = *(v16 + 120);
        v22 = v20 - (v21 + 4);
        if (v20 != v21 + 4)
        {
          memmove(*(v16 + 112), (v21 + 4), v20 - (v21 + 4));
          v17 = *(v16 + 88);
        }

        *(v16 + 120) = v21 + v22;
        v18 = *v5;
      }

      v14 = v5 + 80;
    }

    while (v5 + 80 != v6);
  }

LABEL_28:
  result = sub_1000B63E0(v4, v13, a1[4]);
  v26 = a1[6];
  v25 = a1[7];
  if (v26 != v25)
  {
    while (vabdd_f64(a2, *v26) <= 150.0)
    {
      if (++v26 == v25)
      {
        goto LABEL_40;
      }
    }

    if (v26 != v25)
    {
      for (i = v26 + 1; i != v25; ++i)
      {
        if (vabdd_f64(a2, *i) <= 150.0)
        {
          *v26++ = *i;
        }
      }
    }
  }

  if (v26 != v25)
  {
    a1[7] = v26;
  }

LABEL_40:
  v29 = a1[9];
  v28 = a1[10];
  if (v29 != v28)
  {
    while (vabdd_f64(a2, *v29) <= 150.0)
    {
      v29 += 2;
      if (v29 == v28)
      {
        return result;
      }
    }

    if (v29 != v28)
    {
      v30 = v29 + 2;
      if (v29 + 2 != v28)
      {
        do
        {
          if (vabdd_f64(a2, *v30) <= 150.0)
          {
            *v29 = *v30;
            v29 += 2;
          }

          v30 += 2;
        }

        while (v30 != v28);
        v28 = a1[10];
      }
    }
  }

  if (v29 != v28)
  {
    a1[10] = v29;
  }

  return result;
}

uint64_t sub_1000B63E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    sub_10030D828(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 80;
        sub_1002AD354(v7);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

double sub_1000B6460(uint64_t *a1, double a2)
{
  v4 = (*(*a1[5] + 40))(a1[5]);
  v5 = sub_1000B6BF0(v4, &v49, a2);
  v6 = *(&v49 + 1);
  v7 = (*(*a1[5] + 40))(a1[5]);
  v8 = sub_1000B6BF0(v7, &v36, a2 + 1.0 + 0.5);
  if (v5)
  {
    v9 = v6 == -1.0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return 1.79769313e308;
  }

  v10 = *(&v36 + 1) == -1.0 ? 0 : v8;
  if (v10 != 1)
  {
    return 1.79769313e308;
  }

  v11 = v51;
  if (vabdd_f64(v51, v41) > 0.001)
  {
    v11 = sub_1010BD6D8(a2, v52, v43, v51, v41);
  }

  v12 = v48;
  if (qword_1025D44D0 != -1)
  {
    sub_101AE36F4();
  }

  v13 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEBUG))
  {
    v14 = a1;
    if (*(a1 + 23) < 0)
    {
      v14 = *a1;
    }

    v15 = *(a1 + 470);
    *buf = 136318722;
    v85 = v14;
    v86 = 1024;
    v87 = v15;
    v88 = 2080;
    v89 = "GOOD";
    v90 = 2048;
    v91 = v52;
    v92 = 2048;
    v93 = v51;
    v94 = 2048;
    v95 = v53;
    v96 = 2048;
    v97 = v50;
    v98 = 2080;
    v99 = "GOOD";
    v100 = 2048;
    v101 = v43;
    v102 = 2048;
    v103 = v41;
    v104 = 2048;
    v105 = v48;
    v106 = 2048;
    v107 = v37;
    v108 = 2048;
    v109 = a2;
    v110 = 2048;
    v111 = v11;
    v112 = 2048;
    v113 = v12;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "IndoorOutdoor,context,%s,[%d][gps-current],[A-%s],timestampGps,%f,odometer,%f,gpsHeadingRad,%f,accuracy,%f[B-%s],timestampGps,%f,odometer,%f,gpsHeadingRad,%f,accuracy,%f[interp],startTime,%f,gpsDistance,%f,gpsHeadingRad,%f", buf, 0x94u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44D0 != -1)
    {
      sub_101AE36F4();
    }

    v32 = a1;
    if (*(a1 + 23) < 0)
    {
      v32 = *a1;
    }

    v33 = *(a1 + 470);
    v54 = 136318722;
    v55 = v32;
    v56 = 1024;
    v57 = v33;
    v58 = 2080;
    v59 = "GOOD";
    v60 = 2048;
    v61 = v52;
    v62 = 2048;
    v63 = v51;
    v64 = 2048;
    v65 = v53;
    v66 = 2048;
    v67 = v50;
    v68 = 2080;
    v69 = "GOOD";
    v70 = 2048;
    v71 = v43;
    v72 = 2048;
    v73 = v41;
    v74 = 2048;
    v75 = v48;
    v76 = 2048;
    v77 = v37;
    v78 = 2048;
    v79 = a2;
    v80 = 2048;
    v81 = v11;
    v82 = 2048;
    v83 = v12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44D8, 2, "IndoorOutdoor,context,%s,[%d][gps-current],[A-%s],timestampGps,%f,odometer,%f,gpsHeadingRad,%f,accuracy,%f[B-%s],timestampGps,%f,odometer,%f,gpsHeadingRad,%f,accuracy,%f[interp],startTime,%f,gpsDistance,%f,gpsHeadingRad,%f", &v54, 148, v36, *(&v36 + 1), v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
    v35 = v34;
    sub_100152C7C("Generic", 1, 0, 2, "std::tuple<double, double> CLIndoorOutdoorGPSModel::getGpsDeltaDistanceAndHeading(const CFAbsoluteTime) const", "%s\n", v34);
    if (v35 != buf)
    {
      free(v35);
    }
  }

  v16 = (*(*a1[5] + 40))(a1[5]);
  v17 = sub_1000B6BF0(v16, &v49, a2 + -2.56);
  v18 = *(&v49 + 1);
  v19 = (*(*a1[5] + 40))(a1[5]);
  v20 = sub_1000B6BF0(v19, &v36, a2 + -2.56 + 1.0 + 0.5);
  v21 = 1.79769313e308;
  if (v17 && v18 != -1.0)
  {
    if (*(&v36 + 1) == -1.0)
    {
      v22 = 0;
    }

    else
    {
      v22 = v20;
    }

    if (v22 == 1)
    {
      v23 = v51;
      if (vabdd_f64(v51, v41) > 0.001)
      {
        v23 = sub_1010BD6D8(a2 + -2.56, v52, v43, v51, v41);
      }

      if (qword_1025D44D0 != -1)
      {
        sub_101AE36F4();
      }

      v24 = qword_1025D44D8;
      if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEBUG))
      {
        v25 = a1;
        if (*(a1 + 23) < 0)
        {
          v25 = *a1;
        }

        v26 = *(a1 + 470);
        *buf = 136318722;
        v85 = v25;
        v86 = 1024;
        v87 = v26;
        v88 = 2080;
        v89 = "GOOD";
        v90 = 2048;
        v91 = v52;
        v92 = 2048;
        v93 = v51;
        v94 = 2048;
        v95 = v53;
        v96 = 2048;
        v97 = v50;
        v98 = 2080;
        v99 = "GOOD";
        v100 = 2048;
        v101 = v43;
        v102 = 2048;
        v103 = v41;
        v104 = 2048;
        v105 = v48;
        v106 = 2048;
        v107 = v37;
        v108 = 2048;
        v109 = a2;
        v110 = 2048;
        v111 = v23;
        v112 = 2048;
        v113 = v12;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "IndoorOutdoor,context,%s,[%d][gps-previous],[A-%s],timestampGps,%f,odometer,%f,gpsHeadingRad,%f,accuracy,%f,[B-%s],timestampGps,%f,odometer,%f,gpsHeadingRad,%f,accuracy,%f,[interp],startTime,%f,gpsDistance,%f,gpsHeadingRad,%f", buf, 0x94u);
      }

      v21 = v11 - v23;
      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D44D0 != -1)
        {
          sub_101AE36F4();
        }

        v27 = a1;
        if (*(a1 + 23) < 0)
        {
          v27 = *a1;
        }

        v28 = *(a1 + 470);
        v54 = 136318722;
        v55 = v27;
        v56 = 1024;
        v57 = v28;
        v58 = 2080;
        v59 = "GOOD";
        v60 = 2048;
        v61 = v52;
        v62 = 2048;
        v63 = v51;
        v64 = 2048;
        v65 = v53;
        v66 = 2048;
        v67 = v50;
        v68 = 2080;
        v69 = "GOOD";
        v70 = 2048;
        v71 = v43;
        v72 = 2048;
        v73 = v41;
        v74 = 2048;
        v75 = v48;
        v76 = 2048;
        v77 = v37;
        v78 = 2048;
        v79 = a2;
        v80 = 2048;
        v81 = v23;
        v82 = 2048;
        v83 = v12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44D8, 2, "IndoorOutdoor,context,%s,[%d][gps-previous],[A-%s],timestampGps,%f,odometer,%f,gpsHeadingRad,%f,accuracy,%f,[B-%s],timestampGps,%f,odometer,%f,gpsHeadingRad,%f,accuracy,%f,[interp],startTime,%f,gpsDistance,%f,gpsHeadingRad,%f", &v54, 148, v36, *(&v36 + 1), v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
        v30 = v29;
        sub_100152C7C("Generic", 1, 0, 2, "std::tuple<double, double> CLIndoorOutdoorGPSModel::getGpsDeltaDistanceAndHeading(const CFAbsoluteTime) const", "%s\n", v29);
        if (v30 != buf)
        {
          free(v30);
        }
      }

      return v21;
    }

    return 1.79769313e308;
  }

  return v21;
}

uint64_t sub_1000B6BF0(uint64_t a1, _OWORD *a2, double a3)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = v4 + v3;
  v6 = *(a1 + 24);
  v7 = (v6 + 8 * (v5 / 0x15));
  if (*(a1 + 32) == v6)
  {
    v9 = 0;
    i = 0;
  }

  else
  {
    v8 = *(v6 + 8 * (v5 / 0x15));
    v9 = v8 + 192 * (v5 % 0x15);
    for (i = *(v6 + 8 * (v4 / 0x15)) + 192 * (v4 % 0x15); i != v9; v9 -= 192)
    {
      v11 = v9;
      if (v9 == v8)
      {
        v11 = *(v7 - 1) + 4032;
      }

      v12 = *(v11 - 192);
      if (v12 <= a3 && v12 > a3 - *(a1 + 80))
      {
        break;
      }

      if (v9 == v8)
      {
        v13 = *--v7;
        v8 = v13;
        v9 = v13 + 4032;
      }
    }
  }

  if (i == v9)
  {
    return 0;
  }

  if (v9 == *v7)
  {
    v9 = *(v7 - 1) + 4032;
  }

  v15 = *(v9 - 192);
  v16 = *(v9 - 176);
  v17 = *(v9 - 144);
  a2[2] = *(v9 - 160);
  a2[3] = v17;
  *a2 = v15;
  a2[1] = v16;
  v18 = *(v9 - 128);
  v19 = *(v9 - 112);
  v20 = *(v9 - 80);
  a2[6] = *(v9 - 96);
  a2[7] = v20;
  a2[4] = v18;
  a2[5] = v19;
  v21 = *(v9 - 64);
  v22 = *(v9 - 48);
  v23 = *(v9 - 16);
  a2[10] = *(v9 - 32);
  a2[11] = v23;
  a2[8] = v21;
  a2[9] = v22;
  return 1;
}

void sub_1000B6D1C(uint64_t a1, float *a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  v6 = a2;
  v7 = a4 - 1;
  if (a4 != 1)
  {
    v8 = a3;
    v9 = a2;
    v10 = a4 - 1;
    do
    {
      v11 = *v8++;
      *v9++ = v11;
      --v10;
    }

    while (v10);
  }

  if (a5)
  {
    v12 = 0;
    do
    {
      if (a4 == 1)
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = v12 + 1;
        v14 = &a3[(v12 + 1) * v7];
        v15 = a2;
        v16 = a4 - 1;
        do
        {
          v17 = *v14++;
          *v15 = *v15 + (*(a1 + 4 * v12) * v17);
          ++v15;
          --v16;
        }

        while (v16);
      }

      v12 = v13;
    }

    while (v13 != a5);
  }

  a2[v7] = 1.0;
  v18 = 1.0;
  if (a4 == 1)
  {
    goto LABEL_19;
  }

  v19 = a2;
  do
  {
    v20 = expf(*v19);
    *v19++ = v20;
    v18 = v18 + v20;
    --v7;
  }

  while (v7);
  if (v5)
  {
LABEL_19:
    do
    {
      *v6 = *v6 / v18;
      ++v6;
      --v5;
    }

    while (v5);
  }
}

uint64_t sub_1000B6E08(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = v4 + v3;
  v6 = (v4 + v3) / 0x38;
  v7 = *(a1 + 24);
  v8 = (v7 + 8 * v6);
  if (*(a1 + 32) == v7)
  {
    v10 = 0;
    i = 0;
  }

  else
  {
    v9 = *(v7 + 8 * v6);
    v10 = v9 + 72 * (v5 - 56 * v6);
    for (i = *(v7 + 8 * (v4 / 0x38)) + 72 * (v4 % 0x38); i != v10; v10 -= 72)
    {
      v12 = v10;
      if (v10 == v9)
      {
        v12 = *(v8 - 1) + 4032;
      }

      v13 = *(v12 - 72);
      if (v13 <= a3 && v13 > a3 - *(a1 + 80))
      {
        break;
      }

      if (v10 == v9)
      {
        v14 = *--v8;
        v9 = v14;
        v10 = v14 + 4032;
      }
    }
  }

  if (i == v10)
  {
    return 0;
  }

  if (v10 == *v8)
  {
    v10 = *(v8 - 1) + 4032;
  }

  *a2 = *(v10 - 72);
  v16 = *(v10 - 56);
  v17 = *(v10 - 40);
  v18 = *(v10 - 24);
  *(a2 + 64) = *(v10 - 8);
  *(a2 + 32) = v17;
  *(a2 + 48) = v18;
  *(a2 + 16) = v16;
  return 1;
}

float sub_1000B6F18(uint64_t a1)
{
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 == v2)
  {
    v21 = 0;
    v22 = 0;
  }

  else
  {
    do
    {
      v3 = *(v1 + 40);
      v4 = *(v1 + 32);
      v5 = v4 + 1;
      if (v4 != v3 && v5 != v3)
      {
        v7 = *v4;
        v8 = *v4;
        v9 = v4 + 1;
        v10 = *(v1 + 32);
        v11 = v4 + 1;
        do
        {
          v13 = *v11++;
          v12 = v13;
          v14 = v8 < v13;
          if (v8 <= v13)
          {
            v8 = v12;
          }

          if (v14)
          {
            v10 = v9;
          }

          v9 = v11;
        }

        while (v11 != v3);
        v15 = *v10;
        v16 = v4 + 1;
        do
        {
          v18 = *v16++;
          v17 = v18;
          if (v18 < v7)
          {
            v7 = v17;
            v4 = v5;
          }

          v5 = v16;
        }

        while (v16 != v3);
        v19 = *v4;
        if (*(v1 + 64) > 0.0 && v15 != v19)
        {
          sub_1002AD064(&v61, v1);
        }
      }

      v1 += 80;
    }

    while (v1 != v2);
    v21 = v61;
    v22 = v62;
  }

  v23 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - v21) >> 4);
  v24 = -1.0;
  if (v23 >= 2)
  {
    v25 = 126 - 2 * __clz(v23);
    if (v22 == v21)
    {
      v26 = 0;
    }

    else
    {
      v26 = v25;
    }

    sub_1002AD514(v21, v22, v26, 1);
    v27 = v61;
    v28 = 0xCCCCCCCCCCCCCCCDLL * (v62 - v61);
    if (v28 > 0x19)
    {
      v29 = 0;
      v33 = v61;
      do
      {
        v35 = v33->n128_u64[0];
        v34 = v33->n128_i64[1];
        v33 += 5;
        v29 += (v34 - v35) >> 3;
      }

      while (v33 != &v61[120]);
    }

    else if (v61 == v62)
    {
      v29 = 0;
    }

    else
    {
      v29 = 0;
      v30 = v61;
      do
      {
        v32 = v30->n128_u64[0];
        v31 = v30->n128_i64[1];
        v30 += 5;
        v29 += (v31 - v32) >> 3;
      }

      while (v30 != v62);
    }

    if (v28 < 1)
    {
      v38 = 0;
    }

    else
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = v29;
      do
      {
        v41 = v27 + v36;
        v42 = ((*(v41 + 8) - *v41) >> 3) / v40;
        v43 = *(v41 + 64);
        v44 = v39 - v38;
        v45 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 3);
        v46 = v45 + 1;
        if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10028C64C();
        }

        if (0x5555555555555556 * (-v38 >> 3) > v46)
        {
          v46 = 0x5555555555555556 * (-v38 >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v38 >> 3) >= 0x555555555555555)
        {
          v47 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v47 = v46;
        }

        if (v47)
        {
          if (v47 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1001D0818();
        }

        v48 = (24 * v45);
        *v48 = v42;
        v48[1] = v43;
        v48[2] = 1.0 - v43;
        v39 = 24 * v45 + 24;
        v49 = 24 * v45 + 24 * (v44 / -24);
        memcpy(&v48[3 * (v44 / -24)], v38, v44);
        if (v38)
        {
          operator delete(v38);
        }

        v38 = v49;
        ++v37;
        v27 = v61;
        v50 = -858993459 * ((v62 - v61) >> 4);
        if (v50 >= 25)
        {
          v50 = 25;
        }

        v36 += 80;
      }

      while (v37 < v50);
      if (v49 != v39)
      {
        v51 = 1.0;
        v52 = v49;
        do
        {
          v54 = *v52;
          v53 = *(v52 + 1);
          v52 += 3;
          v51 = v51 * pow(v53, v54);
        }

        while (v52 != v39);
        v55 = 1.0;
        v56 = v49;
        do
        {
          v57 = *(v56 + 2);
          v58 = *v56;
          v56 += 3;
          v55 = v55 * pow(v57, v58);
        }

        while (v56 != v39);
LABEL_61:
        v59 = exp(v51 * (1.0 / (v51 + v55)) * 11.1434693 + -4.35656828);
        v24 = v59 / (v59 + 1.0);
        if (v38)
        {
          operator delete(v38);
        }

        goto LABEL_63;
      }
    }

    v51 = 1.0;
    v55 = 1.0;
    goto LABEL_61;
  }

LABEL_63:
  v64 = &v61;
  sub_1000B8618(&v64);
  return v24;
}

void sub_1000B7304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  a12 = &a9;
  sub_1000B8618(&a12);
  _Unwind_Resume(a1);
}

void sub_1000B7338(uint64_t *a1, int a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if (*(a1 + 189))
  {
    v19 = a1 + 48;
    v20 = *(a1 + 189) + *(a1 + 188) - 1;
    v21 = *(a1 + 95);
    if (v20 < v21)
    {
      v21 = 0;
    }

    v22 = &v19[2 * (v20 - v21)];
    v23 = *v22;
    v24 = __sincos_stret(a4);
    v25 = v22[1] + v24.__sinval * a3;
    *&v90 = v23 + v24.__cosval * a3;
    *(&v90 + 1) = v25;
    sub_1000A3054(a1 + 188, &v90);
    if (a6 == 1.79769313e308 || (*&a6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || a5 == 1.79769313e308 || (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v32 = *(a1 + 256) + *(a1 + 257) - 1;
      v33 = *(a1 + 129);
      if (v32 < v33)
      {
        v33 = 0;
      }

      v34 = &a1[2 * (v32 - v33)];
      *&v90 = v34[65];
      v31 = *(v34 + 66);
    }

    else
    {
      v26 = *(a1 + 256) + *(a1 + 257) - 1;
      v27 = *(a1 + 129);
      if (v26 < v27)
      {
        v27 = 0;
      }

      v28 = &a1[2 * (v26 - v27)];
      v29 = *(v28 + 65);
      v30 = __sincos_stret(a6);
      *&v90 = v29 + v30.__cosval * a5;
      v31 = *(v28 + 66) + v30.__sinval * a5;
    }

    *(&v90 + 1) = v31;
    sub_1000A3054(a1 + 256, &v90);
    if (a2 && *(a1 + 238) == 0.0)
    {
      *(a1 + 238) = a9;
    }

    v35 = *(a1 + 240);
    if (v35 == -1.79769313e308 || a10 - v35 <= 23.04)
    {
      a1[242] = 0x7FF8000000000000;
    }

    else
    {
      sub_1000B869C(a1, a1 + 188, 1, a1 + 324, a1 + 242);
    }

    sub_1000B869C(a1, a1 + 256, 0, a1 + 360, a1 + 243);
    sub_1000B88A0(a1, a5, a6, a7, a8);
    if (qword_1025D44D0 != -1)
    {
      sub_101AE36F4();
    }

    v38 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEBUG))
    {
      v39 = a1;
      if (*(a1 + 23) < 0)
      {
        v39 = *a1;
      }

      v40 = a5;
      if (a5 >= 9999.0)
      {
        v40 = 9999.0;
      }

      v41 = *(a1 + 396) + *(a1 + 397) - 1;
      v42 = *(a1 + 199);
      if (v41 < v42)
      {
        v42 = 0;
      }

      v43 = a1[v41 - v42 + 100];
      v44 = a1[242];
      v45 = a1[243];
      v46 = a1[244];
      v47 = *(a1 + 188) + *(a1 + 189) - 1;
      v48 = *(a1 + 95);
      if (v47 < v48)
      {
        v48 = 0;
      }

      v49 = &v19[2 * (v47 - v48)];
      v51 = *v49;
      v50 = v49[1];
      v52 = *(a1 + 256) + *(a1 + 257) - 1;
      v53 = *(a1 + 129);
      if (v52 < v53)
      {
        v53 = 0;
      }

      v54 = &a1[2 * (v52 - v53)];
      v55 = v54[65];
      v56 = v54[66];
      v57 = a1[232];
      v58 = a1[233];
      v59 = a1[234];
      v60 = *(a1 + 490);
      *buf = 136319490;
      *&buf[4] = v39;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      v128 = 2048;
      v129 = a4;
      v130 = 2048;
      v131 = v40;
      v132 = 2048;
      v133 = a6;
      v134 = 2048;
      v135 = v43;
      v136 = 2048;
      v137 = v44;
      v138 = 2048;
      v139 = v45;
      v140 = 2048;
      v141 = v46;
      v142 = 2048;
      v143 = v51;
      v144 = 2048;
      v145 = v50;
      v146 = 2048;
      v147 = v55;
      v148 = 2048;
      v149 = v56;
      v150 = 2048;
      v151 = v57;
      v152 = 2048;
      v153 = v58;
      v154 = 2048;
      v155 = v59;
      v156 = 2048;
      v157 = a9;
      v158 = 1024;
      v159 = v60;
      _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "in-out-metrics,context,%s,stepDeltaDistance,%f,gyroHeadingRadians,%f,gpsDeltaDistance,%f,gpsHeadingRadians,%f,bodySum,%f,fTurnEnv,%f,fGPSTurnEnv,%f,fResidScalar,%f,fIMUDistanceX,%f,fIMUDistanceY,%f,fGPSDistanceX,%f,fGPSDistanceY,%f,fGpsWanderLLRBufferSum,%f,fGpsLLRBufferSum,%f,fGpsFixBufferSum,%f,stepTimestamp,%f,fGpsState,%d", buf, 0xB2u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D44D0 != -1)
      {
        sub_101AE36F4();
      }

      v61 = a1;
      if (*(a1 + 23) < 0)
      {
        v61 = *a1;
      }

      v62 = a5;
      if (a5 >= 9999.0)
      {
        v62 = 9999.0;
      }

      v63 = *(a1 + 396) + *(a1 + 397) - 1;
      v64 = *(a1 + 199);
      if (v63 < v64)
      {
        v64 = 0;
      }

      v65 = a1[v63 - v64 + 100];
      v66 = a1[242];
      v67 = a1[243];
      v68 = a1[244];
      v69 = *(a1 + 188) + *(a1 + 189) - 1;
      v70 = *(a1 + 95);
      if (v69 < v70)
      {
        v70 = 0;
      }

      v71 = &v19[2 * (v69 - v70)];
      v73 = *v71;
      v72 = v71[1];
      v74 = *(a1 + 256) + *(a1 + 257) - 1;
      v75 = *(a1 + 129);
      if (v74 < v75)
      {
        v75 = 0;
      }

      v76 = &a1[2 * (v74 - v75)];
      v77 = v76[65];
      v78 = v76[66];
      v79 = a1[232];
      v80 = a1[233];
      v81 = a1[234];
      v82 = *(a1 + 490);
      v91 = 136319490;
      v92 = v61;
      v93 = 2048;
      v94 = a3;
      v95 = 2048;
      v96 = a4;
      v97 = 2048;
      v98 = v62;
      v99 = 2048;
      v100 = a6;
      v101 = 2048;
      v102 = v65;
      v103 = 2048;
      v104 = v66;
      v105 = 2048;
      v106 = v67;
      v107 = 2048;
      v108 = v68;
      v109 = 2048;
      v110 = v73;
      v111 = 2048;
      v112 = v72;
      v113 = 2048;
      v114 = v77;
      v115 = 2048;
      v116 = v78;
      v117 = 2048;
      v118 = v79;
      v119 = 2048;
      v120 = v80;
      v121 = 2048;
      v122 = v81;
      v123 = 2048;
      v124 = a9;
      v125 = 1024;
      v126 = v82;
      LODWORD(v87) = 178;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D44D8, 2, "in-out-metrics,context,%s,stepDeltaDistance,%f,gyroHeadingRadians,%f,gpsDeltaDistance,%f,gpsHeadingRadians,%f,bodySum,%f,fTurnEnv,%f,fGPSTurnEnv,%f,fResidScalar,%f,fIMUDistanceX,%f,fIMUDistanceY,%f,fGPSDistanceX,%f,fGPSDistanceY,%f,fGpsWanderLLRBufferSum,%f,fGpsLLRBufferSum,%f,fGpsFixBufferSum,%f,stepTimestamp,%f,fGpsState,%d", &v91, v87, v88, a4, *&v90, *(&v90 + 1));
      v84 = v83;
      sub_100152C7C("Generic", 1, 0, 2, "void CLIndoorOutdoorGPSModel::processSamples(const double, const double, const double, const double, const double, const double, const CFAbsoluteTime, const CFAbsoluteTime, const uint32_t)", "%s\n", v83);
      if (v84 != buf)
      {
        free(v84);
      }
    }
  }

  else
  {
    v36 = __sincos_stret(a4);
    *buf = v36.__cosval * a3;
    *&buf[8] = v36.__sinval * a3;
    sub_1000A3054(a1 + 188, buf);
    if (a6 == 1.79769313e308 || a5 == 1.79769313e308)
    {
      *buf = 0;
      v86 = 0.0;
    }

    else
    {
      v85 = __sincos_stret(a6);
      *buf = v85.__cosval * a5;
      v86 = v85.__sinval * a5;
    }

    *&buf[8] = v86;
    sub_1000A3054(a1 + 256, buf);
  }

  ++*(a1 + 470);
}

double sub_1000B79F8(uint64_t a1, unsigned __int16 *a2, unsigned int a3, uint64_t a4)
{
  if (a2[1] <= a3)
  {
    sub_101AE3880();
  }

  v4 = a4;
  if (!a4)
  {
    return 0.0;
  }

  v6 = a3 - a4;
  v7 = 0.0;
  do
  {
    v8 = *sub_1000B7CA0(a2, v6 + 1);
    v9 = *(sub_1000B7CA0(a2, v6 + 1) + 1);
    v10 = *sub_1000B7CA0(a2, v6);
    v11 = sub_1000B7CA0(a2, v6);
    v7 = v7 + sqrt((v8 - v10) * (v8 - v10) + (v9 - *(v11 + 1)) * (v9 - *(v11 + 1)));
    ++v6;
    --v4;
  }

  while (v4);
  return v7;
}

void sub_1000B7ACC(double *a1)
{
  a1[12] = -999.0;
  v1 = *(a1 + 3);
  for (i = *(a1 + 4); v1 != i; v1 += 80)
  {
    v4 = (*(v1 + 8) - *v1) >> 3;
    if (v4 >= 2)
    {
      v5 = sub_1002ACA70(a1, (v1 + 32), 25.0);
      v7 = *(a1 + 6);
      v6 = *(a1 + 7);
      v8 = (*(*(v1 + 8) - 8) - **v1) / (*(v6 - 8) - *v7);
      v9 = v5;
      v10 = exp((v8 + -0.00137940772) / 0.998620592 * 5.78228066 + (v4 / ((v6 - v7) >> 3) + -0.0689655172) / 0.931034483 * 1.87654821 + (v5 + 99.25) / 71.25 * 1.10882815 + -5.98543736);
      *(v1 + 56) = v8;
      *(v1 + 64) = v10 / (v10 + 1.0);
      v11 = *(v1 + 32);
      v12 = *(v1 + 40);
      if (v11 != v12)
      {
        v13 = v11 + 1;
        if (v11 + 1 != v12)
        {
          v14 = *v11;
          v15 = v11 + 1;
          do
          {
            v17 = *v15++;
            v16 = v17;
            v18 = v14 < v17;
            if (v14 <= v17)
            {
              v14 = v16;
            }

            if (v18)
            {
              v11 = v13;
            }

            v13 = v15;
          }

          while (v15 != v12);
        }
      }

      *(v1 + 72) = *v11;
      if (v4 >= 7 && a1[12] < v9)
      {
        a1[12] = v9;
      }
    }
  }
}

unsigned __int16 *sub_1000B7CA0(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_1024C2428);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_1024C2428);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CMVector<double, 2>>::operator[](const size_t) const [T = CMVector<double, 2>]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[8 * (v4 - v5) + 4];
}

double sub_1000B7E9C(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 == -999.0)
  {
    return -1.0;
  }

  v3 = xmmword_101D25880;
  v5 = (v1 + 96.0) / 65.5;
  sub_10025BE14(&v5, v4, &v3, 2, 1);
  return v4[0];
}

BOOL sub_1000B7F44(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 1880) + 1) & 7;
  v3 = *(a2 + 232);
  if (v2 == v3)
  {
    v5 = *(a2 + 2);
    v6 = sub_1000B79F8(a1, (a1 + 376), *(a1 + 378) - 1, 7);
    v8 = sub_1000B79F8(v7, a2, v5 - 1, 7);
    if (v6 <= 12.207152)
    {
      v9 = NAN;
    }

    else
    {
      v9 = vabdd_f64(v8, v6) / v6;
    }

    *(a2 + 224) = v9;
    *(a2 + 240) = v6;
  }

  return v2 == v3;
}

unsigned __int16 *sub_1000B7FEC(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_1024C2428);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_1024C2428);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLIndoorOutdoorGPSModel::GpsStepDistancePair>::operator[](const size_t) const [T = CLIndoorOutdoorGPSModel::GpsStepDistancePair]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[8 * (v4 - v5) + 4];
}

uint64_t sub_1000B81E8(uint64_t a1, const __CFString *a2, void *a3, int a4)
{
  v9 = a1 + 128;
  v8 = *(a1 + 128);
  cf[1] = (a1 + 128);
  (*(v8 + 16))(a1 + 128);
  v15 = 256;
  cf[0] = 0;
  v10 = sub_10000554C(a1, a2, cf, a4);
  if (v10)
  {
    v11 = CFGetTypeID(cf[0]);
    if (v11 == CFArrayGetTypeID() || v11 == CFDictionaryGetTypeID())
    {
      *a3 = [cf[0] cl_deepCopy];
    }

    else
    {
      v12 = cf[0];
      *a3 = cf[0];
      CFRetain(v12);
    }

    CFRelease(cf[0]);
  }

  (*(*v9 + 24))(v9);
  return v10;
}

void sub_1000B82FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000B8314(uint64_t a1, const void *a2, void *a3)
{
  v7 = a1 + 128;
  v6 = *(a1 + 128);
  cf[1] = (a1 + 128);
  (*(v6 + 16))(a1 + 128);
  v13 = 256;
  cf[0] = 0;
  v8 = sub_100006000(a1, a2, cf);
  if (v8)
  {
    v9 = CFGetTypeID(cf[0]);
    if (v9 == CFArrayGetTypeID() || v9 == CFDictionaryGetTypeID())
    {
      *a3 = [cf[0] cl_deepCopy];
    }

    else
    {
      v10 = cf[0];
      *a3 = cf[0];
      CFRetain(v10);
    }

    CFRelease(cf[0]);
  }

  (*(*v7 + 24))(v7);
  return v8;
}

void sub_1000B8418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B8430(const void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID())
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = 134349312;
      v9 = CFGetTypeID(a1);
      v10 = 2050;
      TypeID = CFNumberGetTypeID();
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", &v8, 0x16u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_1018AA910();
    return 0;
  }

  if (CFNumberGetValue(a1, kCFNumberFloat64Type, a2))
  {
    return 1;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018A9CF4();
  }

  v7 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "could not get value", &v8, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_1018AAA08();
    return 0;
  }

  return result;
}