@interface HMDHomeObjectChangeHandler
- (HMDHome)home;
- (HMDHomeObjectChangeHandler)initWithHome:(id)home;
- (void)handleObjectAdd:(id)add message:(id)message;
- (void)handleObjectRemove:(id)remove message:(id)message;
- (void)handleObjectUpdate:(id)update newValues:(id)values message:(id)message;
@end

@implementation HMDHomeObjectChangeHandler

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)handleObjectUpdate:(id)update newValues:(id)values message:(id)message
{
  v111 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  valuesCopy = values;
  messageCopy = message;
  home = [(HMDHomeObjectChangeHandler *)self home];
  v12 = valuesCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    uuid = [v14 uuid];
    v16 = [home roomWithUUID:uuid];

    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v106 = v20;
      v107 = 2112;
      v108 = v16;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Received room transaction, applying it to room: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    if (v16)
    {
      [v16 transactionObjectUpdated:updateCopy newValues:v12 message:messageCopy];
    }

    else
    {
      [(HMDHomeObjectChangeHandler *)selfCopy handleObjectAdd:v14 message:messageCopy];
    }

    v21 = v12;
    goto LABEL_37;
  }

  v21 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  if (v23)
  {
    uuid2 = [v23 uuid];
    v25 = [home zoneWithUUID:uuid2];

    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v98 = v12;
      v29 = v21;
      v30 = home;
      v31 = messageCopy;
      v33 = v32 = updateCopy;
      *buf = 138543618;
      v106 = v33;
      v107 = 2112;
      v108 = v25;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Received zone transaction, applying it to zone: %@", buf, 0x16u);

      updateCopy = v32;
      messageCopy = v31;
      home = v30;
      v21 = v29;
      v12 = v98;
    }

    objc_autoreleasePoolPop(v26);
    if (!v25)
    {
      [(HMDHomeObjectChangeHandler *)selfCopy2 handleObjectAdd:v23 message:messageCopy];
      goto LABEL_36;
    }

    v34 = v25;
LABEL_27:
    [v34 transactionObjectUpdated:updateCopy newValues:v21 message:messageCopy];
