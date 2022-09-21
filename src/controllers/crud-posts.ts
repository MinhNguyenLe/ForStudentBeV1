import poolCoreV1 from 'src/postgresql';

import { Request, Response } from 'express';

export const getPosts =  (req: Request, res: Response) => {
  const query = {
    text: 'SELECT * FROM posts',
  };
  
  poolCoreV1.query(
    query
  ).then((results)=>{
    const { rowCount, rows } = results;

    return res.status(200).json({
      success: true,
      posts: { rowCount,rows },
    });
  }).catch((error)=>{
    console.log(error);

    return res.status(500).json({
      success: false,
      error: error,
    });
  });
};

export const createPosts =  (req: Request, res: Response) => {
  const { description, price,locations } = req.body;

  const query = {
    text: 'INSERT INTO posts(description,price,fk_location) VALUES($1,$2,S3) RETURNING *',
    values:[ description, price,locations ]
  };
  
  poolCoreV1.query(
    query
  ).then((results)=>{
    const { rowCount, rows } = results;

    return res.status(200).json({
      success: true,
      posts: { rowCount,rows },
    });
  }).catch((error)=>{
    console.log(error);

    return res.status(500).json({
      success: false,
      error: error,
    });
  });
};

export const getLocations =  (req: Request, res: Response) => {
  const query = {
    text: 'SELECT * FROM locations',
  };
  
  poolCoreV1.query(
    query
  ).then((results)=>{
    const { rowCount, rows } = results;

    return res.status(200).json({
      success: true,
      locations: { rowCount,rows },
    });
  }).catch((error)=>{
    console.log(error);

    return res.status(500).json({
      success: false,
      error: error,
    });
  });
};

export const createLocations =  (req: Request, res: Response) => {
  const { name } = req.body;

  const query = {
    text: 'INSERT INTO locations(name) VALUES($1) RETURNING *',
    values:[ name ],
  };
  
  poolCoreV1.query(
    query
  ).then((results)=>{
    const { rowCount, rows } = results;

    return res.status(200).json({
      success: true,
      locations: { rowCount,rows },
    });
  }).catch((error)=>{
    console.log(error);

    return res.status(500).json({
      success: false,
      error: error,
    });
  });
};

export const getShifts =  (req: Request, res: Response) => {
  const query = {
    text: 'SELECT * FROM shifts',
  };
  
  poolCoreV1.query(
    query
  ).then((results)=>{
    const { rowCount, rows } = results;

    return res.status(200).json({
      success: true,
      shifts: { rowCount,rows },
    });
  }).catch((error)=>{
    console.log(error);

    return res.status(500).json({
      success: false,
      error: error,
    });
  });
};

export const createShifts =  (req: Request, res: Response) => {
  const { description } = req.body;

  const query = {
    text: 'INSERT INTO shifts(description) VALUES($1) RETURNING *',
    values:[ description ],
  };
  
  poolCoreV1.query(
    query
  ).then((results)=>{
    const { rowCount, rows } = results;

    return res.status(200).json({
      success: true,
      shifts: { rowCount,rows },
    });
  }).catch((error)=>{
    console.log(error);

    return res.status(500).json({
      success: false,
      error: error,
    });
  });
};
