import { DataTypes } from 'sequelize';
import sequelize from '../config/db.js';

const User = sequelize.define('users', {
  id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  username: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true,
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  role: {
    type: DataTypes.STRING,
    defaultValue: "editor"
  }
}, {
  tableName: 'users', // تأكد من تطابق اسم الجدول
});

export default User;