LABEL_36:

    goto LABEL_37;
  }

  v99 = updateCopy;
  v21 = v21;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = v21;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35;

  if (v36)
  {
    uuid3 = [v36 uuid];
    v25 = [home serviceGroupWithUUID:uuid3];

    v38 = objc_autoreleasePoolPush();
    self = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v106 = v40;
      v107 = 2112;
      v108 = v25;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Received serviceGroup transaction, applying it to serviceGroup: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    if (v25)
    {
      goto LABEL_26;
    }

    goto LABEL_35;
  }

  v21 = v21;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = v21;
  }

  else
  {
    v41 = 0;
  }

  v36 = v41;

  if (v36)
  {
    uuid4 = [v36 uuid];
    v43 = [home actionSetWithUUID:uuid4];
    goto LABEL_34;
  }

  v21 = v21;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = v21;
  }

  else
  {
    v44 = 0;
  }

  v45 = v44;

  if (v45 || ((v21 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v46 = 0) : (v46 = v21), v45 = v46, v21, v45))
  {
    uuid5 = [v45 uuid];
    v48 = [home triggerWithUUID:uuid5];

    v49 = v48;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v51 = v49;
    }

    else
    {
      v51 = 0;
    }

    v52 = v51;

    if (v49)
    {
      if (isKindOfClass)
      {
        updateCopy = v99;
        [v49 transactionObjectUpdated:v99 newValues:v21 message:messageCopy];
LABEL_55:

        goto LABEL_37;
      }

      v53 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [messageCopy respondWithError:v53];
    }

    else
    {
      [(HMDHomeObjectChangeHandler *)self handleObjectAdd:v45 message:messageCopy];
    }

    updateCopy = v99;
    goto LABEL_55;
  }

  v21 = v21;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v54 = v21;
  }

  else
  {
    v54 = 0;
  }

  v36 = v54;

  if (v36)
  {
    uuid4 = [v36 uuid];
    v43 = [home accessoryWithUUID:uuid4];
LABEL_34:
    v25 = v43;

    if (v25)
    {
LABEL_26:
      v34 = v25;
      updateCopy = v99;
      goto LABEL_27;
    }

LABEL_35:
    [(HMDHomeObjectChangeHandler *)self handleObjectAdd:v36 message:messageCopy];
    updateCopy = v99;
    goto LABEL_36;
  }

  v21 = v21;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v55 = v21;
  }

  else
  {
    v55 = 0;
  }

  v56 = v55;

  if (v56)
  {
    v57 = v56;
    parentUUID = [v57 parentUUID];
    v59 = [home accessoryWithUUID:parentUUID];

    if (v59)
    {
      updateCopy = v99;
      [v59 transactionObjectUpdated:v99 newValues:v21 message:messageCopy];
    }

    else
    {
      v67 = objc_autoreleasePoolPush();
      v68 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v69 = v97 = v67;
        parentUUID2 = [v57 parentUUID];
        instanceID = [v57 instanceID];
        *buf = 138543874;
        v106 = v69;
        v107 = 2112;
        v108 = parentUUID2;
        v109 = 2112;
        v110 = instanceID;
        _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory %@ to add/update service %@", buf, 0x20u);

        v67 = v97;
      }

      objc_autoreleasePoolPop(v67);
      updateCopy = v99;
    }
  }

  else
  {
    v60 = v21;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    v21 = v61;

    if (v21)
    {
      v93 = v60;
      [home usersIncludingPendingUsers:1];
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      obj = v103 = 0u;
      v96 = [obj countByEnumeratingWithState:&v100 objects:v104 count:16];
      if (v96)
      {
        v95 = *v101;
LABEL_73:
        v62 = 0;
        while (1)
        {
          if (*v101 != v95)
          {
            objc_enumerationMutation(obj);
          }

          v63 = *(*(&v100 + 1) + 8 * v62);
          uuid6 = [v63 uuid];
          uuid7 = [v21 uuid];
          v66 = [uuid6 isEqual:uuid7];

          if (v66)
          {
            break;
          }

          if (v96 == ++v62)
          {
            v96 = [obj countByEnumeratingWithState:&v100 objects:v104 count:16];
            if (v96)
            {
              goto LABEL_73;
            }

            goto LABEL_79;
          }
        }

        v72 = v63;

        updateCopy = v99;
        if (!v72)
        {
          goto LABEL_86;
        }

        [v72 transactionObjectUpdated:v99 newValues:v93 message:messageCopy];
      }

      else
      {
LABEL_79:

        updateCopy = v99;
LABEL_86:
        [(HMDHomeObjectChangeHandler *)self handleObjectAdd:v21 message:messageCopy];
      }
    }

    else
    {
      v21 = v60;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v73 = v21;
      }

      else
      {
        v73 = 0;
      }

      v74 = v73;

      if (v74)
      {
        uuid8 = [v74 uuid];
        v76 = [home outgoingInvitationWithUUID:uuid8];

        if (v76)
        {
          updateCopy = v99;
          [v76 transactionObjectUpdated:v99 newValues:v21 message:messageCopy];
        }

        else
        {
          [(HMDHomeObjectChangeHandler *)self handleObjectAdd:v74 message:messageCopy];
          updateCopy = v99;
        }
      }

      else
      {
        v21 = v21;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v77 = v21;
        }

        else
        {
          v77 = 0;
        }

        v78 = v77;

        if (!v78)
        {
          v79 = v21;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v80 = v79;
          }

          else
          {
            v80 = 0;
          }

          v81 = v80;
          v21 = v79;

          if (v81)
          {
            uuid9 = [v81 uuid];
            v83 = [home mediaSystemWithUUID:uuid9];

            if (v83)
            {
              [v83 transactionObjectUpdated:v99 newValues:v79 message:messageCopy];
            }

            else
            {
              mediaSystemController = [home mediaSystemController];
              [mediaSystemController _handleAddMediaSystemModel:v81 message:messageCopy];
            }
          }

          else
          {
            v21 = v79;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v84 = v21;
            }

            else
            {
              v84 = 0;
            }

            v85 = v84;

            if (v85)
            {
              networkProtectionGroupRegistry = [home networkProtectionGroupRegistry];
              [networkProtectionGroupRegistry handleAddOrUpdateAccessoryNetworkProtectionGroupModel:v85 message:messageCopy];

              updateCopy = v99;
              goto LABEL_37;
            }

            v88 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v90 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
            {
              v91 = HMFGetLogIdentifier();
              *buf = 138543874;
              v106 = v91;
              v107 = 2112;
              v108 = v21;
              v109 = 2112;
              v110 = objc_opt_class();
              v92 = v110;
              _os_log_impl(&dword_229538000, v90, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v88);
            v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
            [messageCopy respondWithError:v21];
          }

          updateCopy = v99;
          goto LABEL_37;
        }

        [home _handleUpdateAppDataModel:v78 message:messageCopy];
      }
    }
  }

LABEL_37:
}

