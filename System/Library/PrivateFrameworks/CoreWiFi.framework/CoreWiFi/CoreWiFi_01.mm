uint64_t WINetworkSharingProvider.Network.CaptivePortalLogin.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_1E0BDCC7C(&qword_1ECE80700, &qword_1E0D7FED8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE6E60();
  sub_1E0D6D30C();
  v9[1] = a2;
  sub_1E0BDCC7C(&qword_1ECE80710, &qword_1E0D7FEE0);
  sub_1E0BE98E8(&qword_1ECE80718, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1E0D6D21C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t WINetworkSharingProvider.Network.CaptivePortalLogin.hashValue.getter(uint64_t a1)
{
  sub_1E0D6D2AC();
  _s8CoreWiFi24WINetworkSharingProviderC7NetworkV18CaptivePortalLoginV4hash4intoys6HasherVz_tF_0(v3, a1);
  return sub_1E0D6D2EC();
}

void *sub_1E0BE13E8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E0BE6EB4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E0BE1430()
{
  v1 = *v0;
  sub_1E0D6D2AC();
  _s8CoreWiFi24WINetworkSharingProviderC7NetworkV18CaptivePortalLoginV4hash4intoys6HasherVz_tF_0(v3, v1);
  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BE1480(uint64_t a1)
{
  v2 = *v1;
  sub_1E0D6D2AC();
  _s8CoreWiFi24WINetworkSharingProviderC7NetworkV18CaptivePortalLoginV4hash4intoys6HasherVz_tF_0(v4, v2);
  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BE14EC()
{
  sub_1E0D6D2AC();
  MEMORY[0x1E12E9280](0);
  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BE1530(uint64_t a1)
{
  sub_1E0D6D2AC();
  MEMORY[0x1E12E9280](0);
  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BE1580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684632435 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E0D6D24C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E0BE1608(uint64_t a1)
{
  v2 = sub_1E0BE705C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BE1644(uint64_t a1)
{
  v2 = sub_1E0BE705C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WINetworkSharingProvider.Network.ID.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1E0BDCC7C(&qword_1ECE80720, &qword_1E0D7FEE8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE705C();
  sub_1E0D6D30C();
  v11 = a2;
  v12 = a3;
  sub_1E0BDF5B0(a2, a3);
  sub_1E0BE70B0();
  sub_1E0D6D21C();
  sub_1E0BE7104(v11, v12);
  return (*(v7 + 8))(v9, v6);
}

uint64_t WINetworkSharingProvider.Network.ID.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1E0D6D2AC();
  _s8CoreWiFi24WINetworkSharingProviderC7NetworkV2IDV4hash4intoys6HasherVz_tF_0();
  return sub_1E0D6D2EC();
}

void *sub_1E0BE1858@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E0BE7158(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1E0BE18B4()
{
  sub_1E0D6D2AC();
  _s8CoreWiFi24WINetworkSharingProviderC7NetworkV2IDV4hash4intoys6HasherVz_tF_0();
  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BE1908(uint64_t a1)
{
  sub_1E0D6D2AC();
  _s8CoreWiFi24WINetworkSharingProviderC7NetworkV2IDV4hash4intoys6HasherVz_tF_0();
  return sub_1E0D6D2EC();
}

BOOL sub_1E0BE1950(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1E0D6D2AC();
  MEMORY[0x1E12E9280](v3);
  v4 = sub_1E0D6D2EC();
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

uint64_t sub_1E0BE1A1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E0D6CF3C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v57 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v57 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v57 - v15;
  v17 = [a1 SSID];
  if (v17)
  {
    v62 = a2;
    v18 = v17;
    v19 = sub_1E0D6CEEC();
    v21 = v20;

    sub_1E0BDF5B0(v19, v21);
    v22 = _s8CoreWiFi6WISSIDVyACSg10Foundation4DataVcfC_0(v19, v21);
    if (v23 >> 60 == 15)
    {
      v24 = type metadata accessor for WINetworkSharingProvider.Network(0);
      (*(*(v24 - 8) + 56))(v62, 1, 1, v24);

      return sub_1E0BE7104(v19, v21);
    }

    v60 = v22;
    v61 = v23;
    v30 = [a1 firstSharedDate];
    if (v30)
    {
      v31 = v30;
      sub_1E0D6CF2C();

      v32 = v14;
      v33 = *(v5 + 32);
      v33(v16, v32, v4);
      v34 = [a1 lastModifiedDate];
      if (!v34)
      {
        (*(v5 + 8))(v16, v4);
        sub_1E0BE7104(v19, v21);
        sub_1E0BE98D4(v60, v61);
        v43 = type metadata accessor for WINetworkSharingProvider.Network(0);
        return (*(*(v43 - 8) + 56))(v62, 1, 1, v43);
      }

      v35 = v34;
      sub_1E0D6CF2C();

      v59 = v33;
      v33(v11, v8, v4);
      v69 = MEMORY[0x1E69E7CD0];
      v36 = [a1 supportedSecurityTypes];
      v37 = v36;
      if ((v36 & 0x200) != 0)
      {
        sub_1E0BE4A00(&v68, 0);
        if ((v37 & 0x100) == 0)
        {
LABEL_11:
          if ((v37 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_25;
        }
      }

      else if ((v36 & 0x100) == 0)
      {
        goto LABEL_11;
      }

      sub_1E0BE4A00(&v67, 1);
      if ((v37 & 1) == 0)
      {
LABEL_12:
        if ((v37 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_26;
      }

LABEL_25:
      sub_1E0BE4A00(&v66, 2);
      if ((v37 & 4) == 0)
      {
LABEL_13:
        if ((v37 & 0x10) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_27;
      }

LABEL_26:
      sub_1E0BE4A00(&v65, 3);
      if ((v37 & 0x10) == 0)
      {
LABEL_14:
        if ((v37 & 0x40) == 0)
        {
LABEL_16:
          v38 = [a1 password];
          if (v38)
          {
            v39 = v38;
            v40 = sub_1E0D6CF9C();
            v57 = v41;
            v58 = v40;
          }

          else
          {
            v57 = 0;
            v58 = 0;
          }

          if ([a1 isCaptive])
          {
            v44 = [a1 captivePortalCredentials];
            if (v44)
            {
              v45 = v44;
              v46 = sub_1E0D6CF5C();
            }

            else
            {
              v46 = sub_1E0BE9340(MEMORY[0x1E69E7CC0]);
            }
          }

          else
          {
            v46 = 0;
          }

          v47 = [a1 isHidden];
          sub_1E0BE7104(v19, v21);
          v48 = v62;
          v49 = v16;
          v50 = v59;
          v59(v62, v49, v4);
          v51 = type metadata accessor for WINetworkSharingProvider.Network(0);
          v50(v48 + v51[5], v11, v4);
          v52 = v69;
          v53 = (v48 + v51[6]);
          v54 = v61;
          *v53 = v60;
          v53[1] = v54;
          *(v48 + v51[7]) = v47;
          *(v48 + v51[8]) = v52;
          v55 = (v48 + v51[9]);
          v56 = v57;
          *v55 = v58;
          v55[1] = v56;
          *(v48 + v51[10]) = v46;
          return (*(*(v51 - 1) + 56))(v48, 0, 1, v51);
        }

LABEL_15:
        sub_1E0BE4A00(&v63, 5);
        goto LABEL_16;
      }

LABEL_27:
      sub_1E0BE4A00(&v64, 4);
      if ((v37 & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    sub_1E0BE7104(v19, v21);
    sub_1E0BE98D4(v60, v61);
    v42 = type metadata accessor for WINetworkSharingProvider.Network(0);
    v27 = *(*(v42 - 8) + 56);
    v28 = v42;
    v29 = v62;
  }

  else
  {
    v26 = type metadata accessor for WINetworkSharingProvider.Network(0);
    v27 = *(*(v26 - 8) + 56);
    v28 = v26;
    v29 = a2;
  }

  return v27(v29, 1, 1, v28);
}

unint64_t sub_1E0BE1FF4()
{
  v1 = *v0;
  v2 = 0x6168537473726966;
  v3 = 0x69746E6564657263;
  if (v1 != 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x7242444953537369;
  if (v1 != 3)
  {
    v4 = 0x7974697275636573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x69646F4D7473616CLL;
  if (v1 != 1)
  {
    v5 = 1684632435;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1E0BE20FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E0BE9454(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E0BE2130(uint64_t a1)
{
  v2 = sub_1E0BE72CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BE216C(uint64_t a1)
{
  v2 = sub_1E0BE72CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0BE21AC(uint64_t result, uint64_t a2)
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
    sub_1E0D6D2AC();
    MEMORY[0x1E12E9280](v13);
    result = sub_1E0D6D2EC();
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

uint64_t WINetworkSharingProvider.Network.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1E0BDCC7C(&qword_1ECE80738, &qword_1E0D7FEF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE72CC();
  sub_1E0D6D30C();
  LOBYTE(v13) = 0;
  sub_1E0D6CF3C();
  sub_1E0BE7320(&qword_1ECE80748, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1E0D6D21C();
  if (!v2)
  {
    v9 = type metadata accessor for WINetworkSharingProvider.Network(0);
    LOBYTE(v13) = 1;
    sub_1E0D6D21C();
    v10 = (v3 + v9[6]);
    v11 = v10[1];
    *&v13 = *v10;
    *(&v13 + 1) = v11;
    v14 = 2;
    sub_1E0BDF5B0(v13, v11);
    sub_1E0BE70B0();
    sub_1E0D6D21C();
    sub_1E0BE7104(v13, *(&v13 + 1));
    LOBYTE(v13) = 3;
    sub_1E0D6D20C();
    *&v13 = *(v3 + v9[8]);
    v14 = 4;
    sub_1E0BDCC7C(&qword_1ECE80750, &qword_1E0D7FEF8);
    sub_1E0BE74B8(&qword_1ECE80758, sub_1E0BE7368, MEMORY[0x1E69E64F0]);
    sub_1E0D6D21C();
    v13 = *(v3 + v9[9]);
    v14 = 5;
    sub_1E0BE73BC();
    sub_1E0D6D21C();
    *&v13 = *(v3 + v9[10]);
    v14 = 6;
    sub_1E0BE7410();
    sub_1E0D6D1EC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t WINetworkSharingProvider.Network.hash(into:)(__int128 *a1)
{
  sub_1E0D6CF3C();
  sub_1E0BE7320(&qword_1ECE80778, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E0D6CF6C();
  v3 = type metadata accessor for WINetworkSharingProvider.Network(0);
  sub_1E0D6CF6C();
  _s8CoreWiFi24WINetworkSharingProviderC7NetworkV2IDV4hash4intoys6HasherVz_tF_0();
  sub_1E0D6D2CC();
  sub_1E0BE5720(a1, *(v1 + v3[8]));
  if (*(v1 + v3[9] + 8))
  {
    MEMORY[0x1E12E9280](1);
    sub_1E0D6D00C();
  }

  else
  {
    MEMORY[0x1E12E9280](0);
  }

  v4 = *(v1 + v3[10]);
  if (!v4)
  {
    return sub_1E0D6D2CC();
  }

  sub_1E0D6D2CC();

  return _s8CoreWiFi24WINetworkSharingProviderC7NetworkV18CaptivePortalLoginV4hash4intoys6HasherVz_tF_0(a1, v4);
}

uint64_t WINetworkSharingProvider.Network.hashValue.getter()
{
  sub_1E0D6D2AC();
  WINetworkSharingProvider.Network.hash(into:)(v1);
  return sub_1E0D6D2EC();
}

uint64_t WINetworkSharingProvider.Network.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1E0D6CF3C();
  v29 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v25 - v7;
  v8 = sub_1E0BDCC7C(&qword_1ECE80780, &qword_1E0D7FF00);
  v9 = *(v8 - 8);
  v31 = v8;
  v32 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for WINetworkSharingProvider.Network(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE72CC();
  v33 = v11;
  v15 = v34;
  sub_1E0D6D2FC();
  if (v15)
  {
    return sub_1E0BDF4E4(a1);
  }

  v26 = v14;
  v27 = v12;
  v34 = a1;
  LOBYTE(v35) = 0;
  sub_1E0BE7320(&qword_1ECE80788, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v16 = v30;
  v17 = v31;
  sub_1E0D6D1AC();
  v18 = v26;
  v30 = *(v29 + 32);
  (v30)(v26, v16, v3);
  LOBYTE(v35) = 1;
  sub_1E0D6D1AC();
  v25 = v3;
  v19 = v27;
  (v30)(v18 + v27[5], v6, v3);
  v36 = 2;
  sub_1E0BE7464();
  v20 = v33;
  v30 = 0;
  sub_1E0D6D1AC();
  v21 = v34;
  *(v18 + v19[6]) = v35;
  LOBYTE(v35) = 3;
  v22 = sub_1E0D6D19C();
  v23 = v32;
  *(v18 + v19[7]) = v22 & 1;
  sub_1E0BDCC7C(&qword_1ECE80750, &qword_1E0D7FEF8);
  v36 = 4;
  sub_1E0BE74B8(&qword_1ECE80798, sub_1E0BE7530, MEMORY[0x1E69E6510]);
  sub_1E0D6D1AC();
  *(v18 + v19[8]) = v35;
  v36 = 5;
  sub_1E0BE7584();
  sub_1E0D6D1AC();
  *(v18 + v19[9]) = v35;
  v36 = 6;
  sub_1E0BE75D8();
  sub_1E0D6D17C();
  (*(v23 + 8))(v20, v17);
  *(v18 + v19[10]) = v35;
  sub_1E0BE7774(v18, v28, type metadata accessor for WINetworkSharingProvider.Network);
  sub_1E0BDF4E4(v21);
  return sub_1E0BE77DC(v18, type metadata accessor for WINetworkSharingProvider.Network);
}

uint64_t sub_1E0BE2EF0()
{
  sub_1E0D6D2AC();
  WINetworkSharingProvider.Network.hash(into:)(v1);
  return sub_1E0D6D2EC();
}

uint64_t sub_1E0BE2F34(uint64_t a1)
{
  sub_1E0D6D2AC();
  WINetworkSharingProvider.Network.hash(into:)(v2);
  return sub_1E0D6D2EC();
}

void sub_1E0BE2F74(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  sub_1E0BDF5B0(v4, v5);
}

uint64_t sub_1E0BE2FB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E0D6CF3C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WINetworkSharingProvider.NetworkEvent.networks.getter()
{
  type metadata accessor for WINetworkSharingProvider.NetworkEvent(0);
}

uint64_t WINetworkSharingProvider.NetworkEvent.description.getter()
{
  sub_1E0D6D0FC();
  MEMORY[0x1E12E8FE0](540697705, 0xE400000000000000);
  v1 = type metadata accessor for WINetworkSharingProvider.NetworkEvent(0);
  v2 = sub_1E0D6D23C();
  MEMORY[0x1E12E8FE0](v2);

  MEMORY[0x1E12E8FE0](0x7473656D6974202CLL, 0xED0000203A706D61);
  sub_1E0D6CF3C();
  sub_1E0BE7320(&qword_1ECE80658, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v3 = sub_1E0D6D23C();
  MEMORY[0x1E12E8FE0](v3);

  MEMORY[0x1E12E8FE0](0xD000000000000020, 0x80000001E0D84430);
  if (*(v0 + v1[5]))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + v1[5]))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1E12E8FE0](v4, v5);

  MEMORY[0x1E12E8FE0](0xD000000000000017, 0x80000001E0D84460);
  if (*(v0 + v1[6]))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + v1[6]))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1E12E8FE0](v6, v7);

  MEMORY[0x1E12E8FE0](0xD000000000000019, 0x80000001E0D84480);
  v8 = sub_1E0D6D23C();
  MEMORY[0x1E12E8FE0](v8);

  MEMORY[0x1E12E8FE0](0x726F7774656E202CLL, 0xEC000000203A736BLL);
  v9 = *(v0 + v1[7]);
  v10 = type metadata accessor for WINetworkSharingProvider.Network(0);
  v11 = MEMORY[0x1E12E9030](v9, v10);
  MEMORY[0x1E12E8FE0](v11);

  return 0;
}

uint64_t sub_1E0BE3360()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 0x736B726F7774656ELL;
  v4 = 0xD000000000000015;
  if (v1 != 4)
  {
    v4 = 0x65636E6575716573;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001CLL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1E0BE3438@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E0BE96C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E0BE3460(uint64_t a1)
{
  v2 = sub_1E0BE7684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BE349C(uint64_t a1)
{
  v2 = sub_1E0BE7684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1E0BE34DC(uint64_t a1, uint64_t a2)
{
  v64[3] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for WINetworkSharingProvider.Network(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v56 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16) && v11 && a1 != a2)
  {
    v62 = 0;
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1E0BE7774(v13, v10, type metadata accessor for WINetworkSharingProvider.Network);
      sub_1E0BE7774(v14, v7, type metadata accessor for WINetworkSharingProvider.Network);
      if ((sub_1E0D6CF1C() & 1) == 0 || (sub_1E0D6CF1C() & 1) == 0)
      {
LABEL_85:
        sub_1E0BE77DC(v7, type metadata accessor for WINetworkSharingProvider.Network);
        sub_1E0BE77DC(v10, type metadata accessor for WINetworkSharingProvider.Network);
        return;
      }

      v16 = v4[6];
      v17 = *&v10[v16];
      v18 = *&v10[v16 + 8];
      v19 = &v7[v16];
      v20 = *v19;
      v21 = v19[1];
      v22 = v18 >> 62;
      v23 = v21 >> 62;
      if (v18 >> 62 == 3)
      {
        break;
      }

      if (v22 > 1)
      {
        if (v22 != 2)
        {
          goto LABEL_31;
        }

        v29 = *(v17 + 16);
        v28 = *(v17 + 24);
        v30 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v30)
        {
          goto LABEL_89;
        }

        if (v23 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v22)
      {
        LODWORD(v27) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_90;
        }

        v27 = v27;
        if (v23 <= 1)
        {
LABEL_29:
          if (v23)
          {
            LODWORD(v31) = HIDWORD(v20) - v20;
            if (__OFSUB__(HIDWORD(v20), v20))
            {
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
LABEL_92:
              __break(1u);
LABEL_93:
              __break(1u);
LABEL_94:
              __break(1u);
            }

            v31 = v31;
          }

          else
          {
            v31 = BYTE6(v21);
          }

          goto LABEL_38;
        }
      }

      else
      {
        v27 = BYTE6(v18);
        if (v23 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_32:
      if (v23 != 2)
      {
        if (v27)
        {
          goto LABEL_85;
        }

        goto LABEL_67;
      }

      v33 = *(v20 + 16);
      v32 = *(v20 + 24);
      v30 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v30)
      {
        goto LABEL_88;
      }

LABEL_38:
      if (v27 != v31)
      {
        goto LABEL_85;
      }

      if (v27 < 1)
      {
        goto LABEL_67;
      }

      if (v22 > 1)
      {
        if (v22 != 2)
        {
          memset(v64, 0, 14);
LABEL_57:
          v44 = v62;
          sub_1E0BE51F4(v64, v20, v21, &v63);
          v62 = v44;
          if (v44)
          {
            goto LABEL_95;
          }

          if (!v63)
          {
            goto LABEL_85;
          }

          goto LABEL_67;
        }

        v59 = v20;
        v60 = v21;
        v61 = v15;
        v34 = *(v17 + 16);
        v58 = *(v17 + 24);
        v35 = sub_1E0D6CE7C();
        if (v35)
        {
          v36 = v35;
          v37 = sub_1E0D6CE9C();
          if (__OFSUB__(v34, v37))
          {
            goto LABEL_93;
          }

          v57 = v34 - v37 + v36;
        }

        else
        {
          v57 = 0;
        }

        if (__OFSUB__(v58, v34))
        {
          goto LABEL_92;
        }

        sub_1E0D6CE8C();
        v45 = v57;
      }

      else
      {
        if (!v22)
        {
          v64[0] = v17;
          LOWORD(v64[1]) = v18;
          BYTE2(v64[1]) = BYTE2(v18);
          BYTE3(v64[1]) = BYTE3(v18);
          BYTE4(v64[1]) = BYTE4(v18);
          BYTE5(v64[1]) = BYTE5(v18);
          goto LABEL_57;
        }

        v59 = v20;
        v60 = v21;
        v61 = v15;
        v38 = v17;
        v39 = v17 >> 32;
        v58 = v39 - v38;
        if (v39 < v38)
        {
          goto LABEL_91;
        }

        v40 = sub_1E0D6CE7C();
        if (v40)
        {
          v41 = v40;
          v42 = sub_1E0D6CE9C();
          if (__OFSUB__(v38, v42))
          {
            goto LABEL_94;
          }

          v43 = v38 - v42 + v41;
        }

        else
        {
          v43 = 0;
        }

        sub_1E0D6CE8C();
        v45 = v43;
      }

      v46 = v62;
      sub_1E0BE51F4(v45, v59, v60, v64);
      v62 = v46;
      if (v46)
      {
LABEL_95:

        __break(1u);
        return;
      }

      v15 = v61;
      if ((v64[0] & 1) == 0)
      {
        goto LABEL_85;
      }

LABEL_67:
      if (v10[v4[7]] != v7[v4[7]] || (sub_1E0BE21AC(*&v10[v4[8]], *&v7[v4[8]]) & 1) == 0)
      {
        goto LABEL_85;
      }

      v47 = v4[9];
      v48 = &v10[v47];
      v49 = *&v10[v47 + 8];
      v50 = &v7[v47];
      v51 = *(v50 + 1);
      if (v49)
      {
        if (!v51 || (*v48 != *v50 || v49 != v51) && (sub_1E0D6D24C() & 1) == 0)
        {
          goto LABEL_85;
        }
      }

      else if (v51)
      {
        goto LABEL_85;
      }

      v52 = v4[10];
      v53 = *&v10[v52];
      v54 = *&v7[v52];
      if (v53)
      {
        if (!v54)
        {
          goto LABEL_85;
        }

        v55 = sub_1E0BE1060(v53, v54);

        sub_1E0BE77DC(v7, type metadata accessor for WINetworkSharingProvider.Network);
        sub_1E0BE77DC(v10, type metadata accessor for WINetworkSharingProvider.Network);
        if ((v55 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (v54)
        {
          goto LABEL_85;
        }

        sub_1E0BE77DC(v7, type metadata accessor for WINetworkSharingProvider.Network);
        sub_1E0BE77DC(v10, type metadata accessor for WINetworkSharingProvider.Network);
      }

      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return;
      }
    }

    if (v17)
    {
      v24 = 0;
    }

    else
    {
      v24 = v18 == 0xC000000000000000;
    }

    if (v24 && v21 >> 62 == 3 && !v20 && v21 == 0xC000000000000000)
    {
      goto LABEL_67;
    }

LABEL_31:
    v27 = 0;
    if (v23 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_32;
  }
}

uint64_t WINetworkSharingProvider.NetworkEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1E0BDCC7C(&qword_1ECE807B8, &qword_1E0D7FF08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE7684();
  sub_1E0D6D30C();
  v15 = 0;
  sub_1E0D6CF3C();
  sub_1E0BE7320(&qword_1ECE80748, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1E0D6D21C();
  if (!v2)
  {
    v9 = type metadata accessor for WINetworkSharingProvider.NetworkEvent(0);
    v14 = 1;
    sub_1E0D6D20C();
    v13 = 2;
    sub_1E0D6D20C();
    v12 = *(v3 + *(v9 + 28));
    v11[15] = 3;
    sub_1E0BDCC7C(&qword_1ECE807C8, &qword_1E0D7FF10);
    sub_1E0BE76D8(&qword_1ECE807D0, &qword_1ECE807D8, &protocol conformance descriptor for WINetworkSharingProvider.Network, MEMORY[0x1E69E6300]);
    sub_1E0D6D21C();
    v11[14] = 4;
    sub_1E0D6D22C();
    v11[13] = 5;
    sub_1E0D6D22C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t WINetworkSharingProvider.NetworkEvent.hash(into:)(__int128 *a1)
{
  sub_1E0D6CF3C();
  sub_1E0BE7320(&qword_1ECE80778, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E0D6CF6C();
  v3 = type metadata accessor for WINetworkSharingProvider.NetworkEvent(0);
  sub_1E0D6D2CC();
  sub_1E0D6D2CC();
  sub_1E0BE584C(a1, *(v1 + v3[7]));
  MEMORY[0x1E12E92A0](*(v1 + v3[8]));
  return MEMORY[0x1E12E92A0](*(v1 + v3[9]));
}

uint64_t WINetworkSharingProvider.NetworkEvent.hashValue.getter()
{
  sub_1E0D6D2AC();
  sub_1E0D6CF3C();
  sub_1E0BE7320(&qword_1ECE80778, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E0D6CF6C();
  v1 = type metadata accessor for WINetworkSharingProvider.NetworkEvent(0);
  sub_1E0D6D2CC();
  sub_1E0D6D2CC();
  sub_1E0BE584C(v3, *(v0 + v1[7]));
  MEMORY[0x1E12E92A0](*(v0 + v1[8]));
  MEMORY[0x1E12E92A0](*(v0 + v1[9]));
  return sub_1E0D6D2EC();
}

uint64_t WINetworkSharingProvider.NetworkEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_1E0D6CF3C();
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E0BDCC7C(&qword_1ECE807E0, &qword_1E0D7FF18);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for WINetworkSharingProvider.NetworkEvent(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE7684();
  v24 = v8;
  sub_1E0D6D2FC();
  if (v2)
  {
    return sub_1E0BDF4E4(a1);
  }

  v12 = v20;
  v31 = 0;
  sub_1E0BE7320(&qword_1ECE80788, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v13 = v21;
  sub_1E0D6D1AC();
  (*(v12 + 32))(v11, v13, v4);
  v30 = 1;
  v11[v9[5]] = sub_1E0D6D19C() & 1;
  v29 = 2;
  v14 = sub_1E0D6D19C();
  v15 = v22;
  v11[v9[6]] = v14 & 1;
  sub_1E0BDCC7C(&qword_1ECE807C8, &qword_1E0D7FF10);
  v28 = 3;
  sub_1E0BE76D8(&qword_1ECE807E8, &qword_1ECE807F0, &protocol conformance descriptor for WINetworkSharingProvider.Network, MEMORY[0x1E69E6330]);
  sub_1E0D6D1AC();
  *&v11[v9[7]] = v25;
  v27 = 4;
  *&v11[v9[8]] = sub_1E0D6D1BC();
  v26 = 5;
  v16 = sub_1E0D6D1BC();
  (*(v15 + 8))(v24, v23);
  *&v11[v9[9]] = v16;
  sub_1E0BE7774(v11, v19, type metadata accessor for WINetworkSharingProvider.NetworkEvent);
  sub_1E0BDF4E4(a1);
  return sub_1E0BE77DC(v11, type metadata accessor for WINetworkSharingProvider.NetworkEvent);
}

uint64_t sub_1E0BE4464(__int128 *a1, int *a2)
{
  sub_1E0D6CF3C();
  sub_1E0BE7320(&qword_1ECE80778, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E0D6CF6C();
  sub_1E0D6D2CC();
  sub_1E0D6D2CC();
  sub_1E0BE584C(a1, *(v2 + a2[7]));
  MEMORY[0x1E12E92A0](*(v2 + a2[8]));
  return MEMORY[0x1E12E92A0](*(v2 + a2[9]));
}

uint64_t sub_1E0BE4530(uint64_t a1, int *a2)
{
  sub_1E0D6D2AC();
  sub_1E0D6CF3C();
  sub_1E0BE7320(&qword_1ECE80778, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1E0D6CF6C();
  sub_1E0D6D2CC();
  sub_1E0D6D2CC();
  sub_1E0BE584C(v5, *(v2 + a2[7]));
  MEMORY[0x1E12E92A0](*(v2 + a2[8]));
  MEMORY[0x1E12E92A0](*(v2 + a2[9]));
  return sub_1E0D6D2EC();
}

unint64_t sub_1E0BE4630()
{
  result = qword_1ECE80648;
  if (!qword_1ECE80648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80648);
  }

  return result;
}

unint64_t sub_1E0BE4684()
{
  result = qword_1ECE80698;
  if (!qword_1ECE80698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80698);
  }

  return result;
}

unint64_t sub_1E0BE46D8()
{
  result = qword_1ECE806A0;
  if (!qword_1ECE806A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE806A0);
  }

  return result;
}

unint64_t sub_1E0BE472C()
{
  result = qword_1ECE806A8;
  if (!qword_1ECE806A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE806A8);
  }

  return result;
}

unint64_t sub_1E0BE4780()
{
  result = qword_1ECE806B0;
  if (!qword_1ECE806B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE806B0);
  }

  return result;
}

unint64_t sub_1E0BE47D4()
{
  result = qword_1ECE806B8;
  if (!qword_1ECE806B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE806B8);
  }

  return result;
}

unint64_t sub_1E0BE4828()
{
  result = qword_1ECE806C0;
  if (!qword_1ECE806C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE806C0);
  }

  return result;
}

unint64_t sub_1E0BE487C()
{
  result = qword_1ECE806C8;
  if (!qword_1ECE806C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE806C8);
  }

  return result;
}

unint64_t sub_1E0BE48D0(uint64_t a1, uint64_t a2)
{
  sub_1E0D6D2AC();
  sub_1E0D6D00C();
  v4 = sub_1E0D6D2EC();

  return sub_1E0BE4948(a1, a2, v4);
}

unint64_t sub_1E0BE4948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1E0D6D24C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1E0BE4A00(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1E0D6D2AC();
  MEMORY[0x1E12E9280](a2);
  v6 = sub_1E0D6D2EC();
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
    sub_1E0BE4D48(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1E0BE4AF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1E0BDCC7C(&qword_1ECE80998, &qword_1E0D81230);
  result = sub_1E0D6D0EC();
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
      sub_1E0D6D2AC();
      MEMORY[0x1E12E9280](v17);
      result = sub_1E0D6D2EC();
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E0BE4D48(uint64_t result, unint64_t a2, char a3)
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
    sub_1E0BE4AF8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1E0BE4E94();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1E0BE4FD4(v5 + 1);
  }

  v8 = *v3;
  sub_1E0D6D2AC();
  MEMORY[0x1E12E9280](v4);
  result = sub_1E0D6D2EC();
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
  result = sub_1E0D6D25C();
  __break(1u);
  return result;
}

void *sub_1E0BE4E94()
{
  v1 = v0;
  sub_1E0BDCC7C(&qword_1ECE80998, &qword_1E0D81230);
  v2 = *v0;
  v3 = sub_1E0D6D0DC();
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

uint64_t sub_1E0BE4FD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1E0BDCC7C(&qword_1ECE80998, &qword_1E0D81230);
  result = sub_1E0D6D0EC();
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
      sub_1E0D6D2AC();
      MEMORY[0x1E12E9280](v16);
      result = sub_1E0D6D2EC();
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

        goto LABEL_28;
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

  return result;
}

uint64_t sub_1E0BE51F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1E0D6CE7C();
    if (v10)
    {
      v11 = sub_1E0D6CE9C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1E0D6CE8C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1E0D6CE7C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1E0D6CE9C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1E0D6CE8C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1E0BE5424(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1E0BE5B54(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1E0BE7104(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1E0BE51F4(v13, a3, a4, &v12);
  v10 = v4;
  sub_1E0BE7104(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t _s8CoreWiFi24WINetworkSharingProviderC7NetworkV18CaptivePortalLoginV4hash4intoys6HasherVz_tF_0(uint64_t a1, uint64_t a2)
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
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1E12E9280](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_1E0D6D00C();

        sub_1E0D6D00C();

        result = sub_1E0D6D2EC();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E0BE5720(__int128 *a1, uint64_t a2)
{
  result = sub_1E0D6D2EC();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_1E0D6D2AC();
    MEMORY[0x1E12E9280](v12);
    result = sub_1E0D6D2EC();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1E12E9280](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E0BE584C(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for WINetworkSharingProvider.Network(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1E12E9280](v8);
  if (v8)
  {
    v10 = v4[5];
    v11 = v4[8];
    v19 = v4[7];
    v20 = v10;
    v12 = v4[9];
    v17 = v4[10];
    v18 = v11;
    v13 = &v7[v12];
    v14 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v15 = *(v5 + 72);
    do
    {
      sub_1E0BE7774(v14, v7, type metadata accessor for WINetworkSharingProvider.Network);
      sub_1E0D6CF3C();
      sub_1E0BE7320(&qword_1ECE80778, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1E0D6CF6C();
      sub_1E0D6CF6C();
      _s8CoreWiFi24WINetworkSharingProviderC7NetworkV2IDV4hash4intoys6HasherVz_tF_0();
      sub_1E0D6D2CC();
      sub_1E0BE5720(a1, *&v7[v18]);
      if (*(v13 + 1))
      {
        MEMORY[0x1E12E9280](1);
        sub_1E0D6D00C();
      }

      else
      {
        MEMORY[0x1E12E9280](0);
      }

      v16 = *&v7[v17];
      sub_1E0D6D2CC();
      if (v16)
      {
        _s8CoreWiFi24WINetworkSharingProviderC7NetworkV18CaptivePortalLoginV4hash4intoys6HasherVz_tF_0(a1, v16);
      }

      result = sub_1E0BE77DC(v7, type metadata accessor for WINetworkSharingProvider.Network);
      v14 += v15;
      --v8;
    }

    while (v8);
  }

  return result;
}

BOOL _s8CoreWiFi24WINetworkSharingProviderC12NetworkEventV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1E0D6CF1C() & 1) != 0 && (v4 = type metadata accessor for WINetworkSharingProvider.NetworkEvent(0), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]) && (v5 = v4, sub_1E0BE34DC(*(a1 + v4[7]), *(a2 + v4[7])), (v6) && *(a1 + v5[8]) == *(a2 + v5[8]))
  {
    return *(a1 + v5[9]) == *(a2 + v5[9]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E0BE5B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1E0D6CE7C();
  v11 = result;
  if (result)
  {
    result = sub_1E0D6CE9C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1E0D6CE8C();
  sub_1E0BE51F4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL _s8CoreWiFi24WINetworkSharingProviderC7NetworkV2IDV23__derived_struct_equalsySbAG_AGtFZ_0(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1E0BDF5B0(a3, a4);
          return sub_1E0BE5424(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s8CoreWiFi24WINetworkSharingProviderC7NetworkV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1E0D6CF1C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WINetworkSharingProvider.Network(0);
  if ((sub_1E0D6CF1C() & 1) == 0 || !_s8CoreWiFi24WINetworkSharingProviderC7NetworkV2IDV23__derived_struct_equalsySbAG_AGtFZ_0(*(a1 + v4[6]), *(a1 + v4[6] + 8), *(a2 + v4[6]), *(a2 + v4[6] + 8)) || *(a1 + v4[7]) != *(a2 + v4[7]) || (sub_1E0BE21AC(*(a1 + v4[8]), *(a2 + v4[8])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[9];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9 || (*v6 != *v8 || v7 != v9) && (sub_1E0D6D24C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = v4[10];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11)
  {
    if (v12)
    {

      v13 = sub_1E0BE1060(v11, v12);

      if (v13)
      {
        return 1;
      }
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1E0BE5E9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852141679 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6649711 && a2 == 0xE300000000000000 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7366007 && a2 == 0xE300000000000000 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6385783 && a2 == 0xE300000000000000 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 845246583 && a2 == 0xE400000000000000 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 862023799 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E0D6D24C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E0BE6098(void *a1)
{
  v2 = sub_1E0BDCC7C(&qword_1ECE809D0, &qword_1E0D81268);
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v37[-v3];
  v4 = sub_1E0BDCC7C(&qword_1ECE809D8, &qword_1E0D81270);
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v37[-v6];
  v7 = sub_1E0BDCC7C(&qword_1ECE809E0, &qword_1E0D81278);
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v37[-v9];
  v10 = sub_1E0BDCC7C(&qword_1ECE809E8, &qword_1E0D81280);
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v37[-v11];
  v12 = sub_1E0BDCC7C(&qword_1ECE809F0, &qword_1E0D81288);
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37[-v13];
  v15 = sub_1E0BDCC7C(&qword_1ECE809F8, &qword_1E0D81290);
  v40 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37[-v16];
  v18 = sub_1E0BDCC7C(&qword_1ECE80A00, &qword_1E0D81298);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37[-v20];
  v22 = a1[3];
  v56 = a1;
  sub_1E0BDCCC4(a1, v22);
  sub_1E0BE4684();
  v23 = v55;
  sub_1E0D6D2FC();
  if (v23)
  {
    goto LABEL_9;
  }

  v39 = v15;
  v24 = v14;
  v26 = v53;
  v25 = v54;
  v55 = v19;
  v27 = sub_1E0D6D1CC();
  if (*(v27 + 16) != 1 || (v28 = *(v27 + 32), v28 == 6))
  {
    v30 = sub_1E0D6D12C();
    swift_allocError();
    v32 = v31;
    sub_1E0BDCC7C(&qword_1ECE80640, &unk_1E0D7FE70);
    *v32 = &type metadata for WINetworkSharingProvider.Network.SecurityPolicy;
    sub_1E0D6D16C();
    sub_1E0D6D11C();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v55 + 8))(v21, v18);
    swift_unknownObjectRelease();
LABEL_9:
    sub_1E0BDF4E4(v56);
    return 0;
  }

  v38 = *(v27 + 32);
  if (v28 > 2)
  {
    if (v28 != 3)
    {
      v29 = v55;
      if (v28 == 4)
      {
        v61 = 4;
        sub_1E0BE472C();
        v34 = v51;
        sub_1E0D6D15C();
        (*(v48 + 8))(v34, v47);
      }

      else
      {
        v62 = 5;
        sub_1E0BE46D8();
        v36 = v52;
        sub_1E0D6D15C();
        (*(v49 + 8))(v36, v50);
      }

      goto LABEL_17;
    }

    v60 = 3;
    sub_1E0BE4780();
    sub_1E0D6D15C();
    v35 = v55;
    (*(v46 + 8))(v25, v45);
    (*(v35 + 8))(v21, v18);
  }

  else
  {
    if (v28)
    {
      if (v28 == 1)
      {
        v58 = 1;
        sub_1E0BE4828();
        sub_1E0D6D15C();
        v29 = v55;
        (*(v41 + 8))(v24, v42);
      }

      else
      {
        v59 = 2;
        sub_1E0BE47D4();
        sub_1E0D6D15C();
        v29 = v55;
        (*(v43 + 8))(v26, v44);
      }

LABEL_17:
      (*(v29 + 8))(v21, v18);
      goto LABEL_18;
    }

    v57 = 0;
    sub_1E0BE487C();
    sub_1E0D6D15C();
    (*(v40 + 8))(v17, v39);
    (*(v55 + 8))(v21, v18);
  }

LABEL_18:
  swift_unknownObjectRelease();
  sub_1E0BDF4E4(v56);
  return v38;
}

unint64_t sub_1E0BE689C()
{
  result = qword_1ECE806E8;
  if (!qword_1ECE806E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE806E8);
  }

  return result;
}

unint64_t sub_1E0BE68F0()
{
  result = qword_1ECE806F0;
  if (!qword_1ECE806F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE806F0);
  }

  return result;
}

unint64_t sub_1E0BE6944()
{
  result = qword_1ECE806F8;
  if (!qword_1ECE806F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE806F8);
  }

  return result;
}

void *sub_1E0BE6998(void *a1)
{
  v2 = sub_1E0BDCC7C(&qword_1ECE809B8, &qword_1E0D81248);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26 - v3;
  v5 = sub_1E0BDCC7C(&qword_1ECE809C0, &qword_1E0D81250);
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = sub_1E0BDCC7C(&qword_1ECE809C8, &unk_1E0D81258);
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE689C();
  v12 = v31;
  sub_1E0D6D2FC();
  if (v12)
  {
    goto LABEL_7;
  }

  v26 = v5;
  v13 = v4;
  v14 = v29;
  v31 = a1;
  v11 = v10;
  v15 = sub_1E0D6D1CC();
  v16 = v8;
  if (*(v15 + 16) != 1)
  {
    v19 = sub_1E0D6D12C();
    swift_allocError();
    v21 = v20;
    sub_1E0BDCC7C(&qword_1ECE80640, &unk_1E0D7FE70);
    *v21 = &type metadata for WINetworkSharingProvider.Network.Credentials;
    sub_1E0D6D16C();
    sub_1E0D6D11C();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v30 + 8))(v11, v8);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    sub_1E0BDF4E4(a1);
    return v11;
  }

  if (*(v15 + 32))
  {
    v33 = 1;
    sub_1E0BE68F0();
    v17 = v13;
    sub_1E0D6D15C();
    v18 = v30;
    v24 = v11;
    v11 = sub_1E0D6D18C();
    (*(v28 + 8))(v17, v14);
    (*(v18 + 8))(v24, v16);
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0;
    sub_1E0BE6944();
    v22 = v7;
    sub_1E0D6D15C();
    v23 = v30;
    (*(v27 + 8))(v22, v26);
    (*(v23 + 8))(v10, v8);
    swift_unknownObjectRelease();
    v11 = 0;
  }

  sub_1E0BDF4E4(v31);
  return v11;
}

unint64_t sub_1E0BE6E60()
{
  result = qword_1ECE80708;
  if (!qword_1ECE80708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80708);
  }

  return result;
}

void *sub_1E0BE6EB4(void *a1)
{
  v3 = sub_1E0BDCC7C(&qword_1ECE809A8, &qword_1E0D81240);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE6E60();
  sub_1E0D6D2FC();
  if (v1)
  {
    sub_1E0BDF4E4(a1);
  }

  else
  {
    sub_1E0BDCC7C(&qword_1ECE80710, &qword_1E0D7FEE0);
    sub_1E0BE98E8(&qword_1ECE809B0, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1E0D6D1AC();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_1E0BDF4E4(a1);
  }

  return v7;
}

unint64_t sub_1E0BE705C()
{
  result = qword_1ECE80728;
  if (!qword_1ECE80728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80728);
  }

  return result;
}

unint64_t sub_1E0BE70B0()
{
  result = qword_1ECE80730;
  if (!qword_1ECE80730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80730);
  }

  return result;
}

uint64_t sub_1E0BE7104(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_1E0BE7158(void *a1)
{
  v3 = sub_1E0BDCC7C(&qword_1ECE809A0, &qword_1E0D81238);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BE705C();
  sub_1E0D6D2FC();
  if (v1)
  {
    sub_1E0BDF4E4(a1);
  }

  else
  {
    sub_1E0BE7464();
    sub_1E0D6D1AC();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_1E0BDF4E4(a1);
  }

  return v7;
}

unint64_t sub_1E0BE72CC()
{
  result = qword_1ECE80740;
  if (!qword_1ECE80740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80740);
  }

  return result;
}

uint64_t sub_1E0BE7320(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E0BE7368()
{
  result = qword_1ECE80760;
  if (!qword_1ECE80760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80760);
  }

  return result;
}

unint64_t sub_1E0BE73BC()
{
  result = qword_1ECE80768;
  if (!qword_1ECE80768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80768);
  }

  return result;
}

unint64_t sub_1E0BE7410()
{
  result = qword_1ECE80770;
  if (!qword_1ECE80770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80770);
  }

  return result;
}

unint64_t sub_1E0BE7464()
{
  result = qword_1ECE80790;
  if (!qword_1ECE80790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80790);
  }

  return result;
}

uint64_t sub_1E0BE74B8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1E0BDB160(&qword_1ECE80750, &qword_1E0D7FEF8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E0BE7530()
{
  result = qword_1ECE807A0;
  if (!qword_1ECE807A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE807A0);
  }

  return result;
}

unint64_t sub_1E0BE7584()
{
  result = qword_1ECE807A8;
  if (!qword_1ECE807A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE807A8);
  }

  return result;
}

unint64_t sub_1E0BE75D8()
{
  result = qword_1ECE807B0;
  if (!qword_1ECE807B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE807B0);
  }

  return result;
}

uint64_t sub_1E0BE764C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E0BE7684()
{
  result = qword_1ECE807C0;
  if (!qword_1ECE807C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE807C0);
  }

  return result;
}

uint64_t sub_1E0BE76D8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1E0BDB160(&qword_1ECE807C8, &qword_1E0D7FF10);
    sub_1E0BE7320(a2, type metadata accessor for WINetworkSharingProvider.Network, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E0BE7774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E0BE77DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E0BE7840()
{
  result = qword_1ECE807F8;
  if (!qword_1ECE807F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE807F8);
  }

  return result;
}

unint64_t sub_1E0BE7898()
{
  result = qword_1ECE80800;
  if (!qword_1ECE80800)
  {
    sub_1E0BDB160(&qword_1ECE80808, &qword_1E0D7FFD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80800);
  }

  return result;
}

unint64_t sub_1E0BE7900()
{
  result = qword_1ECE80810;
  if (!qword_1ECE80810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80810);
  }

  return result;
}

unint64_t sub_1E0BE7958()
{
  result = qword_1ECE80818;
  if (!qword_1ECE80818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80818);
  }

  return result;
}

unint64_t sub_1E0BE79B0()
{
  result = qword_1ECE80820;
  if (!qword_1ECE80820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80820);
  }

  return result;
}

unint64_t sub_1E0BE7A50()
{
  result = qword_1ECE80830;
  if (!qword_1ECE80830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80830);
  }

  return result;
}

void sub_1E0BE7B44(uint64_t a1)
{
  sub_1E0D6CF3C();
  if (v1 <= 0x3F)
  {
    sub_1E0BE7BFC(319);
    if (v2 <= 0x3F)
    {
      sub_1E0BE7C58();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E0BE7BFC(uint64_t a1)
{
  if (!qword_1ECE80850)
  {
    sub_1E0BE4630();
    v1 = sub_1E0D6D0BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE80850);
    }
  }
}

void sub_1E0BE7C58()
{
  if (!qword_1ECE80858)
  {
    v0 = sub_1E0D6D0CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE80858);
    }
  }
}

__n128 sub_1E0BE7CB8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E0BE7CC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E0BE7D14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1E0BE7D68(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1E0BE7D80(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E0BE7DC0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1E0BE7DDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
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

uint64_t sub_1E0BE7E30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_1E0BE7EB4(uint64_t a1)
{
  sub_1E0D6CF3C();
  if (v1 <= 0x3F)
  {
    sub_1E0BE7F58(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E0BE7F58(uint64_t a1)
{
  if (!qword_1ECE80870)
  {
    type metadata accessor for WINetworkSharingProvider.Network(255);
    v1 = sub_1E0D6D09C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE80870);
    }
  }
}

uint64_t getEnumTagSinglePayload for WINetworkSharingProvider.Network.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WINetworkSharingProvider.Network.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WINetworkSharingProvider.Network.Credentials.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WINetworkSharingProvider.Network.Credentials.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WISSID.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WISSID.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1E0BE8384(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E0BE8414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E0BE8538()
{
  result = qword_1ECE80878;
  if (!qword_1ECE80878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80878);
  }

  return result;
}

unint64_t sub_1E0BE8590()
{
  result = qword_1ECE80880;
  if (!qword_1ECE80880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80880);
  }

  return result;
}

unint64_t sub_1E0BE85E8()
{
  result = qword_1ECE80888;
  if (!qword_1ECE80888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80888);
  }

  return result;
}

unint64_t sub_1E0BE8640()
{
  result = qword_1ECE80890;
  if (!qword_1ECE80890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80890);
  }

  return result;
}

unint64_t sub_1E0BE8698()
{
  result = qword_1ECE80898;
  if (!qword_1ECE80898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80898);
  }

  return result;
}

unint64_t sub_1E0BE86F0()
{
  result = qword_1ECE808A0;
  if (!qword_1ECE808A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808A0);
  }

  return result;
}

unint64_t sub_1E0BE8748()
{
  result = qword_1ECE808A8;
  if (!qword_1ECE808A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808A8);
  }

  return result;
}

unint64_t sub_1E0BE87A0()
{
  result = qword_1ECE808B0;
  if (!qword_1ECE808B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808B0);
  }

  return result;
}

unint64_t sub_1E0BE87F8()
{
  result = qword_1ECE808B8;
  if (!qword_1ECE808B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808B8);
  }

  return result;
}

unint64_t sub_1E0BE8850()
{
  result = qword_1ECE808C0;
  if (!qword_1ECE808C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808C0);
  }

  return result;
}

unint64_t sub_1E0BE88A8()
{
  result = qword_1ECE808C8;
  if (!qword_1ECE808C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808C8);
  }

  return result;
}

unint64_t sub_1E0BE8900()
{
  result = qword_1ECE808D0;
  if (!qword_1ECE808D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808D0);
  }

  return result;
}

unint64_t sub_1E0BE8958()
{
  result = qword_1ECE808D8;
  if (!qword_1ECE808D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808D8);
  }

  return result;
}

unint64_t sub_1E0BE89B0()
{
  result = qword_1ECE808E0;
  if (!qword_1ECE808E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808E0);
  }

  return result;
}

unint64_t sub_1E0BE8A08()
{
  result = qword_1ECE808E8;
  if (!qword_1ECE808E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808E8);
  }

  return result;
}

unint64_t sub_1E0BE8A60()
{
  result = qword_1ECE808F0;
  if (!qword_1ECE808F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808F0);
  }

  return result;
}

unint64_t sub_1E0BE8AB8()
{
  result = qword_1ECE808F8;
  if (!qword_1ECE808F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE808F8);
  }

  return result;
}

unint64_t sub_1E0BE8B10()
{
  result = qword_1ECE80900;
  if (!qword_1ECE80900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80900);
  }

  return result;
}

unint64_t sub_1E0BE8B68()
{
  result = qword_1ECE80908;
  if (!qword_1ECE80908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80908);
  }

  return result;
}

unint64_t sub_1E0BE8BC0()
{
  result = qword_1ECE80910;
  if (!qword_1ECE80910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80910);
  }

  return result;
}

unint64_t sub_1E0BE8C18()
{
  result = qword_1ECE80918;
  if (!qword_1ECE80918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80918);
  }

  return result;
}

unint64_t sub_1E0BE8C70()
{
  result = qword_1ECE80920;
  if (!qword_1ECE80920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80920);
  }

  return result;
}

unint64_t sub_1E0BE8CC8()
{
  result = qword_1ECE80928;
  if (!qword_1ECE80928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80928);
  }

  return result;
}

unint64_t sub_1E0BE8D20()
{
  result = qword_1ECE80930;
  if (!qword_1ECE80930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80930);
  }

  return result;
}

unint64_t sub_1E0BE8D78()
{
  result = qword_1ECE80938;
  if (!qword_1ECE80938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80938);
  }

  return result;
}

unint64_t sub_1E0BE8DD0()
{
  result = qword_1ECE80940;
  if (!qword_1ECE80940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80940);
  }

  return result;
}

