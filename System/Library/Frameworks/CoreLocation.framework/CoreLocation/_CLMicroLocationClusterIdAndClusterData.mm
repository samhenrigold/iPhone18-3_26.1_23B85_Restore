@interface _CLMicroLocationClusterIdAndClusterData
- (_CLMicroLocationClusterIdAndClusterData)initWithClusterIdentifier:(id)identifier meanBleRssi:(double)rssi meanUwbRange:(double)range;
- (_CLMicroLocationClusterIdAndClusterData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLMicroLocationClusterIdAndClusterData

- (_CLMicroLocationClusterIdAndClusterData)initWithClusterIdentifier:(id)identifier meanBleRssi:(double)rssi meanUwbRange:(double)range
{
  v13.receiver = self;
  v13.super_class = _CLMicroLocationClusterIdAndClusterData;
  v11 = [(_CLMicroLocationClusterIdAndClusterData *)&v13 init];
  if (v11)
  {
    v11->_clusterIdentifier = objc_msgSend_copy(identifier, v8, v9, v10);
    v11->_meanBLEReceivedSignalStrength = rssi;
    v11->_meanUWBRange = range;
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLMicroLocationClusterIdAndClusterData;
  [(_CLMicroLocationClusterIdAndClusterData *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_clusterIdentifier(self, v9, v10, v11);
  v15 = objc_msgSend_copyWithZone_(v12, v13, zone, v14);
  objc_msgSend_meanBLEReceivedSignalStrength(self, v16, v17, v18);
  v20 = v19;
  objc_msgSend_meanUWBRange(self, v21, v22, v23);

  return objc_msgSend_initWithClusterIdentifier_meanBleRssi_meanUwbRange_(v8, v24, v15, v25, v20, v26);
}

- (_CLMicroLocationClusterIdAndClusterData)initWithCoder:(id)coder
{
  v14.receiver = self;
  v14.super_class = _CLMicroLocationClusterIdAndClusterData;
  v4 = [(_CLMicroLocationClusterIdAndClusterData *)&v14 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v4->_clusterIdentifier = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"clusterId");
    objc_msgSend_decodeDoubleForKey_(coder, v7, @"meanUwbRange", v8);
    v4->_meanUWBRange = v9;
    objc_msgSend_decodeDoubleForKey_(coder, v10, @"meanBleRssi", v11);
    v4->_meanBLEReceivedSignalStrength = v12;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_clusterIdentifier, @"clusterId");
  objc_msgSend_encodeDouble_forKey_(coder, v5, @"meanUwbRange", v6, self->_meanUWBRange);
  meanBLEReceivedSignalStrength = self->_meanBLEReceivedSignalStrength;

  objc_msgSend_encodeDouble_forKey_(coder, v7, @"meanBleRssi", v8, meanBLEReceivedSignalStrength);
}

- (id)description
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_clusterIdentifier(self, a2, v2, v3);
  objc_msgSend_meanUWBRange(self, v7, v8, v9);
  v11 = v10;
  objc_msgSend_meanBLEReceivedSignalStrength(self, v12, v13, v14);
  return objc_msgSend_stringWithFormat_(v5, v15, @"clusterIdentifier: %@, meanUwbRange: %.3f(m), meanBleRssi: %.3f(dbm)", v16, v6, v11, v17);
}

@end