- (void)handleObjectRemove:(id)remove message:(id)message
{
  v47 = *MEMORY[0x277D85DE8];
  removeCopy = remove;
  messageCopy = message;
  home = [(HMDHomeObjectChangeHandler *)self home];
  v9 = removeCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    [home _handleRemoveRoomModel:v11 message:messageCopy];
    v12 = v9;
    goto LABEL_62;
  }

  v12 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    [home _handleRemoveZoneModel:v14 message:messageCopy];
    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    [home _handleRemoveServiceGroupModel:v16 message:messageCopy];
    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v18)
  {
    [home _handleRemoveActionSetModel:v18 message:messageCopy];
    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v12;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (v20)
  {
    [home _handleRemoveAccessoryModel:v20 message:messageCopy];
    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v12;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (v22)
  {
LABEL_30:
    parentUUID = [v22 parentUUID];
    v24 = [home accessoryWithUUID:parentUUID];

    [v24 transactionObjectRemoved:v22 message:messageCopy];
    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v12;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  if (v26)
  {
    [home _handleRemoveUserModel:v26 message:messageCopy];
    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v12;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  if (v28)
  {
    [home _handleRemoveTriggerModel:v28 message:messageCopy];
    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = v12;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;

  if (v30)
  {
    [home _handleRemoveOutgoingHomeInvitationModel:v30 message:messageCopy];
    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = v12;
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  if (v32)
  {
    [home _handleRemoveAppDataModel:v32 message:messageCopy];
    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v12;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  if (v34)
  {
    mediaSystemController = [home mediaSystemController];
    [mediaSystemController _handleRemoveMediaSystemModel:v34 message:messageCopy];
LABEL_61:

    goto LABEL_62;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = v12;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;

  if (v37)
  {
    mediaSystemController = [home networkProtectionGroupRegistry];
    [mediaSystemController handleRemoveAccessoryNetworkProtectionGroupModel:v37 message:messageCopy];
    goto LABEL_61;
  }

  v12 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v38 = v12;
  }

  else
  {
    v38 = 0;
  }

  v22 = v38;

  if (v22)
  {
    goto LABEL_30;
  }

  v39 = objc_autoreleasePoolPush();
  selfCopy = self;
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = HMFGetLogIdentifier();
    v43 = 138543618;
    v44 = v42;
    v45 = 2112;
    v46 = v12;
    _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [HMDHome transactionObjectRemoved]", &v43, 0x16u);
  }

  objc_autoreleasePoolPop(v39);
  v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [messageCopy respondWithError:v12];
LABEL_62:
}

- (void)handleObjectAdd:(id)add message:(id)message
{
  addCopy = add;
  messageCopy = message;
  home = [(HMDHomeObjectChangeHandler *)self home];
  v47 = addCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v47;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    [home _handleAddRoomModel:v10 message:messageCopy];
    goto LABEL_57;
  }

  v11 = v47;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    [home _handleAddZoneModel:v13 message:messageCopy];
    goto LABEL_57;
  }

  v14 = v11;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    [home _handleAddServiceGroupModel:v16 message:messageCopy];
    goto LABEL_57;
  }

  v17 = v14;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v19)
  {
    [home _handleAddActionSetModel:v19 message:messageCopy];
    goto LABEL_57;
  }

  v20 = v17;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (v22)
  {
    [home _handleAddTimerTriggerModel:v22 message:messageCopy];
    goto LABEL_57;
  }

  v23 = v20;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if (v25)
  {
    [home _handleAddEventTriggerModel:v25 message:messageCopy];
    goto LABEL_57;
  }

  v26 = v23;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  if (v28)
  {
    [home _handleAddAccessoryModel:v28 message:messageCopy];
    goto LABEL_57;
  }

  v29 = v26;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;

  if (v31)
  {
    [home _handleAddUserModel:v31 message:messageCopy];
    goto LABEL_57;
  }

  v32 = v29;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = v33;

  if (v34)
  {
    [home _handleAddOutgoingHomeInvitationModel:v34 message:messageCopy];
    goto LABEL_57;
  }

  v35 = v32;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = v36;

  if (v37)
  {
    mediaSystemController = [home mediaSystemController];
    [mediaSystemController _handleAddMediaSystemModel:v37 message:messageCopy];
LABEL_56:

    goto LABEL_57;
  }

  v39 = v35;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40;

  if (v41)
  {
    mediaSystemController = [home networkProtectionGroupRegistry];
    [mediaSystemController handleAddOrUpdateAccessoryNetworkProtectionGroupModel:v41 message:messageCopy];
    goto LABEL_56;
  }

  v42 = v39;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  v44 = v43;

  if (!v44)
  {
    goto LABEL_58;
  }

  parentUUID = [v44 parentUUID];
  v46 = [home accessoryWithUUID:parentUUID];

  [v46 transactionObjectUpdated:0 newValues:v44 message:messageCopy];
LABEL_57:

LABEL_58:
}

- (HMDHomeObjectChangeHandler)initWithHome:(id)home
{
  homeCopy = home;
  v10.receiver = self;
  v10.super_class = HMDHomeObjectChangeHandler;
  v5 = [(HMDHomeObjectChangeHandler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_home, homeCopy);
    workQueue = [homeCopy workQueue];
    workQueue = v6->_workQueue;
    v6->_workQueue = workQueue;
  }

  return v6;
}

@end