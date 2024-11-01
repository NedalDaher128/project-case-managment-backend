// src/models/case.model.ts
import { DataTypes } from 'sequelize';
import sequelize from '../config/db.js';

const Case = sequelize.define('Case', {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  caseNumber: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  defendantName: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  imprisonmentDuration: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  startDate: {
    type: DataTypes.DATE,
    allowNull: false,
  },
  member_location:{
    type: DataTypes.STRING,
    allowNull: false,
  },
  member_number:{
    type: DataTypes.STRING,
    allowNull: false,
  },
  type_case:{
    type: DataTypes.STRING,
    allowNull: false,
  }
});

export default Case;
