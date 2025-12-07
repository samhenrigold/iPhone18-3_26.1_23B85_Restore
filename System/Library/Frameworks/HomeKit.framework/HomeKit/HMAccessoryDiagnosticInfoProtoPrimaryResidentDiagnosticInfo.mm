@interface HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addNetworkInfo:(id)info;
- (void)addNetworkServiceInfo:(id)info;
- (void)addNetworkVisibleDeviceInfos:(id)infos;
- (void)addProximityVisibleDeviceInfos:(id)infos;
- (void)addVisibleAccessoriesInfo:(id)info;
- (void)addVisibleIDSDevices:(id)devices;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNumResidents:(BOOL)residents;
- (void)writeTo:(id)to;
@end

@implementation HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo

- (void)mergeFrom:(id)from
{
  v70 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  wifiInfo = self->_wifiInfo;
  v6 = *(fromCopy + 10);
  if (wifiInfo)
  {
    if (v6)
    {
      [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)wifiInfo mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self setWifiInfo:?];
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v7 = *(fromCopy + 4);
  v8 = [v7 countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v61;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v61 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self addNetworkInfo:*(*(&v60 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v9);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v12 = *(fromCopy + 5);
  v13 = [v12 countByEnumeratingWithState:&v56 objects:v68 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v57;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v57 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self addNetworkServiceInfo:*(*(&v56 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v56 objects:v68 count:16];
    }

    while (v14);
  }

  eventRouterServerInfo = self->_eventRouterServerInfo;
  v18 = *(fromCopy + 3);
  if (eventRouterServerInfo)
  {
    if (v18)
    {
      [(HMRemoteEventRouterProtoServerDiagnosticInfo *)eventRouterServerInfo mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self setEventRouterServerInfo:?];
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v19 = *(fromCopy + 8);
  v20 = [v19 countByEnumeratingWithState:&v52 objects:v67 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v53;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v53 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self addVisibleAccessoriesInfo:*(*(&v52 + 1) + 8 * k)];
      }

      v21 = [v19 countByEnumeratingWithState:&v52 objects:v67 count:16];
    }

    while (v21);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v24 = *(fromCopy + 9);
  v25 = [v24 countByEnumeratingWithState:&v48 objects:v66 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v49;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v49 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self addVisibleIDSDevices:*(*(&v48 + 1) + 8 * m)];
      }

      v26 = [v24 countByEnumeratingWithState:&v48 objects:v66 count:16];
    }

    while (v26);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v29 = *(fromCopy + 6);
  v30 = [v29 countByEnumeratingWithState:&v44 objects:v65 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v45;
    do
    {
      for (n = 0; n != v31; ++n)
      {
        if (*v45 != v32)
        {
          objc_enumerationMutation(v29);
        }

        [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self addNetworkVisibleDeviceInfos:*(*(&v44 + 1) + 8 * n)];
      }

      v31 = [v29 countByEnumeratingWithState:&v44 objects:v65 count:16];
    }

    while (v31);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v34 = *(fromCopy + 7);
  v35 = [v34 countByEnumeratingWithState:&v40 objects:v64 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v41;
    do
    {
      for (ii = 0; ii != v36; ++ii)
      {
        if (*v41 != v37)
        {
          objc_enumerationMutation(v34);
        }

        [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self addProximityVisibleDeviceInfos:*(*(&v40 + 1) + 8 * ii), v40];
      }

      v36 = [v34 countByEnumeratingWithState:&v40 objects:v64 count:16];
    }

    while (v36);
  }

  v39 = *(fromCopy + 88);
  if (v39)
  {
    self->_numAppleMediaAccessories = *(fromCopy + 1);
    *&self->_has |= 1u;
    v39 = *(fromCopy + 88);
  }

  if ((v39 & 2) != 0)
  {
    self->_numResidents = *(fromCopy + 2);
    *&self->_has |= 2u;
  }
}

- (unint64_t)hash
{
  v3 = [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)self->_wifiInfo hash];
  v4 = [(NSMutableArray *)self->_networkInfos hash];
  v5 = [(NSMutableArray *)self->_networkServiceInfos hash];
  v6 = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)self->_eventRouterServerInfo hash];
  v7 = [(NSMutableArray *)self->_visibleAccessoriesInfos hash];
  v8 = [(NSMutableArray *)self->_visibleIDSDevices hash];
  v9 = [(NSMutableArray *)self->_networkVisibleDeviceInfos hash];
  v10 = [(NSMutableArray *)self->_proximityVisibleDeviceInfos hash];
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_numAppleMediaAccessories;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = 2654435761 * self->_numResidents;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  wifiInfo = self->_wifiInfo;
  if (wifiInfo | *(equalCopy + 10))
  {
    if (![(HMAccessoryInfoProtoWifiNetworkInfoEvent *)wifiInfo isEqual:?])
    {
      goto LABEL_27;
    }
  }

  networkInfos = self->_networkInfos;
  if (networkInfos | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)networkInfos isEqual:?])
    {
      goto LABEL_27;
    }
  }

  networkServiceInfos = self->_networkServiceInfos;
  if (networkServiceInfos | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)networkServiceInfos isEqual:?])
    {
      goto LABEL_27;
    }
  }

  eventRouterServerInfo = self->_eventRouterServerInfo;
  if (eventRouterServerInfo | *(equalCopy + 3))
  {
    if (![(HMRemoteEventRouterProtoServerDiagnosticInfo *)eventRouterServerInfo isEqual:?])
    {
      goto LABEL_27;
    }
  }

  visibleAccessoriesInfos = self->_visibleAccessoriesInfos;
  if (visibleAccessoriesInfos | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)visibleAccessoriesInfos isEqual:?])
    {
      goto LABEL_27;
    }
  }

  visibleIDSDevices = self->_visibleIDSDevices;
  if (visibleIDSDevices | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)visibleIDSDevices isEqual:?])
    {
      goto LABEL_27;
    }
  }

  networkVisibleDeviceInfos = self->_networkVisibleDeviceInfos;
  if (networkVisibleDeviceInfos | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)networkVisibleDeviceInfos isEqual:?])
    {
      goto LABEL_27;
    }
  }

  proximityVisibleDeviceInfos = self->_proximityVisibleDeviceInfos;
  if (proximityVisibleDeviceInfos | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)proximityVisibleDeviceInfos isEqual:?])
    {
      goto LABEL_27;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_numAppleMediaAccessories != *(equalCopy + 1))
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 88))
  {
LABEL_27:
    v13 = 0;
    goto LABEL_28;
  }

  v13 = (*(equalCopy + 88) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 88) & 2) == 0 || self->_numResidents != *(equalCopy + 2))
    {
      goto LABEL_27;
    }

    v13 = 1;
  }