unint64_t sub_1E0BE8E28()
{
  result = qword_1ECE80948;
  if (!qword_1ECE80948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80948);
  }

  return result;
}

unint64_t sub_1E0BE8E80()
{
  result = qword_1ECE80950;
  if (!qword_1ECE80950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80950);
  }

  return result;
}

unint64_t sub_1E0BE8ED8()
{
  result = qword_1ECE80958;
  if (!qword_1ECE80958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80958);
  }

  return result;
}

unint64_t sub_1E0BE8F30()
{
  result = qword_1ECE80960;
  if (!qword_1ECE80960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80960);
  }

  return result;
}

unint64_t sub_1E0BE8F88()
{
  result = qword_1ECE80968;
  if (!qword_1ECE80968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80968);
  }

  return result;
}

unint64_t sub_1E0BE8FE0()
{
  result = qword_1ECE80970;
  if (!qword_1ECE80970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80970);
  }

  return result;
}

unint64_t sub_1E0BE9038()
{
  result = qword_1ECE80978;
  if (!qword_1ECE80978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80978);
  }

  return result;
}

unint64_t sub_1E0BE9090()
{
  result = qword_1ECE80980;
  if (!qword_1ECE80980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80980);
  }

  return result;
}

unint64_t sub_1E0BE90E8()
{
  result = qword_1ECE80988;
  if (!qword_1ECE80988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80988);
  }

  return result;
}

