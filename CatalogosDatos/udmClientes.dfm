inherited dmClientes: TdmClientes
  OldCreateOrder = True
  inherited qryDatos: TZQuery
    SQL.Strings = (
      'select * from Clientes')
  end
end
