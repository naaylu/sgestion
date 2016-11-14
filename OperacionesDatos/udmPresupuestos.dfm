inherited dmPresupuestos: TdmPresupuestos
  inherited cdsDatos: TClientDataSet
    object cdsDatosID_PRESUPUESTOS: TWideStringField
      FieldName = 'ID_PRESUPUESTOS'
      Required = True
      Size = 38
    end
    object cdsDatosFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object cdsDatosID_CLIENTES: TWideStringField
      FieldName = 'ID_CLIENTES'
      Size = 38
    end
    object cdsDatosNOMBRE: TWideStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object cdsDatosDIRECCION: TWideStringField
      FieldName = 'DIRECCION'
      Size = 100
    end
    object cdsDatosCODIGO_POSTAL: TWideStringField
      FieldName = 'CODIGO_POSTAL'
      Size = 10
    end
    object cdsDatosCIUDAD: TWideStringField
      FieldName = 'CIUDAD'
      Size = 100
    end
    object cdsDatosPROVINCIA: TWideStringField
      FieldName = 'PROVINCIA'
      Size = 60
    end
    object cdsDatosNIF: TWideStringField
      FieldName = 'NIF'
      Size = 18
    end
    object cdsDatosCONRE: TFloatField
      DefaultExpression = '0'
      FieldName = 'CONRE'
      Required = True
    end
    object cdsDatosCONIRPF: TFloatField
      DefaultExpression = '0'
      FieldName = 'CONIRPF'
      Required = True
    end
    object cdsDatosSINIVA: TFloatField
      DefaultExpression = '0'
      FieldName = 'SINIVA'
      Required = True
    end
    object cdsDatosPAGADO: TFloatField
      DefaultExpression = '0'
      FieldName = 'PAGADO'
      Required = True
    end
    object cdsDatosDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object cdsDatosIRPF: TFloatField
      FieldName = 'IRPF'
    end
    object cdsDatosBASE_IMPONIBLE1: TFloatField
      FieldName = 'BASE_IMPONIBLE1'
    end
    object cdsDatosIVA1: TFloatField
      FieldName = 'IVA1'
    end
    object cdsDatosRE1: TFloatField
      FieldName = 'RE1'
    end
    object cdsDatosBASE_IMPONIBLE2: TFloatField
      FieldName = 'BASE_IMPONIBLE2'
    end
    object cdsDatosIVA2: TFloatField
      FieldName = 'IVA2'
    end
    object cdsDatosRE2: TFloatField
      FieldName = 'RE2'
    end
    object cdsDatosBASE_IMPONIBLE3: TFloatField
      FieldName = 'BASE_IMPONIBLE3'
    end
    object cdsDatosIVA3: TFloatField
      FieldName = 'IVA3'
    end
    object cdsDatosRE3: TFloatField
      FieldName = 'RE3'
    end
    object cdsDatosID_FORMAS_PAGO: TWideStringField
      FieldName = 'ID_FORMAS_PAGO'
      Size = 38
    end
    object cdsDatosNUMERO_CUENTA: TWideStringField
      FieldName = 'NUMERO_CUENTA'
      Size = 50
    end
    object cdsDatosTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object cdsDatosOBSERVACIONES: TWideMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftWideMemo
    end
    object cdsDatosTRASPASADO: TFloatField
      DefaultExpression = '0'
      FieldName = 'TRASPASADO'
      Required = True
    end
    object cdsDatosTARIFA: TIntegerField
      FieldName = 'TARIFA'
    end
    object cdsDatosID_COMERCIALES: TWideStringField
      FieldName = 'ID_COMERCIALES'
      Size = 38
    end
    object cdsDatosCOMISION: TFloatField
      FieldName = 'COMISION'
    end
    object cdsDatosBIC: TWideStringField
      FieldName = 'BIC'
      Size = 11
    end
    object cdsDatosTOTAL_IVA1: TFloatField
      FieldName = 'TOTAL_IVA1'
    end
    object cdsDatosTOTAL_IVA2: TFloatField
      FieldName = 'TOTAL_IVA2'
    end
    object cdsDatosTOTAL_IVA3: TFloatField
      FieldName = 'TOTAL_IVA3'
    end
    object cdsDatosTOTAL_RE1: TFloatField
      FieldName = 'TOTAL_RE1'
    end
    object cdsDatosTOTAL_RE2: TFloatField
      FieldName = 'TOTAL_RE2'
    end
    object cdsDatosTOTAL_RE3: TFloatField
      FieldName = 'TOTAL_RE3'
    end
    object cdsDatosTOTAL_IRPF: TFloatField
      FieldName = 'TOTAL_IRPF'
    end
    object cdsDatosTOTAL_DESCUENTO: TFloatField
      FieldName = 'TOTAL_DESCUENTO'
    end
    object cdsDatosTOTAL_PENDIENTE: TFloatField
      FieldName = 'TOTAL_PENDIENTE'
    end
    object cdsDatosID_USUARIO: TWideStringField
      FieldName = 'ID_USUARIO'
      Size = 38
    end
    object cdsDatosqryDetalles: TDataSetField
      FieldName = 'qryDetalles'
    end
  end
  inherited qryDatos: TZQuery
    SQL.Strings = (
      'select * from PRESUPUESTOS')
  end
  inherited cdsDetalles: TClientDataSet
    DataSetField = cdsDatosqryDetalles
    OnCalcFields = cdsDetallesCalcFields
    object cdsDetallesID_PRESUPUESTOS_DATOS: TWideStringField
      FieldName = 'ID_PRESUPUESTOS_DATOS'
      Required = True
      Size = 38
    end
    object cdsDetallesID_PRESUPUESTOS: TWideStringField
      FieldName = 'ID_PRESUPUESTOS'
      Required = True
      Size = 38
    end
    object cdsDetallesID_PRODUCTOS: TWideStringField
      FieldName = 'ID_PRODUCTOS'
      Size = 38
    end
    object cdsDetallesCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object cdsDetallesDESCRIPCION: TWideStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object cdsDetallesPRECIO: TFloatField
      FieldName = 'PRECIO'
    end
    object cdsDetallesDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object cdsDetallesIVA: TFloatField
      FieldName = 'IVA'
    end
    object cdsDetallesPOSICION: TFloatField
      FieldName = 'POSICION'
    end
    object cdsDetallesLOTE: TWideStringField
      FieldName = 'LOTE'
      Size = 50
    end
    object cdsDetallesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object cdsDetallesPRODUCTOS: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUCTOS'
      LookupDataSet = cdsProductos
      LookupKeyFields = 'ID_PRODUCTOS'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_PRODUCTOS'
      Lookup = True
    end
    object cdsDetallesSUBTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUBTOTAL'
      Calculated = True
    end
  end
  inherited qryDetalles: TZQuery
    SQL.Strings = (
      
        'select * from presupuestos_datos where id_presupuestos = :id_pre' +
        'supuestos')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_presupuestos'
        ParamType = ptUnknown
      end>
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_presupuestos'
        ParamType = ptUnknown
      end>
  end
  object dsProductos: TDataSource
    DataSet = cdsProductos
    Left = 136
    Top = 152
  end
  object dspProductos: TDataSetProvider
    DataSet = qryProductos
    Left = 136
    Top = 56
  end
  object cdsProductos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProductos'
    Left = 136
    Top = 104
  end
  object qryProductos: TZQuery
    Connection = dmBase.cntData
    SQL.Strings = (
      'select * from productos')
    Params = <>
    Left = 136
    Top = 8
  end
end