id sub_1E0BE913C(uint64_t a1)
{
  v2 = [objc_allocWithZone(CWFWiFiNetworkSharingNetwork) init];
  v3 = type metadata accessor for WINetworkSharingProvider.Network(0);
  v4 = *(a1 + v3[8]);
  if (sub_1E0BE1950(0, v4))
  {
    v5 = 512;
  }

  else
  {
    v5 = 0;
  }

  if (sub_1E0BE1950(1u, v4))
  {
    v5 |= 0x100uLL;
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFFELL | sub_1E0BE1950(2u, v4);
  if (sub_1E0BE1950(3u, v4))
  {
    v6 |= 4uLL;
  }

  if (sub_1E0BE1950(4u, v4))
  {
    v6 |= 0x10uLL;
  }

  if (sub_1E0BE1950(5u, v4))
  {
    v7 = v6 | 0x40;
  }

  else
  {
    v7 = v6;
  }

  [v2 setSupportedSecurityTypes_];
  if (*(a1 + v3[9] + 8))
  {
    v8 = sub_1E0D6CF8C();
    [v2 setPassword_];
  }

  v9 = sub_1E0D6CF0C();
  [v2 setFirstSharedDate_];

  v10 = sub_1E0D6CF0C();
  [v2 setLastModifiedDate_];

  v11 = *(a1 + v3[10]);
  if (v11)
  {
    [v2 setIsCaptive_];
    if (*(v11 + 16))
    {
      v12 = sub_1E0D6CF4C();
    }

    else
    {
      v12 = 0;
    }

    [v2 setCaptivePortalCredentials_];
  }

  [v2 setIsHidden_];
  return v2;
}

unint64_t sub_1E0BE9340(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1E0BDCC7C(&qword_1ECE80990, &qword_1E0D81228);
    v3 = sub_1E0D6D14C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1E0BE48D0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E0BE9454(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6168537473726966 && a2 == 0xEB00000000646572;
  if (v4 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69646F4D7473616CLL && a2 == 0xEC00000064656966 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684632435 && a2 == 0xE400000000000000 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7242444953537369 && a2 == 0xEF7473616364616FLL || (sub_1E0D6D24C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974697275636573 && a2 == 0xEE007963696C6F50 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E0D844F0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E0D6D24C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1E0BE96C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001E0D84510 == a2 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E0D84530 == a2 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736B726F7774656ELL && a2 == 0xE800000000000000 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E0D84550 == a2 || (sub_1E0D6D24C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xEE007265626D754ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E0D6D24C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E0BE98D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E0BE7104(result, a2);
  }

  return result;
}

uint64_t sub_1E0BE98E8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1E0BDB160(&qword_1ECE80710, &qword_1E0D7FEE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WISSID.stringRepresentation(encoding:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E0D6CFEC();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E0D6CFBC();
}

uint64_t WISSID.description.getter(unint64_t a1, unint64_t a2)
{
  v4 = sub_1E0D6CFEC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - v9;
  sub_1E0D6CFDC();
  (*(v5 + 16))(v8, v10, v4);
  v11 = sub_1E0D6CFBC();
  v13 = v12;
  (*(v5 + 8))(v10, v4);
  if (v13)
  {
    v19 = 39;
    v20 = 0xE100000000000000;
    MEMORY[0x1E12E8FE0](v11, v13);

    MEMORY[0x1E12E8FE0](39, 0xE100000000000000);
  }

  else
  {
    v19 = 30768;
    v20 = 0xE200000000000000;
    v18[0] = sub_1E0BE9CA4(a1, a2);
    sub_1E0BDCC7C(&qword_1ECE80A08, &qword_1E0D812D0);
    sub_1E0BEA6A0();
    v14 = sub_1E0D6CF7C();
    v16 = v15;

    MEMORY[0x1E12E8FE0](v14, v16);
  }

  return v19;
}

uint64_t sub_1E0BE9CA4(unint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v46 = MEMORY[0x1E69E7CC0];
    v32 = a2 >> 62;
    sub_1E0BEA4AC(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_1E0D6CE7C();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1E0D6CE9C();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_1E0D6CE7C();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1E0D6CE9C();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_1E0BDCC7C(&qword_1ECE80A60, &qword_1E0D81578);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1E0D812C0;
      *(v21 + 56) = MEMORY[0x1E69E7508];
      *(v21 + 64) = MEMORY[0x1E69E7558];
      *(v21 + 32) = v20;
      v22 = sub_1E0D6CFCC();
      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_1E0BEA4AC((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t WISSID.init(_:encoding:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E0D6CFAC();
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    goto LABEL_22;
  }

  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_21;
    }

    v10 = *(v4 + 16);
    v9 = *(v4 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 < 1)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8)
  {
    if (!__OFSUB__(HIDWORD(v4), v4))
    {
      if (HIDWORD(v4) - v4 >= 1)
      {
        goto LABEL_12;
      }

LABEL_21:
      sub_1E0BE98D4(v4, v6);
LABEL_22:
      v4 = 0;
      goto LABEL_23;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!BYTE6(v6))
  {
    goto LABEL_21;
  }

LABEL_12:
  if (v8 == 2)
  {
    v15 = *(v4 + 16);
    v14 = *(v4 + 24);
    v11 = __OFSUB__(v14, v15);
    v13 = v14 - v15;
    if (!v11)
    {
LABEL_20:
      if (v13 < 33)
      {
LABEL_23:
        v16 = sub_1E0D6CFEC();
        (*(*(v16 - 8) + 8))(a3, v16);
        return v4;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_19:
    v13 = BYTE6(v6);
    goto LABEL_20;
  }

  if (v8 != 1)
  {
    goto LABEL_19;
  }

  LODWORD(v13) = HIDWORD(v4) - v4;
  if (!__OFSUB__(HIDWORD(v4), v4))
  {
    v13 = v13;
    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1E0BEA184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E0D6D24C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E0BEA20C(uint64_t a1)
{
  v2 = sub_1E0BEA704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0BEA248(uint64_t a1)
{
  v2 = sub_1E0BEA704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WISSID.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1E0BDCC7C(&qword_1ECE80A18, &qword_1E0D812D8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BEA704();
  sub_1E0D6D30C();
  v11 = a2;
  v12 = a3;
  sub_1E0BDF5B0(a2, a3);
  sub_1E0BEA758();
  sub_1E0D6D21C();
  sub_1E0BE7104(v11, v12);
  return (*(v7 + 8))(v9, v6);
}

uint64_t WISSID.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1E0D6D2AC();
  _s8CoreWiFi24WINetworkSharingProviderC7NetworkV2IDV4hash4intoys6HasherVz_tF_0();
  return sub_1E0D6D2EC();
}

void *sub_1E0BEA464@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E0BEA7AC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

char *sub_1E0BEA4AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E0BEA4CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E0BEA4CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1E0BDCC7C(&qword_1ECE80A68, &qword_1E0D81580);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s8CoreWiFi6WISSIDVyACSg10Foundation4DataVcfC_0(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_20;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 1)
      {
        goto LABEL_20;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v2)
  {
    if (!BYTE6(a2))
    {
      goto LABEL_20;
    }

LABEL_11:
    if (v2 == 2)
    {
      v9 = *(result + 16);
      v8 = *(result + 24);
      v5 = __OFSUB__(v8, v9);
      v7 = v8 - v9;
      if (!v5)
      {
LABEL_19:
        if (v7 < 33)
        {
          return result;
        }

        goto LABEL_20;
      }

      __break(1u);
    }

    else if (v2 == 1)
    {
      LODWORD(v7) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v7 = v7;
        goto LABEL_19;
      }

LABEL_24:
      __break(1u);
      return result;
    }

    v7 = BYTE6(a2);
    goto LABEL_19;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_23;
  }

  if (HIDWORD(result) - result >= 1)
  {
    goto LABEL_11;
  }

LABEL_20:
  sub_1E0BE7104(result, a2);
  return 0;
}

unint64_t sub_1E0BEA6A0()
{
  result = qword_1ECE80A10;
  if (!qword_1ECE80A10)
  {
    sub_1E0BDB160(&qword_1ECE80A08, &qword_1E0D812D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80A10);
  }

  return result;
}

unint64_t sub_1E0BEA704()
{
  result = qword_1ECE80A20;
  if (!qword_1ECE80A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80A20);
  }

  return result;
}

unint64_t sub_1E0BEA758()
{
  result = qword_1ECE80A28;
  if (!qword_1ECE80A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80A28);
  }

  return result;
}

void *sub_1E0BEA7AC(void *a1)
{
  v3 = sub_1E0BDCC7C(&qword_1ECE80A50, &qword_1E0D81570);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = sub_1E0BDCCC4(a1, a1[3]);
  sub_1E0BEA704();
  sub_1E0D6D2FC();
  if (v1)
  {
    sub_1E0BDF4E4(a1);
  }

  else
  {
    sub_1E0BEAAA0();
    sub_1E0D6D1AC();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_1E0BDF4E4(a1);
  }

  return v7;
}

unint64_t sub_1E0BEA924()
{
  result = qword_1ECE80A30;
  if (!qword_1ECE80A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80A30);
  }

  return result;
}

unint64_t sub_1E0BEA99C()
{
  result = qword_1ECE80A38;
  if (!qword_1ECE80A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80A38);
  }

  return result;
}

unint64_t sub_1E0BEA9F4()
{
  result = qword_1ECE80A40;
  if (!qword_1ECE80A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80A40);
  }

  return result;
}

unint64_t sub_1E0BEAA4C()
{
  result = qword_1ECE80A48;
  if (!qword_1ECE80A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80A48);
  }

  return result;
}

unint64_t sub_1E0BEAAA0()
{
  result = qword_1ECE80A58;
  if (!qword_1ECE80A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE80A58);
  }

  return result;
}

CWFWiFiNetworkSharingUtil __swiftcall CWFWiFiNetworkSharingUtil.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1E0BEAD90(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_1E0BEADD8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1E0BDCC7C(&qword_1ECE80AA0, qword_1E0D81598);
  v10 = *(type metadata accessor for WINetworkSharingProvider.Network(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for WINetworkSharingProvider.Network(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1E0BEAFB0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v42 = a3;
  v5 = sub_1E0BDCC7C(&qword_1ECE80A80, &qword_1E0D81588);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  v11 = sub_1E0BDCC7C(&qword_1ECE80A88, &qword_1E0D81590);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v37 - v12;
  v46 = type metadata accessor for WINetworkSharingProvider.Network(0);
  v43 = *(v46 - 8);
  v14 = MEMORY[0x1EEE9AC00](v46);
  v45 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  v44 = a1;
  if (a1 >> 62)
  {
    result = sub_1E0D6D13C();
    v19 = result;
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = a2;
  v41 = v5;
  v37 = v10;
  v38 = v6;
  if (v19)
  {
    if (v19 < 1)
    {
      __break(1u);
      return result;
    }

    v20 = 0;
    v21 = v44;
    v22 = v44 & 0xC000000000000001;
    v23 = (v43 + 48);
    v24 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v22)
      {
        v25 = MEMORY[0x1E12E90D0](v20, v21);
      }

      else
      {
        v25 = *(v21 + 8 * v20 + 32);
      }

      v26 = v25;
      sub_1E0BE1A1C(v25, v13);
      if ((*v23)(v13, 1, v46) == 1)
      {

        sub_1E0BEBB84(v13);
      }

      else
      {
        sub_1E0BEBCF4(v13, v18);
        sub_1E0BEBBEC(v18, v45);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1E0BEADD8(0, v24[2] + 1, 1, v24);
        }

        v28 = v24[2];
        v27 = v24[3];
        if (v28 >= v27 >> 1)
        {
          v24 = sub_1E0BEADD8((v27 > 1), v28 + 1, 1, v24);
        }

        sub_1E0BEBC50(v18);
        v24[2] = v28 + 1;
        sub_1E0BEBCF4(v45, v24 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v28);
        v21 = v44;
      }

      ++v20;
    }

    while (v19 != v20);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v29 = v42;
  if (v42 >> 60 != 15)
  {
    sub_1E0D6CE3C();
    swift_allocObject();
    v30 = v40;
    sub_1E0BDF5B0(v40, v29);
    sub_1E0D6CE2C();
    sub_1E0BEBCAC(&qword_1ECE80A90, &qword_1ECE80A80, &qword_1E0D81588, MEMORY[0x1E6969CA8]);
    v31 = v39;
    v32 = v41;
    sub_1E0D6CE1C();

    v35 = v37;
    v34 = v38;
    (*(v38 + 32))(v37, v31, v32);
    v47 = v24;
    sub_1E0BDCC7C(&qword_1ECE807C8, &qword_1E0D7FF10);
    sub_1E0BEBCAC(&qword_1ECE80A98, &qword_1ECE807C8, &qword_1E0D7FF10, MEMORY[0x1E69E6328]);
    v36 = sub_1E0D6D02C();
    sub_1E0BE98D4(v30, v29);

    (*(v34 + 8))(v35, v32);
    v24 = v36;
  }

  sub_1E0D6CE6C();
  swift_allocObject();
  sub_1E0D6CE5C();
  v47 = v24;
  sub_1E0BDCC7C(&qword_1ECE807C8, &qword_1E0D7FF10);
  sub_1E0BEBD58();
  v33 = sub_1E0D6CE4C();

  return v33;
}

uint64_t sub_1E0BEB55C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v46 = a2;
  v5 = sub_1E0BDCC7C(&qword_1ECE80A80, &qword_1E0D81588);
  v44 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - v8;
  v10 = sub_1E0BDCC7C(&qword_1ECE80A88, &qword_1E0D81590);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - v11;
  v53 = type metadata accessor for WINetworkSharingProvider.Network(0);
  v51 = *(v53 - 8);
  v13 = MEMORY[0x1EEE9AC00](v53);
  v49 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v52 = &v43 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  v55 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    result = sub_1E0D6D13C();
    v20 = result;
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47 = v5;
  v48 = a3;
  v43 = v9;
  if (!v20)
  {
    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  if (v20 >= 1)
  {
    v21 = 0;
    v22 = a1 & 0xC000000000000001;
    v23 = (v51 + 48);
    v24 = MEMORY[0x1E69E7CC0];
    v50 = a1;
    do
    {
      if (v22)
      {
        v25 = MEMORY[0x1E12E90D0](v21, a1);
      }

      else
      {
        v25 = *(a1 + 8 * v21 + 32);
      }

      v26 = v25;
      sub_1E0BE1A1C(v25, v12);
      if ((*v23)(v12, 1, v53) == 1)
      {

        sub_1E0BEBB84(v12);
      }

      else
      {
        sub_1E0BEBCF4(v12, v19);
        sub_1E0BEBBEC(v19, v52);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1E0BEADD8(0, v24[2] + 1, 1, v24);
        }

        v28 = v24[2];
        v27 = v24[3];
        if (v28 >= v27 >> 1)
        {
          v24 = sub_1E0BEADD8((v27 > 1), v28 + 1, 1, v24);
        }

        sub_1E0BEBC50(v19);
        v24[2] = v28 + 1;
        sub_1E0BEBCF4(v52, v24 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v28);
        a1 = v50;
      }

      ++v21;
    }

    while (v20 != v21);
LABEL_18:
    v29 = v48;
    if (v48 >> 60 == 15)
    {
      v30 = v49;
      v31 = v24[2];
      if (v31)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_1E0D6CE3C();
      swift_allocObject();
      v37 = v46;
      sub_1E0BDF5B0(v46, v29);
      sub_1E0D6CE2C();
      sub_1E0BEBCAC(&qword_1ECE80A90, &qword_1ECE80A80, &qword_1E0D81588, MEMORY[0x1E6969CA8]);
      v38 = v45;
      v39 = v47;
      sub_1E0D6CE1C();
      v30 = v49;

      v40 = v43;
      v41 = v44;
      (*(v44 + 32))(v43, v38, v39);
      v54 = v24;
      sub_1E0BDCC7C(&qword_1ECE807C8, &qword_1E0D7FF10);
      sub_1E0BEBCAC(&qword_1ECE80A98, &qword_1ECE807C8, &qword_1E0D7FF10, MEMORY[0x1E69E6328]);
      v42 = sub_1E0D6D02C();
      sub_1E0BE98D4(v37, v29);

      (*(v41 + 8))(v40, v39);
      v24 = v42;
      v31 = *(v42 + 16);
      if (v31)
      {
LABEL_20:
        v32 = v24 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
        v33 = *(v51 + 72);
        v34 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1E0BEBBEC(v32, v30);
          v35 = sub_1E0BE913C(v30);
          sub_1E0BEBC50(v30);
          if (v35)
          {
            v36 = v35;
            MEMORY[0x1E12E9000]();
            if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E0D6D07C();
            }

            sub_1E0D6D08C();

            v34 = v55;
          }

          v32 += v33;
          --v31;
        }

        while (v31);

        return v34;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

uint64_t sub_1E0BEBB84(uint64_t a1)
{
  v2 = sub_1E0BDCC7C(&qword_1ECE80A88, &qword_1E0D81590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E0BEBBEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WINetworkSharingProvider.Network(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E0BEBC50(uint64_t a1)
{
  v2 = type metadata accessor for WINetworkSharingProvider.Network(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E0BEBCAC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1E0BDB160(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E0BEBCF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WINetworkSharingProvider.Network(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E0BEBD58()
{
  result = qword_1ECE807D0;
  if (!qword_1ECE807D0)
  {
    sub_1E0BDB160(&qword_1ECE807C8, &qword_1E0D7FF10);
    sub_1E0BEBDDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE807D0);
  }

  return result;
}

unint64_t sub_1E0BEBDDC()
{
  result = qword_1ECE807D8;
  if (!qword_1ECE807D8)
  {
    type metadata accessor for WINetworkSharingProvider.Network(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE807D8);
  }

  return result;
}

BOOL sub_1E0BEC7E0(void *a1)
{
  v2 = [a1 objectForKeyedSubscript:@"isOpen"];
  v3 = [v2 BOOLValue];

  if (v3 & 1) != 0 || ([a1 objectForKeyedSubscript:@"isEAP"], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "BOOLValue"), v4, (v5) || (objc_msgSend(a1, "objectForKeyedSubscript:", @"isCarPlayOnly"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v6, (v7) || (objc_msgSend(a1, "objectForKeyedSubscript:", @"isAppBased"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "BOOLValue"), v8, (v9) || (objc_msgSend(a1, "objectForKeyedSubscript:", @"isProfileBased"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "BOOLValue"), v10, (v11) || (objc_msgSend(a1, "objectForKeyedSubscript:", @"isIBSS"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "BOOLValue"), v12, (v13) || (objc_msgSend(a1, "objectForKeyedSubscript:", @"isExpirable"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "BOOLValue"), v14, (v15) || (objc_msgSend(a1, "objectForKeyedSubscript:", @"isHidden"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "BOOLValue"), v16, (v17) || (objc_msgSend(a1, "objectForKeyedSubscript:", @"isCustom"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "BOOLValue"), v18, (v19) || (objc_msgSend(a1, "objectForKeyedSubscript:", @"isAutoJoinDisabled"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "BOOLValue"), v20, (v21))
  {
    v24 = 0;
    v23 = 0;
  }

  else
  {
    v22 = [a1 objectForKeyedSubscript:@"isCaptive"];
    v23 = v22;
    v24 = v22 && ![v22 BOOLValue];
  }

  return v24;
}

id sub_1E0BEC9DC(uint64_t a1, BOOL *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a1 - 9;
  if ((a1 - 9) > 1)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0x1F5B9A0C0;
  v7[0] = 0x1F5B9A0E0;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  if (a2)
  {
LABEL_5:
    *a2 = v3 < 2;
  }

LABEL_6:

  return v4;
}

__CFString *sub_1E0BECA98(unint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    v2 = off_1E86E57B8[a1];
  }

  return v2;
}

__CFString *sub_1E0BECB08(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    v2 = off_1E86E5818[a1];
  }

  return v2;
}

id sub_1E0BECB78(void *a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v36;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          v13 = [v3 SSID];
          v14 = [v12 SSID];
          v30 = v13;
          if ([v13 length])
          {
            if ([v14 length])
            {
              if ([v13 isEqualToData:v14])
              {
                v15 = [v3 isPasspoint];
                if (v15 == [v12 isPasspoint])
                {
                  if (![v12 isAmbiguousNetworkName])
                  {
LABEL_26:

                    v6 = v12;
                    goto LABEL_28;
                  }

                  v25 = i;
                  v26 = v9;
                  v27 = v10;
                  v28 = v7;
                  v29 = v5;
                  v33 = 0u;
                  v34 = 0u;
                  v31 = 0u;
                  v32 = 0u;
                  v16 = [v12 BSSList];
                  v17 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
                  if (v17)
                  {
                    v18 = v17;
                    v19 = *v32;
                    while (2)
                    {
                      for (j = 0; j != v18; ++j)
                      {
                        if (*v32 != v19)
                        {
                          objc_enumerationMutation(v16);
                        }

                        v21 = [*(*(&v31 + 1) + 8 * j) BSSID];
                        v22 = [v3 BSSID];
                        v23 = [v21 isEqualToString:v22];

                        if (v23)
                        {

                          v7 = v28;
                          v5 = v29;
                          goto LABEL_26;
                        }
                      }

                      v18 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
                      if (v18)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v7 = v28;
                  v5 = v29;
                  v9 = v26;
                  v10 = v27;
                  i = v25;
                }
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
        v6 = 0;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_28:
  }

  return v6;
}

__CFString *sub_1E0BECE30(uint64_t a1)
{
  if (a1 > 63)
  {
    if (a1 > 159)
    {
      if (a1 > 511)
      {
        if (a1 == 512)
        {
          v3 = @"Open";

          return v3;
        }

        if (a1 == 768)
        {
          v3 = @"OWE Transition";

          return v3;
        }
      }

      else
      {
        if (a1 == 160)
        {
          v3 = @"WPA2/WPA3 Enterprise";

          return v3;
        }

        if (a1 == 256)
        {
          v3 = @"OWE";

          return v3;
        }
      }
    }

    else if (a1 > 83)
    {
      if (a1 == 84)
      {
        v3 = @"WPA/WPA2/WPA3 Personal";

        return v3;
      }

      if (a1 == 128)
      {
        v3 = @"WPA3 Enterprise";

        return v3;
      }
    }

    else
    {
      if (a1 == 64)
      {
        v3 = @"WPA3 Personal";

        return v3;
      }

      if (a1 == 80)
      {
        v3 = @"WPA2/WPA3 Personal";

        return v3;
      }
    }

LABEL_72:
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%lu", @"Unknown=", a1, v1];

    return v3;
  }

  if (a1 > 15)
  {
    if (a1 > 31)
    {
      if (a1 == 32)
      {
        v3 = @"WPA2 Enterprise";

        return v3;
      }

      if (a1 == 40)
      {
        v3 = @"WPA/WPA2 Enterprise";

        return v3;
      }
    }

    else
    {
      if (a1 == 16)
      {
        v3 = @"WPA2 Personal";

        return v3;
      }

      if (a1 == 20)
      {
        v3 = @"WPA/WPA2 Personal";

        return v3;
      }
    }

    goto LABEL_72;
  }

  if (a1 > 3)
  {
    if (a1 == 4)
    {
      v3 = @"WPA Personal";

      return v3;
    }

    if (a1 == 8)
    {
      v3 = @"WPA Enterprise";

      return v3;
    }

    goto LABEL_72;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      v3 = @"WAPI";

      return v3;
    }

    goto LABEL_72;
  }

  v3 = @"WEP";

  return v3;
}

uint64_t sub_1E0BED0BC(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Open"])
  {
    v2 = 512;
  }

  else if ([v1 isEqualToString:@"WEP"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"WAPI"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"WPA Personal"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"WPA/WPA2 Personal"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"WPA2 Personal"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"WPA2/WPA3 Personal"])
  {
    v2 = 80;
  }

  else if ([v1 isEqualToString:@"WPA/WPA2/WPA3 Personal"])
  {
    v2 = 84;
  }

  else if ([v1 isEqualToString:@"WPA3 Personal"])
  {
    v2 = 64;
  }

  else if ([v1 isEqualToString:@"WPA Enterprise"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"WPA/WPA2 Enterprise"])
  {
    v2 = 40;
  }

  else if ([v1 isEqualToString:@"WPA2 Enterprise"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"WPA2/WPA3 Enterprise"])
  {
    v2 = 160;
  }

  else if ([v1 isEqualToString:@"WPA3 Enterprise"])
  {
    v2 = 128;
  }

  else if ([v1 isEqualToString:@"OWE Transition"])
  {
    v2 = 768;
  }

  else if ([v1 isEqualToString:@"OWE"])
  {
    v2 = 256;
  }

  else if ([v1 hasPrefix:@"Unknown="])
  {
    v3 = [v1 substringFromIndex:{objc_msgSend(@"Unknown=", "length")}];
    v2 = [v3 longLongValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1E0BED2F4(unint64_t a1)
{
  if (a1 >= 6)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%ld", @"Unknown=", a1, v1];
  }

  else
  {
    v3 = qword_1E86E59B0[a1];
  }

  return v3;
}

uint64_t sub_1E0BED36C(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"WEP-40 Shared Key"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"WEP-104 Shared Key"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"WEP-40 Open"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"WEP-104 Open"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Dynamic WEP"])
  {
    v2 = 5;
  }

  else if ([v1 hasPrefix:@"Unknown="])
  {
    v3 = [v1 substringFromIndex:{objc_msgSend(@"Unknown=", "length")}];
    v2 = [v3 integerValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1E0BED470(unint64_t a1)
{
  if (a1 >= 3)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%ld", @"Unknown=", a1, v1];
  }

  else
  {
    v3 = qword_1E86E59E0[a1];
  }

  return v3;
}

uint64_t sub_1E0BED4E8(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"WAPI PSK"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"WAPI Cert"])
  {
    v2 = 2;
  }

  else if ([v1 hasPrefix:@"Unknown="])
  {
    v3 = [v1 substringFromIndex:{objc_msgSend(@"Unknown=", "length")}];
    v2 = [v3 integerValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1E0BED598(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Unspecified"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"WiFi Menu"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Network Prefs"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Preferred Networks List"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"WiFi Settings"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Ask to Join"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"SetupAssistant"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"Cloud Sync"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"MCX Profile"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"Carrier Bundle"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"WiFi Password Sharing"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"Tap to Setup"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"Sharing Silent Repair"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"Guessing"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"System App"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"3rd Party App"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"Recommendation"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"Wallet"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"Nearby Sync"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"Nearby Recommendation"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"Accessory App"])
  {
    v2 = 18;
  }

  else if ([v1 hasPrefix:@"Unknown="])
  {
    v3 = [v1 substringFromIndex:{objc_msgSend(@"Unknown=", "length")}];
    v2 = [v3 integerValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1E0BED85C(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (!v3 || !v4)
  {
    goto LABEL_26;
  }

  if (![v3 isPasspoint])
  {
    v6 = sub_1E0BEDAE0(v3, v5);
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if ([v14 isPasspoint])
        {
          v15 = v7;
        }

        else
        {
          v15 = v8;
        }

        [v15 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v11);
  }

  v6 = sub_1E0BEDAE0(v3, v7);
  if (!v6)
  {
    v6 = sub_1E0BEDAE0(v3, v8);
  }

  if (v6)
  {
LABEL_19:
    v16 = [v3 isPasspoint];
    if (v16 != [v6 isPasspoint])
    {
      v17 = CWFGetOSLog();
      if (v17)
      {
        v18 = CWFGetOSLog();
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
        v19 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138543618;
        v26 = v6;
        v27 = 2114;
        v28 = v3;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v18, 0, "[corewifi] Matched Passpoint-supported scan result against non-Passpoint known network (profile=%{public}@ scanResult=%{public}@)", &v25, 22);
      }
    }
  }

LABEL_26:

  return v6;
}

id sub_1E0BEDAE0(void *a1, void *a2)
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v56 = 0;
    goto LABEL_79;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v72 objects:v83 count:16];
  if (!v7)
  {
    v56 = 0;
    goto LABEL_78;
  }

  v8 = *v73;
  v62 = v6;
  v59 = *v73;
  while (2)
  {
    v9 = 0;
    v60 = v7;
    do
    {
      if (*v73 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v72 + 1) + 8 * v9);
      if ([v10 isPasspoint] && !objc_msgSend(v3, "isPasspoint"))
      {
        goto LABEL_71;
      }

      v61 = v9;
      v67 = [v10 domainName];
      if (v67 && [v3 isPasspoint])
      {
        v11 = [v3 domainNameList];
        v12 = [v10 domainName];
        v13 = [v11 containsObject:v12];

        if (v13)
        {
          goto LABEL_76;
        }

        v14 = [v3 cellularNetworkInfo];
        v15 = [v10 cellularNetworkInfo];
        if ([v14 count] && objc_msgSend(v15, "count"))
        {
          v16 = [MEMORY[0x1E695DFD8] setWithArray:v14];
          v17 = [MEMORY[0x1E695DFD8] setWithArray:v15];
          v18 = [v16 intersectsSet:v17];

          if (v18)
          {
            v19 = 1;
            v20 = @"MCC/MNCs";
LABEL_30:
            if (v19 && v20)
            {
              v31 = CWFGetOSLog();
              if (v31)
              {
                v32 = CWFGetOSLog();
              }

              else
              {
                v32 = MEMORY[0x1E69E9C10];
                v33 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                v77 = 138543874;
                v78 = v20;
                v79 = 2114;
                v80 = v10;
                v81 = 2114;
                v82 = v3;
                LODWORD(v58) = 32;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v32, 2, "[corewifi] Known network matched using='%{public}@' profile='%{public}@' scanResult='%{public}@'", &v77, v58);
              }
            }

            if (v19)
            {
              goto LABEL_76;
            }

            goto LABEL_39;
          }

          v20 = @"MCC/MNCs";
        }

        else
        {
          v20 = 0;
        }

        v65 = v15;
        v21 = [v3 NAIRealmNameList];
        v22 = [v10 NAIRealmNameList];
        if ([v21 count] && objc_msgSend(v22, "count"))
        {
          v63 = v14;
          v23 = [MEMORY[0x1E695DFD8] setWithArray:v21];
          v24 = [MEMORY[0x1E695DFD8] setWithArray:v22];
          v25 = [v23 intersectsSet:v24];

          if (v25)
          {
            v19 = 1;
            v20 = @"NAI";
            v14 = v63;
LABEL_29:
            v15 = v65;
            goto LABEL_30;
          }

          v20 = @"NAI";
          v14 = v63;
        }

        else
        {
        }

        v26 = [v3 roamingConsortiumList];
        v27 = [v10 roamingConsortiumList];
        if ([v26 count] && objc_msgSend(v27, "count"))
        {
          v28 = [MEMORY[0x1E695DFD8] setWithArray:v26];
          [MEMORY[0x1E695DFD8] setWithArray:v27];
          v30 = v29 = v14;
          v19 = [v28 intersectsSet:v30];

          v14 = v29;
          v20 = @"RCOI";
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_29;
      }

LABEL_39:
      v34 = [v3 SSID];
      v35 = [v10 SSID];
      if ([v10 isProfileBased] && objc_msgSend(v10, "isEAP"))
      {
        v36 = [v3 isEAP];
      }

      else
      {
        v36 = 0;
      }

      if ([v34 length])
      {
        if ([v35 length])
        {
          if ([v34 isEqualToData:v35])
          {
            if ((v36 & 1) != 0 || (v37 = [v3 supportedSecurityTypes], v37 == objc_msgSend(v10, "effectiveSupportedSecurityTypes")) || (v38 = objc_msgSend(v3, "supportedSecurityTypes"), (objc_msgSend(v10, "effectiveSupportedSecurityTypes") & v38) != 0))
            {
              if ([v10 supportedSecurityTypes] != 256 && (objc_msgSend(v3, "supportedSecurityTypes") != 256 || (objc_msgSend(v3, "channel"), v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "is6GHz"), v40, (v41 & 1) != 0)) || (v39 = objc_msgSend(v3, "supportedSecurityTypes"), v39 == objc_msgSend(v10, "supportedSecurityTypes")))
              {
                if ([v10 supportedSecurityTypes] != 64 && (objc_msgSend(v3, "supportedSecurityTypes") != 64 || (objc_msgSend(v3, "channel"), v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "is6GHz"), v43, (v44 & 1) != 0)) || (v42 = objc_msgSend(v3, "supportedSecurityTypes"), v42 == objc_msgSend(v10, "supportedSecurityTypes")))
                {
                  if (![v10 isAmbiguousNetworkName])
                  {
LABEL_75:

LABEL_76:
                    v56 = v10;

                    goto LABEL_78;
                  }

                  v64 = v35;
                  v66 = v34;
                  v45 = v5;
                  v70 = 0u;
                  v71 = 0u;
                  v68 = 0u;
                  v69 = 0u;
                  v46 = [v10 BSSList];
                  v47 = [v46 countByEnumeratingWithState:&v68 objects:v76 count:16];
                  if (v47)
                  {
                    v48 = v47;
                    v49 = *v69;
                    while (2)
                    {
                      for (i = 0; i != v48; ++i)
                      {
                        if (*v69 != v49)
                        {
                          objc_enumerationMutation(v46);
                        }

                        v51 = [*(*(&v68 + 1) + 8 * i) BSSID];
                        v52 = CWFCorrectEthernetAddressString(v51);
                        v53 = [v52 copy];

                        if (v53)
                        {
                          v54 = [v3 BSSID];
                          v55 = [v53 isEqualToString:v54];

                          if (v55)
                          {

                            v5 = v45;
                            v6 = v62;
                            v35 = v64;
                            v34 = v66;
                            goto LABEL_75;
                          }
                        }
                      }

                      v48 = [v46 countByEnumeratingWithState:&v68 objects:v76 count:16];
                      if (v48)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v5 = v45;
                  v6 = v62;
                  v35 = v64;
                  v34 = v66;
                }
              }
            }
          }
        }
      }

      v9 = v61;
LABEL_71:
      ++v9;
      v8 = v59;
    }

    while (v9 != v60);
    v7 = [v6 countByEnumeratingWithState:&v72 objects:v83 count:16];
    v56 = 0;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_78:

LABEL_79:

  return v56;
}

__CFString *sub_1E0BEE210(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    v2 = off_1E86E5AB0[a1];
  }

  return v2;
}

__CFString *sub_1E0BEE280(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    v2 = off_1E86E5AD0[a1];
  }

  return v2;
}

__CFString *sub_1E0BEE2F0(unint64_t a1)
{
  if (a1 >= 0xC)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    v2 = off_1E86E5D50[a1];
  }

  return v2;
}

void *sub_1E0BEE360(void *result)
{
  if (result)
  {
    v1 = [result lowercaseString];
    v2 = [&unk_1F5BB9AA8 containsObject:v1];

    return v2;
  }

  return result;
}

__CFString *sub_1E0BEE3AC(unsigned int a1)
{
  if (a1 < 9 && ((0x1DFu >> a1) & 1) != 0)
  {
    v2 = off_1E86E5DB0[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  return v2;
}

__CFString *sub_1E0BEE42C(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    v2 = off_1E86E5DF8[a1];
  }

  return v2;
}

__CFString *sub_1E0BEE49C(uint64_t a1)
{
  if (a1 < 9 && ((0x117u >> a1) & 1) != 0)
  {
    v2 = off_1E86E5E38[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (0x%X)", a1];
  }

  return v2;
}

__CFString *sub_1E0BEE518(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%d)", a1];
  }

  else
  {
    v2 = off_1E86E5E80[a1];
  }

  return v2;
}

__CFString *sub_1E0BEE588(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"none";
  }

  else
  {
    return off_1E86E5EC0[a1];
  }
}

__CFString *sub_1E0BEE5AC(int a1)
{
  if ((a1 - 1) > 6)
  {
    return @"none";
  }

  else
  {
    return off_1E86E5EE0[a1 - 1];
  }
}

__CFString *sub_1E0BEE5D4(int a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [MEMORY[0x1E696AD60] string];
    v3 = v2;
    if ((v1 & 4) != 0)
    {
      [v2 appendString:@"b/"];
      if ((v1 & 8) == 0)
      {
LABEL_4:
        if ((v1 & 2) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    else if ((v1 & 8) == 0)
    {
      goto LABEL_4;
    }

    [v3 appendString:@"g/"];
    if ((v1 & 2) == 0)
    {
LABEL_5:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_15:
    [v3 appendString:@"a/"];
    if ((v1 & 0x10) == 0)
    {
LABEL_6:
      if ((v1 & 0x80) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }

LABEL_16:
    [v3 appendString:@"n/"];
    if ((v1 & 0x80) == 0)
    {
LABEL_7:
      if ((v1 & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }

LABEL_17:
    [v3 appendString:@"ac/"];
    if ((v1 & 0x100) == 0)
    {
LABEL_8:
      if ((v1 & 0x200) == 0)
      {
LABEL_10:
        if ([v3 length])
        {
          v4 = [v3 substringToIndex:{objc_msgSend(v3, "length") - 1}];
        }

        else
        {
          v4 = @"?";
        }

        goto LABEL_22;
      }

LABEL_9:
      [v3 appendString:@"be/"];
      goto LABEL_10;
    }

LABEL_18:
    [v3 appendString:@"ax/"];
    if ((v1 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = @"none";
LABEL_22:

  return v4;
}

void sub_1E0BEE70C()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = qword_1ED7E3898;
  qword_1ED7E3898 = v0;

  [qword_1ED7E3898 setDateFormat:@"YYYY-MM-dd HH:mm:ss.SSS ZZZ"];
  v2 = [MEMORY[0x1E695DFE8] localTimeZone];
  [qword_1ED7E3898 setTimeZone:v2];

  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [qword_1ED7E3898 setLocale:v3];
}

__CFString *sub_1E0BEE7B4(uint64_t a1)
{
  if (a1 < 0xC && ((0xFF9u >> a1) & 1) != 0)
  {
    v2 = off_1E86E5F18[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%d)", a1];
  }

  return v2;
}

uint64_t CWFSecItemQueryPassword_0(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E697AEB0];
  v16 = *MEMORY[0x1E697B3A8];
  v17 = v3;
  v4 = *MEMORY[0x1E697AEB8];
  v19 = MEMORY[0x1E695E118];
  v20 = v4;
  cf = 0;
  v18 = *MEMORY[0x1E697B318];
  v21 = MEMORY[0x1E695E118];
  v5 = MEMORY[0x1E695DF20];
  v6 = a1;
  v7 = [v5 dictionaryWithObjects:&v19 forKeys:&v16 count:3];
  if ([v6 length])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
    v9 = [v7 mutableCopy];
    [v9 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    [v9 setObject:@"AirPort" forKeyedSubscript:*MEMORY[0x1E697AE88]];
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }

    [v9 setObject:v10 forKeyedSubscript:{*MEMORY[0x1E697AC30], cf, v16, v17, v18, v19, v20, v21, v22}];
    v11 = SecItemCopyMatching(v9, &cf);
  }

  else
  {
    v11 = 4294967246;
  }

  v12 = cf;
  if (a2 && cf)
  {
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    *a2 = [v13 initWithData:cf encoding:4];
    v12 = cf;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v11;
}

uint64_t sub_1E0BEE9FC(void *a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  v9 = v7;
  v10 = v9;
  if (!v8)
  {
    v13 = 4294967246;
    goto LABEL_32;
  }

  if (!v9)
  {
    v14 = *MEMORY[0x1E697AEB0];
    v37 = *MEMORY[0x1E697B3A8];
    v38 = v14;
    v15 = *MEMORY[0x1E697AEB8];
    v41 = MEMORY[0x1E695E118];
    v42 = v15;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v37 count:2];
    if (![(__CFString *)v8 length])
    {
      v13 = 4294967246;
      goto LABEL_31;
    }

    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
    v17 = [v12 mutableCopy];
    [(__CFString *)v17 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    [(__CFString *)v17 setObject:@"AirPort" forKeyedSubscript:*MEMORY[0x1E697AE88]];
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v8;
    }

    [(__CFString *)v17 setObject:v18 forKeyedSubscript:*MEMORY[0x1E697AC30]];
    v13 = SecItemDelete(v17);
    goto LABEL_29;
  }

  v34 = 0;
  CWFSecItemQueryPassword_0(v8, &v34);
  v11 = v34;
  v12 = v11;
  if (!v11)
  {
    v19 = *MEMORY[0x1E697ABD0];
    v37 = *MEMORY[0x1E697B3A8];
    v38 = v19;
    v41 = MEMORY[0x1E695E118];
    v42 = @"apple";
    v20 = *MEMORY[0x1E697ABD8];
    v39 = *MEMORY[0x1E697AEB0];
    v40 = v20;
    v21 = *MEMORY[0x1E697ABE0];
    v43 = MEMORY[0x1E695E118];
    v44 = v21;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v37 count:4];
    if (-[__CFString length](v8, "length") && [v10 length])
    {
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
      v22 = [v10 dataUsingEncoding:4];
      if ([v22 length])
      {
        v23 = [(__CFString *)v16 mutableCopy];
        [v23 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
        [v23 setObject:@"AirPort" forKeyedSubscript:*MEMORY[0x1E697AE88]];
        if (v17)
        {
          v24 = v17;
        }

        else
        {
          v24 = v8;
        }

        [v23 setObject:v24 forKeyedSubscript:*MEMORY[0x1E697AC30]];
        [v23 setObject:@"AirPort network password" forKeyedSubscript:*MEMORY[0x1E697ACE0]];
        [v23 setObject:v24 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
        [v23 setObject:v22 forKeyedSubscript:*MEMORY[0x1E697B3C0]];
        v13 = SecItemAdd(v23, 0);
LABEL_27:

LABEL_28:
LABEL_29:

LABEL_30:
        goto LABEL_31;
      }
    }

    else
    {
      v22 = 0;
      v17 = 0;
    }

    v13 = 4294967246;
    goto LABEL_28;
  }

  if (([v11 isEqualToString:v10] & 1) == 0)
  {
    v16 = [v10 dataUsingEncoding:4];
    if (![(__CFString *)v16 length])
    {
      v13 = 4294967246;
      goto LABEL_30;
    }

    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
    v25 = *MEMORY[0x1E697AEB0];
    v35[0] = *MEMORY[0x1E697B3A8];
    v35[1] = v25;
    v26 = *MEMORY[0x1E697AEB8];
    v36[0] = MEMORY[0x1E695E118];
    v36[1] = v26;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
    v27 = *MEMORY[0x1E697ADC8];
    v37 = *MEMORY[0x1E697B3C0];
    v38 = v27;
    if (v17)
    {
      v28 = v17;
    }

    else
    {
      v28 = v8;
    }

    v41 = v16;
    v42 = v28;
    v39 = *MEMORY[0x1E697ACE0];
    v43 = @"AirPort network password";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v37 count:3];
    if ([(__CFString *)v8 length])
    {
      v33 = v6;
      v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
      v30 = [v22 mutableCopy];
      [v30 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
      [v30 setObject:@"AirPort" forKeyedSubscript:*MEMORY[0x1E697AE88]];
      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = v8;
      }

      [v30 setObject:v31 forKeyedSubscript:*MEMORY[0x1E697AC30]];
      v13 = SecItemUpdate(v30, v23);

      v6 = v33;
    }

    else
    {
      v13 = 4294967246;
    }

    goto LABEL_27;
  }

  v13 = 0;
LABEL_31:

LABEL_32:
  return v13;
}

__CFString *sub_1E0BEEF44(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%x (%s)", a1, convertApple80211ReturnToString()];
  }

  else
  {
    v2 = @"0x0 (success)";
  }

  return v2;
}

uint64_t sub_1E0BEEFBC()
{
  v20 = *MEMORY[0x1E69E9840];
  if (!sub_1E0BF2080(0))
  {
    return 0;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v0 = qword_1ED7E3828;
  v18 = qword_1ED7E3828;
  if (!qword_1ED7E3828)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E0BF21C4;
    v14[3] = &unk_1E86E5600;
    v14[4] = &v15;
    sub_1E0BF21C4(v14);
    v0 = v16[3];
  }

  v1 = v0;
  _Block_object_dispose(&v15, 8);
  v2 = [v0 sharedConnection];
  v3 = [v2 installedProfileIdentifiers];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v19 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (v8 && ([v8 isEqual:{@"com.apple.defaults.managed.corecapture.wifi.megawifi", v10}] & 1) != 0)
        {
          v5 = 1;
          goto LABEL_16;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v5;
}

void sub_1E0BEF18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1E0BEF1AC(size_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = v5 - ((MEMORY[0x1EEE9AC00](a1) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], a1, v2))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E695DEF0] dataWithBytes:v2 length:a1];
  }

  return v3;
}

__CFString *sub_1E0BEF284(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    v2 = off_1E86E5F78[a1];
  }

  return v2;
}

__CFString *sub_1E0BEF2F4(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E86E5FA8[a1 - 1];
  }
}

uint64_t sub_1E0BEF318(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"off"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"rotating"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"static"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *sub_1E0BEF394(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (!_os_feature_enabled_impl())
  {
    v21 = 0;
    v18 = 0;
    v13 = 0;
LABEL_16:
    v22 = 0;
    goto LABEL_17;
  }

  v13 = 0;
  if (v10 && v11)
  {
    if (v9)
    {
      v13 = [v9 SSID];
      if ([v9 isPasspoint])
      {
        v14 = [v9 domainName];
        v15 = [v14 dataUsingEncoding:4];

        v13 = v15;
      }

      if (!v13)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v13 = 0;
    }

    v16 = ether_aton([v10 UTF8String]);
    if (v16)
    {
      v17 = v16;
      v18 = [MEMORY[0x1E695DF88] data];
      [v18 appendData:v11];
      v19 = [MEMORY[0x1E695DEF0] dataWithBytes:v17 length:6];
      [v18 appendData:v19];

      if (v13)
      {
        [v18 appendData:v13];
      }

      if (v12)
      {
        [v18 appendData:v12];
      }

      *md = 0u;
      v32 = 0u;
      memset(&c, 0, sizeof(c));
      CC_SHA256_Init(&c);
      CC_SHA256_Update(&c, [v18 bytes], objc_msgSend(v18, "length"));
      CC_SHA256_Final(md, &c);
      v28 = *md;
      v29 = *&md[4];
      LOBYTE(v28) = md[0] & 0xFC | 2;
      v20 = [MEMORY[0x1E695DEF0] dataWithBytes:&v28 length:6];
      v21 = CWFEthernetAddressStringFromData(v20);

      goto LABEL_16;
    }
  }

LABEL_18:
  v25 = *MEMORY[0x1E696A798];
  v26 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
  v22 = CWFErrorWithDescription(v25, 22, v26);

  v21 = 0;
  if (a5 && v22)
  {
    v27 = v22;
    v21 = 0;
    v18 = 0;
    *a5 = v22;
  }

  else
  {
    v18 = 0;
  }

LABEL_17:
  v23 = v21;

  return v21;
}

void *sub_1E0BEF670(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (!v5 || !v6)
  {
    goto LABEL_9;
  }

  v8 = [v5 SSID];
  if ([v5 isPasspoint])
  {
    v9 = [v5 domainName];
    v10 = [v9 dataUsingEncoding:4];

    v8 = v10;
  }

  if (v8 && (CWFEthernetAddressDataFromString(v7), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    v13 = [MEMORY[0x1E695DF88] data];
    [v13 appendData:v12];
    [v13 appendData:v8];
    *md = 0u;
    v23 = 0u;
    memset(&v21, 0, sizeof(v21));
    CC_SHA256_Init(&v21);
    CC_SHA256_Update(&v21, [v13 bytes], objc_msgSend(v13, "length"));
    CC_SHA256_Final(md, &v21);
    v14 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:32];
    v15 = 0;
  }

  else
  {
LABEL_9:
    v18 = *MEMORY[0x1E696A798];
    v19 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v15 = CWFErrorWithDescription(v18, 22, v19);

    v13 = 0;
    if (a3 && v15)
    {
      v20 = v15;
      v13 = 0;
      v12 = 0;
      v14 = 0;
      *a3 = v15;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }
  }

  v16 = v14;

  return v14;
}

BOOL sub_1E0BEF890(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  memset(v26, 0, sizeof(v26));
  if (!v3 || !v4)
  {
    v12 = *MEMORY[0x1E696A798];
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v14 = v12;
    v15 = 22;
LABEL_11:
    v10 = CWFErrorWithDescription(v14, v15, v13);

    goto LABEL_8;
  }

  v6 = socket(2, 2, 0);
  if (v6 == -1)
  {
    v16 = *MEMORY[0x1E696A798];
    v17 = *__error();
    v18 = __error();
    v13 = CWFErrorDescription(v16, *v18);
    v14 = v16;
    v15 = v17;
    goto LABEL_11;
  }

  v7 = v6;
  if (([v5 getCString:v26 maxLength:16 encoding:4] & 1) == 0)
  {
    v19 = *MEMORY[0x1E696A798];
    v20 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v21 = v19;
    v22 = 6;
LABEL_14:
    v10 = CWFErrorWithDescription(v21, v22, v20);

    goto LABEL_7;
  }

  v26[16] = 32;
  v8 = [v3 bytes];
  v9 = v8[1];
  *&v26[17] = *v8;
  *&v26[33] = v9;
  if (ioctl(v7, 0xC03169D2uLL, v26))
  {
    v23 = *MEMORY[0x1E696A798];
    v24 = *__error();
    v25 = __error();
    v20 = CWFErrorDescription(v23, *v25);
    v21 = v23;
    v22 = v24;
    goto LABEL_14;
  }

  v10 = 0;
LABEL_7:
  close(v7);
LABEL_8:

  return v10 == 0;
}

id sub_1E0BEFAA0(int a1, int a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"matchingKnownNetworkProfile" ascending:0 comparator:&unk_1F5B8AA80];
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0x36 && a1)
  {
    v13 = [v9 SSID];
    v14 = MEMORY[0x1E696AEB0];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = sub_1E0BF2394;
    v43[3] = &unk_1E86E5660;
    v44 = v13;
    v15 = v13;
    v16 = [v14 sortDescriptorWithKey:0 ascending:0 comparator:v43];
    [v11 addObject:v16];
    [v11 addObject:v12];
    v17 = MEMORY[0x1E696AEB0];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_1E0BF2500;
    v41[3] = &unk_1E86E5660;
    v42 = v9;
    v18 = [v17 sortDescriptorWithKey:0 ascending:0 comparator:v41];
    [v11 addObject:v18];
    v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B8AAA0];
    [v11 addObject:v19];
  }

  else if (a2)
  {
    [v11 addObject:v12];
  }

  if (v10)
  {
    v20 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:v10];
    [v11 addObject:v20];
  }

  if (a1)
  {
    if (_os_feature_enabled_impl())
    {
      v21 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"matchingKnownNetworkProfile" ascending:0 comparator:&unk_1F5B8AAC0];
      [v11 addObject:v21];
    }

    v22 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"matchingKnownNetworkProfile" ascending:0 comparator:&unk_1F5B8AAE0];
    [v11 addObject:v22];
    v23 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 selector:sel_compareLowDataModes_];
    [v11 addObject:v23];
  }

  v37 = v12;
  v38 = v10;
  v36 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B8AB00];
  [v11 addObject:?];
  v24 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B8AB20];
  [v11 addObject:v24];
  v25 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 selector:sel_compareSupportedPHYModes_];
  [v11 addObject:v25];
  v26 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"channel" ascending:0 comparator:&unk_1F5B8AB40];
  [v11 addObject:v26];
  v27 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:&unk_1F5B8AB60];
  [v11 addObject:v27];
  if (a1)
  {
    v28 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"matchingKnownNetworkProfile" ascending:0 selector:sel_compareSupportedSecurityTypes_];
    [v11 addObject:v28];
  }

  v29 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 selector:sel_compareSupportedSecurityTypes_];
  [v11 addObject:v29];
  v30 = MEMORY[0x1E696AEB0];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_1E0BF304C;
  v39[3] = &unk_1E86E5660;
  v40 = v9;
  v31 = v9;
  v32 = [v30 sortDescriptorWithKey:0 ascending:0 comparator:v39];
  [v11 addObject:v32];
  v33 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"RSSI" ascending:0];
  [v11 addObject:v33];
  v34 = [v11 copy];

  return v34;
}

id sub_1E0BEFFE8(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  result = 0;
  if ([v3 length] && (v4 = objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithData:encoding:", v3, 4)) != 0)
  {
    v5 = v4;
    v6 = [MEMORY[0x1E695DF90] dictionary];
    [v6 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    [v6 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
    [v6 setObject:@"com.apple.wifi.captive.credentials" forKeyedSubscript:*MEMORY[0x1E697AE88]];
    [v6 setObject:v5 forKeyedSubscript:*MEMORY[0x1E697AC30]];
    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B318]];
    v7 = SecItemCopyMatching(v6, &result);
    if (v7)
    {
      v18 = *MEMORY[0x1E696A768];
      v19 = v7;
      v20 = CWFErrorDescription(*MEMORY[0x1E696A768], v7);
      v9 = CWFErrorWithDescription(v18, v19, v20);

      v8 = 0;
    }

    else
    {
      v21 = 0;
      v8 = [MEMORY[0x1E696AE40] propertyListWithData:result options:0 format:0 error:&v21];
      v9 = v21;
    }
  }

  else
  {
    v16 = *MEMORY[0x1E696A798];
    v17 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v9 = CWFErrorWithDescription(v16, 22, v17);

    v8 = 0;
    v6 = 0;
    v5 = 0;
  }

  if (result)
  {
    CFRelease(result);
  }

  if (v9)
  {
    v10 = CWFGetOSLog();
    if (v10)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [v5 redactedForWiFi];
      v23 = 136447234;
      v24 = "CWFGetCaptivePortalAuthenticationCredentials";
      v25 = 2082;
      v26 = "CWFUtilInternal.m";
      v27 = 1024;
      v28 = 7550;
      v29 = 2112;
      v30 = v13;
      v31 = 2112;
      v32 = v9;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 16, "[corewifi] %{public}s (%{public}s:%u) FAILED to find captive credentials for '%@', returned error (%@)", &v23, 48);
    }

    if (a2)
    {
      v14 = v9;
      *a2 = v9;
    }
  }

  return v8;
}

uint64_t sub_1E0BF0324(void *a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if ([v5 length] && (v7 = objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithData:encoding:", v5, 4)) != 0)
  {
    v8 = v7;
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setObject:*MEMORY[0x1E697B008] forKeyedSubscript:*MEMORY[0x1E697AFF8]];
    v10 = *MEMORY[0x1E697ABD0];
    [v9 setObject:@"apple" forKeyedSubscript:*MEMORY[0x1E697ABD0]];
    [v9 setObject:@"com.apple.wifi.captive.credentials" forKeyedSubscript:*MEMORY[0x1E697AE88]];
    [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E697AC30]];
    if (v6)
    {
      v59 = 0;
      v11 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:100 options:0 error:&v59];
      v12 = v59;
      if (!v11)
      {
        goto LABEL_37;
      }

      v13 = sub_1E0BEFFE8(v5, 0);
      v14 = v13;
      if (v13)
      {
        if (v13 == v6 || ([v13 isEqual:v6] & 1) != 0)
        {
          v15 = CWFGetOSLog();
          if (v15)
          {
            v16 = CWFGetOSLog();
          }

          else
          {
            v16 = MEMORY[0x1E69E9C10];
            v26 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v27 = [v8 redactedForWiFi];
            v60 = 136446978;
            v61 = "CWFSetCaptivePortalAuthenticationCredentials";
            v62 = 2082;
            v63 = "CWFUtilInternal.m";
            v64 = 1024;
            v65 = 7602;
            v66 = 2112;
            v67 = v27;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v16, 1, "[corewifi] %{public}s (%{public}s:%u) Matching captive credentials already exist for '%@'", &v60, 38);
          }
        }

        else
        {
          v57 = a3;
          v16 = [MEMORY[0x1E695DF90] dictionary];
          [v16 setObject:v11 forKeyedSubscript:*MEMORY[0x1E697B3C0]];
          v24 = CWFGetOSLog();
          if (v24)
          {
            v25 = CWFGetOSLog();
          }

          else
          {
            v25 = MEMORY[0x1E69E9C10];
            v35 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v36 = [v8 redactedForWiFi];
            v60 = 136446978;
            v61 = "CWFSetCaptivePortalAuthenticationCredentials";
            v62 = 2082;
            v63 = "CWFUtilInternal.m";
            v64 = 1024;
            v65 = 7595;
            v66 = 2112;
            v67 = v36;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v25, 1, "[corewifi] %{public}s (%{public}s:%u) Updating captive credentials for '%@'", &v60, 38);
          }

          v37 = SecItemUpdate(v9, v16);
          if (v37)
          {
            v50 = *MEMORY[0x1E696A768];
            v51 = v37;
            v52 = CWFErrorDescription(*MEMORY[0x1E696A768], v37);
            v53 = v51;
            v54 = v52;
            v55 = CWFErrorWithDescription(v50, v53, v52);

            v12 = v55;
          }

          a3 = v57;
        }
      }

      else
      {
        [v9 setObject:@"apple" forKeyedSubscript:v10];
        [v9 setObject:*MEMORY[0x1E697ABE0] forKeyedSubscript:*MEMORY[0x1E697ABD8]];
        [v9 setObject:@"Captive portal credentials" forKeyedSubscript:*MEMORY[0x1E697ACE0]];
        [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E697ADC8]];
        [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x1E697B3C0]];
        v19 = CWFGetOSLog();
        if (v19)
        {
          v20 = CWFGetOSLog();
        }

        else
        {
          v20 = MEMORY[0x1E69E9C10];
          v28 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v29 = [v8 redactedForWiFi];
          v60 = 136446978;
          v61 = "CWFSetCaptivePortalAuthenticationCredentials";
          v62 = 2082;
          v63 = "CWFUtilInternal.m";
          v64 = 1024;
          v65 = 7613;
          v66 = 2112;
          v67 = v29;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v20, 1, "[corewifi] %{public}s (%{public}s:%u) Adding captive credentials for '%@'", &v60, 38);
        }

        v30 = SecItemAdd(v9, 0);
        if (!v30)
        {
          goto LABEL_36;
        }

        v31 = *MEMORY[0x1E696A768];
        v58 = a3;
        v32 = v30;
        v16 = CWFErrorDescription(*MEMORY[0x1E696A768], v30);
        v33 = v32;
        a3 = v58;
        v34 = CWFErrorWithDescription(v31, v33, v16);

        v12 = v34;
      }

LABEL_36:
      goto LABEL_37;
    }

    v17 = CWFGetOSLog();
    if (v17)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v22 = [v8 redactedForWiFi];
      v60 = 136446978;
      v61 = "CWFSetCaptivePortalAuthenticationCredentials";
      v62 = 2082;
      v63 = "CWFUtilInternal.m";
      v64 = 1024;
      v65 = 7621;
      v66 = 2112;
      v67 = v22;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v18, 1, "[corewifi] %{public}s (%{public}s:%u) Deleting captive credentials for '%@'", &v60, 38);
    }

    v23 = SecItemDelete(v9);
    if (!v23)
    {
      v11 = 0;
      v12 = 0;
LABEL_40:
      v40 = 1;
      goto LABEL_47;
    }

    v47 = *MEMORY[0x1E696A768];
    v48 = v23;
    v49 = CWFErrorDescription(*MEMORY[0x1E696A768], v23);
    v12 = CWFErrorWithDescription(v47, v48, v49);

    v11 = 0;
  }

  else
  {
    v45 = *MEMORY[0x1E696A798];
    v46 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v12 = CWFErrorWithDescription(v45, 22, v46);

    v11 = 0;
    v9 = 0;
    v8 = 0;
  }

