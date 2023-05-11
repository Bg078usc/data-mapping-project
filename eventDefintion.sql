
INSERT INTO event_definition (`event_id`, `event_list_id`, `variable_definition_id`, `DATASET`, `PATIENT.ID`, `EVENT`, `CLOSEST.DATE`, `CLOSEST.DATE.EVENT`, `HB`, `HCT`, `RCC`, `MCV`, `RETIC`, `PRBC`, `WEIGHT`, `HAEMOSTAT.INTERVENE`, `ON.PUMP`, `PRIMARY.OPERATION`, `CS.URGENCY`, `DIAGNOSIS`, `TREATMENT`, `RAW.DATA`)
VALUES
  (1, 1, 1, 'ds3b', 1001, 'Event1', '2023-01-01', 'ClosestEvent1', 12.3, 36.5, 4, 90.2, 2.1, 0.5, 65.7, 'Intervene1', 'OnPump1', 'Operation1', 'Urgency1', 'Diagnosis1', 'Treatment1', 'RawData1'),
  (2, 2, 2, 'ds6b', 1002, 'Event2', '2023-02-01', 'ClosestEvent2', 11.8, 39.2, 5, 85.4, 1.8, 0.3, 71.2, 'Intervene2', 'OnPump2', 'Operation2', 'Urgency2', 'Diagnosis2', 'Treatment2', 'RawData2'),
  (3, 3, 3, 'ds7e', 1003, 'Event3', '2023-03-01', 'ClosestEvent3', 13.1, 42.8, 3, 92.7, 2.5, 0.7, 70.1, 'Intervene3', 'OnPump3', 'Operation3', 'Urgency3', 'Diagnosis3', 'Treatment3', 'RawData3');
SET FOREIGN_KEY_CHECKS=0