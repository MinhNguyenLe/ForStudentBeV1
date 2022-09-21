import { Router } from 'express';
import {
  getPosts,
  createLocations,
  createShifts,
  createPosts,
  getShifts,
  getLocations
} from 'src/controllers/crud-posts';

// import { userAuth } from "./middleware/auth";
// import { validationMiddleware } from "./middleware/validations";

// import { registerValidation, loginValidation } from "./validators";

export const router = Router();

router.get('/posts/get-all', getPosts);
router.post('/posts/create', createPosts);

router.get('/locations/get-all', getLocations);
router.post('/locations/create', createLocations);

router.get('/shifts/get-all', getShifts);
router.post('/shifts/create', createShifts);

// router.get("/protected", userAuth, protectedAuth);
// router.post("/register", registerValidation, validationMiddleware, register);
// router.post("/login", loginValidation, validationMiddleware, login);
// router.get("/logout", logout);