LABEL_37:
  if (!v12)
  {
    goto LABEL_40;
  }

  v38 = CWFGetOSLog();
  if (v38)
  {
    v39 = CWFGetOSLog();
  }

  else
  {
    v39 = MEMORY[0x1E69E9C10];
    v41 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v42 = [v8 redactedForWiFi];
    v60 = 136447234;
    v61 = "CWFSetCaptivePortalAuthenticationCredentials";
    v62 = 2082;
    v63 = "CWFUtilInternal.m";
    v64 = 1024;
    v65 = 7631;
    v66 = 2112;
    v67 = v42;
    v68 = 2112;
    v69 = v12;
    LODWORD(v56) = 48;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v39, 16, "[corewifi] %{public}s (%{public}s:%u) FAILED to set captive credentials for '%@', returned error (%@)", &v60, v56);
  }

  if (a3)
  {
    v43 = v12;
    v40 = 0;
    *a3 = v12;
  }

  else
  {
    v40 = 0;
  }

LABEL_47:

  return v40;
}

id sub_1E0BF0B7C()
{
  v62 = *MEMORY[0x1E69E9840];
  result = 0;
  v0 = [MEMORY[0x1E695DF00] date];
  v1 = [MEMORY[0x1E695DF90] dictionary];
  v42 = *MEMORY[0x1E697AFF8];
  v43 = *MEMORY[0x1E697B008];
  [v1 setObject:? forKeyedSubscript:?];
  v41 = *MEMORY[0x1E697ABD0];
  [v1 setObject:@"apple" forKeyedSubscript:?];
  v40 = *MEMORY[0x1E697AE88];
  [v1 setObject:@"com.apple.wifi.captive.credentials" forKeyedSubscript:?];
  [v1 setObject:*MEMORY[0x1E697B268] forKeyedSubscript:*MEMORY[0x1E697B260]];
  [v1 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B310]];
  v2 = SecItemCopyMatching(v1, &result);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    Count = result;
    if (result)
    {
      Count = CFArrayGetCount(result);
    }

    v52 = 136447234;
    v53 = "CWFRemoveExpiredCaptivePortalAuthenticationCredentials";
    v54 = 2082;
    v55 = "CWFUtilInternal.m";
    v56 = 1024;
    v57 = 7663;
    v58 = 2048;
    v59 = Count;
    v60 = 1024;
    v61 = v2;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 16, "[corewifi] %{public}s (%{public}s:%u) Found %ld captive credentials (err=%d)", &v52, 44);
  }

  v37 = v1;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = 120.0;
    }

    else
    {
      v7 = 604800.0;
    }
  }

  else
  {
    v7 = 604800.0;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = result;
  v8 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_41;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v47;
  v45 = *MEMORY[0x1E697AC30];
  v12 = *MEMORY[0x1E697ACD0];
  v38 = *MEMORY[0x1E697ACD0];
  v39 = v0;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v47 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v46 + 1) + 8 * i);
      v15 = [v14 objectForKeyedSubscript:v45];
      v16 = [v14 objectForKeyedSubscript:v12];
      [v16 timeIntervalSinceDate:v0];
      v18 = v17;
      [v16 timeIntervalSinceDate:v0];
      if (v18 < 0.0)
      {
        v19 = -v19;
      }

      if (v19 <= v7)
      {
        [v16 timeIntervalSinceReferenceDate];
        v24 = v23;
        [v10 timeIntervalSinceReferenceDate];
        if (v24 <= v25)
        {
          goto LABEL_37;
        }

        [v16 dateByAddingTimeInterval:v7];
        v10 = v26 = v10;
      }

      else
      {
        v20 = v10;
        v21 = CWFGetOSLog();
        if (v21)
        {
          v22 = CWFGetOSLog();
        }

        else
        {
          v22 = MEMORY[0x1E69E9C10];
          v27 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v28 = [v15 redactedForWiFi];
          v52 = 136446978;
          v53 = "CWFRemoveExpiredCaptivePortalAuthenticationCredentials";
          v54 = 2082;
          v55 = "CWFUtilInternal.m";
          v56 = 1024;
          v57 = 7677;
          v58 = 2112;
          v59 = v28;
          LODWORD(v36) = 38;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v22, 16, "[corewifi] %{public}s (%{public}s:%u) Deleting expired captive credentials for '%@'", &v52, v36);
        }

        v26 = [MEMORY[0x1E695DF90] dictionary];
        [v26 setObject:v43 forKeyedSubscript:v42];
        [v26 setObject:@"apple" forKeyedSubscript:v41];
        [v26 setObject:@"com.apple.wifi.captive.credentials" forKeyedSubscript:v40];
        [v26 setObject:v15 forKeyedSubscript:v45];
        v29 = SecItemDelete(v26);
        if (v29)
        {
          v30 = v29;
          v31 = CWFGetOSLog();
          if (v31)
          {
            v32 = CWFGetOSLog();
          }

          else
          {
            v32 = MEMORY[0x1E69E9C10];
            v33 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v34 = [v15 redactedForWiFi];
            v52 = 136447234;
            v53 = "CWFRemoveExpiredCaptivePortalAuthenticationCredentials";
            v54 = 2082;
            v55 = "CWFUtilInternal.m";
            v56 = 1024;
            v57 = 7688;
            v58 = 2112;
            v59 = v34;
            v60 = 1024;
            v61 = v30;
            LODWORD(v36) = 44;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v32, 16, "[corewifi] %{public}s (%{public}s:%u) FAILED to delete expired captive credentials for '%@', returned err %d", &v52, v36);
          }
        }

        v10 = v20;
        v12 = v38;
        v0 = v39;
      }