LABEL_28:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v78 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)self->_wifiInfo copyWithZone:zone];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v8 = self->_networkInfos;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v68 objects:v77 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v69;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v69 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v68 + 1) + 8 * i) copyWithZone:zone];
        [v5 addNetworkInfo:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v68 objects:v77 count:16];
    }

    while (v10);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v14 = self->_networkServiceInfos;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v65;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v65 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v64 + 1) + 8 * j) copyWithZone:zone];
        [v5 addNetworkServiceInfo:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v64 objects:v76 count:16];
    }

    while (v16);
  }

  v20 = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)self->_eventRouterServerInfo copyWithZone:zone];
  v21 = *(v5 + 24);
  *(v5 + 24) = v20;

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v22 = self->_visibleAccessoriesInfos;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v60 objects:v75 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v61;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v61 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v60 + 1) + 8 * k) copyWithZone:zone];
        [v5 addVisibleAccessoriesInfo:v27];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v60 objects:v75 count:16];
    }

    while (v24);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v28 = self->_visibleIDSDevices;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v56 objects:v74 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v57;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v57 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v56 + 1) + 8 * m) copyWithZone:zone];
        [v5 addVisibleIDSDevices:v33];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v56 objects:v74 count:16];
    }

    while (v30);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v34 = self->_networkVisibleDeviceInfos;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v52 objects:v73 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v53;
    do
    {
      for (n = 0; n != v36; ++n)
      {
        if (*v53 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v52 + 1) + 8 * n) copyWithZone:zone];
        [v5 addNetworkVisibleDeviceInfos:v39];
      }

      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v52 objects:v73 count:16];
    }

    while (v36);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v40 = self->_proximityVisibleDeviceInfos;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v48 objects:v72 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v49;
    do
    {
      for (ii = 0; ii != v42; ++ii)
      {
        if (*v49 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [*(*(&v48 + 1) + 8 * ii) copyWithZone:{zone, v48}];
        [v5 addProximityVisibleDeviceInfos:v45];
      }

      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v48 objects:v72 count:16];
    }

    while (v42);
  }

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_numAppleMediaAccessories;
    *(v5 + 88) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_numResidents;
    *(v5 + 88) |= 2u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_wifiInfo)
  {
    [toCopy setWifiInfo:?];
  }

  if ([(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self networkInfosCount])
  {
    [toCopy clearNetworkInfos];
    networkInfosCount = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self networkInfosCount];
    if (networkInfosCount)
    {
      v5 = networkInfosCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self networkInfoAtIndex:i];
        [toCopy addNetworkInfo:v7];
      }
    }
  }

  if ([(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self networkServiceInfosCount])
  {
    [toCopy clearNetworkServiceInfos];
    networkServiceInfosCount = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self networkServiceInfosCount];
    if (networkServiceInfosCount)
    {
      v9 = networkServiceInfosCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self networkServiceInfoAtIndex:j];
        [toCopy addNetworkServiceInfo:v11];
      }
    }
  }

  if (self->_eventRouterServerInfo)
  {
    [toCopy setEventRouterServerInfo:?];
  }

  if ([(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self visibleAccessoriesInfosCount])
  {
    [toCopy clearVisibleAccessoriesInfos];
    visibleAccessoriesInfosCount = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self visibleAccessoriesInfosCount];
    if (visibleAccessoriesInfosCount)
    {
      v13 = visibleAccessoriesInfosCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self visibleAccessoriesInfoAtIndex:k];
        [toCopy addVisibleAccessoriesInfo:v15];
      }
    }
  }

  if ([(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self visibleIDSDevicesCount])
  {
    [toCopy clearVisibleIDSDevices];
    visibleIDSDevicesCount = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self visibleIDSDevicesCount];
    if (visibleIDSDevicesCount)
    {
      v17 = visibleIDSDevicesCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self visibleIDSDevicesAtIndex:m];
        [toCopy addVisibleIDSDevices:v19];
      }
    }
  }

  if ([(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self networkVisibleDeviceInfosCount])
  {
    [toCopy clearNetworkVisibleDeviceInfos];
    networkVisibleDeviceInfosCount = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self networkVisibleDeviceInfosCount];
    if (networkVisibleDeviceInfosCount)
    {
      v21 = networkVisibleDeviceInfosCount;
      for (n = 0; n != v21; ++n)
      {
        v23 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self networkVisibleDeviceInfosAtIndex:n];
        [toCopy addNetworkVisibleDeviceInfos:v23];
      }
    }
  }

  if ([(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self proximityVisibleDeviceInfosCount])
  {
    [toCopy clearProximityVisibleDeviceInfos];
    proximityVisibleDeviceInfosCount = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self proximityVisibleDeviceInfosCount];
    if (proximityVisibleDeviceInfosCount)
    {
      v25 = proximityVisibleDeviceInfosCount;
      for (ii = 0; ii != v25; ++ii)
      {
        v27 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self proximityVisibleDeviceInfosAtIndex:ii];
        [toCopy addProximityVisibleDeviceInfos:v27];
      }
    }
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_numAppleMediaAccessories;
    *(toCopy + 88) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_numResidents;
    *(toCopy + 88) |= 2u;
  }
}

