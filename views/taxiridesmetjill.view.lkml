view: taxiridesmetjill {
  derived_table: {
    sql: SELECT DISTINCT r.PassengerId, r.RideId AS ID, Firstname, LastName
      FROM RidePassengers r JOIN People p
      ON r.PassengerId = p.ID
      WHERE RideId = 9 OR RideId = 21
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: passenger_id {
    type: number
    sql: ${TABLE}.PassengerId ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}.Firstname ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  set: detail {
    fields: [passenger_id, id, firstname, last_name]
  }
}