LABEL_37:
    }

    v9 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  }

  while (v9);
LABEL_41:

  if (result)
  {
    CFRelease(result);
  }

  return v10;
}

uint64_t sub_1E0BF11B4(void *a1)
{
  v1 = a1;
  if ([v1 isIBSS] & 1) != 0 || (objc_msgSend(v1, "scanRecord"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "objectForKeyedSubscript:", @"APPLE_P2P_IE"), v3 = objc_claimAutoreleasedReturnValue(), v3, v2, v3) || (objc_msgSend(v1, "isFILSDiscoveryFrame"))
  {
    v4 = 0;
  }

  else
  {
    v4 = [v1 isAssociationDisallowed] ^ 1;
  }

  return v4;
}

uint64_t sub_1E0BF1240(void *a1)
{
  v1 = a1;
  if ([v1 isHotspot] & 1) != 0 || (objc_msgSend(v1, "isPersonalHotspot") & 1) != 0 || (objc_msgSend(v1, "isOpen") & 1) != 0 || (objc_msgSend(v1, "isOWE") & 1) != 0 || objc_msgSend(v1, "isPSK") && ((objc_msgSend(v1, "isWEP") & 1) != 0 || (objc_msgSend(v1, "isWPA")) || (objc_msgSend(v1, "hasTKIPCipher") & 1) != 0 || (objc_msgSend(v1, "hasWEP104Cipher"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 hasWEP40Cipher];
  }

  return v2;
}

BOOL sub_1E0BF12E8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 SSID];
  if (v5)
  {
    v6 = [v4 SSID];
    if (v6)
    {
      v7 = [v3 SSID];
      v8 = [v4 SSID];
      if ([v7 isEqual:v8])
      {
        v9 = [v3 APMode];
        v10 = v9 == [v4 APMode];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_1E0BF13EC(void *a1, void *a2, void *a3)
{
  v101 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v70 = a2;
  v71 = a3;
  if (v71)
  {
    v6 = 4294967226;
  }

  else
  {
    v6 = 4294967216;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  v8 = MEMORY[0x1E696AEB0];
  obja = sub_1E0BF1B5C(sub_1E0BF11B4);
  v75 = [v8 sortDescriptorWithKey:0 ascending:0 comparator:obja];
  v87[0] = v75;
  v9 = MEMORY[0x1E696AEB0];
  v10 = sub_1E0BF1B5C(sub_1E0BF1240);
  v11 = [v9 sortDescriptorWithKey:0 ascending:1 comparator:v10];
  v87[1] = v11;
  v12 = MEMORY[0x1E696AEB0];
  v13 = sub_1E0BF1BD8(&unk_1F5BB9E80);
  v14 = [v12 sortDescriptorWithKey:@"RSSI" ascending:0 comparator:v13];
  v87[2] = v14;
  v15 = MEMORY[0x1E696AEB0];
  v69 = v7;
  v16 = sub_1E0BF1BD8(v7);
  v17 = [v15 sortDescriptorWithKey:@"RSSI" ascending:0 comparator:v16];
  v87[3] = v17;
  v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"channel.is6GHz" ascending:1];
  v87[4] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:5];
  v20 = [v19 mutableCopy];

  v21 = sub_1E0BEFAA0(0, 0, 0, v71, 0);
  [v20 addObjectsFromArray:v21];

  if ([v70 mergeScanResults])
  {
    v22 = v5;
    v68 = v20;
    v73 = v20;
    v5 = [MEMORY[0x1E695DF70] array];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v83 objects:v100 count:16];
    if (!v24)
    {
      goto LABEL_47;
    }

    v25 = v24;
    v26 = *v84;
    v72 = v23;
    v74 = *v84;
    while (1)
    {
      v27 = 0;
      v76 = v25;
      do
      {
        if (*v84 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v83 + 1) + 8 * v27);
        if (![v5 count])
        {
          goto LABEL_42;
        }

        v29 = 0;
        while (1)
        {
          v30 = [v5 objectAtIndexedSubscript:v29];
          if (sub_1E0BF12E8(v30, v28))
          {
            break;
          }

          if (++v29 >= [v5 count])
          {
            goto LABEL_42;
          }
        }

        v31 = [v28 channel];
        v32 = [v31 is6GHz];
        v33 = [v30 channel];
        v34 = [v33 is6GHz];

        if (v32 == v34)
        {
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          obj = v73;
          v38 = [obj countByEnumeratingWithState:&v79 objects:&v96 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v80;
            while (2)
            {
              for (i = 0; i != v39; ++i)
              {
                if (*v80 != v40)
                {
                  objc_enumerationMutation(obj);
                }

                v42 = *(*(&v79 + 1) + 8 * i);
                v43 = [v42 ascending];
                v44 = [v42 compareObject:v30 toObject:v28];
                if (v44)
                {
                  v45 = -1;
                  if (!v43)
                  {
                    v45 = 1;
                  }

                  v37 = v44 == v45;
                  goto LABEL_29;
                }
              }

              v39 = [obj countByEnumeratingWithState:&v79 objects:&v96 count:16];
              if (v39)
              {
                continue;
              }

              break;
            }

            v37 = 1;
LABEL_29:
            v23 = v72;
          }

          else
          {
            v37 = 1;
          }
        }

        else
        {
          v35 = [v28 channel];
          v36 = [v35 is6GHz];

          v37 = v36 ^ 1;
        }

        v46 = CWFGetOSLog();
        if (v46)
        {
          v47 = CWFGetOSLog();
        }

        else
        {
          v47 = MEMORY[0x1E69E9C10];
          v48 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v88 = 136446978;
          if (v37)
          {
            v49 = v30;
          }

          else
          {
            v49 = v28;
          }

          v89 = "CWFMergedScanResults";
          v90 = 2082;
          v91 = "CWFUtilInternal.m";
          v92 = 1024;
          v93 = 7762;
          v94 = 2114;
          v95 = v49;
          LODWORD(v67) = 38;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v47, 1, "[corewifi] %{public}s (%{public}s:%u) Filtering based on merge policy (%{public}@)", &v88, v67);
        }

        if (v37)
        {
          [v5 removeObjectAtIndex:v29];

          v26 = v74;
          v25 = v76;
LABEL_42:
          [v5 addObject:v28];
          goto LABEL_43;
        }

        v26 = v74;
        v25 = v76;
LABEL_43:
        ++v27;
      }

      while (v27 != v25);
      v50 = [v23 countByEnumeratingWithState:&v83 objects:v100 count:16];
      v25 = v50;
      if (!v50)
      {
LABEL_47:

        v20 = v68;
        break;
      }
    }
  }

  v51 = [v5 sortedArrayUsingDescriptors:v20];

  v52 = v51;
  v53 = v70;
  if ([v53 includeBackgroundScanCacheResults])
  {
    v54 = [MEMORY[0x1E695DFA8] setWithArray:&unk_1F5BB99B8];
    v55 = [v53 includeProperties];

    v56 = 0x1E695D000;
    v57 = v20;
    if (v55)
    {
      v58 = [v53 includeProperties];
      [v54 intersectSet:v58];
    }
  }

  else
  {
    v57 = v20;
    v54 = [v53 includeProperties];
    v56 = 0x1E695D000uLL;
  }

  v59 = [*(v56 + 3952) arrayWithCapacity:{objc_msgSend(v52, "count")}];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v60 = v52;
  v61 = [v60 countByEnumeratingWithState:&v96 objects:v100 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v97;
    do
    {
      for (j = 0; j != v62; ++j)
      {
        if (*v97 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = [*(*(&v96 + 1) + 8 * j) filteredScanResultWithProperties:v54];
        [v59 addObject:v65];
      }

      v62 = [v60 countByEnumeratingWithState:&v96 objects:v100 count:16];
    }

    while (v62);
  }

  return v59;
}

