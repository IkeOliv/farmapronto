view: ventas_optimizada_ai {
  sql_table_name: `Gemini_Enterprise.VENTAS_OPTIMIZADA_AI` ;;

  dimension: ao_fiscal {
    type: number
    sql: ${TABLE}.`Año Fiscal` ;;
  }
  dimension: cantidad_de_unidades_vendidas {
    type: number
    sql: ${TABLE}.`Cantidad de Unidades Vendidas` ;;
  }
  dimension: categoria_del_producto {
    type: string
    sql: ${TABLE}.`Categoria del Producto` ;;
  }
  dimension: ciudad_o_poblacion {
    type: string
    sql: ${TABLE}.`Ciudad o Poblacion` ;;
  }
  dimension: codigo_de_barras_ean {
    type: string
    sql: ${TABLE}.`Codigo de Barras EAN` ;;
  }
  dimension: codigo_interno_del_producto {
    type: string
    sql: ${TABLE}.`Codigo Interno del Producto` ;;
  }
  dimension: costo_total_de_la_venta {
    type: number
    sql: ${TABLE}.`Costo Total de la Venta` ;;
  }
  dimension: costo_unitario_de_adquisicion {
    type: number
    sql: ${TABLE}.`Costo Unitario de Adquisicion` ;;
  }
  dimension: direccion_de_la_sucursal {
    type: string
    sql: ${TABLE}.`Direccion de la Sucursal` ;;
  }
  dimension: familia_del_producto {
    type: string
    sql: ${TABLE}.`Familia del Producto` ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha ;;
  }
  dimension: grupo_del_producto {
    type: string
    sql: ${TABLE}.`Grupo del Producto` ;;
  }
  dimension: identificador_de_empresa {
    type: string
    sql: ${TABLE}.`Identificador de Empresa` ;;
  }
  dimension: identificador_de_sucursal {
    type: number
    sql: ${TABLE}.`Identificador de Sucursal` ;;
  }
  dimension: importe_total_de_venta {
    type: number
    sql: ${TABLE}.`Importe Total de Venta` ;;
  }
  dimension: laboratorio_fabricante {
    type: string
    sql: ${TABLE}.`Laboratorio Fabricante` ;;
  }
  dimension: margen_de_ganancia_bruta {
    type: number
    sql: ${TABLE}.`Margen de Ganancia Bruta` ;;
  }
  dimension: mes_fiscal {
    type: number
    sql: ${TABLE}.`Mes Fiscal` ;;
  }
  dimension: nombre_de_la_empresa {
    type: string
    sql: ${TABLE}.`Nombre de la Empresa` ;;
  }
  dimension: nombre_de_la_sucursal {
    type: string
    sql: ${TABLE}.`Nombre de la Sucursal` ;;
  }
  dimension: nombre_del_producto {
    type: string
    sql: ${TABLE}.`Nombre del Producto` ;;
  }
  dimension: precio_unitario_de_venta {
    type: number
    sql: ${TABLE}.`Precio Unitario de Venta` ;;
  }
  measure: count {
    type: count
  }
}