- (void)writeTo:(id)to
{
  v66 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_wifiInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v5 = self->_networkInfos;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v57;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v57 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v7);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v10 = self->_networkServiceInfos;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v53;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v53 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v12);
  }

  if (self->_eventRouterServerInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v15 = self->_visibleAccessoriesInfos;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v48 objects:v63 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v49;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v48 objects:v63 count:16];
    }

    while (v17);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v20 = self->_visibleIDSDevices;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v44 objects:v62 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v45;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v45 != v23)
        {
          objc_enumerationMutation(v20);
        }

        PBDataWriterWriteStringField();
      }

      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v44 objects:v62 count:16];
    }

    while (v22);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = self->_networkVisibleDeviceInfos;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v40 objects:v61 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v41;
    do
    {
      for (n = 0; n != v27; ++n)
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(v25);
        }

        PBDataWriterWriteSubmessage();
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v40 objects:v61 count:16];
    }

    while (v27);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v30 = self->_proximityVisibleDeviceInfos;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v36 objects:v60 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v37;
    do
    {
      for (ii = 0; ii != v32; ++ii)
      {
        if (*v37 != v33)
        {
          objc_enumerationMutation(v30);
        }

        PBDataWriterWriteSubmessage();
      }

      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v36 objects:v60 count:16];
    }

    while (v32);
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (id)dictionaryRepresentation
{
  v73 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  wifiInfo = self->_wifiInfo;
  if (wifiInfo)
  {
    dictionaryRepresentation = [(HMAccessoryInfoProtoWifiNetworkInfoEvent *)wifiInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"wifiInfo"];
  }

  if ([(NSMutableArray *)self->_networkInfos count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_networkInfos, "count")}];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v7 = self->_networkInfos;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v64 objects:v72 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v65;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v65 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v64 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v64 objects:v72 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"networkInfo"];
  }

  if ([(NSMutableArray *)self->_networkServiceInfos count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_networkServiceInfos, "count")}];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v14 = self->_networkServiceInfos;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v60 objects:v71 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v61;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v61 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation3 = [*(*(&v60 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation3];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v60 objects:v71 count:16];
      }

      while (v16);
    }

    [dictionary setObject:v13 forKey:@"networkServiceInfo"];
  }

  eventRouterServerInfo = self->_eventRouterServerInfo;
  if (eventRouterServerInfo)
  {
    dictionaryRepresentation4 = [(HMRemoteEventRouterProtoServerDiagnosticInfo *)eventRouterServerInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"eventRouterServerInfo"];
  }

  if ([(NSMutableArray *)self->_visibleAccessoriesInfos count])
  {
    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_visibleAccessoriesInfos, "count")}];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v23 = self->_visibleAccessoriesInfos;
    v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v56 objects:v70 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v57;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v57 != v26)
          {
            objc_enumerationMutation(v23);
          }

          dictionaryRepresentation5 = [*(*(&v56 + 1) + 8 * k) dictionaryRepresentation];
          [v22 addObject:dictionaryRepresentation5];
        }

        v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v56 objects:v70 count:16];
      }

      while (v25);
    }

    [dictionary setObject:v22 forKey:@"visibleAccessoriesInfo"];
  }

  visibleIDSDevices = self->_visibleIDSDevices;
  if (visibleIDSDevices)
  {
    [dictionary setObject:visibleIDSDevices forKey:@"visibleIDSDevices"];
  }

  if ([(NSMutableArray *)self->_networkVisibleDeviceInfos count])
  {
    v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_networkVisibleDeviceInfos, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v31 = self->_networkVisibleDeviceInfos;
    v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v52 objects:v69 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v53;
      do
      {
        for (m = 0; m != v33; ++m)
        {
          if (*v53 != v34)
          {
            objc_enumerationMutation(v31);
          }

          dictionaryRepresentation6 = [*(*(&v52 + 1) + 8 * m) dictionaryRepresentation];
          [v30 addObject:dictionaryRepresentation6];
        }

        v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v52 objects:v69 count:16];
      }

      while (v33);
    }

    [dictionary setObject:v30 forKey:@"networkVisibleDeviceInfos"];
  }

  if ([(NSMutableArray *)self->_proximityVisibleDeviceInfos count])
  {
    v37 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_proximityVisibleDeviceInfos, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v38 = self->_proximityVisibleDeviceInfos;
    v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v48 objects:v68 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v49;
      do
      {
        for (n = 0; n != v40; ++n)
        {
          if (*v49 != v41)
          {
            objc_enumerationMutation(v38);
          }

          dictionaryRepresentation7 = [*(*(&v48 + 1) + 8 * n) dictionaryRepresentation];
          [v37 addObject:dictionaryRepresentation7];
        }

        v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v48 objects:v68 count:16];
      }

      while (v40);
    }

    [dictionary setObject:v37 forKey:@"proximityVisibleDeviceInfos"];
  }

  has = self->_has;
  if (has)
  {
    v45 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_numAppleMediaAccessories];
    [dictionary setObject:v45 forKey:@"numAppleMediaAccessories"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v46 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_numResidents];
    [dictionary setObject:v46 forKey:@"numResidents"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo;
  v4 = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)&v8 description];
  dictionaryRepresentation = [(HMAccessoryDiagnosticInfoProtoPrimaryResidentDiagnosticInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasNumResidents:(BOOL)residents
{
  if (residents)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addProximityVisibleDeviceInfos:(id)infos
{
  infosCopy = infos;
  proximityVisibleDeviceInfos = self->_proximityVisibleDeviceInfos;
  v8 = infosCopy;
  if (!proximityVisibleDeviceInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_proximityVisibleDeviceInfos;
    self->_proximityVisibleDeviceInfos = v6;

    infosCopy = v8;
    proximityVisibleDeviceInfos = self->_proximityVisibleDeviceInfos;
  }

  [(NSMutableArray *)proximityVisibleDeviceInfos addObject:infosCopy];
}

- (void)addNetworkVisibleDeviceInfos:(id)infos
{
  infosCopy = infos;
  networkVisibleDeviceInfos = self->_networkVisibleDeviceInfos;
  v8 = infosCopy;
  if (!networkVisibleDeviceInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_networkVisibleDeviceInfos;
    self->_networkVisibleDeviceInfos = v6;

    infosCopy = v8;
    networkVisibleDeviceInfos = self->_networkVisibleDeviceInfos;
  }

  [(NSMutableArray *)networkVisibleDeviceInfos addObject:infosCopy];
}

- (void)addVisibleIDSDevices:(id)devices
{
  devicesCopy = devices;
  visibleIDSDevices = self->_visibleIDSDevices;
  v8 = devicesCopy;
  if (!visibleIDSDevices)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_visibleIDSDevices;
    self->_visibleIDSDevices = v6;

    devicesCopy = v8;
    visibleIDSDevices = self->_visibleIDSDevices;
  }

  [(NSMutableArray *)visibleIDSDevices addObject:devicesCopy];
}

- (void)addVisibleAccessoriesInfo:(id)info
{
  infoCopy = info;
  visibleAccessoriesInfos = self->_visibleAccessoriesInfos;
  v8 = infoCopy;
  if (!visibleAccessoriesInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_visibleAccessoriesInfos;
    self->_visibleAccessoriesInfos = v6;

    infoCopy = v8;
    visibleAccessoriesInfos = self->_visibleAccessoriesInfos;
  }

  [(NSMutableArray *)visibleAccessoriesInfos addObject:infoCopy];
}

- (void)addNetworkServiceInfo:(id)info
{
  infoCopy = info;
  networkServiceInfos = self->_networkServiceInfos;
  v8 = infoCopy;
  if (!networkServiceInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_networkServiceInfos;
    self->_networkServiceInfos = v6;

    infoCopy = v8;
    networkServiceInfos = self->_networkServiceInfos;
  }

  [(NSMutableArray *)networkServiceInfos addObject:infoCopy];
}

- (void)addNetworkInfo:(id)info
{
  infoCopy = info;
  networkInfos = self->_networkInfos;
  v8 = infoCopy;
  if (!networkInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_networkInfos;
    self->_networkInfos = v6;

    infoCopy = v8;
    networkInfos = self->_networkInfos;
  }

  [(NSMutableArray *)networkInfos addObject:infoCopy];
}

@end