id sub_1E0BF1B5C(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E0BF31A8;
  v3[3] = &unk_1E86E56C0;
  v3[4] = a1;
  v1 = MEMORY[0x1E12EA400](v3);

  return v1;
}

id sub_1E0BF1BD8(void *a1)
{
  v1 = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0BF3254;
  v5[3] = &unk_1E86E56E8;
  v6 = v1;
  v7 = 1;
  v2 = v1;
  v3 = MEMORY[0x1E12EA400](v5);

  return v3;
}

BOOL sub_1E0BF1C80(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v9 setDay:1];
  v10 = [v8 dateByAddingComponents:v9 toDate:v5 options:0];
  v11 = [v8 components:28 fromDate:v10];
  [v11 setHour:a2];
  [v11 setMinute:0];
  [v11 setSecond:0];
  v12 = [v8 dateFromComponents:v11];
  v13 = [v12 compare:v6] == -1;

  objc_autoreleasePoolPop(v7);
  return v13;
}

void sub_1E0BF1DA8(void *a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = MEMORY[0x1E695E000];
  v6 = a2;
  v7 = a1;
  v8 = [v5 standardUserDefaults];
  v9 = [v8 persistentDomainForName:v6];

  v10 = [v9 objectForKey:v7];

  if (v10)
  {
    v11[2](v11, v10);
  }
}

