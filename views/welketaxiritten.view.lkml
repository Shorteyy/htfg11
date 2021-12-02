view: welketaxiritten {
  derived_table: {
    sql: Select * From People p join RidePassengers r ON p.ID = r.passengerId
      Where FirstName = "Jill"
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: ride_id {
    type: number
    sql: ${TABLE}.RideID ;;
  }

  dimension: passenger_id {
    type: number
    sql: ${TABLE}.PassengerId ;;
  }

  set: detail {
    fields: [id, first_name, last_name, ride_id, passenger_id]
  }
}