__CFString *sub_1E0BF1E78(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%ld)", a1];
  }

  else
  {
    v2 = off_1E86E5FF0[a1];
  }

  return v2;
}

uint64_t sub_1E0BF1EE8(void *a1)
{
  v1 = a1;
  v2 = [v1 lowercaseString];
  v3 = [v2 isEqualToString:@"approved"];

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v1 lowercaseString];
    v6 = [v5 isEqualToString:@"declined"];

    if (v6)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t sub_1E0BF1F78()
{
  if (qword_1ED7E38A8 != -1)
  {
    dispatch_once(&qword_1ED7E38A8, &unk_1F5B8AA60);
  }

  return byte_1ED7E3890;
}

void sub_1E0BF1FC0()
{
  v0 = MGGetBoolAnswer();
  byte_1ED7E3890 = v0;
  if (v0)
  {
    v1 = CWFGetOSLog();
    if (v1)
    {
      v2 = CWFGetOSLog();
    }

    else
    {
      v2 = MEMORY[0x1E69E9C10];
      v3 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4[0] = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v2, 0, "[corewifi] Device Supports WAPI", v4, 2);
    }
  }
}

uint64_t sub_1E0BF2080(uint64_t a1)
{
  if (!qword_1ED7E3830)
  {
    qword_1ED7E3830 = _sl_dlopen();
  }

  return qword_1ED7E3830;
}

uint64_t sub_1E0BF2150(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1ED7E3830 = result;
  return result;
}

void sub_1E0BF21C4(void *a1)
{
  v6 = 0;
  if (sub_1E0BF2080(&v6))
  {
    v2 = v6;
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    a1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ManagedConfigurationLibrary(void)"];
    [v3 handleFailureInFunction:a1 file:@"CWFUtilInternal.m" lineNumber:114 description:{@"%s", v6}];

    __break(1u);
  }

  free(v2);
LABEL_3:
  *(*(a1[4] + 8) + 24) = objc_getClass("MCProfileConnection");
  if (*(*(a1[4] + 8) + 24))
  {
    qword_1ED7E3828 = *(*(a1[4] + 8) + 24);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMCProfileConnectionClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v5 file:@"CWFUtilInternal.m" lineNumber:115 description:{@"Unable to find class %s", "MCProfileConnection"}];

    __break(1u);
  }
}

uint64_t sub_1E0BF230C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastJoinedByUserAt];
  v6 = [v4 lastJoinedByUserAt];

  if (v5 && v6)
  {
    v7 = [v5 compare:v6];
  }

  else if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t sub_1E0BF2394(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 SSID];
  if (v7 == v8)
  {
    v12 = 1;
  }

  else if (*(a1 + 32))
  {
    v9 = [v5 SSID];
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = [v5 SSID];
      v12 = [v10 isEqual:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 32);
  v14 = [v6 SSID];
  if (v13 == v14)
  {
    v18 = 1;
  }

  else if (*(a1 + 32))
  {
    v15 = [v6 SSID];
    if (v15)
    {
      v16 = *(a1 + 32);
      v17 = [v6 SSID];
      v18 = [v16 isEqual:v17];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = 1;
  if (!v12)
  {
    v19 = -1;
  }

  if (v18 == v12)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  return v20;
}

uint64_t sub_1E0BF2500(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 SSID];
  v7 = [v5 SSID];
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_7;
  }

  v9 = [v4 SSID];
  if (v9)
  {
    v10 = v9;
    v11 = [v5 SSID];
    if (v11)
    {
      v12 = v11;
      v13 = [v4 SSID];
      v14 = [v5 SSID];
      v15 = [v13 isEqual:v14];

      if ((v15 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_7:
      v16 = 0;
      goto LABEL_27;
    }
  }

LABEL_10:
  v17 = [v4 BSSID];
  v18 = [v17 substringToIndex:2];
  if (v18)
  {
    v19 = [*(a1 + 32) BSSID];
    v20 = [v19 substringToIndex:2];
    if (v20)
    {
      v37 = [v4 BSSID];
      v21 = [v37 substringToIndex:2];
      v22 = [*(a1 + 32) BSSID];
      v23 = [v22 substringToIndex:2];
      v24 = [v21 isEqual:v23];

      v25 = v24;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = [v5 BSSID];
  v27 = [v26 substringToIndex:2];
  if (v27)
  {
    v28 = [*(a1 + 32) BSSID];
    v29 = [v28 substringToIndex:2];
    if (v29)
    {
      v38 = [v5 BSSID];
      v36 = [v38 substringToIndex:2];
      v30 = [*(a1 + 32) BSSID];
      [v30 substringToIndex:2];
      v32 = v31 = v25;
      v33 = [v36 isEqual:v32];

      v25 = v31;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  v34 = 1;
  if (!v25)
  {
    v34 = -1;
  }

  if (v33 == v25)
  {
    v16 = 0;
  }

  else
  {
    v16 = v34;
  }

LABEL_27:

  return v16;
}

uint64_t sub_1E0BF27F4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v28 = 0;
  v6 = [v4 SSID];
  v7 = [v5 SSID];
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_7;
  }

  v9 = [v4 SSID];
  if (v9)
  {
    v10 = v9;
    v11 = [v5 SSID];
    if (v11)
    {
      v12 = v11;
      v13 = [v4 SSID];
      v14 = [v5 SSID];
      v15 = [v13 isEqual:v14];

      if ((v15 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_7:
      v16 = 0;
      goto LABEL_22;
    }
  }

LABEL_10:
  v17 = [v4 BSSID];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 stringByReplacingOccurrencesOfString:@":" withString:&stru_1F5B8FC80];

    v18 = [MEMORY[0x1E696AE88] scannerWithString:v19];
    [v18 scanHexLongLong:&v28];
  }

  else
  {
    v19 = 0;
  }

  v20 = [v5 BSSID];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 stringByReplacingOccurrencesOfString:@":" withString:&stru_1F5B8FC80];

    v23 = [MEMORY[0x1E696AE88] scannerWithString:v22];

    [v23 scanHexLongLong:&v27];
    v24 = v27;

    v18 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = 1;
  if (v28 >= v24)
  {
    v25 = -1;
  }

  if (v28 == v24)
  {
    v16 = 0;
  }

  else
  {
    v16 = v25;
  }

LABEL_22:
  return v16;
}

uint64_t sub_1E0BF2A04(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 networkOfInterestHomeState] == 1 || objc_msgSend(v4, "networkOfInterestHomeState") == 3;
  if ([v5 networkOfInterestHomeState] == 1 || (v7 = objc_msgSend(v5, "networkOfInterestHomeState"), v6 = v6 == (v7 == 3), v7 == 3))
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

uint64_t sub_1E0BF2AB4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 addReason];
  v7 = [v5 addReason];
  if (v6 == 10)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v4 isProfileBased];
  }

  if (v7 == 10)
  {
    v9 = v8 == 0;
    v10 = 1;
  }

  else
  {
    v11 = [v5 isProfileBased] & 1;
    v10 = -1;
    if (!v11)
    {
      v10 = 1;
    }

    v9 = v8 == v11;
  }

  if (v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  return v12;
}

uint64_t sub_1E0BF2B68(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 isPersonalHotspot];
  v7 = [v5 isPersonalHotspot];

  if (v6 == v7)
  {
    v8 = 0;
  }

  else if ([v4 isPersonalHotspot])
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

uint64_t sub_1E0BF2BE8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 isOpen];
  v7 = [v5 isOpen];

  if (v6 == v7)
  {
    v8 = 0;
  }

  else if ([v4 isOpen])
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

uint64_t sub_1E0BF2C68(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 is6GHz])
  {
    v6 = [v4 overlapsWithUWB] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if ([v5 is6GHz])
  {
    v7 = [v5 overlapsWithUWB] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  if (v6 == v7)
  {
    if ([v4 is5GHz])
    {
      v8 = [v4 isDFS] ^ 1;
    }

    else
    {
      v8 = 0;
    }

    if ([v5 is5GHz])
    {
      v10 = [v5 isDFS] ^ 1;
    }

    else
    {
      v10 = 0;
    }

    if (v8 == v10)
    {
      v11 = [v4 is6GHz];
      if (v11 == [v5 is6GHz])
      {
        v16 = [v4 is5GHz];
        if (v16 == [v5 is5GHz])
        {
          v15 = 0;
          goto LABEL_29;
        }

        v12 = [v5 is5GHz];
      }

      else
      {
        v12 = [v5 is6GHz];
      }

      v13 = v12 == 0;
      v14 = -1;
      goto LABEL_26;
    }

    if ([v5 is5GHz])
    {
      v9 = [v5 isDFS];
      goto LABEL_21;
    }

LABEL_22:
    v15 = 1;
    goto LABEL_29;
  }

  if (![v5 is6GHz])
  {
    goto LABEL_22;
  }

  v9 = [v5 overlapsWithUWB];
LABEL_21:
  v13 = v9 == 0;
  v14 = 1;
LABEL_26:
  if (v13)
  {
    v15 = -v14;
  }

  else
  {
    v15 = v14;
  }

LABEL_29:

  return v15;
}